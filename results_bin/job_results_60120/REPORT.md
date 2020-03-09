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

**Outcome Variable:** stunted

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

agecat      studyid          country                        gagebrth             stunted   n_cell       n
----------  ---------------  -----------------------------  ------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term          0       48      92
Birth       CMC-V-BCS-2002   INDIA                          Full or late term          1       10      92
Birth       CMC-V-BCS-2002   INDIA                          Preterm                    0        8      92
Birth       CMC-V-BCS-2002   INDIA                          Preterm                    1        3      92
Birth       CMC-V-BCS-2002   INDIA                          Early term                 0       19      92
Birth       CMC-V-BCS-2002   INDIA                          Early term                 1        4      92
Birth       COHORTS          GUATEMALA                      Full or late term          0      330     617
Birth       COHORTS          GUATEMALA                      Full or late term          1       11     617
Birth       COHORTS          GUATEMALA                      Preterm                    0       82     617
Birth       COHORTS          GUATEMALA                      Preterm                    1       13     617
Birth       COHORTS          GUATEMALA                      Early term                 0      170     617
Birth       COHORTS          GUATEMALA                      Early term                 1       11     617
Birth       COHORTS          INDIA                          Full or late term          0      536    1293
Birth       COHORTS          INDIA                          Full or late term          1       34    1293
Birth       COHORTS          INDIA                          Preterm                    0      242    1293
Birth       COHORTS          INDIA                          Preterm                    1       43    1293
Birth       COHORTS          INDIA                          Early term                 0      391    1293
Birth       COHORTS          INDIA                          Early term                 1       47    1293
Birth       COHORTS          PHILIPPINES                    Full or late term          0     1128    3024
Birth       COHORTS          PHILIPPINES                    Full or late term          1       36    3024
Birth       COHORTS          PHILIPPINES                    Preterm                    0      561    3024
Birth       COHORTS          PHILIPPINES                    Preterm                    1       88    3024
Birth       COHORTS          PHILIPPINES                    Early term                 0     1150    3024
Birth       COHORTS          PHILIPPINES                    Early term                 1       61    3024
Birth       IRC              INDIA                          Full or late term          0      211     369
Birth       IRC              INDIA                          Full or late term          1       27     369
Birth       IRC              INDIA                          Preterm                    0       27     369
Birth       IRC              INDIA                          Preterm                    1        9     369
Birth       IRC              INDIA                          Early term                 0       87     369
Birth       IRC              INDIA                          Early term                 1        8     369
Birth       JiVitA-3         BANGLADESH                     Full or late term          0     8478   21442
Birth       JiVitA-3         BANGLADESH                     Full or late term          1     2466   21442
Birth       JiVitA-3         BANGLADESH                     Preterm                    0     2065   21442
Birth       JiVitA-3         BANGLADESH                     Preterm                    1     2449   21442
Birth       JiVitA-3         BANGLADESH                     Early term                 0     3790   21442
Birth       JiVitA-3         BANGLADESH                     Early term                 1     2194   21442
Birth       Keneba           GAMBIA                         Full or late term          0      712    1515
Birth       Keneba           GAMBIA                         Full or late term          1       22    1515
Birth       Keneba           GAMBIA                         Preterm                    0      200    1515
Birth       Keneba           GAMBIA                         Preterm                    1       35    1515
Birth       Keneba           GAMBIA                         Early term                 0      521    1515
Birth       Keneba           GAMBIA                         Early term                 1       25    1515
Birth       NIH-Crypto       BANGLADESH                     Full or late term          0      150     732
Birth       NIH-Crypto       BANGLADESH                     Full or late term          1       12     732
Birth       NIH-Crypto       BANGLADESH                     Preterm                    0      193     732
Birth       NIH-Crypto       BANGLADESH                     Preterm                    1       64     732
Birth       NIH-Crypto       BANGLADESH                     Early term                 0      288     732
Birth       NIH-Crypto       BANGLADESH                     Early term                 1       25     732
Birth       PROBIT           BELARUS                        Full or late term          0     7095   13893
Birth       PROBIT           BELARUS                        Full or late term          1        5   13893
Birth       PROBIT           BELARUS                        Preterm                    0      460   13893
Birth       PROBIT           BELARUS                        Preterm                    1       12   13893
Birth       PROBIT           BELARUS                        Early term                 0     6304   13893
Birth       PROBIT           BELARUS                        Early term                 1       17   13893
6 months    CMC-V-BCS-2002   INDIA                          Full or late term          0      157     347
6 months    CMC-V-BCS-2002   INDIA                          Full or late term          1       55     347
6 months    CMC-V-BCS-2002   INDIA                          Preterm                    0       29     347
6 months    CMC-V-BCS-2002   INDIA                          Preterm                    1       23     347
6 months    CMC-V-BCS-2002   INDIA                          Early term                 0       60     347
6 months    CMC-V-BCS-2002   INDIA                          Early term                 1       23     347
6 months    COHORTS          GUATEMALA                      Full or late term          0      258     713
6 months    COHORTS          GUATEMALA                      Full or late term          1      131     713
6 months    COHORTS          GUATEMALA                      Preterm                    0       50     713
6 months    COHORTS          GUATEMALA                      Preterm                    1       63     713
6 months    COHORTS          GUATEMALA                      Early term                 0      106     713
6 months    COHORTS          GUATEMALA                      Early term                 1      105     713
6 months    COHORTS          INDIA                          Full or late term          0      478    1312
6 months    COHORTS          INDIA                          Full or late term          1       90    1312
6 months    COHORTS          INDIA                          Preterm                    0      231    1312
6 months    COHORTS          INDIA                          Preterm                    1       68    1312
6 months    COHORTS          INDIA                          Early term                 0      381    1312
6 months    COHORTS          INDIA                          Early term                 1       64    1312
6 months    COHORTS          PHILIPPINES                    Full or late term          0      855    2687
6 months    COHORTS          PHILIPPINES                    Full or late term          1      173    2687
6 months    COHORTS          PHILIPPINES                    Preterm                    0      401    2687
6 months    COHORTS          PHILIPPINES                    Preterm                    1      172    2687
6 months    COHORTS          PHILIPPINES                    Early term                 0      863    2687
6 months    COHORTS          PHILIPPINES                    Early term                 1      223    2687
6 months    IRC              INDIA                          Full or late term          0      198     388
6 months    IRC              INDIA                          Full or late term          1       51     388
6 months    IRC              INDIA                          Preterm                    0       23     388
6 months    IRC              INDIA                          Preterm                    1       19     388
6 months    IRC              INDIA                          Early term                 0       75     388
6 months    IRC              INDIA                          Early term                 1       22     388
6 months    JiVitA-3         BANGLADESH                     Full or late term          0     6770   16010
6 months    JiVitA-3         BANGLADESH                     Full or late term          1     1757   16010
6 months    JiVitA-3         BANGLADESH                     Preterm                    0     1946   16010
6 months    JiVitA-3         BANGLADESH                     Preterm                    1     1099   16010
6 months    JiVitA-3         BANGLADESH                     Early term                 0     3246   16010
6 months    JiVitA-3         BANGLADESH                     Early term                 1     1192   16010
6 months    Keneba           GAMBIA                         Full or late term          0      583    1374
6 months    Keneba           GAMBIA                         Full or late term          1       75    1374
6 months    Keneba           GAMBIA                         Preterm                    0      160    1374
6 months    Keneba           GAMBIA                         Preterm                    1       47    1374
6 months    Keneba           GAMBIA                         Early term                 0      450    1374
6 months    Keneba           GAMBIA                         Early term                 1       59    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term          0      134     715
6 months    NIH-Crypto       BANGLADESH                     Full or late term          1       21     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                    0      180     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                    1       71     715
6 months    NIH-Crypto       BANGLADESH                     Early term                 0      251     715
6 months    NIH-Crypto       BANGLADESH                     Early term                 1       58     715
6 months    PROBIT           BELARUS                        Full or late term          0     7751   15760
6 months    PROBIT           BELARUS                        Full or late term          1      256   15760
6 months    PROBIT           BELARUS                        Preterm                    0      503   15760
6 months    PROBIT           BELARUS                        Preterm                    1       48   15760
6 months    PROBIT           BELARUS                        Early term                 0     6886   15760
6 months    PROBIT           BELARUS                        Early term                 1      316   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1070    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       97    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      252    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       39    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      399    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       46    1903
24 months   CMC-V-BCS-2002   INDIA                          Full or late term          0       69     349
24 months   CMC-V-BCS-2002   INDIA                          Full or late term          1      144     349
24 months   CMC-V-BCS-2002   INDIA                          Preterm                    0       13     349
24 months   CMC-V-BCS-2002   INDIA                          Preterm                    1       39     349
24 months   CMC-V-BCS-2002   INDIA                          Early term                 0       18     349
24 months   CMC-V-BCS-2002   INDIA                          Early term                 1       66     349
24 months   COHORTS          GUATEMALA                      Full or late term          0       76     661
24 months   COHORTS          GUATEMALA                      Full or late term          1      299     661
24 months   COHORTS          GUATEMALA                      Preterm                    0       19     661
24 months   COHORTS          GUATEMALA                      Preterm                    1       88     661
24 months   COHORTS          GUATEMALA                      Early term                 0       24     661
24 months   COHORTS          GUATEMALA                      Early term                 1      155     661
24 months   COHORTS          INDIA                          Full or late term          0      278    1308
24 months   COHORTS          INDIA                          Full or late term          1      287    1308
24 months   COHORTS          INDIA                          Preterm                    0      138    1308
24 months   COHORTS          INDIA                          Preterm                    1      167    1308
24 months   COHORTS          INDIA                          Early term                 0      196    1308
24 months   COHORTS          INDIA                          Early term                 1      242    1308
24 months   COHORTS          PHILIPPINES                    Full or late term          0      384    2424
24 months   COHORTS          PHILIPPINES                    Full or late term          1      554    2424
24 months   COHORTS          PHILIPPINES                    Preterm                    0      173    2424
24 months   COHORTS          PHILIPPINES                    Preterm                    1      340    2424
24 months   COHORTS          PHILIPPINES                    Early term                 0      355    2424
24 months   COHORTS          PHILIPPINES                    Early term                 1      618    2424
24 months   IRC              INDIA                          Full or late term          0      152     390
24 months   IRC              INDIA                          Full or late term          1       98     390
24 months   IRC              INDIA                          Preterm                    0       19     390
24 months   IRC              INDIA                          Preterm                    1       23     390
24 months   IRC              INDIA                          Early term                 0       55     390
24 months   IRC              INDIA                          Early term                 1       43     390
24 months   JiVitA-3         BANGLADESH                     Full or late term          0     2338    8202
24 months   JiVitA-3         BANGLADESH                     Full or late term          1     1989    8202
24 months   JiVitA-3         BANGLADESH                     Preterm                    0      686    8202
24 months   JiVitA-3         BANGLADESH                     Preterm                    1      918    8202
24 months   JiVitA-3         BANGLADESH                     Early term                 0     1150    8202
24 months   JiVitA-3         BANGLADESH                     Early term                 1     1121    8202
24 months   Keneba           GAMBIA                         Full or late term          0      373    1156
24 months   Keneba           GAMBIA                         Full or late term          1      184    1156
24 months   Keneba           GAMBIA                         Preterm                    0       95    1156
24 months   Keneba           GAMBIA                         Preterm                    1       72    1156
24 months   Keneba           GAMBIA                         Early term                 0      300    1156
24 months   Keneba           GAMBIA                         Early term                 1      132    1156
24 months   NIH-Crypto       BANGLADESH                     Full or late term          0       66     514
24 months   NIH-Crypto       BANGLADESH                     Full or late term          1       13     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                    0      143     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                    1       65     514
24 months   NIH-Crypto       BANGLADESH                     Early term                 0      173     514
24 months   NIH-Crypto       BANGLADESH                     Early term                 1       54     514
24 months   PROBIT           BELARUS                        Full or late term          0     1888    4035
24 months   PROBIT           BELARUS                        Full or late term          1      137    4035
24 months   PROBIT           BELARUS                        Preterm                    0      124    4035
24 months   PROBIT           BELARUS                        Preterm                    1       13    4035
24 months   PROBIT           BELARUS                        Early term                 0     1748    4035
24 months   PROBIT           BELARUS                        Early term                 1      125    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        0       6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/6c8d0d7c-dc7f-40a6-8813-5744951b3257/0426a79a-5925-4b4a-95f9-cceab8248e6a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6c8d0d7c-dc7f-40a6-8813-5744951b3257/0426a79a-5925-4b4a-95f9-cceab8248e6a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6c8d0d7c-dc7f-40a6-8813-5744951b3257/0426a79a-5925-4b4a-95f9-cceab8248e6a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6c8d0d7c-dc7f-40a6-8813-5744951b3257/0426a79a-5925-4b4a-95f9-cceab8248e6a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                0.0314825    0.0126800   0.0502850
Birth       COHORTS          GUATEMALA                      Preterm              NA                0.1291997    0.0581635   0.2002358
Birth       COHORTS          GUATEMALA                      Early term           NA                0.0593943    0.0242609   0.0945278
Birth       COHORTS          INDIA                          Full or late term    NA                0.0602573    0.0407304   0.0797842
Birth       COHORTS          INDIA                          Preterm              NA                0.1474371    0.1059534   0.1889208
Birth       COHORTS          INDIA                          Early term           NA                0.1040460    0.0754638   0.1326281
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                0.0309857    0.0210288   0.0409426
Birth       COHORTS          PHILIPPINES                    Preterm              NA                0.1322616    0.1057907   0.1587326
Birth       COHORTS          PHILIPPINES                    Early term           NA                0.0509556    0.0386725   0.0632387
Birth       IRC              INDIA                          Full or late term    NA                0.1134454    0.0730999   0.1537909
Birth       IRC              INDIA                          Preterm              NA                0.2500000    0.1083597   0.3916403
Birth       IRC              INDIA                          Early term           NA                0.0842105    0.0282919   0.1401292
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                0.2268961    0.2175846   0.2362075
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                0.5402772    0.5238307   0.5567237
Birth       JiVitA-3         BANGLADESH                     Early term           NA                0.3665475    0.3528264   0.3802687
Birth       Keneba           GAMBIA                         Full or late term    NA                0.0310547    0.0184865   0.0436229
Birth       Keneba           GAMBIA                         Preterm              NA                0.1439135    0.0987041   0.1891229
Birth       Keneba           GAMBIA                         Early term           NA                0.0451115    0.0274817   0.0627412
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0752949    0.0341104   0.1164794
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                0.2461997    0.1932572   0.2991423
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                0.0794606    0.0494462   0.1094750
Birth       PROBIT           BELARUS                        Full or late term    NA                0.0007042   -0.0002235   0.0016320
Birth       PROBIT           BELARUS                        Preterm              NA                0.0254237    0.0044461   0.0464013
Birth       PROBIT           BELARUS                        Early term           NA                0.0026894    0.0008212   0.0045577
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2592782    0.2000985   0.3184579
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4650513    0.3318551   0.5982475
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.2903768    0.1938795   0.3868742
6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.3373589    0.2901690   0.3845487
6 months    COHORTS          GUATEMALA                      Preterm              NA                0.5450453    0.4575087   0.6325818
6 months    COHORTS          GUATEMALA                      Early term           NA                0.4907563    0.4222973   0.5592152
6 months    COHORTS          INDIA                          Full or late term    NA                0.1604295    0.1304777   0.1903814
6 months    COHORTS          INDIA                          Preterm              NA                0.2158864    0.1694238   0.2623491
6 months    COHORTS          INDIA                          Early term           NA                0.1476835    0.1151288   0.1802381
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.1703002    0.1475752   0.1930251
6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.3009629    0.2636791   0.3382467
6 months    COHORTS          PHILIPPINES                    Early term           NA                0.2054164    0.1815702   0.2292625
6 months    IRC              INDIA                          Full or late term    NA                0.2025166    0.1524887   0.2525446
6 months    IRC              INDIA                          Preterm              NA                0.4824460    0.3348827   0.6300093
6 months    IRC              INDIA                          Early term           NA                0.2499361    0.1638589   0.3360134
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.2094548    0.1996066   0.2193030
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                0.3492888    0.3316958   0.3668818
6 months    JiVitA-3         BANGLADESH                     Early term           NA                0.2655303    0.2511403   0.2799203
6 months    Keneba           GAMBIA                         Full or late term    NA                0.1122217    0.0882188   0.1362247
6 months    Keneba           GAMBIA                         Preterm              NA                0.2273905    0.1712031   0.2835780
6 months    Keneba           GAMBIA                         Early term           NA                0.1172514    0.0892889   0.1452139
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1335431    0.0799308   0.1871553
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                0.2851117    0.2286818   0.3415416
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                0.1883306    0.1444357   0.2322255
6 months    PROBIT           BELARUS                        Full or late term    NA                0.0319763    0.0231998   0.0407528
6 months    PROBIT           BELARUS                        Preterm              NA                0.0842950    0.0485600   0.1200300
6 months    PROBIT           BELARUS                        Early term           NA                0.0438724    0.0313990   0.0563458
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0837944    0.0679558   0.0996329
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1309823    0.0916904   0.1702742
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1050857    0.0767587   0.1334126
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6760987    0.6129428   0.7392547
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7500722    0.6294673   0.8706771
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.7841441    0.6953894   0.8728988
24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.7967263    0.7559389   0.8375136
24 months   COHORTS          GUATEMALA                      Preterm              NA                0.8296303    0.7562555   0.9030052
24 months   COHORTS          GUATEMALA                      Early term           NA                0.8674682    0.8173599   0.9175765
24 months   COHORTS          INDIA                          Full or late term    NA                0.5031794    0.4630399   0.5433188
24 months   COHORTS          INDIA                          Preterm              NA                0.5336739    0.4817545   0.5855933
24 months   COHORTS          INDIA                          Early term           NA                0.5676404    0.5230803   0.6122005
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.5899202    0.5594906   0.6203499
24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.6614483    0.6229883   0.6999083
24 months   COHORTS          PHILIPPINES                    Early term           NA                0.6371283    0.6077900   0.6664667
24 months   IRC              INDIA                          Full or late term    NA                0.3908160    0.3306447   0.4509874
24 months   IRC              INDIA                          Preterm              NA                0.5719725    0.4366863   0.7072588
24 months   IRC              INDIA                          Early term           NA                0.4366042    0.3358767   0.5373318
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.4654318    0.4474468   0.4834169
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.5603839    0.5337495   0.5870184
24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.4907373    0.4678552   0.5136194
24 months   Keneba           GAMBIA                         Full or late term    NA                0.3278451    0.2889436   0.3667467
24 months   Keneba           GAMBIA                         Preterm              NA                0.4406755    0.3653527   0.5159982
24 months   Keneba           GAMBIA                         Early term           NA                0.3041534    0.2607994   0.3475074
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1569411    0.0754383   0.2384439
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.3037756    0.2407936   0.3667576
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.2430227    0.1871771   0.2988684
24 months   PROBIT           BELARUS                        Full or late term    NA                0.0669183    0.0397137   0.0941230
24 months   PROBIT           BELARUS                        Preterm              NA                0.0959682    0.0221757   0.1697606
24 months   PROBIT           BELARUS                        Early term           NA                0.0664800    0.0343942   0.0985658


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0567261   0.0384591   0.0749931
Birth       COHORTS          INDIA                          NA                   NA                0.0959010   0.0798450   0.1119570
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0611772   0.0526341   0.0697204
Birth       IRC              INDIA                          NA                   NA                0.1192412   0.0861307   0.1523517
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3315456   0.3240495   0.3390416
Birth       Keneba           GAMBIA                         NA                   NA                0.0541254   0.0427281   0.0655227
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROBIT           BELARUS                        NA                   NA                0.0024473   0.0007336   0.0041610
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2910663   0.2432023   0.3389303
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4193548   0.3831093   0.4556004
6 months    COHORTS          INDIA                          NA                   NA                0.1692073   0.1489117   0.1895030
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2113882   0.1959475   0.2268289
6 months    IRC              INDIA                          NA                   NA                0.2371134   0.1947393   0.2794875
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2528420   0.2446204   0.2610636
6 months    Keneba           GAMBIA                         NA                   NA                0.1317322   0.1138432   0.1496212
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0956385   0.0824215   0.1088554
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7134670   0.6659628   0.7609713
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8199697   0.7906576   0.8492819
24 months   COHORTS          INDIA                          NA                   NA                0.5321101   0.5050591   0.5591611
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6237624   0.6044733   0.6430515
24 months   IRC              INDIA                          NA                   NA                0.4205128   0.3714576   0.4695680
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4910997   0.4777434   0.5044561
24 months   Keneba           GAMBIA                         NA                   NA                0.3356401   0.3084071   0.3628732
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term     4.1038538    1.8204702     9.251245
Birth       COHORTS          GUATEMALA                      Early term           Full or late term     1.8865801    0.8141233     4.371800
Birth       COHORTS          INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       COHORTS          INDIA                          Preterm              Full or late term     2.4467913    1.5934110     3.757215
Birth       COHORTS          INDIA                          Early term           Full or late term     1.7266936    1.1293111     2.640079
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term     4.2684728    2.9230055     6.233262
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term     1.6444882    1.1007828     2.456744
Birth       IRC              INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       IRC              INDIA                          Preterm              Full or late term     2.2037037    1.1288592     4.301963
Birth       IRC              INDIA                          Early term           Full or late term     0.7423002    0.3494922     1.576600
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term     2.3811661    2.2625400     2.506012
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term     1.6154866    1.5304426     1.705256
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term     4.6341898    2.7766942     7.734275
Birth       Keneba           GAMBIA                         Early term           Full or late term     1.4526443    0.8274012     2.550365
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term     3.2698066    1.8163018     5.886486
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term     1.0553257    0.5427165     2.052107
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    36.1016949   10.3744573   125.628969
Birth       PROBIT           BELARUS                        Early term           Full or late term     3.8190160    1.3496706    10.806254
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.7936381    1.2450404     2.583962
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.1199431    0.7486707     1.675333
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term     1.6156247    1.3059356     1.998753
6 months    COHORTS          GUATEMALA                      Early term           Full or late term     1.4547010    1.1937260     1.772731
6 months    COHORTS          INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    COHORTS          INDIA                          Preterm              Full or late term     1.3456775    1.0134584     1.786801
6 months    COHORTS          INDIA                          Early term           Full or late term     0.9205503    0.6906586     1.226964
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term     1.7672494    1.4740391     2.118784
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term     1.2062016    1.0115547     1.438303
6 months    IRC              INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    IRC              INDIA                          Preterm              Full or late term     2.3822537    1.6130808     3.518195
6 months    IRC              INDIA                          Early term           Full or late term     1.2341512    0.8059470     1.889863
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term     1.6676096    1.5617615     1.780631
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term     1.2677212    1.1870606     1.353863
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term     2.0262609    1.4629108     2.806551
6 months    Keneba           GAMBIA                         Early term           Full or late term     1.0448188    0.7586468     1.438939
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term     2.1349799    1.3654379     3.338225
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term     1.4102616    0.8868933     2.242477
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term     2.6361669    1.6403626     4.236488
6 months    PROBIT           BELARUS                        Early term           Full or late term     1.3720265    1.1596210     1.623338
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     1.5631393    1.0966842     2.227993
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     1.2540899    0.9023388     1.742961
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.1094122    0.9210582     1.336284
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.1598071    1.0013512     1.343337
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term     1.0412991    0.9400758     1.153422
24 months   COHORTS          GUATEMALA                      Early term           Full or late term     1.0887907    1.0079969     1.176060
24 months   COHORTS          INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   COHORTS          INDIA                          Preterm              Full or late term     1.0606037    0.9383096     1.198837
24 months   COHORTS          INDIA                          Early term           Full or late term     1.1281075    1.0117584     1.257837
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term     1.1212504    1.0390220     1.209987
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term     1.0800246    1.0094512     1.155532
24 months   IRC              INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   IRC              INDIA                          Preterm              Full or late term     1.4635339    1.1072185     1.934516
24 months   IRC              INDIA                          Early term           Full or late term     1.1171605    0.8460530     1.475141
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term     1.2040086    1.1332963     1.279133
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term     1.0543699    0.9965483     1.115546
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term     1.3441574    1.0922323     1.654189
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.9277350    0.7712128     1.116024
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     1.9356021    1.1077253     3.382206
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     1.5484960    0.8799304     2.725034
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term     1.4341082    0.6032830     3.409124
24 months   PROBIT           BELARUS                        Early term           Full or late term     0.9934490    0.6950529     1.419951


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                0.0252436    0.0079572   0.0425299
Birth       COHORTS          INDIA                          Full or late term    NA                0.0356437    0.0181560   0.0531313
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                0.0301915    0.0204151   0.0399680
Birth       IRC              INDIA                          Full or late term    NA                0.0057958   -0.0191902   0.0307818
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                0.1046495    0.0975785   0.1117205
Birth       Keneba           GAMBIA                         Full or late term    NA                0.0230707    0.0113297   0.0348117
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0626832    0.0228168   0.1025497
Birth       PROBIT           BELARUS                        Full or late term    NA                0.0017431    0.0005871   0.0028990
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0317881   -0.0069081   0.0704843
6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.0819960    0.0485030   0.1154889
6 months    COHORTS          INDIA                          Full or late term    NA                0.0087778   -0.0141460   0.0317015
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.0410880    0.0222956   0.0598804
6 months    IRC              INDIA                          Full or late term    NA                0.0345968    0.0018001   0.0673935
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.0433872    0.0368137   0.0499607
6 months    Keneba           GAMBIA                         Full or late term    NA                0.0195104    0.0011857   0.0378351
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0762472    0.0260647   0.1264296
6 months    PROBIT           BELARUS                        Full or late term    NA                0.0073638    0.0035967   0.0111308
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0118441    0.0009988   0.0226894
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0373683   -0.0000174   0.0747541
24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0232435   -0.0019993   0.0484863
24 months   COHORTS          INDIA                          Full or late term    NA                0.0289307   -0.0001231   0.0579845
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0338421    0.0108109   0.0568734
24 months   IRC              INDIA                          Full or late term    NA                0.0296968   -0.0071975   0.0665911
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0256679    0.0144809   0.0368549
24 months   Keneba           GAMBIA                         Full or late term    NA                0.0077950   -0.0201893   0.0357793
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0998682    0.0223582   0.1773782
24 months   PROBIT           BELARUS                        Full or late term    NA                0.0012353   -0.0102494   0.0127200


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                0.4450081    0.0914890   0.6609661
Birth       COHORTS          INDIA                          Full or late term    NA                0.3716715    0.1731678   0.5225190
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                0.4935093    0.3251275   0.6198797
Birth       IRC              INDIA                          Full or late term    NA                0.0486058   -0.1854004   0.2364176
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                0.3156414    0.2941001   0.3365253
Birth       Keneba           GAMBIA                         Full or late term    NA                0.4262450    0.1900254   0.5935739
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                0.4542984    0.0899410   0.6727792
Birth       PROBIT           BELARUS                        Full or late term    NA                0.7122411    0.2970627   0.8822012
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1092125   -0.0339650   0.2325635
6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.1955289    0.1111918   0.2718634
6 months    COHORTS          INDIA                          Full or late term    NA                0.0518758   -0.0936125   0.1780092
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.1943722    0.1011716   0.2779087
6 months    IRC              INDIA                          Full or late term    NA                0.1459081   -0.0030610   0.2727531
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.1715980    0.1453059   0.1970814
6 months    Keneba           GAMBIA                         Full or late term    NA                0.1481068   -0.0018313   0.2756046
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.3634448    0.0784459   0.5603052
6 months    PROBIT           BELARUS                        Full or late term    NA                0.1871821    0.0991560   0.2666066
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1238423    0.0041301   0.2291642
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0523757   -0.0019680   0.1037719
24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0283468   -0.0030663   0.0587760
24 months   COHORTS          INDIA                          Full or late term    NA                0.0543698   -0.0019781   0.1075490
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0542549    0.0165160   0.0905456
24 months   IRC              INDIA                          Full or late term    NA                0.0706204   -0.0214482   0.1543904
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0522662    0.0290687   0.0749095
24 months   Keneba           GAMBIA                         Full or late term    NA                0.0232243   -0.0638214   0.1031476
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.3888807    0.0024078   0.6256319
24 months   PROBIT           BELARUS                        Full or late term    NA                0.0181253   -0.1648639   0.1723687
