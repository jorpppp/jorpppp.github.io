clear all

** Directorio 
cd "C:\Users\jorpp\Documents\conferenciastata2023"

** Base de datos de ejemplo

*webuse akc
use akc
codebook breed

line reg year if inrange(breed,1,6) , by(breed)

* TWFE

* ssc install reghdfe
* ssc install ftools
reghdfe registered movie, absorb(breed year) cluster(breed)

* Estudio de evento
* ssc install xtevent
xtevent reg, panelvar(breed) timevar(year) policyvar(movie) cluster(breed) window(2) impute(nuchange)
xteventplot


* Generar tiempo de evento
bys breed: gen tyear = year if movie == 1
bys breed: egen mintyear = min(tyear)
gen eventtime = year - mintyear

* Identificar unidades no tratadas
bys breed: egen evertreated = max(movie)

codebook breed if evertreated == 0
codebook breed if evertreated == 1

* Regresiones individuales

reghdfe reg movie if evertreated==0 | breed == 44, abs(breed year) cluster(breed)
reghdfe reg movie if evertreated==0 | breed == 107, abs(breed year) cluster(breed)

* Loop
levelsof breed if evertreated==1, loc(levs)
foreach b in `levs' {
	* Estática
	qui reghdfe reg movie if evertreated==0 | breed == `b', abs(breed year) cluster(breed)
	est store reg`b'
	* Estudio de evento
	qui xtevent reg if evertreated==0 | breed == `b', cluster(breed) reghdfe impute(nuchange) ///
	panelvar(breed) timevar(year) policyvar(movie) window(2)
	est store event`b'
}

* ATT estimaciones estáticas

gen g = .
gen beta_g = .
gen w_g = .

levelsof breed if evertreated==1, loc(levs)

loc i = 1
foreach b in `levs' {
	* Marcar el grupo
	replace g = `b' in `i'
	* Restaurar la regresión de ese grupo
	est restore reg`b'
	* Reemplazar valor de beta_g por el coef de la regresión
	replace beta_g = _b[movie] in `i'
	count if breed == `b'
	replace w_g = r(N) in `i'
	loc ++i
}
	
su beta_g [w = w_g]

* ATT estimación estudio de evento

levelsof breed if evertreated==1, loc(levs)
foreach b in `levs' {
	gen beta_`b'_t = .
	loc i = 1
	forv h=-3(1)3 {
		if `h' == -1 continue
		est restore event`b'		
		if `h' < 0 replace beta_`b'_t = _b[_k_eq_m`=abs(`h')'] in `i'
		else replace beta_`b'_t = _b[_k_eq_p`h'] in `i'
		loc ++i
	}	
}
gen horizon = -4 + _n
replace horizon = horizon +1 if horizon >=-1
li horizon beta_*_t if beta_44_t!=.
egen beta_gt_avg = rowmean(beta_*_t)

li h beta_gt_avg if beta_gt_avg !=.


* Estimación apilada

* Generar tiempo de evento
*bys breed: gen tyear = year if movie == 1
*bys breed: egen mintyear = min(tyear)
* gen eventtime = year - mintyear

* reghdfe registered movie , absorb(breed year) cluster(breed)

* Generar bases de datos
levelsof breed if evertreated==1, loc(levs)
foreach b in `levs' {
	preserve
	keep if breed == `b' | evertreated == 0
	gen dataset = `b'
	gen policy = 0
	gen policydyn = 0
	replace policy = 1 if breed == `b' & eventtime > 0
	replace policydyn = eventtime if breed == `b' & evertreated
	tempfile data`b'
	save `data`b''
	restore
}

*Apilar
clear
foreach b in `levs' {
	append using `data`b''
}

* Estudio de evento
replace policydyn = policydyn + 6
reghdfe reg ib5.policydyn , absorb(dataset#breed dataset#year) cluster(breed)
coefplot, keep(*.policydyn) vertical xlab(,angle(90))


**** Local projection

use akc, clear
xtset breed year

* Generar tiempo de evento
bys breed: gen tyear = year if movie == 1
bys breed: egen mintyear = min(tyear)
gen eventtime = year - mintyear

* Identificar unidades no tratadas
bys breed: egen evertreated = max(movie)
codebook breed if evertreated == 0
codebook breed if evertreated == 1


* Una regresión por horizonte

forv h=-3(1)3 {
	if `h' == -1 continue
	if `h' >=0 {
		gen depp`h' = F`h'.reg - L1.reg
		reg depp`h' ib2031.year D.movie if D.movie == 1 | F`h'.movie == 0
		est sto lpp`h'
	}
	else {
		gen depm`=abs(`h')' = L`=abs(`h')'.reg - L1.reg
		reg depm`=abs(`h')' ib2031.year D.movie if D.movie == 1 | evertreated == 0
		est sto lpm`=abs(`h')'
	}
}

suest lpm3 lpm2 lpp0 lpp1 lpp2 lpp3, cluster(breed)

coefplot, keep(*:D.movie) vertical xlabel(,angle(90)) nolab








