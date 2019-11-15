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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        58      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  11      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               23      92
Birth       ki1000108-IRC              INDIA                          Full or late term       238     369
Birth       ki1000108-IRC              INDIA                          Preterm                  36     369
Birth       ki1000108-IRC              INDIA                          Early term               95     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term        11     240
Birth       ki1000109-EE               PAKISTAN                       Preterm                 182     240
Birth       ki1000109-EE               PAKISTAN                       Early term               47     240
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       162     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 257     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term              313     732
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       734    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 235    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term              546    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7098   13890
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 472   13890
Birth       ki1119695-PROBIT           BELARUS                        Early term             6320   13890
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       341     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  95     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              181     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term       570    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                 285    1293
Birth       ki1135781-COHORTS          INDIA                          Early term              438    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1164    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 649    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1211    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term     10944   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                4514   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             5984   21442
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     347
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388
6 months    ki1000108-IRC              INDIA                          Early term               97     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        17     373
6 months    ki1000109-EE               PAKISTAN                       Preterm                 297     373
6 months    ki1000109-EE               PAKISTAN                       Early term               59     373
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8008   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term             7202   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 113     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 573    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1086    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8527   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3045   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4438   16010
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       213     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     349
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390
24 months   ki1000108-IRC              INDIA                          Early term               98     390
24 months   ki1000109-EE               PAKISTAN                       Full or late term         7     167
24 months   ki1000109-EE               PAKISTAN                       Preterm                 131     167
24 months   ki1000109-EE               PAKISTAN                       Early term               29     167
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       557    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 167    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term              432    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      2024    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 137    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term             1874    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       375     661
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 107     661
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              179     661
24 months   ki1135781-COHORTS          INDIA                          Full or late term       565    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                 305    1308
24 months   ki1135781-COHORTS          INDIA                          Early term              438    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       938    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 513    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              973    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4327    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1604    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2271    8202


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




# Results Detail

