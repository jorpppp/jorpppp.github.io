---
title: "Avances en Estimación Causal: Diferencias en Diferencias, Control Sintético e Instrumentos Bartik"
collection: teaching
type: "Course"
permalink: /teaching/2023-diff-in-diff-banxico
venue: "Banco de México"
date: 2023-10-09
location: "Ciudad de México, México"
excerpt: 'Avances recientes en la literatura de estimación de efectos causales mediante métodos de diferencias en diferencias y variables instrumentales.'
---

## Noticias

## Contenido

[Syllabus](/files/Syllabus_DD_Banxico.pdf)

### Capítulo 1. Diferencias en diferencias
* [Notas de clase](/files/dd_c1.pdf)

#### Referencias principales

* Cunningham, S. (2021). [Causal inference: The mixtape](https://mixtape.scunning.com/). Yale university press.
* de Chaisemartin, Clément and d'Haultfoeuille, Xavier, [Modern Panel Data Methods For Causal Inference](https://ssrn.com/abstract=4487202).
* Roth, J., Sant’Anna, P. H., Bilinski, A., & Poe, J. (2023). [What’s trending in difference-in-differences? A synthesis of the recent econometrics literature](https://www.sciencedirect.com/science/article/abs/pii/S0304407623001318). Journal of Econometrics.
* Olden, A., & Møen, J. (2022). [The triple difference estimator](https://academic.oup.com/ectj/article/25/3/531/6545797). The Econometrics Journal, 25(3), 531-553.

#### Referencias adicionales
- De Chaisemartin, C., & d’Haultfoeuille, X. (2023). [Two-way fixed effects and differences-in-differences with heterogeneous treatment effects: A survey](https://academic.oup.com/ectj/article/26/3/C1/6604378) . The Econometrics Journal, 26(3), C1-C30.


### Capítulo 2. Heterogeneidad y adopción escalonada
* [Notas de clase](/files/dd_c2.pdf)

#### Referencias principales

* Angrist, J. D., & Pischke, J. S. (2009). [Mostly harmless econometrics: An empiricist's companion](https://www.mostlyharmlesseconometrics.com/). Princeton university press.
* Borusyak, K., Jaravel, X., & Spiess, J. (2021). [Revisiting event study designs: Robust and efficient estimation.](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2826228) arXiv preprint arXiv:2108.12419.
   *[Presentación](https://github.com/Mixtape-Sessions/Causal-Inference-2/blob/main/Slides/05-Imputation.pdf)
* Callaway, B., & Sant’Anna, P. H. (2021). [Difference-in-differences with multiple time periods.](https://www.sciencedirect.com/science/article/abs/pii/S0304407620303948) Journal of econometrics, 225(2), 200-230.
* Goodman-Bacon, A. (2021). [Difference-in-differences with variation in treatment timing](https://www.sciencedirect.com/science/article/abs/pii/S0304407621001445). Journal of Econometrics, 225(2), 254-277.
* Cengiz, D., Dube, A., Lindner, A., & Zipperer, B. (2019). [The effect of minimum wages on low-wage jobs.](https://academic.oup.com/qje/article/134/3/1405/5484905) The Quarterly Journal of Economics, 134(3), 1405-1454.
* Dube, A., Girardi, D., Jorda, O., & Taylor, A. M. (2023). [A local projections approach to difference-in-differences event studies](https://www.nber.org/papers/w31184) (No. w31184). National Bureau of Economic Research.

#### Referencias adicionales

* Sun, L., & Abraham, S. (2021). [Estimating dynamic treatment effects in event studies with heterogeneous treatment effects.](https://www.sciencedirect.com/science/article/pii/S030440762030378X) Journal of Econometrics, 225(2), 175-199.
* De Chaisemartin, C., & d’Haultfoeuille, X. (2020). [Two-way fixed effects estimators with heterogeneous treatment effects.](https://www.aeaweb.org/articles?id=10.1257/aer.20181169) American Economic Review, 110(9), 2964-2996.
* Sant’Anna, P. H., & Zhao, J. (2020). [Doubly robust difference-in-differences estimators.](https://www.sciencedirect.com/science/article/pii/S0304407620301901) Journal of Econometrics, 219(1), 101-122.
* Wooldridge, J. M. (2021). [Two-way fixed effects, the two-way mundlak regression, and difference-in-differences estimators.](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3906345) Available at SSRN 3906345.
* Roth, J., & Sant'Anna, P. H. (2021). [Efficient estimation for staggered rollout designs.](https://arxiv.org/abs/2102.01291) arXiv preprint arXiv:2102.01291.
* Cengiz, D., Dube, A., Lindner, A., & Zipperer, B. (2019). [The effect of minimum wages on low-wage jobs.](https://academic.oup.com/qje/article/134/3/1405/5484905) The Quarterly Journal of Economics, 134(3), 1405-1454.

#### Aplicación

* [Base de datos](/files/code/baker.dta)
* [Código Stata](/files/code/DDConEfectosDeTratamientoHeterogeneos.do)
* [Código R](/files/code/dd_c2.R)
* [Presentación DD apilado y proyección local](/files/dd_apilado.pdf)
* [Base de datos para stacked DID y proyección local](/files/dd_akc.dta)
* [Código Stata para stacked DID y proyección local](/files/dd_apilado.do)


### Capítulo 3. Estudio de evento

#### Referencias principales
* Freyaldenhoven, S., Hansen, C., Pérez, J. P., & Shapiro, J. M. (2021). [Visualization, identification, and estimation in the linear panel event-study design](https://www.nber.org/papers/w29170) (No. w29170). National Bureau of Economic Research.
 - [Presentacion](/files/dd_eventstudytalk.pdf)
 - [Videos](https://www.youtube.com/@linearpanelevent-studydesi780)
* Schmidheiny, K., & Siegloch, S. (2023). [On event studies and distributed‐lags in two‐way fixed effects models: Identification, equivalence, and generalization.](https://onlinelibrary.wiley.com/doi/full/10.1002/jae.2971?casa_token=IE54Z4WFfoUAAAAA%3A8xZGuCrySsOV7Upghv8by_Y9RIg975PS2750L7qfSTWHV5gtLESDlpqCSpiW80FSu7qLkIQMNAg6KWtbtw) Journal of Applied Econometrics, 38(5), 695-713.
- Rambachan, A., & Roth, J. (2023). [A more credible approach to parallel trends.](https://academic.oup.com/restud/article/90/5/2555/7039335) Review of Economic Studies, rdad018.

#### Referencias adicionales
* Gardner, J. (2022). [Two-stage differences in differences.](https://arxiv.org/abs/2207.05943) arXiv preprint arXiv:2207.05943.
* Freyaldenhoven, S., Hansen, C., & Shapiro, J. M. (2019). [Pre-event trends in the panel event-study design.](https://www.aeaweb.org/articles?id=10.1257/aer.20180609) American Economic Review, 109(9), 3307-38.
* Roth, J. (2022). [Pretest with caution: Event-study estimates after testing for parallel trends.](https://www.aeaweb.org/articles?id=10.1257/aeri.20210236) American Economic Review: Insights, 4(3), 305-22
* Marcus, M., & Sant’Anna, P. H. (2021). [The role of parallel trends in event study settings: An application to environmental economics.](https://www.journals.uchicago.edu/doi/full/10.1086/711509) Journal of the Association of Environmental and Resource Economists, 8(2), 235-275.
* Sun, L., & Shapiro, J. M. (2022). [A linear panel model with heterogeneous coefficients and variation in exposure.](https://pubs.aeaweb.org/doi/pdfplus/10.1257/jep.36.4.193) Journal of Economic Perspectives, 36(4), 193-204.



#### Aplicación

* [xtevent (Incluye ejemplos)](https://github.com/JMSLab/xtevent)
* [eventstudyr (Incluye ejemplos)](https://github.com/JMSLab/eventstudyr)
* [Base de datos del paper](/files/dd_simulation_data_dynamic.dta)

### Capítulo 4. Control sintético

#### Referencias principales
* Abadie, A., & Vives-i-Bastida, J. (2022). [Synthetic controls in action.](https://arxiv.org/abs/2203.06279) arXiv preprint arXiv:2203.06279.
* Cattaneo, M. D., Feng, Y., Palomba, F., & Titiunik, R. (2022). [scpi: Uncertainty Quantification for Synthetic Control Methods.](https://nppackages.github.io/references/Cattaneo-Feng-Palomba-Titiunik_2023_scpi.pdf) arXiv preprint arXiv:2202.05984.

#### Referencias adicionales
* Abadie, A. (2021). [Using synthetic controls: Feasibility, data requirements, and methodological aspects.](https://www.aeaweb.org/articles?id=10.1257/jel.20191450) Journal of Economic Literature, 59(2), 391-425.
* Gobillon, L., & Magnac, T. (2016). [Regional policy evaluation: Interactive fixed effects and synthetic controls.](https://direct.mit.edu/rest/article/98/3/535/58348/Regional-Policy-Evaluation-Interactive-Fixed) Review of Economics and Statistics, 98(3), 535-551.
* Callaway, B., & Karami, S. (2023). [Treatment effects in interactive fixed effects models with a small number of time periods.](https://www.sciencedirect.com/science/article/pii/S030440762200029X) Journal of Econometrics, 233(1), 184-208.
* Arkhangelsky, D., Athey, S., Hirshberg, D. A., Imbens, G. W., & Wager, S. (2021). [Synthetic difference-in-differences.](https://www.aeaweb.org/articles?id=10.1257/aer.20190159) American Economic Review, 111(12), 4088-4118.

#### Aplicación

* [Código](/files/dd_control_sintetico_ejemplo.zip)


### Capítulo 5. Instrumentos "Shift Share"

#### Referencias principales
* Goldsmith-Pinkham, P., Sorkin, I., & Swift, H. (2020). [Bartik instruments: What, when, why, and how](https://www.aeaweb.org/articles?id=10.1257/aer.20181047). American Economic Review, 110(8), 2586-2624.
* Borusyak, K., Hull, P., & Jaravel, X. (2022). [Quasi-experimental shift-share research designs.](https://academic.oup.com/restud/article-abstract/89/1/181/6294942?redirectedFrom=fulltext) The Review of Economic Studies, 89(1), 181-213.
* Borusyak, K., & Hull, P. (2020). [Non-random exposure to exogenous shocks: Theory and applications (No. w27845)](https://www.nber.org/system/files/working_papers/w27845/revisions/w27845.rev0.pdf). National Bureau of Economic Research.

#### Presentaciones (Mixtape Sessions)

* [Mixtape Sessions - Shift Share IV](https://github.com/Mixtape-Sessions/Shift-Share/)




