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

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        predfeed6    n_cell       n
----------  --------------  -----------------------------  ----------  -------  ------
Birth       EE              PAKISTAN                       1                38      42
Birth       EE              PAKISTAN                       0                 4      42
Birth       GMS-Nepal       NEPAL                          1               419     563
Birth       GMS-Nepal       NEPAL                          0               144     563
Birth       JiVitA-3        BANGLADESH                     1             10466   13423
Birth       JiVitA-3        BANGLADESH                     0              2957   13423
Birth       JiVitA-4        BANGLADESH                     1              2103    2632
Birth       JiVitA-4        BANGLADESH                     0               529    2632
Birth       MAL-ED          BANGLADESH                     1                72     205
Birth       MAL-ED          BANGLADESH                     0               133     205
Birth       MAL-ED          BRAZIL                         1                 6      60
Birth       MAL-ED          BRAZIL                         0                54      60
Birth       MAL-ED          INDIA                          1                 4      39
Birth       MAL-ED          INDIA                          0                35      39
Birth       MAL-ED          NEPAL                          1                 3      24
Birth       MAL-ED          NEPAL                          0                21      24
Birth       MAL-ED          PERU                           1                73     213
Birth       MAL-ED          PERU                           0               140     213
Birth       MAL-ED          SOUTH AFRICA                   1                 1      91
Birth       MAL-ED          SOUTH AFRICA                   0                90      91
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113
6 months    EE              PAKISTAN                       1                43      48
6 months    EE              PAKISTAN                       0                 5      48
6 months    GMS-Nepal       NEPAL                          1               406     547
6 months    GMS-Nepal       NEPAL                          0               141     547
6 months    JiVitA-3        BANGLADESH                     1              7644    9901
6 months    JiVitA-3        BANGLADESH                     0              2257    9901
6 months    JiVitA-4        BANGLADESH                     1              3328    4272
6 months    JiVitA-4        BANGLADESH                     0               944    4272
6 months    LCNI-5          MALAWI                         1                47     272
6 months    LCNI-5          MALAWI                         0               225     272
6 months    MAL-ED          BANGLADESH                     1                84     231
6 months    MAL-ED          BANGLADESH                     0               147     231
6 months    MAL-ED          BRAZIL                         1                30     209
6 months    MAL-ED          BRAZIL                         0               179     209
6 months    MAL-ED          INDIA                          1                11     218
6 months    MAL-ED          INDIA                          0               207     218
6 months    MAL-ED          NEPAL                          1                12     225
6 months    MAL-ED          NEPAL                          0               213     225
6 months    MAL-ED          PERU                           1                92     271
6 months    MAL-ED          PERU                           0               179     271
6 months    MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    MAL-ED          SOUTH AFRICA                   0               230     233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    SAS-FoodSuppl   INDIA                          1                 0     168
6 months    SAS-FoodSuppl   INDIA                          0               168     168
24 months   EE              PAKISTAN                       1                20      23
24 months   EE              PAKISTAN                       0                 3      23
24 months   GMS-Nepal       NEPAL                          1               356     470
24 months   GMS-Nepal       NEPAL                          0               114     470
24 months   JiVitA-3        BANGLADESH                     1              3926    5088
24 months   JiVitA-3        BANGLADESH                     0              1162    5088
24 months   JiVitA-4        BANGLADESH                     1              3292    4199
24 months   JiVitA-4        BANGLADESH                     0               907    4199
24 months   LCNI-5          MALAWI                         1                34     189
24 months   LCNI-5          MALAWI                         0               155     189
24 months   MAL-ED          BANGLADESH                     1                76     205
24 months   MAL-ED          BANGLADESH                     0               129     205
24 months   MAL-ED          BRAZIL                         1                25     169
24 months   MAL-ED          BRAZIL                         0               144     169
24 months   MAL-ED          INDIA                          1                11     209
24 months   MAL-ED          INDIA                          0               198     209
24 months   MAL-ED          NEPAL                          1                12     219
24 months   MAL-ED          NEPAL                          0               207     219
24 months   MAL-ED          PERU                           1                68     201
24 months   MAL-ED          PERU                           0               133     201
24 months   MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   MAL-ED          SOUTH AFRICA                   0               213     216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/51cf4ce7-911e-41f2-9872-e8991f4a1371/a3d187eb-5457-4846-b035-6bf6419549de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/51cf4ce7-911e-41f2-9872-e8991f4a1371/a3d187eb-5457-4846-b035-6bf6419549de/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/51cf4ce7-911e-41f2-9872-e8991f4a1371/a3d187eb-5457-4846-b035-6bf6419549de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0509970   -1.1484573   -0.9535367
Birth       GMS-Nepal   NEPAL        0                    NA                -1.0984017   -1.2750184   -0.9217851
Birth       JiVitA-3    BANGLADESH   1                    NA                -1.5947880   -1.6195621   -1.5700138
Birth       JiVitA-3    BANGLADESH   0                    NA                -1.5981602   -1.6374701   -1.5588504
Birth       JiVitA-4    BANGLADESH   1                    NA                -1.5079668   -1.5600510   -1.4558826
Birth       JiVitA-4    BANGLADESH   0                    NA                -1.5950704   -1.7277206   -1.4624203
Birth       MAL-ED      BANGLADESH   1                    NA                -1.0509744   -1.2694670   -0.8324818
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0574547   -1.2348074   -0.8801019
Birth       MAL-ED      BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       MAL-ED      BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       MAL-ED      PERU         1                    NA                -0.8982655   -1.0534259   -0.7431051
Birth       MAL-ED      PERU         0                    NA                -0.9300124   -1.0765710   -0.7834538
6 months    EE          PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE          PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal   NEPAL        1                    NA                -1.3064204   -1.3951432   -1.2176975
6 months    GMS-Nepal   NEPAL        0                    NA                -1.4794564   -1.6434118   -1.3155010
6 months    JiVitA-3    BANGLADESH   1                    NA                -1.3084393   -1.3388628   -1.2780158
6 months    JiVitA-3    BANGLADESH   0                    NA                -1.3313126   -1.3805778   -1.2820475
6 months    JiVitA-4    BANGLADESH   1                    NA                -1.3099900   -1.3508684   -1.2691116
6 months    JiVitA-4    BANGLADESH   0                    NA                -1.4835547   -1.5752876   -1.3918217
6 months    LCNI-5      MALAWI       1                    NA                -1.7388409   -2.0310751   -1.4466066
6 months    LCNI-5      MALAWI       0                    NA                -1.6236949   -1.7549742   -1.4924156
6 months    MAL-ED      BANGLADESH   1                    NA                -1.0973303   -1.2739883   -0.9206722
6 months    MAL-ED      BANGLADESH   0                    NA                -1.2394459   -1.3948718   -1.0840199
6 months    MAL-ED      BRAZIL       1                    NA                 0.1941934   -0.2496877    0.6380745
6 months    MAL-ED      BRAZIL       0                    NA                 0.0332474   -0.1171669    0.1836617
6 months    MAL-ED      INDIA        1                    NA                -1.5233393   -2.4524315   -0.5942470
6 months    MAL-ED      INDIA        0                    NA                -1.1984076   -1.3196938   -1.0771213
6 months    MAL-ED      NEPAL        1                    NA                -0.3971172   -0.9684288    0.1741943
6 months    MAL-ED      NEPAL        0                    NA                -0.5533922   -0.6717991   -0.4349852
6 months    MAL-ED      PERU         1                    NA                -1.2520175   -1.4274262   -1.0766088
6 months    MAL-ED      PERU         0                    NA                -1.3663248   -1.5021647   -1.2304848
24 months   GMS-Nepal   NEPAL        1                    NA                -1.9034095   -1.9985499   -1.8082690
24 months   GMS-Nepal   NEPAL        0                    NA                -1.8793273   -2.0739587   -1.6846959
24 months   JiVitA-3    BANGLADESH   1                    NA                -2.0026307   -2.0425645   -1.9626969
24 months   JiVitA-3    BANGLADESH   0                    NA                -2.0403379   -2.1104352   -1.9702407
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.7804414   -1.8220277   -1.7388550
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.8345604   -1.9103370   -1.7587837
24 months   LCNI-5      MALAWI       1                    NA                -2.1126034   -2.4007361   -1.8244706
24 months   LCNI-5      MALAWI       0                    NA                -1.9565848   -2.1147366   -1.7984330
24 months   MAL-ED      BANGLADESH   1                    NA                -1.9423153   -2.1807436   -1.7038871
24 months   MAL-ED      BANGLADESH   0                    NA                -1.9498230   -2.0978398   -1.8018063
24 months   MAL-ED      BRAZIL       1                    NA                -0.0286283   -0.5263477    0.4690912
24 months   MAL-ED      BRAZIL       0                    NA                 0.0145578   -0.1704559    0.1995715
24 months   MAL-ED      INDIA        1                    NA                -2.5430888   -3.1338978   -1.9522799
24 months   MAL-ED      INDIA        0                    NA                -1.8481335   -1.9790904   -1.7171767
24 months   MAL-ED      NEPAL        1                    NA                -1.7077161   -2.2022327   -1.2131995
24 months   MAL-ED      NEPAL        0                    NA                -1.3061050   -1.4316793   -1.1805306
24 months   MAL-ED      PERU         1                    NA                -1.7613264   -1.9653439   -1.5573090
24 months   MAL-ED      PERU         0                    NA                -1.7367939   -1.8865603   -1.5870276


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3    BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4    BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
Birth       MAL-ED      BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       MAL-ED      BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED      PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
6 months    EE          PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal   NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3    BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4    BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
6 months    LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED      BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    MAL-ED      NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED      PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3    BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4    BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715
24 months   LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED      BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   MAL-ED      NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   MAL-ED      PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0474047   -0.2422118    0.1474023
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                 -0.0033723   -0.0441219    0.0373773
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0871036   -0.2285964    0.0543891
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                 -0.0064803   -0.2888680    0.2759074
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.0317469   -0.2112514    0.1477576
6 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE          PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.1730360   -0.3590159    0.0129439
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                 -0.0228733   -0.0751668    0.0294202
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.1735647   -0.2725472   -0.0745821
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.1151460   -0.2034360    0.4337280
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                 -0.1421156   -0.3782361    0.0940049
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.1609460   -0.6304715    0.3085795
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                  0.3249317   -0.6118384    1.2617018
6 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL        0                    1                 -0.1562749   -0.7403472    0.4277974
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.1143073   -0.3336714    0.1050568
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                  0.0240822   -0.1903438    0.2385081
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                 -0.0377073   -0.1146566    0.0392421
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0541190   -0.1357088    0.0274708
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.1560185   -0.1723424    0.4843795
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                 -0.0075077   -0.2869977    0.2719823
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                  0.0431861   -0.4893582    0.5757303
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.6949553    0.0901850    1.2997257
24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL        0                    1                  0.4016112   -0.1084028    0.9116252
24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU         0                    1                  0.0245325   -0.2254115    0.2744764


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0131238   -0.0630589    0.0368113
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0007458   -0.0097172    0.0082255
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0193470   -0.0478004    0.0091063
Birth       MAL-ED      BANGLADESH   1                    NA                -0.0020500   -0.1851123    0.1810123
Birth       MAL-ED      BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       MAL-ED      PERU         1                    NA                -0.0083073   -0.1256434    0.1090289
6 months    EE          PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0476077   -0.0973098    0.0020944
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0053866   -0.0173042    0.0065311
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0382403   -0.0597704   -0.0167103
6 months    LCNI-5      MALAWI       1                    NA                 0.0992453   -0.1670873    0.3655778
6 months    MAL-ED      BANGLADESH   1                    NA                -0.0927491   -0.2426410    0.0571428
6 months    MAL-ED      BRAZIL       1                    NA                -0.1466176   -0.5500202    0.2567850
6 months    MAL-ED      INDIA        1                    NA                 0.3045090   -0.5940808    1.2030988
6 months    MAL-ED      NEPAL        1                    NA                -0.1651198   -0.7213128    0.3910732
6 months    MAL-ED      PERU         1                    NA                -0.0700151   -0.2151777    0.0751475
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0031967   -0.0481151    0.0545085
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0091696   -0.0267678    0.0084286
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0110352   -0.0284014    0.0063311
24 months   LCNI-5      MALAWI       1                    NA                 0.1474711   -0.1229660    0.4179081
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0153188   -0.1936720    0.1630344
24 months   MAL-ED      BRAZIL       1                    NA                 0.0347427   -0.4290124    0.4984977
24 months   MAL-ED      INDIA        1                    NA                 0.6567491    0.0776298    1.2358685
24 months   MAL-ED      NEPAL        1                    NA                 0.3889490   -0.0941549    0.8720529
24 months   MAL-ED      PERU         1                    NA                 0.0088554   -0.1584112    0.1761221
