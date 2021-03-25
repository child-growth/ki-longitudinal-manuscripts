

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(adjcurve)

# cfit4a <- coxph(Surv(futime, death) ~ age + sex + strata(group),
#                 data=fdata)
# surv4a <- survfit(cfit4a)
# plot(surv4a, col=c(1,2,4), mark.time=F, xscale=365.25,
#        xlab="Years post sample", ylab="Survival")




library(survival)
fit2 <- coxph( Surv(stop, event) ~ size, data = bladder )
# single curve
ggadjustedcurves(fit2, data = bladder)
curve <- surv_adjustedcurves(fit2, data = bladder)

fit2 <- coxph( Surv(stop, event) ~ size + strata(rx), data = bladder )
# average in groups
ggadjustedcurves(fit2, data = bladder, method = "average", variable = "rx")
curve <- surv_adjustedcurves(fit2, data = bladder, method = "average", variable = "rx")

# conditional balancing in groups
ggadjustedcurves(fit2, data = bladder, method = "marginal", variable = "rx")
curve <- surv_adjustedcurves(fit2, data = bladder, method = "marginal", variable = "rx")

# selected reference population
ggadjustedcurves(fit2, data = bladder, method = "marginal", variable = "rx",
                 reference = bladder[bladder$rx == "1",])

# conditional balancing in groups
ggadjustedcurves(fit2, data = bladder, method = "conditional", variable = "rx")
curve <- surv_adjustedcurves(fit2, data = bladder, method = "conditional", variable = "rx")

## Not run: 
# this will take some time
fdata <- flchain[flchain$futime >=7,]
fdata$age2 <- cut(fdata$age, c(0,54, 59,64, 69,74,79, 89, 110),
                  labels = c(paste(c(50,55,60,65,70,75,80),
                                   c(54,59,64,69,74,79,89), sep='-'), "90+"))
fdata$group <- factor(1+ 1*(fdata$flc.grp >7) + 1*(fdata$flc.grp >9),
                      levels=1:3,
                      labels=c("FLC < 3.38", "3.38 - 4.71", "FLC > 4.71"))
# single curve
fit <- coxph( Surv(futime, death) ~ age*sex, data = fdata)
ggadjustedcurves(fit, data = fdata, method = "single")

# average in groups
fit <- coxph( Surv(futime, death) ~ age*sex + strata(group), data = fdata)
ggadjustedcurves(fit, data = fdata, method = "average")

# conditional balancing in groups
ggadjustedcurves(fit, data = fdata, method = "conditional")

# marginal balancing in groups
ggadjustedcurves(fit, data = fdata, method = "marginal", reference = fdata)

## End(Not run)