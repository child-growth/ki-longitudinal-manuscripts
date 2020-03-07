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

**Intervention Variable:** predfeed36

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

agecat      studyid         country                        predfeed36    stunted   n_cell       n
----------  --------------  -----------------------------  -----------  --------  -------  ------
Birth       EE              PAKISTAN                       1                   0        2       7
Birth       EE              PAKISTAN                       1                   1        1       7
Birth       EE              PAKISTAN                       0                   0        3       7
Birth       EE              PAKISTAN                       0                   1        1       7
Birth       GMS-Nepal       NEPAL                          1                   0      356     526
Birth       GMS-Nepal       NEPAL                          1                   1       66     526
Birth       GMS-Nepal       NEPAL                          0                   0       85     526
Birth       GMS-Nepal       NEPAL                          0                   1       19     526
Birth       JiVitA-3        BANGLADESH                     1                   0     5646   10681
Birth       JiVitA-3        BANGLADESH                     1                   1     2688   10681
Birth       JiVitA-3        BANGLADESH                     0                   0     1580   10681
Birth       JiVitA-3        BANGLADESH                     0                   1      767   10681
Birth       JiVitA-4        BANGLADESH                     1                   0     1409    2517
Birth       JiVitA-4        BANGLADESH                     1                   1      590    2517
Birth       JiVitA-4        BANGLADESH                     0                   0      347    2517
Birth       JiVitA-4        BANGLADESH                     0                   1      171    2517
Birth       MAL-ED          BANGLADESH                     1                   0       62     221
Birth       MAL-ED          BANGLADESH                     1                   1       10     221
Birth       MAL-ED          BANGLADESH                     0                   0      119     221
Birth       MAL-ED          BANGLADESH                     0                   1       30     221
Birth       MAL-ED          BRAZIL                         1                   0        6      65
Birth       MAL-ED          BRAZIL                         1                   1        2      65
Birth       MAL-ED          BRAZIL                         0                   0       50      65
Birth       MAL-ED          BRAZIL                         0                   1        7      65
Birth       MAL-ED          INDIA                          1                   0        2      42
Birth       MAL-ED          INDIA                          1                   1        2      42
Birth       MAL-ED          INDIA                          0                   0       31      42
Birth       MAL-ED          INDIA                          0                   1        7      42
Birth       MAL-ED          NEPAL                          1                   0        0      26
Birth       MAL-ED          NEPAL                          1                   1        1      26
Birth       MAL-ED          NEPAL                          0                   0       24      26
Birth       MAL-ED          NEPAL                          0                   1        1      26
Birth       MAL-ED          PERU                           1                   0       52     223
Birth       MAL-ED          PERU                           1                   1        6     223
Birth       MAL-ED          PERU                           0                   0      145     223
Birth       MAL-ED          PERU                           0                   1       20     223
Birth       MAL-ED          SOUTH AFRICA                   1                   0        2     105
Birth       MAL-ED          SOUTH AFRICA                   1                   1        0     105
Birth       MAL-ED          SOUTH AFRICA                   0                   0       94     105
Birth       MAL-ED          SOUTH AFRICA                   0                   1        9     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       98     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     119
6 months    EE              PAKISTAN                       1                   0        3       9
6 months    EE              PAKISTAN                       1                   1        1       9
6 months    EE              PAKISTAN                       0                   0        4       9
6 months    EE              PAKISTAN                       0                   1        1       9
6 months    GMS-Nepal       NEPAL                          1                   0      339     527
6 months    GMS-Nepal       NEPAL                          1                   1       83     527
6 months    GMS-Nepal       NEPAL                          0                   0       76     527
6 months    GMS-Nepal       NEPAL                          0                   1       29     527
6 months    JiVitA-3        BANGLADESH                     1                   0     4980    8552
6 months    JiVitA-3        BANGLADESH                     1                   1     1613    8552
6 months    JiVitA-3        BANGLADESH                     0                   0     1458    8552
6 months    JiVitA-3        BANGLADESH                     0                   1      501    8552
6 months    JiVitA-4        BANGLADESH                     1                   0     2479    4185
6 months    JiVitA-4        BANGLADESH                     1                   1      774    4185
6 months    JiVitA-4        BANGLADESH                     0                   0      649    4185
6 months    JiVitA-4        BANGLADESH                     0                   1      283    4185
6 months    LCNI-5          MALAWI                         1                   0       30     272
6 months    LCNI-5          MALAWI                         1                   1       17     272
6 months    LCNI-5          MALAWI                         0                   0      145     272
6 months    LCNI-5          MALAWI                         0                   1       80     272
6 months    MAL-ED          BANGLADESH                     1                   0       68     240
6 months    MAL-ED          BANGLADESH                     1                   1       13     240
6 months    MAL-ED          BANGLADESH                     0                   0      128     240
6 months    MAL-ED          BANGLADESH                     0                   1       31     240
6 months    MAL-ED          BRAZIL                         1                   0       24     209
6 months    MAL-ED          BRAZIL                         1                   1        1     209
6 months    MAL-ED          BRAZIL                         0                   0      179     209
6 months    MAL-ED          BRAZIL                         0                   1        5     209
6 months    MAL-ED          INDIA                          1                   0       13     233
6 months    MAL-ED          INDIA                          1                   1        4     233
6 months    MAL-ED          INDIA                          0                   0      176     233
6 months    MAL-ED          INDIA                          0                   1       40     233
6 months    MAL-ED          NEPAL                          1                   0        8     235
6 months    MAL-ED          NEPAL                          1                   1        0     235
6 months    MAL-ED          NEPAL                          0                   0      215     235
6 months    MAL-ED          NEPAL                          0                   1       12     235
6 months    MAL-ED          PERU                           1                   0       59     272
6 months    MAL-ED          PERU                           1                   1       13     272
6 months    MAL-ED          PERU                           0                   0      153     272
6 months    MAL-ED          PERU                           0                   1       47     272
6 months    MAL-ED          SOUTH AFRICA                   1                   0        3     250
6 months    MAL-ED          SOUTH AFRICA                   1                   1        0     250
6 months    MAL-ED          SOUTH AFRICA                   0                   0      199     250
6 months    MAL-ED          SOUTH AFRICA                   0                   1       48     250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        4     243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      180     243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       58     243
6 months    SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    SAS-FoodSuppl   INDIA                          0                   0       87     168
6 months    SAS-FoodSuppl   INDIA                          0                   1       81     168
24 months   EE              PAKISTAN                       1                   0        0       3
24 months   EE              PAKISTAN                       1                   1        0       3
24 months   EE              PAKISTAN                       0                   0        2       3
24 months   EE              PAKISTAN                       0                   1        1       3
24 months   GMS-Nepal       NEPAL                          1                   0      208     446
24 months   GMS-Nepal       NEPAL                          1                   1      155     446
24 months   GMS-Nepal       NEPAL                          0                   0       40     446
24 months   GMS-Nepal       NEPAL                          0                   1       43     446
24 months   JiVitA-3        BANGLADESH                     1                   0     1707    4334
24 months   JiVitA-3        BANGLADESH                     1                   1     1627    4334
24 months   JiVitA-3        BANGLADESH                     0                   0      505    4334
24 months   JiVitA-3        BANGLADESH                     0                   1      495    4334
24 months   JiVitA-4        BANGLADESH                     1                   0     1905    4049
24 months   JiVitA-4        BANGLADESH                     1                   1     1252    4049
24 months   JiVitA-4        BANGLADESH                     0                   0      503    4049
24 months   JiVitA-4        BANGLADESH                     0                   1      389    4049
24 months   LCNI-5          MALAWI                         1                   0       17     189
24 months   LCNI-5          MALAWI                         1                   1       17     189
24 months   LCNI-5          MALAWI                         0                   0       80     189
24 months   LCNI-5          MALAWI                         0                   1       75     189
24 months   MAL-ED          BANGLADESH                     1                   0       31     212
24 months   MAL-ED          BANGLADESH                     1                   1       38     212
24 months   MAL-ED          BANGLADESH                     0                   0       80     212
24 months   MAL-ED          BANGLADESH                     0                   1       63     212
24 months   MAL-ED          BRAZIL                         1                   0       20     169
24 months   MAL-ED          BRAZIL                         1                   1        0     169
24 months   MAL-ED          BRAZIL                         0                   0      142     169
24 months   MAL-ED          BRAZIL                         0                   1        7     169
24 months   MAL-ED          INDIA                          1                   0        7     224
24 months   MAL-ED          INDIA                          1                   1       10     224
24 months   MAL-ED          INDIA                          0                   0      121     224
24 months   MAL-ED          INDIA                          0                   1       86     224
24 months   MAL-ED          NEPAL                          1                   0        6     227
24 months   MAL-ED          NEPAL                          1                   1        2     227
24 months   MAL-ED          NEPAL                          0                   0      171     227
24 months   MAL-ED          NEPAL                          0                   1       48     227
24 months   MAL-ED          PERU                           1                   0       33     201
24 months   MAL-ED          PERU                           1                   1       20     201
24 months   MAL-ED          PERU                           0                   0       94     201
24 months   MAL-ED          PERU                           0                   1       54     201
24 months   MAL-ED          SOUTH AFRICA                   1                   0        3     235
24 months   MAL-ED          SOUTH AFRICA                   1                   1        0     235
24 months   MAL-ED          SOUTH AFRICA                   0                   0      150     235
24 months   MAL-ED          SOUTH AFRICA                   0                   1       82     235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       57     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1      152     213


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
![](/tmp/aa0de820-8d04-489e-b0c2-ff11b2acbba0/c7993017-b0c8-471c-8d89-e4e0d45cf6ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aa0de820-8d04-489e-b0c2-ff11b2acbba0/c7993017-b0c8-471c-8d89-e4e0d45cf6ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aa0de820-8d04-489e-b0c2-ff11b2acbba0/c7993017-b0c8-471c-8d89-e4e0d45cf6ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aa0de820-8d04-489e-b0c2-ff11b2acbba0/c7993017-b0c8-471c-8d89-e4e0d45cf6ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.1561806   0.1215075   0.1908537
Birth       GMS-Nepal   NEPAL        0                    NA                0.1797462   0.1047643   0.2547280
Birth       JiVitA-3    BANGLADESH   1                    NA                0.3234960   0.3131159   0.3338761
Birth       JiVitA-3    BANGLADESH   0                    NA                0.3233547   0.3124859   0.3342235
Birth       JiVitA-4    BANGLADESH   1                    NA                0.3027913   0.2807278   0.3248549
Birth       JiVitA-4    BANGLADESH   0                    NA                0.2996112   0.2751715   0.3240509
Birth       MAL-ED      BANGLADESH   1                    NA                0.1287224   0.0522089   0.2052359
Birth       MAL-ED      BANGLADESH   0                    NA                0.2045466   0.1386303   0.2704629
Birth       MAL-ED      PERU         1                    NA                0.1034483   0.0248959   0.1820007
Birth       MAL-ED      PERU         0                    NA                0.1212121   0.0713010   0.1711232
6 months    GMS-Nepal   NEPAL        1                    NA                0.1964185   0.1583790   0.2344580
6 months    GMS-Nepal   NEPAL        0                    NA                0.2744213   0.1882594   0.3605832
6 months    JiVitA-3    BANGLADESH   1                    NA                0.2454075   0.2339152   0.2568998
6 months    JiVitA-3    BANGLADESH   0                    NA                0.2537022   0.2344767   0.2729277
6 months    JiVitA-4    BANGLADESH   1                    NA                0.2437923   0.2278592   0.2597254
6 months    JiVitA-4    BANGLADESH   0                    NA                0.2845173   0.2512167   0.3178178
6 months    LCNI-5      MALAWI       1                    NA                0.3288145   0.1874296   0.4701993
6 months    LCNI-5      MALAWI       0                    NA                0.3553239   0.2925976   0.4180501
6 months    MAL-ED      BANGLADESH   1                    NA                0.1449549   0.0708050   0.2191047
6 months    MAL-ED      BANGLADESH   0                    NA                0.1982862   0.1361477   0.2604248
6 months    MAL-ED      PERU         1                    NA                0.1857207   0.0898812   0.2815603
6 months    MAL-ED      PERU         0                    NA                0.2326111   0.1735919   0.2916303
24 months   GMS-Nepal   NEPAL        1                    NA                0.4287022   0.3778332   0.4795711
24 months   GMS-Nepal   NEPAL        0                    NA                0.5207312   0.4143552   0.6271071
24 months   JiVitA-3    BANGLADESH   1                    NA                0.4864901   0.4664206   0.5065597
24 months   JiVitA-3    BANGLADESH   0                    NA                0.4989021   0.4635172   0.5342869
24 months   JiVitA-4    BANGLADESH   1                    NA                0.4013353   0.3812012   0.4214693
24 months   JiVitA-4    BANGLADESH   0                    NA                0.4141519   0.3767490   0.4515549
24 months   LCNI-5      MALAWI       1                    NA                0.4995753   0.3288580   0.6702926
24 months   LCNI-5      MALAWI       0                    NA                0.4829514   0.4038713   0.5620315
24 months   MAL-ED      BANGLADESH   1                    NA                0.5408252   0.4248812   0.6567692
24 months   MAL-ED      BANGLADESH   0                    NA                0.4543227   0.3743292   0.5343161
24 months   MAL-ED      INDIA        1                    NA                0.5882353   0.3537610   0.8227096
24 months   MAL-ED      INDIA        0                    NA                0.4154589   0.3481758   0.4827420
24 months   MAL-ED      PERU         1                    NA                0.3906876   0.2611467   0.5202284
24 months   MAL-ED      PERU         0                    NA                0.3496109   0.2723756   0.4268461


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1615970   0.1301114   0.1930825
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.3234716   0.3131402   0.3338029
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.3023441   0.2806174   0.3240708
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1809955   0.1301194   0.2318716
Birth       MAL-ED      PERU         NA                   NA                0.1165919   0.0743750   0.1588088
6 months    GMS-Nepal   NEPAL        NA                   NA                0.2125237   0.1775632   0.2474842
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.2471936   0.2366536   0.2577336
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.2525687   0.2374550   0.2676823
6 months    LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    MAL-ED      BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6 months    MAL-ED      PERU         NA                   NA                0.2205882   0.1712211   0.2699554
24 months   GMS-Nepal   NEPAL        NA                   NA                0.4439462   0.3977834   0.4901089
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.4896170   0.4715168   0.5077172
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.4052853   0.3865623   0.4240082
24 months   LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   MAL-ED      BANGLADESH   NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED      INDIA        NA                   NA                0.4285714   0.3636201   0.4935228
24 months   MAL-ED      PERU         NA                   NA                0.3681592   0.3013164   0.4350020


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 1.1508866   0.7177549   1.845393
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.9995632   0.9861752   1.013133
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 0.9894974   0.9405293   1.041015
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 1.5890520   0.8092951   3.120105
Birth       MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      PERU         0                    1                 1.1717172   0.4939463   2.779495
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.3971255   0.9656914   2.021308
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 1.0337997   0.9525837   1.121940
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.1670478   1.0283769   1.324418
6 months    LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    LCNI-5      MALAWI       0                    1                 1.0806212   0.6783334   1.721487
6 months    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED      BANGLADESH   0                    1                 1.3679171   0.7503765   2.493678
6 months    MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED      PERU         0                    1                 1.2524777   0.7032923   2.230510
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.2146689   0.9608922   1.535469
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 1.0255132   0.9478854   1.109498
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.0319350   0.9377053   1.135634
24 months   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   LCNI-5      MALAWI       0                    1                 0.9667239   0.6615935   1.412582
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 0.8400545   0.6412673   1.100464
24 months   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      INDIA        0                    1                 0.7062802   0.4593272   1.086005
24 months   MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      PERU         0                    1                 0.8948605   0.6063107   1.320734


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0054164   -0.0107992   0.0216319
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0000244   -0.0009801   0.0009313
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0004473   -0.0034157   0.0025211
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0522731   -0.0147229   0.1192691
Birth       MAL-ED      PERU         1                    NA                 0.0131437   -0.0557257   0.0820130
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0161052   -0.0028373   0.0350478
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0017861   -0.0029241   0.0064964
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0087764    0.0012430   0.0163098
6 months    LCNI-5      MALAWI       1                    NA                 0.0278032   -0.1011923   0.1567987
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0383785   -0.0246434   0.1014004
6 months    MAL-ED      PERU         1                    NA                 0.0348675   -0.0503094   0.1200443
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0152440   -0.0065149   0.0370030
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0031268   -0.0058775   0.0121312
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0039500   -0.0046881   0.0125880
24 months   LCNI-5      MALAWI       1                    NA                -0.0128028   -0.1678542   0.1422485
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0644101   -0.1576141   0.0287939
24 months   MAL-ED      INDIA        1                    NA                -0.1596639   -0.3851677   0.0658400
24 months   MAL-ED      PERU         1                    NA                -0.0225284   -0.1321395   0.0870828


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0335177   -0.0720886   0.1287212
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0000754   -0.0030342   0.0028746
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0014793   -0.0113412   0.0082864
Birth       MAL-ED      BANGLADESH   1                    NA                 0.2888088   -0.1872501   0.5739794
Birth       MAL-ED      PERU         1                    NA                 0.1127321   -0.7244540   0.5434820
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0757808   -0.0173598   0.1603942
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0072256   -0.0120120   0.0260975
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0347485    0.0046767   0.0639117
6 months    LCNI-5      MALAWI       1                    NA                 0.0779636   -0.3654128   0.3773669
6 months    MAL-ED      BANGLADESH   1                    NA                 0.2093372   -0.2159828   0.4858910
6 months    MAL-ED      PERU         1                    NA                 0.1580660   -0.3310476   0.4674473
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0343376   -0.0160455   0.0822223
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0063863   -0.0121728   0.0246051
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0097462   -0.0117751   0.0308097
24 months   LCNI-5      MALAWI       1                    NA                -0.0263014   -0.3998300   0.2475553
24 months   MAL-ED      BANGLADESH   1                    NA                -0.1351975   -0.3494242   0.0450199
24 months   MAL-ED      INDIA        1                    NA                -0.3725490   -1.0185025   0.0666889
24 months   MAL-ED      PERU         1                    NA                -0.0611919   -0.4048557   0.1984029
