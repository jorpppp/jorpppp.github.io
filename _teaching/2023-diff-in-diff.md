---
title: "Advances in Differences in Differences and Bartik instruments"
collection: teaching
type: "Course"
permalink: /teaching/2023-diff-in-diff
venue: "CEER - Banco de La República"
date: 2023-10-09
location: "Cartagena, Colombia"
excerpt: 'Updates in diff-in-diff estimation'
---

## Noticias

## Contenido

[Syllabus](/files/dd_syllabus.pdf)


### Capítulo 1. Diferencias en diferencias
* [Notas de clase](/files/dd_c1.pdf)

#### Referencias principales

* Cunningham, S. (2021). [Causal inference: The mixtape](https://mixtape.scunning.com/). Yale university press.
* de Chaisemartin, Clément and d'Haultfoeuille, Xavier, [Modern Panel Data Methods For Causal Inference](https://ssrn.com/abstract=4487202).
* Roth, J., Sant’Anna, P. H., Bilinski, A., & Poe, J. (2023). [What’s trending in difference-in-differences? A synthesis of the recent econometrics literature](https://www.sciencedirect.com/science/article/abs/pii/S0304407623001318). Journal of Econometrics.
* Olden, A., & Møen, J. (2022). [The triple difference estimator](https://academic.oup.com/ectj/article/25/3/531/6545797). The Econometrics Journal, 25(3), 531-553.

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

#### Aplicación

* [Base de datos](/files/code/baker.dta)
* [Código Stata](/files/code/dd_c2.do)
* [Código R](/files/code/dd_c2.R)
* [Presentación DD apilado y proyección local](/files/dd_apilado.pdf)
* [Base de datos para stacked DID y proyección local](/files/dd_akc.dta)
* [Código Stata para stacked DID y proyección local](/files/dd_apilado.do)


### Capítulo 3. Estudio de evento

#### Referencias principales
* Freyaldenhoven, S., Hansen, C., Pérez, J. P., & Shapiro, J. M. (2021). [Visualization, identification, and estimation in the linear panel event-study design](https://www.nber.org/papers/w29170) (No. w29170). National Bureau of Economic Research.
 -[Presentacion](/files/dd_eventstudytalk.pdf)
 -[Videos](https://www.youtube.com/@linearpanelevent-studydesi780)
* Schmidheiny, K., & Siegloch, S. (2023). [On event studies and distributed‐lags in two‐way fixed effects models: Identification, equivalence, and generalization.](https://onlinelibrary.wiley.com/doi/full/10.1002/jae.2971?casa_token=IE54Z4WFfoUAAAAA%3A8xZGuCrySsOV7Upghv8by_Y9RIg975PS2750L7qfSTWHV5gtLESDlpqCSpiW80FSu7qLkIQMNAg6KWtbtw) Journal of Applied Econometrics, 38(5), 695-713.

#### Aplicación

* [xtevent (Incluye ejemplos)](https://github.com/JMSLab/xtevent)
* [eventstudyr (Incluye ejemplos)](https://github.com/JMSLab/eventstudyr)
* [Base de datos del paper](/files/dd_simulation_data_dynamic.dta)

### Capítulo 4. Control sintético

#### Referencias principales
* Abadie, A., & Vives-i-Bastida, J. (2022). [Synthetic controls in action.](https://arxiv.org/abs/2203.06279) arXiv preprint arXiv:2203.06279.
* Cattaneo, M. D., Feng, Y., Palomba, F., & Titiunik, R. (2022). [scpi: Uncertainty Quantification for Synthetic Control Methods.](https://nppackages.github.io/references/Cattaneo-Feng-Palomba-Titiunik_2023_scpi.pdf) arXiv preprint arXiv:2202.05984.

#### Aplicación
* [Código](/files/dd_control_sintetico_ejemplo.zip)


