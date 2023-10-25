**************************************************************
* Diferencias en Diferencias con efectos heterogéneos

****************************************************************

* Datos simulados de Baker et al., usando por Cunningham Mixtape

* Cunningham, S (2023). "Causal Inference 2" Mixtape Sessions. Retrieved 10/9/2023, from https://github.com/Mixtape-Sessions/Causal-Inference-2/

use "baker.dta", clear

*explorar base 
tab state
tab id if state==2
tab year
sum y 

*cohorts
tab group
tab treat_date group 
tab treat_date, miss 

xtset id year 

****** TWFE

reg y treat i.id i.year, vce(robust)

*ssc install reghdfe, replace 
reghdfe y treat, absorb(id year) vce(robust) 
estimates store twfe

*********** Bacon decomposition

*ssc install bacondecomp, replace 
xtset id year

cap drop _b*
* Bacon decomposition shows the problem -- notice all those late to early 2x2s!
bacondecomp y treat, stub(_b) ddetail
* pesos positivos

mat li e(sumdd)
*comprobrar suma de pesos 
di e(sumdd)[1,2] + e(sumdd)[2,2] + e(sumdd)[3,2] + e(sumdd)[4,2] + e(sumdd)[5,2] + e(sumdd)[6,2] + e(sumdd)[7,2]
*cuanto contribuyen las malas comparaciones?
di e(sumdd)[2,2] + e(sumdd)[4,2] + e(sumdd)[6,2]
*además, todas tienen coeficiente negativo

************ Callaway Sant'Anna

*ssc install csdid, replace 

*Outcome regression DiD estimator based on ordinary least squares.
csdid y , ivar(id) time(year) gvar(treat_date) method(reg) 

*Abadie (2005) inverse probability weighting DiD estimator.
csdid y , ivar(id) time(year) gvar(treat_date) method(ipw) 

*Sant’Anna and Zhao (2020) doubly robust DiD estimator based on stabilized inverse probability weighting and ordinary least squares.
csdid y , ivar(id) time(year) gvar(treat_date) method(dripw) 

*aggregation
csdid y , ivar(id) time(year) gvar(treat_date) agg(simple)
estimates store cs 
csdid y , ivar(id) time(year) gvar(treat_date) agg(group)
csdid y , ivar(id) time(year) gvar(treat_date) agg(calendar)
csdid y , ivar(id) time(year) gvar(treat_date) agg(event)

esttab twfe cs




* Stata 18

xthdidregress ipw (y) (treat), group(group) controlgroup(notyet)
estat ptrends
estat atetplot
estat aggregation, overall
estat aggregation, dynamic(-3 -2 -1 0 1 2 3) graph
estat sci










