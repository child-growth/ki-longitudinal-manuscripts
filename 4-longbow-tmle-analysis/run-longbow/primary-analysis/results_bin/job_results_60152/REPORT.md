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

agecat      studyid         country                        predfeed6    stunted   n_cell       n
----------  --------------  -----------------------------  ----------  --------  -------  ------
Birth       EE              PAKISTAN                       1                  0       22      42
Birth       EE              PAKISTAN                       1                  1       16      42
Birth       EE              PAKISTAN                       0                  0        3      42
Birth       EE              PAKISTAN                       0                  1        1      42
Birth       GMS-Nepal       NEPAL                          1                  0      351     563
Birth       GMS-Nepal       NEPAL                          1                  1       68     563
Birth       GMS-Nepal       NEPAL                          0                  0      118     563
Birth       GMS-Nepal       NEPAL                          0                  1       26     563
Birth       JiVitA-3        BANGLADESH                     1                  0     7012   13423
Birth       JiVitA-3        BANGLADESH                     1                  1     3454   13423
Birth       JiVitA-3        BANGLADESH                     0                  0     1967   13423
Birth       JiVitA-3        BANGLADESH                     0                  1      990   13423
Birth       JiVitA-4        BANGLADESH                     1                  0     1479    2632
Birth       JiVitA-4        BANGLADESH                     1                  1      624    2632
Birth       JiVitA-4        BANGLADESH                     0                  0      354    2632
Birth       JiVitA-4        BANGLADESH                     0                  1      175    2632
Birth       MAL-ED          BANGLADESH                     1                  0       60     205
Birth       MAL-ED          BANGLADESH                     1                  1       12     205
Birth       MAL-ED          BANGLADESH                     0                  0      109     205
Birth       MAL-ED          BANGLADESH                     0                  1       24     205
Birth       MAL-ED          BRAZIL                         1                  0        4      60
Birth       MAL-ED          BRAZIL                         1                  1        2      60
Birth       MAL-ED          BRAZIL                         0                  0       47      60
Birth       MAL-ED          BRAZIL                         0                  1        7      60
Birth       MAL-ED          INDIA                          1                  0        2      39
Birth       MAL-ED          INDIA                          1                  1        2      39
Birth       MAL-ED          INDIA                          0                  0       29      39
Birth       MAL-ED          INDIA                          0                  1        6      39
Birth       MAL-ED          NEPAL                          1                  0        3      24
Birth       MAL-ED          NEPAL                          1                  1        0      24
Birth       MAL-ED          NEPAL                          0                  0       20      24
Birth       MAL-ED          NEPAL                          0                  1        1      24
Birth       MAL-ED          PERU                           1                  0       66     213
Birth       MAL-ED          PERU                           1                  1        7     213
Birth       MAL-ED          PERU                           0                  0      121     213
Birth       MAL-ED          PERU                           0                  1       19     213
Birth       MAL-ED          SOUTH AFRICA                   1                  0        1      91
Birth       MAL-ED          SOUTH AFRICA                   1                  1        0      91
Birth       MAL-ED          SOUTH AFRICA                   0                  0       82      91
Birth       MAL-ED          SOUTH AFRICA                   0                  1        8      91
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       92     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     113
6 months    EE              PAKISTAN                       1                  0       20      48
6 months    EE              PAKISTAN                       1                  1       23      48
6 months    EE              PAKISTAN                       0                  0        4      48
6 months    EE              PAKISTAN                       0                  1        1      48
6 months    GMS-Nepal       NEPAL                          1                  0      326     547
6 months    GMS-Nepal       NEPAL                          1                  1       80     547
6 months    GMS-Nepal       NEPAL                          0                  0      103     547
6 months    GMS-Nepal       NEPAL                          0                  1       38     547
6 months    JiVitA-3        BANGLADESH                     1                  0     5767    9901
6 months    JiVitA-3        BANGLADESH                     1                  1     1877    9901
6 months    JiVitA-3        BANGLADESH                     0                  0     1676    9901
6 months    JiVitA-3        BANGLADESH                     0                  1      581    9901
6 months    JiVitA-4        BANGLADESH                     1                  0     2542    4272
6 months    JiVitA-4        BANGLADESH                     1                  1      786    4272
6 months    JiVitA-4        BANGLADESH                     0                  0      657    4272
6 months    JiVitA-4        BANGLADESH                     0                  1      287    4272
6 months    LCNI-5          MALAWI                         1                  0       30     272
6 months    LCNI-5          MALAWI                         1                  1       17     272
6 months    LCNI-5          MALAWI                         0                  0      145     272
6 months    LCNI-5          MALAWI                         0                  1       80     272
6 months    MAL-ED          BANGLADESH                     1                  0       73     231
6 months    MAL-ED          BANGLADESH                     1                  1       11     231
6 months    MAL-ED          BANGLADESH                     0                  0      117     231
6 months    MAL-ED          BANGLADESH                     0                  1       30     231
6 months    MAL-ED          BRAZIL                         1                  0       29     209
6 months    MAL-ED          BRAZIL                         1                  1        1     209
6 months    MAL-ED          BRAZIL                         0                  0      174     209
6 months    MAL-ED          BRAZIL                         0                  1        5     209
6 months    MAL-ED          INDIA                          1                  0        7     218
6 months    MAL-ED          INDIA                          1                  1        4     218
6 months    MAL-ED          INDIA                          0                  0      170     218
6 months    MAL-ED          INDIA                          0                  1       37     218
6 months    MAL-ED          NEPAL                          1                  0       11     225
6 months    MAL-ED          NEPAL                          1                  1        1     225
6 months    MAL-ED          NEPAL                          0                  0      202     225
6 months    MAL-ED          NEPAL                          0                  1       11     225
6 months    MAL-ED          PERU                           1                  0       77     271
6 months    MAL-ED          PERU                           1                  1       15     271
6 months    MAL-ED          PERU                           0                  0      134     271
6 months    MAL-ED          PERU                           0                  1       45     271
6 months    MAL-ED          SOUTH AFRICA                   1                  0        2     233
6 months    MAL-ED          SOUTH AFRICA                   1                  1        1     233
6 months    MAL-ED          SOUTH AFRICA                   0                  0      188     233
6 months    MAL-ED          SOUTH AFRICA                   0                  1       42     233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      173     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       58     232
6 months    SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    SAS-FoodSuppl   INDIA                          0                  1       81     168
24 months   EE              PAKISTAN                       1                  0        5      23
24 months   EE              PAKISTAN                       1                  1       15      23
24 months   EE              PAKISTAN                       0                  0        2      23
24 months   EE              PAKISTAN                       0                  1        1      23
24 months   GMS-Nepal       NEPAL                          1                  0      199     470
24 months   GMS-Nepal       NEPAL                          1                  1      157     470
24 months   GMS-Nepal       NEPAL                          0                  0       57     470
24 months   GMS-Nepal       NEPAL                          0                  1       57     470
24 months   JiVitA-3        BANGLADESH                     1                  0     2006    5088
24 months   JiVitA-3        BANGLADESH                     1                  1     1920    5088
24 months   JiVitA-3        BANGLADESH                     0                  0      578    5088
24 months   JiVitA-3        BANGLADESH                     0                  1      584    5088
24 months   JiVitA-4        BANGLADESH                     1                  0     1989    4199
24 months   JiVitA-4        BANGLADESH                     1                  1     1303    4199
24 months   JiVitA-4        BANGLADESH                     0                  0      509    4199
24 months   JiVitA-4        BANGLADESH                     0                  1      398    4199
24 months   LCNI-5          MALAWI                         1                  0       17     189
24 months   LCNI-5          MALAWI                         1                  1       17     189
24 months   LCNI-5          MALAWI                         0                  0       80     189
24 months   LCNI-5          MALAWI                         0                  1       75     189
24 months   MAL-ED          BANGLADESH                     1                  0       38     205
24 months   MAL-ED          BANGLADESH                     1                  1       38     205
24 months   MAL-ED          BANGLADESH                     0                  0       71     205
24 months   MAL-ED          BANGLADESH                     0                  1       58     205
24 months   MAL-ED          BRAZIL                         1                  0       25     169
24 months   MAL-ED          BRAZIL                         1                  1        0     169
24 months   MAL-ED          BRAZIL                         0                  0      137     169
24 months   MAL-ED          BRAZIL                         0                  1        7     169
24 months   MAL-ED          INDIA                          1                  0        3     209
24 months   MAL-ED          INDIA                          1                  1        8     209
24 months   MAL-ED          INDIA                          0                  0      117     209
24 months   MAL-ED          INDIA                          0                  1       81     209
24 months   MAL-ED          NEPAL                          1                  0        9     219
24 months   MAL-ED          NEPAL                          1                  1        3     219
24 months   MAL-ED          NEPAL                          0                  0      161     219
24 months   MAL-ED          NEPAL                          0                  1       46     219
24 months   MAL-ED          PERU                           1                  0       42     201
24 months   MAL-ED          PERU                           1                  1       26     201
24 months   MAL-ED          PERU                           0                  0       85     201
24 months   MAL-ED          PERU                           0                  1       48     201
24 months   MAL-ED          SOUTH AFRICA                   1                  0        3     216
24 months   MAL-ED          SOUTH AFRICA                   1                  1        0     216
24 months   MAL-ED          SOUTH AFRICA                   0                  0      141     216
24 months   MAL-ED          SOUTH AFRICA                   0                  1       72     216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       53     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      148     202


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
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/d5c4c15c-50f6-417a-b1eb-8c897633cc0f/e2e7a980-903f-40ed-8cb4-7d4896964f3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d5c4c15c-50f6-417a-b1eb-8c897633cc0f/e2e7a980-903f-40ed-8cb4-7d4896964f3c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d5c4c15c-50f6-417a-b1eb-8c897633cc0f/e2e7a980-903f-40ed-8cb4-7d4896964f3c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d5c4c15c-50f6-417a-b1eb-8c897633cc0f/e2e7a980-903f-40ed-8cb4-7d4896964f3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.1634845   0.1281321   0.1988370
Birth       GMS-Nepal   NEPAL        0                    NA                0.1842758   0.1213771   0.2471746
Birth       JiVitA-3    BANGLADESH   1                    NA                0.3306581   0.3214220   0.3398942
Birth       JiVitA-3    BANGLADESH   0                    NA                0.3326312   0.3228653   0.3423972
Birth       JiVitA-4    BANGLADESH   1                    NA                0.3044610   0.2829164   0.3260056
Birth       JiVitA-4    BANGLADESH   0                    NA                0.2997059   0.2750188   0.3243931
Birth       MAL-ED      BANGLADESH   1                    NA                0.1654643   0.0769066   0.2540221
Birth       MAL-ED      BANGLADESH   0                    NA                0.1833355   0.1162461   0.2504249
Birth       MAL-ED      PERU         1                    NA                0.0958904   0.0281876   0.1635932
Birth       MAL-ED      PERU         0                    NA                0.1357143   0.0788490   0.1925796
6 months    GMS-Nepal   NEPAL        1                    NA                0.1975120   0.1587081   0.2363159
6 months    GMS-Nepal   NEPAL        0                    NA                0.2705636   0.1962684   0.3448588
6 months    JiVitA-3    BANGLADESH   1                    NA                0.2459824   0.2350474   0.2569174
6 months    JiVitA-3    BANGLADESH   0                    NA                0.2556227   0.2376087   0.2736366
6 months    JiVitA-4    BANGLADESH   1                    NA                0.2424860   0.2265299   0.2584421
6 months    JiVitA-4    BANGLADESH   0                    NA                0.2797294   0.2479200   0.3115387
6 months    LCNI-5      MALAWI       1                    NA                0.3377316   0.2004302   0.4750330
6 months    LCNI-5      MALAWI       0                    NA                0.3546746   0.2919701   0.4173790
6 months    MAL-ED      BANGLADESH   1                    NA                0.1153923   0.0491505   0.1816342
6 months    MAL-ED      BANGLADESH   0                    NA                0.2066036   0.1405592   0.2726480
6 months    MAL-ED      PERU         1                    NA                0.1483752   0.0731461   0.2236042
6 months    MAL-ED      PERU         0                    NA                0.2453324   0.1814040   0.3092609
24 months   GMS-Nepal   NEPAL        1                    NA                0.4410726   0.3896026   0.4925427
24 months   GMS-Nepal   NEPAL        0                    NA                0.4902014   0.4025751   0.5778277
24 months   JiVitA-3    BANGLADESH   1                    NA                0.4876557   0.4690063   0.5063050
24 months   JiVitA-3    BANGLADESH   0                    NA                0.5066172   0.4743896   0.5388449
24 months   JiVitA-4    BANGLADESH   1                    NA                0.4009747   0.3813156   0.4206337
24 months   JiVitA-4    BANGLADESH   0                    NA                0.4188440   0.3820984   0.4555896
24 months   LCNI-5      MALAWI       1                    NA                0.4785109   0.3080238   0.6489980
24 months   LCNI-5      MALAWI       0                    NA                0.4827538   0.4036951   0.5618124
24 months   MAL-ED      BANGLADESH   1                    NA                0.4701037   0.3555496   0.5846577
24 months   MAL-ED      BANGLADESH   0                    NA                0.4680390   0.3841900   0.5518879
24 months   MAL-ED      PERU         1                    NA                0.4104106   0.2949123   0.5259088
24 months   MAL-ED      PERU         0                    NA                0.3465715   0.2657587   0.4273843


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1669627   0.1361293   0.1977961
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.3310735   0.3218922   0.3402548
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.3035714   0.2824097   0.3247332
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1756098   0.1233973   0.2278222
Birth       MAL-ED      PERU         NA                   NA                0.1220657   0.0779993   0.1661322
6 months    GMS-Nepal   NEPAL        NA                   NA                0.2157221   0.1812209   0.2502233
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.2482578   0.2382387   0.2582768
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.2511704   0.2362353   0.2661055
6 months    LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    MAL-ED      BANGLADESH   NA                   NA                0.1774892   0.1281103   0.2268680
6 months    MAL-ED      PERU         NA                   NA                0.2214022   0.1718784   0.2709260
24 months   GMS-Nepal   NEPAL        NA                   NA                0.4553191   0.4102488   0.5003895
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.4921384   0.4750959   0.5091808
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.4050965   0.3867240   0.4234689
24 months   LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   MAL-ED      BANGLADESH   NA                   NA                0.4682927   0.3998183   0.5367670
24 months   MAL-ED      PERU         NA                   NA                0.3681592   0.3013164   0.4350020


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 1.1271758   0.7527874   1.687761
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 1.0059674   0.9930552   1.019047
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 0.9843821   0.9316244   1.040127
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 1.1080061   0.5794774   2.118595
Birth       MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      PERU         0                    1                 1.4153061   0.6227136   3.216714
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.3698591   0.9766891   1.921301
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 1.0391908   0.9628456   1.121590
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.1535899   1.0190813   1.305852
6 months    LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    LCNI-5      MALAWI       0                    1                 1.0501671   0.6735666   1.637330
6 months    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED      BANGLADESH   0                    1                 1.7904450   0.9289821   3.450759
6 months    MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED      PERU         0                    1                 1.6534604   0.9321917   2.932799
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.1113848   0.9012825   1.370465
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 1.0388831   0.9690414   1.113759
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.0445647   0.9511393   1.147167
24 months   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   LCNI-5      MALAWI       0                    1                 1.0088668   0.6811794   1.494191
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 0.9956079   0.7415138   1.336772
24 months   MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      PERU         0                    1                 0.8444507   0.5903044   1.208016


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0034782   -0.0150122   0.0219685
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0004154   -0.0005310   0.0013618
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0008896   -0.0041390   0.0023599
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0101454   -0.0628305   0.0831213
Birth       MAL-ED      PERU         1                    NA                 0.0261753   -0.0319939   0.0843446
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0182101   -0.0034576   0.0398778
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0022754   -0.0021257   0.0066764
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0086844    0.0013757   0.0159932
6 months    LCNI-5      MALAWI       1                    NA                 0.0188861   -0.1065252   0.1442974
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0620969    0.0039763   0.1202174
6 months    MAL-ED      PERU         1                    NA                 0.0730271    0.0069252   0.1391290
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0142465   -0.0099824   0.0384754
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0044827   -0.0035162   0.0124816
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0041218   -0.0042399   0.0124835
24 months   LCNI-5      MALAWI       1                    NA                 0.0082616   -0.1466045   0.1631276
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0018110   -0.0900246   0.0864026
24 months   MAL-ED      PERU         1                    NA                -0.0422514   -0.1345739   0.0500712


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0208319   -0.0963320   0.1254747
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0012548   -0.0016083   0.0041097
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0029303   -0.0136851   0.0077103
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0577725   -0.4643405   0.3937252
Birth       MAL-ED      PERU         1                    NA                 0.2144362   -0.4318688   0.5690175
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0844147   -0.0212033   0.1791092
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0091653   -0.0087252   0.0267385
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0345759    0.0051718   0.0631109
6 months    LCNI-5      MALAWI       1                    NA                 0.0529589   -0.3729321   0.3467362
6 months    MAL-ED      BANGLADESH   1                    NA                 0.3498628   -0.0595794   0.6010885
6 months    MAL-ED      PERU         1                    NA                 0.3298389   -0.0400623   0.5681836
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0312891   -0.0235538   0.0831935
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0091086   -0.0072741   0.0252249
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0101748   -0.0106562   0.0305765
24 months   LCNI-5      MALAWI       1                    NA                 0.0169722   -0.3587038   0.2887752
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0038672   -0.2110375   0.1678627
24 months   MAL-ED      PERU         1                    NA                -0.1147638   -0.3963239   0.1100214