## Results Plots
![](/tmp/5f56d9c7-e446-4e3a-b60d-95a7cb9ec677/1be8408d-fd54-4c82-948d-075dc3002007/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5f56d9c7-e446-4e3a-b60d-95a7cb9ec677/1be8408d-fd54-4c82-948d-075dc3002007/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5f56d9c7-e446-4e3a-b60d-95a7cb9ec677/1be8408d-fd54-4c82-948d-075dc3002007/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.9519683   -1.2508176   -0.6531189
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.8588887   -1.5312873   -0.1864901
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.8735086   -1.2984190   -0.4485981
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.2621806   -0.4677399   -0.0566214
Birth       ki1000108-IRC              INDIA                          Preterm              NA                -0.9200244   -1.4943159   -0.3457329
Birth       ki1000108-IRC              INDIA                          Early term           NA                -0.1739016   -0.4997052    0.1519019
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.7472368   -2.4801367    0.9856631
Birth       ki1000109-EE               PAKISTAN                       Preterm              NA                -1.9486152   -2.1531551   -1.7440754
Birth       ki1000109-EE               PAKISTAN                       Early term           NA                -1.8101201   -2.2013081   -1.4189321
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.5451775   -0.6921527   -0.3982024
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.3676044   -1.4802986   -1.2549101
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.7091424   -0.8144945   -0.6037903
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.2354188    0.1480741    0.3227636
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.6584752   -0.8429970   -0.4739534
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                 0.0429552   -0.0581521    0.1440625
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 1.5250589    1.3699425    1.6801754
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.4103614    0.1557068    0.6650159
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                 1.1725891    0.9911228    1.3540554
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2484791    0.1231799    0.3737782
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.4322630   -0.7323142   -0.1322117
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0639747   -0.2291491    0.1011996
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.3922352   -0.4815309   -0.3029395
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                -0.9008486   -1.0414523   -0.7602450
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                -0.6831914   -0.7814407   -0.5849422
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0008425   -0.0590864    0.0574014
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.6301402   -0.7276498   -0.5326305
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.2792886   -0.3363889   -0.2221883
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2769380   -1.3004527   -1.2534234
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -2.2364036   -2.2811000   -2.1917073
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.7078259   -1.7384026   -1.6772491
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.3749380   -1.5557907   -1.1940854
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.6014051   -2.0619189   -1.1408914
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -1.3003111   -1.5855887   -1.0150336
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -1.1204390   -1.2897084   -0.9511697
6 months    ki1000108-IRC              INDIA                          Preterm              NA                -1.6838803   -2.1309473   -1.2368132
6 months    ki1000108-IRC              INDIA                          Early term           NA                -1.2783290   -1.5175959   -1.0390621
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.6157438   -2.1308833   -1.1006043
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -2.1773800   -2.3082725   -2.0464875
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                -1.7415903   -2.0489914   -1.4341891
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.8761255   -1.0339789   -0.7182720
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.4430794   -1.5657370   -1.3204217
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.1620635   -1.2637616   -1.0603655
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.4571202   -0.5217024   -0.3925380
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.7117473   -0.8474265   -0.5760682
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.6559911   -0.7578951   -0.5540871
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.7847956   -0.8687312   -0.7008600
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.2660662   -1.4070834   -1.1250491
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.8718920   -0.9563592   -0.7874248
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1839631    0.0891496    0.2787766
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3133749   -0.5433993   -0.0833506
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0532767   -0.0537662    0.1603197
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -1.6648728   -1.7625268   -1.5672188
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -2.1388459   -2.3486277   -1.9290641
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                -1.9797077   -2.1220169   -1.8373984
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.8700279   -0.9608607   -0.7791951
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -1.1442772   -1.2666731   -1.0218814
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.9588363   -1.0565540   -0.8611187
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -1.0228863   -1.0887024   -0.9570701
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -1.3355634   -1.4316606   -1.2394662
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -1.1438745   -1.2075416   -1.0802075
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.1843572   -1.2121153   -1.1565991
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.6252053   -1.6705525   -1.5798580
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.3577642   -1.3937374   -1.3217911
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -2.4803503   -2.6137535   -2.3469471
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -2.5811774   -2.8675608   -2.2947939
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -2.5509688   -2.7358612   -2.3660765
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -1.7189246   -1.8345041   -1.6033451
24 months   ki1000108-IRC              INDIA                          Preterm              NA                -2.1527329   -2.4561853   -1.8492806
24 months   ki1000108-IRC              INDIA                          Early term           NA                -1.8338487   -2.0267438   -1.6409536
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -2.7907143   -3.4336728   -2.1477558
24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                -2.7506234   -2.9154457   -2.5858011
24 months   ki1000109-EE               PAKISTAN                       Early term           NA                -2.2766092   -2.5637372   -1.9894811
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -1.1853086   -1.3936393   -0.9769779
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.6279224   -1.7619487   -1.4938962
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.3633653   -1.4872925   -1.2394381
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -1.5671302   -1.6520897   -1.4821707
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.8547345   -2.0087090   -1.7007599
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -1.4855001   -1.5816339   -1.3893663
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1234962   -0.6293801    0.3823877
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3496603   -0.6812403   -0.0180804
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                -0.1150064   -0.3114017    0.0813889
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -2.9308257   -3.0388810   -2.8227704
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -3.0188634   -3.2365414   -2.8011854
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -3.1026068   -3.2535733   -2.9516404
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -2.0573758   -2.1533838   -1.9613677
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -2.2449626   -2.3728860   -2.1170391
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -2.1362859   -2.2369112   -2.0356607
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -2.3317337   -2.4012779   -2.2621895
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -2.5057656   -2.6080748   -2.4034564
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -2.4470995   -2.5194967   -2.3747022
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.9395922   -1.9770175   -1.9021670
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -2.2242041   -2.2772522   -2.1711560
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -2.0126685   -2.0592880   -1.9660489


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3102981   -0.4751168   -0.1454794
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0278680   -0.0365315    0.0922674
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.0530794   -0.0441925    0.1503513
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6072158   -0.6675691   -0.5468624
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2492460   -0.2884729   -0.2100192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5980879   -1.6176172   -1.5785586
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.3856004   -1.5319935   -1.2392073
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2321263   -1.3660720   -1.0981806
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5419570   -0.5926042   -0.4913098
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8948084   -0.9510697   -0.8385471
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8315428   -1.9081267   -1.7549589
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9630335   -1.0220763   -0.9039908
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1409862   -1.1830414   -1.0989310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3168751   -1.3402193   -1.2935309
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5319389   -2.6335015   -2.4303762
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7964915   -1.8912047   -1.7017782
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5800865   -1.6398819   -1.5202911
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9911195   -3.0733804   -2.9088586
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1289450   -2.1901830   -2.0677069
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4144884   -2.4596605   -2.3693164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0156596   -2.0439781   -1.9873411


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0930796   -0.6542067    0.8403658
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0784597   -0.4617809    0.6187003
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.6578437   -1.2690167   -0.0466707
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term     0.0882790   -0.2967548    0.4733128
Birth       ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -1.2013784   -2.9447871    0.5420303
Birth       ki1000109-EE               PAKISTAN                       Early term           Full or late term    -1.0628833   -2.8394069    0.7136404
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.8224268   -1.0075400   -0.6373136
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1639649   -0.3443861    0.0164563
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.8938940   -1.0983101   -0.6894780
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.1924636   -0.3260580   -0.0588692
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -1.1146976   -1.3368867   -0.8925085
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.3524699   -0.4708276   -0.2341122
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.6807420   -1.0056998   -0.3557843
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.3124538   -0.5183975   -0.1065101
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.5086134   -0.6753833   -0.3418436
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.2909562   -0.4232592   -0.1586533
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.6292977   -0.7428099   -0.5157854
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2784461   -0.3599235   -0.1969687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.9594656   -1.0103938   -0.9085374
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.4308878   -0.4666548   -0.3951209
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2264671   -0.7211803    0.2682461
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0746269   -0.2630400    0.4122938
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.5634412   -1.0412602   -0.0856223
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1578900   -0.4510869    0.1353070
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.5616362   -1.0931644   -0.0301081
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.1258465   -0.7256213    0.4739283
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.5669539   -0.7668937   -0.3670141
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.2859381   -0.4737606   -0.0981156
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.2546272   -0.4046611   -0.1045933
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.1988709   -0.3196689   -0.0780729
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.4812707   -0.6446856   -0.3178557
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0870964   -0.2063054    0.0321125
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.4973381   -0.7041102   -0.2905659
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.1306864   -0.1974549   -0.0639178
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.4739731   -0.7054239   -0.2425224
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.3148349   -0.4875610   -0.1421088
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.2742493   -0.4263503   -0.1221484
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0888084   -0.2217312    0.0441144
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3126772   -0.4286850   -0.1966693
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1209883   -0.2121302   -0.0298463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.4408481   -0.4906195   -0.3910766
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.1734070   -0.2127224   -0.1340917
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1008271   -0.4169798    0.2153257
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0706186   -0.2994426    0.1582055
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.4338083   -0.7589037   -0.1087129
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1149241   -0.3401903    0.1103421
24 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0400909   -0.6236576    0.7038393
24 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.5141051   -0.1900526    1.2182628
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.4426138   -0.6901778   -0.1950499
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1780567   -0.4204474    0.0643340
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.2876043   -0.4628808   -0.1123279
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0816301   -0.0459944    0.2092546
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.2261641   -0.7543911    0.3020629
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0084898   -0.4250697    0.4420494
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0880377   -0.3305681    0.1544928
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.1717811   -0.3573066    0.0137444
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.1875868   -0.3474327   -0.0277409
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0789101   -0.2179490    0.0601288
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.1740319   -0.2977572   -0.0503066
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1153658   -0.2157694   -0.0149621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.2846119   -0.3472792   -0.2219445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0730762   -0.1276247   -0.0185278


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0092274   -0.1908296    0.1723748
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.0481175   -0.1724091    0.0761742
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.1136382   -2.7978250    0.5705487
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3643170   -0.4956381   -0.2329959
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.2075509   -0.2748448   -0.1402569
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1981144   -0.2518318   -0.1443969
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1953996   -0.2847251   -0.1060742
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.2149806   -0.2838566   -0.1461046
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.2484035   -0.2964673   -0.2003397
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.3211498   -0.3387709   -0.3035287
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0106623   -0.1291226    0.1077979
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.1116872   -0.2122976   -0.0110769
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4678130   -0.9747735    0.0391475
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3225529   -0.4611652   -0.1839405
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0848368   -0.1252030   -0.0444707
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1100128   -0.1686865   -0.0513391
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0769645   -0.1094001   -0.0445289
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1666700   -0.2375303   -0.0958097
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0930056   -0.1604695   -0.0255417
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1181000   -0.1703974   -0.0658025
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.1325179   -0.1494785   -0.1155572
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0515886   -0.1326808    0.0295037
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0775669   -0.1506999   -0.0044338
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1207243   -0.5112745    0.7527231
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2559560   -0.4486625   -0.0632495
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0129563   -0.0743851    0.0484724
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0079086   -0.2467691    0.2309519
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0602938   -0.1323930    0.0118054
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0715692   -0.1425491   -0.0005892
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0827548   -0.1388126   -0.0266969
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0760674   -0.0983863   -0.0537484
