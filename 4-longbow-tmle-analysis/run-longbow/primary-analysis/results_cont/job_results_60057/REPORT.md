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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        anywast06    n_cell      n
----------  ---------------  -----------------------------  ----------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0                37     92
Birth       CMC-V-BCS-2002   INDIA                          1                55     92
Birth       CMIN             BANGLADESH                     0                15     20
Birth       CMIN             BANGLADESH                     1                 5     20
Birth       CONTENT          PERU                           0                 2      2
Birth       CONTENT          PERU                           1                 0      2
Birth       EE               PAKISTAN                       0               156    240
Birth       EE               PAKISTAN                       1                84    240
Birth       GMS-Nepal        NEPAL                          0               422    684
Birth       GMS-Nepal        NEPAL                          1               262    684
Birth       IRC              INDIA                          0               164    388
Birth       IRC              INDIA                          1               224    388
Birth       Keneba           GAMBIA                         0               994   1542
Birth       Keneba           GAMBIA                         1               548   1542
Birth       MAL-ED           BANGLADESH                     0               177    229
Birth       MAL-ED           BANGLADESH                     1                52    229
Birth       MAL-ED           BRAZIL                         0                62     65
Birth       MAL-ED           BRAZIL                         1                 3     65
Birth       MAL-ED           INDIA                          0                33     47
Birth       MAL-ED           INDIA                          1                14     47
Birth       MAL-ED           NEPAL                          0                23     27
Birth       MAL-ED           NEPAL                          1                 4     27
Birth       MAL-ED           PERU                           0               223    233
Birth       MAL-ED           PERU                           1                10    233
Birth       MAL-ED           SOUTH AFRICA                   0               101    122
Birth       MAL-ED           SOUTH AFRICA                   1                21    122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               119    124
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 5    124
Birth       PROVIDE          BANGLADESH                     0               396    539
Birth       PROVIDE          BANGLADESH                     1               143    539
Birth       ResPak           PAKISTAN                       0                28     42
Birth       ResPak           PAKISTAN                       1                14     42
6 months    CMC-V-BCS-2002   INDIA                          0               177    365
6 months    CMC-V-BCS-2002   INDIA                          1               188    365
6 months    CMIN             BANGLADESH                     0               201    243
6 months    CMIN             BANGLADESH                     1                42    243
6 months    CONTENT          PERU                           0               211    215
6 months    CONTENT          PERU                           1                 4    215
6 months    EE               PAKISTAN                       0               249    373
6 months    EE               PAKISTAN                       1               124    373
6 months    GMS-Nepal        NEPAL                          0               336    564
6 months    GMS-Nepal        NEPAL                          1               228    564
6 months    Guatemala BSC    GUATEMALA                      0               270    280
6 months    Guatemala BSC    GUATEMALA                      1                10    280
6 months    IRC              INDIA                          0               180    407
6 months    IRC              INDIA                          1               227    407
6 months    Keneba           GAMBIA                         0              1441   2056
6 months    Keneba           GAMBIA                         1               615   2056
6 months    MAL-ED           BANGLADESH                     0               183    241
6 months    MAL-ED           BANGLADESH                     1                58    241
6 months    MAL-ED           BRAZIL                         0               194    209
6 months    MAL-ED           BRAZIL                         1                15    209
6 months    MAL-ED           INDIA                          0               159    236
6 months    MAL-ED           INDIA                          1                77    236
6 months    MAL-ED           NEPAL                          0               188    236
6 months    MAL-ED           NEPAL                          1                48    236
6 months    MAL-ED           PERU                           0               263    273
6 months    MAL-ED           PERU                           1                10    273
6 months    MAL-ED           SOUTH AFRICA                   0               223    254
6 months    MAL-ED           SOUTH AFRICA                   1                31    254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               234    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    247
6 months    PROVIDE          BANGLADESH                     0               450    604
6 months    PROVIDE          BANGLADESH                     1               154    604
6 months    ResPak           PAKISTAN                       0               143    239
6 months    ResPak           PAKISTAN                       1                96    239
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
24 months   CMC-V-BCS-2002   INDIA                          0               176    366
24 months   CMC-V-BCS-2002   INDIA                          1               190    366
24 months   CMIN             BANGLADESH                     0               200    242
24 months   CMIN             BANGLADESH                     1                42    242
24 months   CONTENT          PERU                           0               162    164
24 months   CONTENT          PERU                           1                 2    164
24 months   EE               PAKISTAN                       0               109    167
24 months   EE               PAKISTAN                       1                58    167
24 months   GMS-Nepal        NEPAL                          0               300    488
24 months   GMS-Nepal        NEPAL                          1               188    488
24 months   IRC              INDIA                          0               181    409
24 months   IRC              INDIA                          1               228    409
24 months   Keneba           GAMBIA                         0              1091   1563
24 months   Keneba           GAMBIA                         1               472   1563
24 months   MAL-ED           BANGLADESH                     0               162    212
24 months   MAL-ED           BANGLADESH                     1                50    212
24 months   MAL-ED           BRAZIL                         0               156    169
24 months   MAL-ED           BRAZIL                         1                13    169
24 months   MAL-ED           INDIA                          0               151    227
24 months   MAL-ED           INDIA                          1                76    227
24 months   MAL-ED           NEPAL                          0               182    228
24 months   MAL-ED           NEPAL                          1                46    228
24 months   MAL-ED           PERU                           0               193    201
24 months   MAL-ED           PERU                           1                 8    201
24 months   MAL-ED           SOUTH AFRICA                   0               212    238
24 months   MAL-ED           SOUTH AFRICA                   1                26    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                12    214
24 months   PROVIDE          BANGLADESH                     0               432    578
24 months   PROVIDE          BANGLADESH                     1               146    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: CONTENT, country: PERU
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
![](/tmp/7ae39573-b683-4aa1-b300-8b6bd410e3da/e99bfbf2-8f70-4f51-a883-27dde0249b45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7ae39573-b683-4aa1-b300-8b6bd410e3da/e99bfbf2-8f70-4f51-a883-27dde0249b45/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7ae39573-b683-4aa1-b300-8b6bd410e3da/e99bfbf2-8f70-4f51-a883-27dde0249b45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.8431294   -1.1806722   -0.5055866
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -1.0956592   -1.3889530   -0.8023653
Birth       CMIN             BANGLADESH                     0                    NA                -1.2613333   -1.7710980   -0.7515686
Birth       CMIN             BANGLADESH                     1                    NA                -1.0280000   -2.2553082    0.1993082
Birth       EE               PAKISTAN                       0                    NA                -2.0404565   -2.2525178   -1.8283951
Birth       EE               PAKISTAN                       1                    NA                -1.5021078   -1.8691909   -1.1350247
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1491790   -1.2494859   -1.0488721
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.8757677   -0.9988669   -0.7526686
Birth       IRC              INDIA                          0                    NA                -0.8764206   -1.0884191   -0.6644221
Birth       IRC              INDIA                          1                    NA                 0.1017662   -0.1153867    0.3189191
Birth       Keneba           GAMBIA                         0                    NA                -0.1750567   -0.2497913   -0.1003221
Birth       Keneba           GAMBIA                         1                    NA                 0.4077160    0.2961574    0.5192745
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.1247612   -1.2726027   -0.9769198
Birth       MAL-ED           BANGLADESH                     1                    NA                -1.0658714   -1.3839373   -0.7478055
Birth       MAL-ED           INDIA                          0                    NA                -1.2770316   -1.6005855   -0.9534776
Birth       MAL-ED           INDIA                          1                    NA                -0.9286870   -1.6278860   -0.2294880
Birth       MAL-ED           PERU                           0                    NA                -0.8931526   -1.0102848   -0.7760205
Birth       MAL-ED           PERU                           1                    NA                -0.6230280   -1.5454568    0.2994008
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.6704884   -0.8559048   -0.4850720
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.2407511   -0.6953093    0.2138072
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1432773   -1.3541075   -0.9324471
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.9860000   -2.2167588    0.2447588
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8756680   -0.9608142   -0.7905218
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9229372   -1.0813476   -0.7645268
Birth       ResPak           PAKISTAN                       0                    NA                -1.1930456   -1.6283366   -0.7577546
Birth       ResPak           PAKISTAN                       1                    NA                -0.5488277   -1.5260150    0.4283596
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4124021   -1.6255278   -1.1992764
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4492633   -1.6407906   -1.2577361
6 months    CMIN             BANGLADESH                     0                    NA                -1.7693546   -1.9193733   -1.6193358
6 months    CMIN             BANGLADESH                     1                    NA                -1.8496592   -2.2050455   -1.4942729
6 months    EE               PAKISTAN                       0                    NA                -2.0528498   -2.1947606   -1.9109391
6 months    EE               PAKISTAN                       1                    NA                -2.1438086   -2.3705253   -1.9170919
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.3665210   -1.4654569   -1.2675851
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.3045584   -1.4318593   -1.1772576
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5396433   -1.6535760   -1.4257106
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.5882139   -3.1603947   -2.0160330
6 months    IRC              INDIA                          0                    NA                -1.4511543   -1.6408440   -1.2614647
6 months    IRC              INDIA                          1                    NA                -1.0930613   -1.2701776   -0.9159450
6 months    Keneba           GAMBIA                         0                    NA                -0.9042910   -0.9577795   -0.8508025
6 months    Keneba           GAMBIA                         1                    NA                -0.9254124   -1.0233001   -0.8275246
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.1667362   -1.2919012   -1.0415713
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.2945063   -1.5830681   -1.0059445
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0272131   -0.1219581    0.1763843
6 months    MAL-ED           BRAZIL                         1                    NA                 0.2950731   -0.2680545    0.8582007
6 months    MAL-ED           INDIA                          0                    NA                -1.2328614   -1.3741980   -1.0915248
6 months    MAL-ED           INDIA                          1                    NA                -1.1320104   -1.3522406   -0.9117803
6 months    MAL-ED           NEPAL                          0                    NA                -0.5279677   -0.6483640   -0.4075713
6 months    MAL-ED           NEPAL                          1                    NA                -0.6982881   -0.9946879   -0.4018883
6 months    MAL-ED           PERU                           0                    NA                -1.3325584   -1.4415819   -1.2235348
6 months    MAL-ED           PERU                           1                    NA                -0.6544597   -1.3500260    0.0411066
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -1.0490549   -1.1873947   -0.9107151
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.1287398   -1.4602124   -0.7972672
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3599283   -1.4843074   -1.2355492
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5335769   -2.1680069   -0.8991468
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0538437   -1.1395320   -0.9681554
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1890906   -1.3381375   -1.0400437
6 months    ResPak           PAKISTAN                       0                    NA                -1.7164872   -1.9683705   -1.4646038
6 months    ResPak           PAKISTAN                       1                    NA                -1.0353523   -1.3742081   -0.6964965
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5390102   -0.5918835   -0.4861368
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5729565   -0.7016619   -0.4442512
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5039072   -2.6472624   -2.3605519
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5864393   -2.7225950   -2.4502836
24 months   CMIN             BANGLADESH                     0                    NA                -2.4852503   -2.6236205   -2.3468800
24 months   CMIN             BANGLADESH                     1                    NA                -2.6559944   -2.9602591   -2.3517296
24 months   EE               PAKISTAN                       0                    NA                -2.6507075   -2.8379772   -2.4634379
24 months   EE               PAKISTAN                       1                    NA                -2.7280118   -2.9795998   -2.4764237
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.8938320   -1.9972079   -1.7904561
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8542976   -2.0024315   -1.7061636
24 months   IRC              INDIA                          0                    NA                -1.8348859   -1.9676020   -1.7021698
24 months   IRC              INDIA                          1                    NA                -1.7800826   -1.9119052   -1.6482600
24 months   Keneba           GAMBIA                         0                    NA                -1.5483469   -1.6097248   -1.4869690
24 months   Keneba           GAMBIA                         1                    NA                -1.6405820   -1.7378474   -1.5433165
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9923507   -2.1373262   -1.8473753
24 months   MAL-ED           BANGLADESH                     1                    NA                -2.1416581   -2.3974200   -1.8858962
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0435981   -0.1316282    0.2188245
24 months   MAL-ED           BRAZIL                         1                    NA                -0.8877624   -1.3143524   -0.4611725
24 months   MAL-ED           INDIA                          0                    NA                -1.9500831   -2.1013516   -1.7988146
24 months   MAL-ED           INDIA                          1                    NA                -1.8220692   -2.0483398   -1.5957985
24 months   MAL-ED           NEPAL                          0                    NA                -1.3114214   -1.4417923   -1.1810505
24 months   MAL-ED           NEPAL                          1                    NA                -1.2934946   -1.6172061   -0.9697830
24 months   MAL-ED           PERU                           0                    NA                -1.7639724   -1.8863550   -1.6415897
24 months   MAL-ED           PERU                           1                    NA                -1.4750000   -2.1910692   -0.7589308
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6468727   -1.7867338   -1.5070116
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.4817119   -1.9866120   -0.9768118
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6351053   -2.7732726   -2.4969380
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.1981411   -3.8862155   -2.5100668
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5884539   -1.6877636   -1.4891441
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6737933   -1.8176662   -1.5299204


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     NA                   NA                -1.2030000   -1.6953191   -0.7106809
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0454532   -1.1235003   -0.9674062
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       Keneba           GAMBIA                         NA                   NA                 0.0325486   -0.0310420    0.0961393
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1041048   -1.2383048   -0.9699048
Birth       MAL-ED           INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5877869   -0.7622273   -0.4133464
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1369355   -1.3453337   -0.9285373
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4241872   -1.5668135   -1.2815609
6 months    CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5785476   -1.6926664   -1.4644288
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    Keneba           GAMBIA                         NA                   NA                -0.9116762   -0.9588660   -0.8644864
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.4314086   -1.6374838   -1.2253335
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5489071   -2.6476125   -2.4502017
24 months   CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   Keneba           GAMBIA                         NA                   NA                -1.5774758   -1.6295950   -1.5253566
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.2525298   -0.7066117    0.2015522
Birth       CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     1                    0                  0.2333333   -1.0956307    1.5622974
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.5383487    0.1159521    0.9607453
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.2734113    0.1149655    0.4318571
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.9781868    0.6734371    1.2829364
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.5827726    0.4484781    0.7170672
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.0588898   -0.2923596    0.4101392
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.3483445   -0.4304959    1.1271849
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.2701246   -0.6602743    1.2005235
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.4297374   -0.0617126    0.9211874
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1572773   -1.0914086    1.4059632
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0472692   -0.2267077    0.1321694
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                  0.6442179   -0.4417061    1.7301418
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0368613   -0.3230495    0.2493269
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0803046   -0.4657704    0.3051611
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0909588   -0.3589229    0.1770054
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0619626   -0.0997641    0.2236893
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.0485706   -1.6324621   -0.4646790
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.3580931    0.0980613    0.6181248
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.0211214   -0.1326043    0.0903615
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.1277701   -0.4425033    0.1869631
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                  0.2678600   -0.3143620    0.8500820
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                  0.1008510   -0.1618758    0.3635778
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.1703204   -0.4909322    0.1502913
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                  0.6780987   -0.0276171    1.3838144
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0796849   -0.4400645    0.2806947
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1736486   -0.8197898    0.4724927
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1352469   -0.3071198    0.0366260
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                  0.6811349    0.2576853    1.1045844
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0339464   -0.1726240    0.1047312
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0825321   -0.2799433    0.1148791
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.1707441   -0.5055072    0.1640190
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.0773042   -0.3915474    0.2369389
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                  0.0395344   -0.1412997    0.2203685
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                  0.0548033   -0.1325004    0.2421071
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.0922351   -0.2069933    0.0225231
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.1493073   -0.4472988    0.1486841
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.9313606   -1.3913232   -0.4713979
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.1280140   -0.1451200    0.4011480
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                  0.0179268   -0.3316981    0.3675518
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                  0.2889724   -0.4374797    1.0154244
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.1651608   -0.3594356    0.6897572
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.5630358   -1.2633575    0.1372858
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0853394   -0.2582296    0.0875508


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.1180663   -0.3941746    0.1580421
Birth       CMIN             BANGLADESH                     0                    NA                 0.0583333   -0.2769994    0.3936660
Birth       EE               PAKISTAN                       0                    NA                 0.1795815    0.0299174    0.3292456
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.1037258    0.0429636    0.1644879
Birth       IRC              INDIA                          0                    NA                 0.5683794    0.3856948    0.7510639
Birth       Keneba           GAMBIA                         0                    NA                 0.2076053    0.1579908    0.2572198
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0206564   -0.0579138    0.0992266
Birth       MAL-ED           INDIA                          0                    NA                 0.0734145   -0.1444937    0.2913228
Birth       MAL-ED           PERU                           0                    NA                 0.0103629   -0.0248475    0.0455733
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0827015   -0.0080530    0.1734561
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063418   -0.0443044    0.0569881
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0094340   -0.0568466    0.0379786
Birth       ResPak           PAKISTAN                       0                    NA                 0.2130456   -0.1587808    0.5848721
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0117851   -0.1591662    0.1355959
6 months    CMIN             BANGLADESH                     0                    NA                -0.0150830   -0.0810436    0.0508775
6 months    EE               PAKISTAN                       0                    NA                -0.0307069   -0.1187497    0.0573358
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0156818   -0.0497148    0.0810783
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0389043   -0.0702664   -0.0075422
6 months    IRC              INDIA                          0                    NA                 0.2167481    0.0697917    0.3637046
6 months    Keneba           GAMBIA                         0                    NA                -0.0073852   -0.0403381    0.0255677
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0382569   -0.1131221    0.0366084
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0203627   -0.0207436    0.0614690
6 months    MAL-ED           INDIA                          0                    NA                 0.0213360   -0.0637260    0.1063979
6 months    MAL-ED           NEPAL                          0                    NA                -0.0336142   -0.0991055    0.0318770
6 months    MAL-ED           PERU                           0                    NA                 0.0088923   -0.0169047    0.0346893
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0142653   -0.0575291    0.0289985
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0088166   -0.0413136    0.0236803
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0378478   -0.0819588    0.0062632
6 months    ResPak           PAKISTAN                       0                    NA                 0.2850785    0.1102164    0.4599407
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0044287   -0.0248668    0.0160094
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0449999   -0.1477219    0.0577220
24 months   CMIN             BANGLADESH                     0                    NA                -0.0257001   -0.0825446    0.0311443
24 months   EE               PAKISTAN                       0                    NA                -0.0192825   -0.1286936    0.0901286
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0064139   -0.0637180    0.0765459
24 months   IRC              INDIA                          0                    NA                 0.0361084   -0.0687458    0.1409626
24 months   Keneba           GAMBIA                         0                    NA                -0.0291289   -0.0640323    0.0057744
24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0139545   -0.0597161    0.0876251
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0374837   -0.0873236    0.0123562
24 months   MAL-ED           INDIA                          0                    NA                 0.0638937   -0.0272740    0.1550614
24 months   MAL-ED           NEPAL                          0                    NA                 0.0038337   -0.0628680    0.0705354
24 months   MAL-ED           PERU                           0                    NA                 0.0115014   -0.0184534    0.0414561
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0018132   -0.0524423    0.0560687
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0104554   -0.0458864    0.0249755
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0139683   -0.0572541    0.0293176
