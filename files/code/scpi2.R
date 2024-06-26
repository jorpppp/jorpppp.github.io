################################################################################
## SCPI R Package
## R-file for Empirical Illustration - Single Treated Unit
## Authors: Matias D. Cattaneo, Yingjie Feng, Filippo Palomba and Rocio Titiunik
################################################################################
### Clear R environment
rm(list = ls(all = TRUE))

### Install R library
# install.packages('scpi')

### Load SCPI package
library(scpi)
library(ggplot2)
library(latex2exp)

###############################################################################
# SINGLE TREATED UNIT
###############################################################################

### Load data
data <- scpi_germany

####################################
### Set options for data preparation
id.var      <- "country"                              # ID variable
time.var    <- "year"                                 # Time variable
period.pre  <- seq(from = 1960, to = 1990, by = 1)    # Pre-treatment period
period.post <- (1991:2003)                            # Post-treatment period
unit.tr     <- "West Germany"                         # Treated unit (in terms of id.var)
unit.co     <- setdiff(unique(data$country), unit.tr) # Donors pool
outcome.var <- "gdp"                                  # Outcome variable
cov.adj     <- NULL                                   # Covariates for adjustment
features    <- NULL                                   # No features other than outcome
constant    <- FALSE                                  # No constant term
report.missing <- FALSE                               # To check where missing values are
cointegrated.data <- TRUE                             # Belief that the data are cointegrated


####################################
### Data preparation
df  <-   scdata(df = data, id.var = id.var, time.var = time.var, outcome.var = outcome.var,
                period.pre = period.pre, period.post = period.post,
                unit.tr = unit.tr, unit.co = unit.co, cov.adj = cov.adj, features = features,
                constant = constant, cointegrated.data = cointegrated.data)

####################################
### SC - point estimation with simplex
est.si  <- scest(data = df, w.constr = list(name="simplex"))
# Use print or summary methods to check results
print(est.si)
summary(est.si)
est.si2 <- scest(data = df, w.constr = list(p = "L1", dir = "==", Q = 1, lb = 0))
summary(est.si2)

####################################
### SC - plot results
scplot(result = est.si, fig.path = ".",
       fig.name = "germany_est", fig.format = "png", plot.range = (1960:2003),
       label.xy = list(x.lab = "Year", y.lab = "GDP per capita (thousand US dollars)"),
       event.label = list(lab = "Reunification", height = 10))


####################################
### SC - point estimation with lasso
est.lasso <- scest(data = df, w.constr = list(name="lasso"))
summary(est.lasso)
est.lasso2 <- scest(data = df, w.constr = list(p = "L1", dir = "<=", Q = 1, lb = -Inf),
                    solver="OSQP")
summary(est.lasso2)


####################################
### SC - point estimation with ridge
est.ridge <- scest(data = df, w.constr = list(name="ridge"))
summary(est.ridge)
Qest <- est.ridge$est.results$w.constr$Q
est.ridge2 <- scest(data = df, w.constr = list(p = "L2", dir = "<=", Q = Qest, lb = -Inf))
summary(est.ridge2)


####################################
### SC - point estimation with L1-L2
est.l1l2 <- scest(data = df, w.constr = list(name="L1-L2"))
summary(est.l1l2)
est.l1l2.2 <- scest(data = df, w.constr = list(p = "L1-L2", dir = "==/<=", Q = 1, 
                                               Q2 = Qest, lb = 0))
summary(est.l1l2.2)


####################################
### SC - point estimation with least squares
est.ls <- scest(data = df, w.constr = list(name="ols"))
summary(est.ls)
est.ls2 <- scest(data = df, w.constr = list(p = "no norm", dir = NULL, Q = NULL, lb = -Inf))
summary(est.ls2)