---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        53      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  11      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               22      86
Birth       ki1000108-IRC              INDIA                          Full or late term       213     328
Birth       ki1000108-IRC              INDIA                          Preterm                  32     328
Birth       ki1000108-IRC              INDIA                          Early term               83     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term         9     177
Birth       ki1000109-EE               PAKISTAN                       Preterm                 132     177
Birth       ki1000109-EE               PAKISTAN                       Early term               36     177
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       160     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 240     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term              307     707
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       709    1439
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 206    1439
Birth       ki1101329-Keneba           GAMBIA                         Early term              524    1439
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7074   13830
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 468   13830
Birth       ki1119695-PROBIT           BELARUS                        Early term             6288   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       323     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  78     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              171     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term       553    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                 259    1229
Birth       ki1135781-COHORTS          INDIA                          Early term              417    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1135    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 579    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1160    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      9668   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2755   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             4738   17161
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  51     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     346
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388
6 months    ki1000108-IRC              INDIA                          Early term               97     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        17     375
6 months    ki1000109-EE               PAKISTAN                       Preterm                 299     375
6 months    ki1000109-EE               PAKISTAN                       Early term               59     375
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8006   15758
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15758
6 months    ki1119695-PROBIT           BELARUS                        Early term             7201   15758
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 114     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 572    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1085    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8511   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3047   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4431   15989
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       214     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     350
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390
24 months   ki1000108-IRC              INDIA                          Early term               98     390
24 months   ki1000109-EE               PAKISTAN                       Full or late term         7     168
24 months   ki1000109-EE               PAKISTAN                       Preterm                 132     168
24 months   ki1000109-EE               PAKISTAN                       Early term               29     168
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       558    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 168    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term              431    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      1991    3972
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 136    3972
24 months   ki1119695-PROBIT           BELARUS                        Early term             1845    3972
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       377     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 109     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              181     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term       559    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                 303    1298
24 months   ki1135781-COHORTS          INDIA                          Early term              436    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       939    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 517    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              972    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4309    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1598    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2266    8173


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/67d353ed-3a09-4a68-a918-bbb3b9abe7a7/f8ae0781-4fcd-4655-8863-fa7c65de5ead/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/67d353ed-3a09-4a68-a918-bbb3b9abe7a7/f8ae0781-4fcd-4655-8863-fa7c65de5ead/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/67d353ed-3a09-4a68-a918-bbb3b9abe7a7/f8ae0781-4fcd-4655-8863-fa7c65de5ead/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.3448108   -0.7454898    0.0558681
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.2527594   -2.4107028   -0.0948161
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.5888074   -1.1552828   -0.0223320
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.7616668   -0.9929334   -0.5304003
Birth       ki1000108-IRC              INDIA                          Preterm              NA                -1.7592166   -2.4821934   -1.0362398
Birth       ki1000108-IRC              INDIA                          Early term           NA                -1.3934921   -1.7535333   -1.0334510
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.9300000   -1.8283144   -0.0316856
Birth       ki1000109-EE               PAKISTAN                       Preterm              NA                -0.2882955   -0.4939564   -0.0826345
Birth       ki1000109-EE               PAKISTAN                       Early term           NA                -0.3491667   -0.8202901    0.1219568
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.9539069   -1.1129729   -0.7948408
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.5462569   -1.6921338   -1.4003800
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.1778122   -1.3076856   -1.0479388
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -1.2553276   -1.3467032   -1.1639520
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.2515142   -1.4170506   -1.0859778
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                -1.1770232   -1.2812187   -1.0728277
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -1.0921475   -1.3078678   -0.8764273
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                -1.1963887   -1.4494986   -0.9432788
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                -1.2013941   -1.4315160   -0.9712722
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -1.0504200   -1.2114013   -0.8894387
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.9615731   -1.3039395   -0.6192067
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                -1.0503137   -1.2597507   -0.8408766
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.9408369   -1.0400612   -0.8416127
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                -1.1327523   -1.2740062   -0.9914983
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                -1.0344972   -1.1389072   -0.9300872
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.6038583   -0.6760170   -0.5316997
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.8858939   -0.9920848   -0.7797030
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.7998678   -0.8724119   -0.7273237
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.7481256   -0.7730324   -0.7232189
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.8884745   -0.9309594   -0.8459896
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.7847337   -0.8164598   -0.7530076
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.4937392   -0.6997815   -0.2876968
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.5377400   -0.9500791   -0.1254009
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4601104   -0.7427363   -0.1774845
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.5255427   -0.6958505   -0.3552349
6 months    ki1000108-IRC              INDIA                          Preterm              NA                -0.8304906   -1.3483951   -0.3125860
6 months    ki1000108-IRC              INDIA                          Early term           NA                -0.6508821   -0.9465574   -0.3552067
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4415238   -1.0029569    0.1199094
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -0.8220194   -0.9532800   -0.6907588
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                -0.6243055   -0.8553898   -0.3932213
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.2088130    0.0392997    0.3783263
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.1014109   -0.2383551    0.0355334
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                 0.0538286   -0.0652515    0.1729087
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1217242    0.0528476    0.1906009
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0470156   -0.1924375    0.0984063
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                 0.0629292   -0.0512489    0.1771074
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.2565660   -0.3466777   -0.1664543
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.2095879   -0.3604424   -0.0587335
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.1143828   -0.2180636   -0.0107021
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.5917603    0.5293117    0.6542088
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.5306708    0.3632854    0.6980563
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.5694294    0.5048642    0.6339947
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1638517    0.0479276    0.2797758
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                 0.1829310   -0.0306540    0.3965161
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                 0.2636253    0.1160575    0.4111931
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.6234603   -0.7176897   -0.5292309
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -0.6232753   -0.7504888   -0.4960617
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.6965874   -0.8043498   -0.5888251
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.2633293   -0.3285147   -0.1981440
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.2700979   -0.3622373   -0.1779584
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.3293606   -0.3959593   -0.2627618
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.5742018   -0.6004002   -0.5480035
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.6160832   -0.6574003   -0.5747661
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.6026121   -0.6359748   -0.5692494
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5231034   -0.6596950   -0.3865117
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.8106432   -1.1028763   -0.5184100
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4599690   -0.6487490   -0.2711891
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.6614859   -0.7774863   -0.5454854
24 months   ki1000108-IRC              INDIA                          Preterm              NA                -1.0610783   -1.3621098   -0.7600468
24 months   ki1000108-IRC              INDIA                          Early term           NA                -0.7676904   -0.9532999   -0.5820809
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.1957143   -2.1506345   -0.2407940
24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                -1.0760480   -1.2403659   -0.9117300
24 months   ki1000109-EE               PAKISTAN                       Early term           NA                -0.6762644   -0.9801639   -0.3723648
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.4330888   -0.6631747   -0.2030029
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.7462269   -0.8969700   -0.5954838
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.5571121   -0.7038356   -0.4103885
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.8009191   -0.8832532   -0.7185850
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.8462050   -1.0062479   -0.6861621
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -0.7566371   -0.8534646   -0.6598096
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.7040453    0.5749893    0.8331012
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.6132737    0.1719271    1.0546204
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                 0.6739750    0.5510678    0.7968823
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1726539   -0.2657988   -0.0795091
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.4326114   -0.5962129   -0.2690098
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.2640537   -0.3917822   -0.1363252
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.5584701   -0.6383322   -0.4786080
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -0.5993396   -0.7143516   -0.4843276
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -0.5710192   -0.6667723   -0.4752662
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.5720635   -0.6296903   -0.5144367
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.6297834   -0.7099237   -0.5496431
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.6403657   -0.7006226   -0.5801088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2671223   -1.3000443   -1.2342002
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.3724888   -1.4214473   -1.3235303
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.2832095   -1.3289610   -1.2374581


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0135366   -1.2024730   -0.8246002
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2295969   -1.2924879   -1.1667060
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0358042   -1.1559527   -0.9156557
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -1.0098535   -1.0741510   -0.9455561
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7417745   -0.7882773   -0.6952718
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7794837   -0.7988174   -0.7601500
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4909778   -0.6451612   -0.3367945
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5999270   -0.7403711   -0.4594828
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7747022   -0.8887874   -0.6606170
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0815655    0.0271217    0.1360092
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1978013   -0.2594875   -0.1361150
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1864566    0.1024304    0.2704827
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6460976   -0.7081436   -0.5840516
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2920968   -0.3336448   -0.2505489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5906060   -0.6106295   -0.5705826
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5369143   -0.6415957   -0.4322329
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7414957   -0.8350522   -0.6479392
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7953404   -0.8531640   -0.7375168
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2397001   -0.3082360   -0.1711643
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5717874   -0.6260792   -0.5174955
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6079283   -0.6449298   -0.5709269
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2935654   -1.3174540   -1.2696768


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.9079486   -2.1409312    0.3250340
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.2439966   -0.9419545    0.4539613
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.9975498   -1.7565440   -0.2385555
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term    -0.6318253   -1.0585504   -0.2051002
Birth       ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.6417045   -0.2798513    1.5632604
Birth       ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.5808333   -0.4335266    1.5951933
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.5923500   -0.8079208   -0.3767792
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.2239053   -0.4294802   -0.0183304
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0038134   -0.1851702    0.1927969
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0783044   -0.0602194    0.2168282
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.1042412   -0.3233077    0.1148254
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.1092466   -0.2500907    0.0315975
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0888469   -0.2882816    0.4659754
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0001064   -0.2631115    0.2633242
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.1919154   -0.3640113   -0.0198194
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0936603   -0.2377718    0.0504513
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.2820356   -0.4100150   -0.1540562
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1960095   -0.2978998   -0.0941192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.1403489   -0.1886114   -0.0920864
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0366081   -0.0744225    0.0012063
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0440008   -0.5048942    0.4168926
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0336288   -0.3162871    0.3835446
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.3049479   -0.8502348    0.2403391
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1253394   -0.4679964    0.2173176
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.3804956   -0.9557041    0.1947128
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.1827818   -0.7892773    0.4237138
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.3102238   -0.5292111   -0.0912366
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1549843   -0.3619240    0.0519553
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.1687399   -0.3297155   -0.0077643
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0587950   -0.1923113    0.0747213
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0469781   -0.1290269    0.2229830
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.1421832    0.0051177    0.2792487
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0610894   -0.2262954    0.1041166
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0223308   -0.0615935    0.0169319
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0190794   -0.2243329    0.2624916
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0997736   -0.0870550    0.2866023
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0001850   -0.1578501    0.1582201
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0731272   -0.2154187    0.0691644
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0067685   -0.1197244    0.1061873
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0660312   -0.1592540    0.0271916
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.0418814   -0.0894587    0.0056960
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0284102   -0.0681420    0.0113215
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2875398   -0.6107486    0.0356690
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0631343   -0.1703172    0.2965858
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.3995924   -0.7217584   -0.0774264
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1062046   -0.3254389    0.1130298
24 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.1196663   -0.8492883    1.0886209
24 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.5194499   -0.4826617    1.5215615
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.3131382   -0.5880889   -0.0381874
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1240233   -0.3978062    0.1497596
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0452860   -0.2256867    0.1351148
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0442820   -0.0833350    0.1718989
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0907715   -0.5345495    0.3530064
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0300702   -0.1400136    0.0798732
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.2599575   -0.4483089   -0.0716060
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0913998   -0.2495387    0.0667391
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.0408695   -0.1805796    0.0988405
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0125492   -0.1368941    0.1117958
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0577199   -0.1564442    0.0410044
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0683022   -0.1517901    0.0151857
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.1053665   -0.1636760   -0.0470571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0160872   -0.0723023    0.0401278


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1200148   -0.3583099    0.1182804
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.2518697   -0.3965203   -0.1072192
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.5966949   -0.2751567    1.4685465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2902445   -0.4359465   -0.1445424
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0257307   -0.0384496    0.0899110
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0527158   -0.1245178    0.0190861
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0146158   -0.0907222    0.1199539
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0690166   -0.1403736    0.0023404
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1379162   -0.1945140   -0.0813184
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0313581   -0.0463309   -0.0163853
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0027613   -0.1176772    0.1231998
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.0743843   -0.1847394    0.0359708
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.3331784   -0.8820090    0.2156521
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.1790507   -0.3301509   -0.0279506
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0401588   -0.0838835    0.0035659
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0587647   -0.0056619    0.1231913
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0125164   -0.0324735    0.0074407
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0226049   -0.0540263    0.0992361
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0226373   -0.0932130    0.0479384
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0287675   -0.0810836    0.0235486
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0164042   -0.0330108    0.0002024
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0138109   -0.0972030    0.0695811
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0800098   -0.1510045   -0.0090152
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1836905   -0.7422906    1.1096716
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.1772614   -0.3922360    0.0377132
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0055787   -0.0550480    0.0662054
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0166158   -0.0705349    0.0373034
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0670462   -0.1276676   -0.0064249
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0133173   -0.0749455    0.0483109
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0358648   -0.0820610    0.0103314
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0264431   -0.0488844   -0.0040018
