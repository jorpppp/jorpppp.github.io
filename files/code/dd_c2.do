* baker.do

* Datos simulados de Baker et al., usando por Cunningham Mixtape

* Cunningham, S (2023). "Causal Inference 2" Mixtape Sessions. Retrieved 10/9/2023, from https://github.com/Mixtape-Sessions/Causal-Inference-2/.

clear

use "C:\Users\jorpp\Documents\GitHub\Causal-Inference-2\Lab\Baker\baker.dta"

codebook group year id

tab group year

* Efectos tratamiento: Diapositiva de Cunningham

* TWFE

reg y treat i.id i.year

areg y treat i.year, absorb(id)
areg y treat i.id, absorb(year)

ssc install reghdfe

reghdfe y treat, absorb(id year) vce(robust) 


* xtdidregress (y) (treat), group(group) time(year)


* ¡Pero si son positivos!

ssc install bacondecomp
xtset id year

* cap drop _b*
bacondecomp y treat, stub(_b) ddetail

net install ddtiming, from(https://tgoldring.com/code/)
ddtiming y treat, i(group) t(year)

* Callaway Sant'Anna

ssc install drdid
ssc install csdid

csdid y , ivar(id) time(year) gvar(treat_date) method(dripw) asinr

* Stata 18

xthdidregress ipw (y) (treat), group(group) controlgroup(notyet)


estat ptrends
estat atetplot
estat aggregation, overall
estat aggregation, dynamic(-3 -2 -1 0 1 2 3) graph
estat sci










