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
* W_nchldlt5
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
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
Birth       ki1101329-Keneba           GAMBIA                         Full or late term         2      11
Birth       ki1101329-Keneba           GAMBIA                         Preterm                   2      11
Birth       ki1101329-Keneba           GAMBIA                         Early term                7      11
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term     13089   25394
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                5265   25394
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             7040   25394
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8499   15953
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3031   15953
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4423   15953
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4298    8138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1590    8138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2250    8138


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

* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/6c3f9668-e00a-4f96-9f8e-99710f69071e/65c097fe-0479-4a7e-8554-346764cb01d1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6c3f9668-e00a-4f96-9f8e-99710f69071e/65c097fe-0479-4a7e-8554-346764cb01d1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6c3f9668-e00a-4f96-9f8e-99710f69071e/65c097fe-0479-4a7e-8554-346764cb01d1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.9406693   -1.2377731   -0.6435656
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.5866602   -1.1912418    0.0179213
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.8357998   -1.2058861   -0.4657135
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.2730507   -0.4782784   -0.0678229
Birth       ki1000108-IRC              INDIA                          Preterm              NA                -0.8542097   -1.4584134   -0.2500060
Birth       ki1000108-IRC              INDIA                          Early term           NA                -0.1776018   -0.5076116    0.1524080
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.7272338   -2.4339521    0.9794844
Birth       ki1000109-EE               PAKISTAN                       Preterm              NA                -1.9448555   -2.1492075   -1.7405034
Birth       ki1000109-EE               PAKISTAN                       Early term           NA                -1.8003098   -2.1786789   -1.4219407
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.5450545   -0.6911318   -0.3989773
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.3787064   -1.4914218   -1.2659909
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.7095619   -0.8140077   -0.6051160
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 1.5251467    1.3690061    1.6812874
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.4045765    0.1539136    0.6552393
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                 1.1715628    0.9899067    1.3532190
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2385038    0.1140095    0.3629981
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.4026891   -0.6958379   -0.1095404
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0582737   -0.2266376    0.1100902
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.3978507   -0.4868830   -0.3088183
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                -0.8885085   -1.0308536   -0.7461635
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                -0.6829570   -0.7810536   -0.5848604
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0014878   -0.0596894    0.0567138
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.6320024   -0.7300858   -0.5339190
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.2789011   -0.3360290   -0.2217732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.8586971   -0.8914932   -0.8259011
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.8595272   -1.9180158   -1.8010385
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.3047708   -1.3493132   -1.2602284
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.3626088   -1.5448108   -1.1804068
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.5954910   -2.0352088   -1.1557732
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -1.2530630   -1.5333012   -0.9728247
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -1.1282175   -1.2974176   -0.9590174
6 months    ki1000108-IRC              INDIA                          Preterm              NA                -1.7010940   -2.1664376   -1.2357505
6 months    ki1000108-IRC              INDIA                          Early term           NA                -1.2924067   -1.5198307   -1.0649827
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.6534206   -2.2421520   -1.0646892
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -2.1779511   -2.3089342   -2.0469679
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                -1.7517746   -2.0672167   -1.4363325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.8735167   -1.0313380   -0.7156954
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.4415471   -1.5653102   -1.3177841
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.1603969   -1.2630554   -1.0577385
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.4552195   -0.5199909   -0.3904480
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.7207236   -0.8537418   -0.5877055
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.6444731   -0.7467040   -0.5422422
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.7831739   -0.8669882   -0.6993596
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.2706182   -1.4107395   -1.1304969
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.8736447   -0.9581475   -0.7891418
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1811747    0.0852025    0.2771469
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3056604   -0.5306874   -0.0806335
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0536459   -0.0535664    0.1608582
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -1.6669028   -1.7644233   -1.5693822
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -2.1199165   -2.3294060   -1.9104270
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                -1.9792621   -2.1214905   -1.8370337
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.8713446   -0.9626065   -0.7800828
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -1.1258549   -1.2470438   -1.0046660
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.9617279   -1.0599020   -0.8635537
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -1.0252301   -1.0910476   -0.9594126
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -1.3454895   -1.4419107   -1.2490683
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -1.1440671   -1.2078010   -1.0803332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2073178   -1.2349177   -1.1797179
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.6483380   -1.6940520   -1.6026241
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.3810611   -1.4172933   -1.3448289
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -2.4864563   -2.6195116   -2.3534010
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -2.6426273   -2.9273446   -2.3579099
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -2.5804933   -2.7697062   -2.3912804
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -1.7201434   -1.8353465   -1.6049404
24 months   ki1000108-IRC              INDIA                          Preterm              NA                -2.1598991   -2.4687201   -1.8510780
24 months   ki1000108-IRC              INDIA                          Early term           NA                -1.8365445   -2.0302150   -1.6428740
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -2.7907143   -3.4336728   -2.1477558
24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                -2.7506234   -2.9154457   -2.5858011
24 months   ki1000109-EE               PAKISTAN                       Early term           NA                -2.2766092   -2.5637372   -1.9894811
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -1.1855517   -1.3930643   -0.9780392
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.6288831   -1.7624645   -1.4953016
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.3617235   -1.4860956   -1.2373514
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -1.5670877   -1.6524010   -1.4817744
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.8507232   -2.0081332   -1.6933131
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -1.4866433   -1.5821744   -1.3911121
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1256289   -0.6149681    0.3637102
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3391700   -0.6747031   -0.0036369
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                -0.1085560   -0.2996482    0.0825363
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -2.9293040   -3.0372011   -2.8214070
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -3.0222324   -3.2396065   -2.8048584
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -3.1037200   -3.2560232   -2.9514167
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -2.0574134   -2.1532158   -1.9616111
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -2.2529650   -2.3821661   -2.1237639
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -2.1351189   -2.2352723   -2.0349655
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -2.3301536   -2.3995768   -2.2607304
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -2.5084326   -2.6107710   -2.4060941
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -2.4482973   -2.5207145   -2.3758802
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.9439590   -1.9813582   -1.9065597
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -2.2388237   -2.2919332   -2.1857142
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -2.0183904   -2.0643676   -1.9724132


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3102981   -0.4751168   -0.1454794
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.0530794   -0.0441925    0.1503513
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6072158   -0.6675691   -0.5468624
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2492460   -0.2884729   -0.2100192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1878459   -1.2167939   -1.1588980
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3392722   -1.3625791   -1.3159653
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5319389   -2.6335015   -2.4303762
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7964915   -1.8912047   -1.7017782
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5800865   -1.6398819   -1.5202911
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9911195   -3.0733804   -2.9088586
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1289450   -2.1901830   -2.0677069
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4144884   -2.4596605   -2.3693164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0218641   -2.0501149   -1.9936133


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.3540091   -0.3235414    1.0315596
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1048695   -0.3858072    0.5955462
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.5811590   -1.2201205    0.0578025
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term     0.0954489   -0.2948772    0.4857750
Birth       ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -1.2176216   -2.9363181    0.5010748
Birth       ki1000109-EE               PAKISTAN                       Early term           Full or late term    -1.0730760   -2.8198579    0.6737060
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.8336518   -1.0181633   -0.6491404
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1645073   -0.3439988    0.0149841
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -1.1205703   -1.3393415   -0.9017991
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.3535839   -0.4736826   -0.2334852
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.6411929   -0.9597977   -0.3225881
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.2967775   -0.5063160   -0.0872391
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.4906579   -0.6587930   -0.3225227
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.2851064   -0.4173704   -0.1528423
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.6305146   -0.7444989   -0.5165303
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2774133   -0.3589017   -0.1959250
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -1.0008300   -1.0639278   -0.9377322
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.4460737   -0.4950823   -0.3970651
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2328822   -0.7092663    0.2435019
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1095458   -0.2241572    0.4432489
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.5728766   -1.0678509   -0.0779022
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1641892   -0.4471185    0.1187401
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.5245305   -1.1277095    0.0786485
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0983540   -0.7664971    0.5697890
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.5680304   -0.7685732   -0.3674877
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.2868802   -0.4751455   -0.0986150
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.2655042   -0.4132500   -0.1177584
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.1892537   -0.3105553   -0.0679520
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.4874443   -0.6499792   -0.3249094
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0904708   -0.2094637    0.0285221
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.4868351   -0.6880429   -0.2856274
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.1275288   -0.1968905   -0.0581672
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.4530137   -0.6839314   -0.2220961
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.3123593   -0.4847006   -0.1400181
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.2545103   -0.4055097   -0.1035108
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0903832   -0.2240526    0.0432862
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3202594   -0.4364920   -0.2040269
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1188370   -0.2100394   -0.0276346
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.4410203   -0.4910802   -0.3909603
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.1737433   -0.2133007   -0.1341859
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1561710   -0.4710355    0.1586936
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0940370   -0.3256666    0.1375927
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.4397556   -0.7697649   -0.1097464
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1164011   -0.3417661    0.1089640
24 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0400909   -0.6236576    0.7038393
24 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.5141051   -0.1900526    1.2182628
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.4433313   -0.6894173   -0.1972454
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1761718   -0.4182423    0.0658987
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.2836355   -0.4620666   -0.1052043
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0804444   -0.0465769    0.2074657
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.2135410   -0.7379738    0.3108917
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0170730   -0.4101271    0.4442731
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0929284   -0.3354967    0.1496400
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.1744159   -0.3609286    0.0120968
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.1955515   -0.3564059   -0.0346972
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0777054   -0.2163301    0.0609192
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.1782790   -0.3019322   -0.0546258
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1181437   -0.2184535   -0.0178340
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.2948648   -0.3579865   -0.2317430
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0744314   -0.1287079   -0.0201550


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0205263   -0.1928557    0.1518030
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.0372474   -0.1623531    0.0878582
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.1336412   -2.7915792    0.5242969
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3644400   -0.4951660   -0.2337140
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1982022   -0.2528525   -0.1435519
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1854244   -0.2746232   -0.0962255
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.2093651   -0.2780459   -0.1406843
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.2477582   -0.2958505   -0.1996659
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.3291488   -0.3511518   -0.3071458
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0229916   -0.1426135    0.0966303
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.1039088   -0.2039437   -0.0038740
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4301362   -1.0092987    0.1490264
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3251616   -0.4639861   -0.1863372
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0867375   -0.1272917   -0.0461833
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1116345   -0.1701032   -0.0531658
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0741761   -0.1082750   -0.0400773
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1646400   -0.2352422   -0.0940378
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0916889   -0.1594048   -0.0239730
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1157561   -0.1680614   -0.0634508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.1319545   -0.1488556   -0.1150534
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0454825   -0.1260873    0.0351222
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0763480   -0.1488963   -0.0037997
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1207243   -0.5112745    0.7527231
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2557129   -0.4477795   -0.0636463
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0129988   -0.0744343    0.0484367
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0057759   -0.2257182    0.2141665
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0618155   -0.1339062    0.0102752
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0715315   -0.1423321   -0.0007309
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0843348   -0.1402803   -0.0283893
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0779051   -0.1002326   -0.0555777
