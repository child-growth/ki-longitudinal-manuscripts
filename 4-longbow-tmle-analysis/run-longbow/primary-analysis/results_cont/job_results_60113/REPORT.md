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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
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

agecat      studyid          country                        exclfeed36    n_cell      n
----------  ---------------  -----------------------------  -----------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          1                  3      3
Birth       CMC-V-BCS-2002   INDIA                          0                  0      3
Birth       EE               PAKISTAN                       1                  2      6
Birth       EE               PAKISTAN                       0                  4      6
Birth       GMS-Nepal        NEPAL                          1                396    491
Birth       GMS-Nepal        NEPAL                          0                 95    491
Birth       IRC              INDIA                          1                  0      3
Birth       IRC              INDIA                          0                  3      3
Birth       JiVitA-3         BANGLADESH                     1               6736   8619
Birth       JiVitA-3         BANGLADESH                     0               1883   8619
Birth       JiVitA-4         BANGLADESH                     1               1711   2128
Birth       JiVitA-4         BANGLADESH                     0                417   2128
Birth       Keneba           GAMBIA                         1                343   1192
Birth       Keneba           GAMBIA                         0                849   1192
Birth       MAL-ED           BANGLADESH                     1                 31    208
Birth       MAL-ED           BANGLADESH                     0                177    208
Birth       MAL-ED           BRAZIL                         1                  4     62
Birth       MAL-ED           BRAZIL                         0                 58     62
Birth       MAL-ED           INDIA                          1                  1     40
Birth       MAL-ED           INDIA                          0                 39     40
Birth       MAL-ED           NEPAL                          1                  0     25
Birth       MAL-ED           NEPAL                          0                 25     25
Birth       MAL-ED           PERU                           1                  5    218
Birth       MAL-ED           PERU                           0                213    218
Birth       MAL-ED           SOUTH AFRICA                   1                  1    104
Birth       MAL-ED           SOUTH AFRICA                   0                103    104
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                111    111
Birth       PROVIDE          BANGLADESH                     1                115    483
Birth       PROVIDE          BANGLADESH                     0                368    483
6 months    CMC-V-BCS-2002   INDIA                          1                  9      9
6 months    CMC-V-BCS-2002   INDIA                          0                  0      9
6 months    EE               PAKISTAN                       1                  4      9
6 months    EE               PAKISTAN                       0                  5      9
6 months    GMS-Nepal        NEPAL                          1                422    527
6 months    GMS-Nepal        NEPAL                          0                105    527
6 months    IRC              INDIA                          1                  0      4
6 months    IRC              INDIA                          0                  4      4
6 months    JiVitA-3         BANGLADESH                     1               6561   8535
6 months    JiVitA-3         BANGLADESH                     0               1974   8535
6 months    JiVitA-4         BANGLADESH                     1               3240   4188
6 months    JiVitA-4         BANGLADESH                     0                948   4188
6 months    Keneba           GAMBIA                         1                507   1790
6 months    Keneba           GAMBIA                         0               1283   1790
6 months    LCNI-5           MALAWI                         1                 47    272
6 months    LCNI-5           MALAWI                         0                225    272
6 months    MAL-ED           BANGLADESH                     1                 30    240
6 months    MAL-ED           BANGLADESH                     0                210    240
6 months    MAL-ED           BRAZIL                         1                 12    209
6 months    MAL-ED           BRAZIL                         0                197    209
6 months    MAL-ED           INDIA                          1                  9    233
6 months    MAL-ED           INDIA                          0                224    233
6 months    MAL-ED           NEPAL                          1                  4    235
6 months    MAL-ED           NEPAL                          0                231    235
6 months    MAL-ED           PERU                           1                  6    272
6 months    MAL-ED           PERU                           0                266    272
6 months    MAL-ED           SOUTH AFRICA                   1                  1    250
6 months    MAL-ED           SOUTH AFRICA                   0                249    250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4    243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                239    243
6 months    PROVIDE          BANGLADESH                     1                145    603
6 months    PROVIDE          BANGLADESH                     0                458    603
6 months    SAS-FoodSuppl    INDIA                          1                  0    168
6 months    SAS-FoodSuppl    INDIA                          0                168    168
24 months   CMC-V-BCS-2002   INDIA                          1                  9      9
24 months   CMC-V-BCS-2002   INDIA                          0                  0      9
24 months   EE               PAKISTAN                       1                  0      3
24 months   EE               PAKISTAN                       0                  3      3
24 months   GMS-Nepal        NEPAL                          1                362    445
24 months   GMS-Nepal        NEPAL                          0                 83    445
24 months   IRC              INDIA                          1                  0      4
24 months   IRC              INDIA                          0                  4      4
24 months   JiVitA-3         BANGLADESH                     1               3311   4317
24 months   JiVitA-3         BANGLADESH                     0               1006   4317
24 months   JiVitA-4         BANGLADESH                     1               3132   4035
24 months   JiVitA-4         BANGLADESH                     0                903   4035
24 months   Keneba           GAMBIA                         1                424   1395
24 months   Keneba           GAMBIA                         0                971   1395
24 months   LCNI-5           MALAWI                         1                 34    184
24 months   LCNI-5           MALAWI                         0                150    184
24 months   MAL-ED           BANGLADESH                     1                 25    212
24 months   MAL-ED           BANGLADESH                     0                187    212
24 months   MAL-ED           BRAZIL                         1                 11    169
24 months   MAL-ED           BRAZIL                         0                158    169
24 months   MAL-ED           INDIA                          1                  9    224
24 months   MAL-ED           INDIA                          0                215    224
24 months   MAL-ED           NEPAL                          1                  4    227
24 months   MAL-ED           NEPAL                          0                223    227
24 months   MAL-ED           PERU                           1                  4    201
24 months   MAL-ED           PERU                           0                197    201
24 months   MAL-ED           SOUTH AFRICA                   1                  1    235
24 months   MAL-ED           SOUTH AFRICA                   0                234    235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                210    213
24 months   PROVIDE          BANGLADESH                     1                141    577
24 months   PROVIDE          BANGLADESH                     0                436    577


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
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
![](/tmp/b93a94b1-53ee-4362-bb1a-5005617d846b/df9dd697-726e-4b30-a37f-ad819e6e653f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b93a94b1-53ee-4362-bb1a-5005617d846b/df9dd697-726e-4b30-a37f-ad819e6e653f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b93a94b1-53ee-4362-bb1a-5005617d846b/df9dd697-726e-4b30-a37f-ad819e6e653f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0986475   -1.2071419   -0.9901531
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1798088   -1.3748589   -0.9847587
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.7980828   -0.8251336   -0.7710321
Birth       JiVitA-3    BANGLADESH   0                    NA                -0.7573179   -0.8098187   -0.7048171
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.6885997   -0.7445914   -0.6326079
Birth       JiVitA-4    BANGLADESH   0                    NA                -0.7558423   -0.8867844   -0.6249002
Birth       Keneba      GAMBIA       1                    NA                -1.2561871   -1.3735453   -1.1388290
Birth       Keneba      GAMBIA       0                    NA                -1.2831178   -1.3606233   -1.2056123
Birth       MAL-ED      BANGLADESH   1                    NA                -0.8452398   -1.1917232   -0.4987564
Birth       MAL-ED      BANGLADESH   0                    NA                -0.9772191   -1.1416073   -0.8128308
Birth       MAL-ED      PERU         1                    NA                 0.6820000    0.4886003    0.8753997
Birth       MAL-ED      PERU         0                    NA                -0.0629108   -0.1888962    0.0630746
Birth       PROVIDE     BANGLADESH   1                    NA                -1.3063004   -1.4757356   -1.1368653
Birth       PROVIDE     BANGLADESH   0                    NA                -1.2884024   -1.3767294   -1.2000755
6 months    GMS-Nepal   NEPAL        1                    NA                -0.5680308   -0.6686133   -0.4674482
6 months    GMS-Nepal   NEPAL        0                    NA                -0.7335270   -0.9224850   -0.5445689
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.6000439   -0.6292579   -0.5708299
6 months    JiVitA-3    BANGLADESH   0                    NA                -0.5951242   -0.6440072   -0.5462412
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.3432108   -0.3891707   -0.2972510
6 months    JiVitA-4    BANGLADESH   0                    NA                -0.5594872   -0.6389245   -0.4800499
6 months    Keneba      GAMBIA       1                    NA                 0.0105247   -0.0946480    0.1156974
6 months    Keneba      GAMBIA       0                    NA                -0.2856962   -0.3493391   -0.2220534
6 months    LCNI-5      MALAWI       1                    NA                 0.3788052    0.0461379    0.7114725
6 months    LCNI-5      MALAWI       0                    NA                 0.3985068    0.2718394    0.5251741
6 months    MAL-ED      BANGLADESH   1                    NA                -0.0904857   -0.4740259    0.2930545
6 months    MAL-ED      BANGLADESH   0                    NA                -0.1173928   -0.2600007    0.0252151
6 months    MAL-ED      BRAZIL       1                    NA                 1.8733922    1.2860117    2.4607726
6 months    MAL-ED      BRAZIL       0                    NA                 0.9502748    0.7809869    1.1195628
6 months    MAL-ED      INDIA        1                    NA                -0.4850000   -1.2185777    0.2485777
6 months    MAL-ED      INDIA        0                    NA                -0.7254799   -0.8547181   -0.5962418
6 months    MAL-ED      PERU         1                    NA                 1.2841667    0.5956438    1.9726896
6 months    MAL-ED      PERU         0                    NA                 1.0459085    0.9221243    1.1696927
6 months    PROVIDE     BANGLADESH   1                    NA                -0.0103247   -0.1719767    0.1513273
6 months    PROVIDE     BANGLADESH   0                    NA                -0.2686410   -0.3639105   -0.1733715
24 months   GMS-Nepal   NEPAL        1                    NA                -1.0637042   -1.1624223   -0.9649861
24 months   GMS-Nepal   NEPAL        0                    NA                -1.3575285   -1.6037111   -1.1113459
24 months   JiVitA-3    BANGLADESH   1                    NA                -1.3447176   -1.3834284   -1.3060068
24 months   JiVitA-3    BANGLADESH   0                    NA                -1.3033000   -1.3705724   -1.2360276
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.2302699   -1.2745029   -1.1860368
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.2447938   -1.3265623   -1.1630254
24 months   Keneba      GAMBIA       1                    NA                -0.7070957   -0.8003589   -0.6138324
24 months   Keneba      GAMBIA       0                    NA                -0.8419041   -0.9041619   -0.7796464
24 months   LCNI-5      MALAWI       1                    NA                -0.0836123   -0.3977200    0.2304954
24 months   LCNI-5      MALAWI       0                    NA                -0.0562202   -0.2174834    0.1050429
24 months   MAL-ED      BANGLADESH   1                    NA                -0.7572305   -1.1789630   -0.3354980
24 months   MAL-ED      BANGLADESH   0                    NA                -0.8130471   -0.9476631   -0.6784311
24 months   MAL-ED      BRAZIL       1                    NA                 0.0263329   -0.8357003    0.8883660
24 months   MAL-ED      BRAZIL       0                    NA                 0.4669670    0.2526155    0.6813184
24 months   MAL-ED      INDIA        1                    NA                -1.0300000   -1.4230980   -0.6369020
24 months   MAL-ED      INDIA        0                    NA                -0.9551163   -1.0754326   -0.8348000
24 months   PROVIDE     BANGLADESH   1                    NA                -0.7806819   -0.9370085   -0.6243553
24 months   PROVIDE     BANGLADESH   0                    NA                -0.9291924   -1.0240068   -0.8343781


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       JiVitA-3    BANGLADESH   NA                   NA                -0.7892308   -0.8133344   -0.7651272
Birth       JiVitA-4    BANGLADESH   NA                   NA                -0.7018985   -0.7560164   -0.6477806
Birth       Keneba      GAMBIA       NA                   NA                -1.2752643   -1.3442810   -1.2062476
Birth       MAL-ED      BANGLADESH   NA                   NA                -0.9480769   -1.0934921   -0.8026617
Birth       MAL-ED      PERU         NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       PROVIDE     BANGLADESH   NA                   NA                -1.2966874   -1.3774293   -1.2159454
6 months    GMS-Nepal   NEPAL        NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    JiVitA-3    BANGLADESH   NA                   NA                -0.5995202   -0.6251579   -0.5738825
6 months    JiVitA-4    BANGLADESH   NA                   NA                -0.3960017   -0.4356255   -0.3563778
6 months    Keneba      GAMBIA       NA                   NA                -0.2009461   -0.2562412   -0.1456509
6 months    LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    MAL-ED      BANGLADESH   NA                   NA                -0.1354583   -0.2647102   -0.0062065
6 months    MAL-ED      BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED      INDIA        NA                   NA                -0.7161910   -0.8437667   -0.5886153
6 months    MAL-ED      PERU         NA                   NA                 1.0511642    0.9291821    1.1731463
6 months    PROVIDE     BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   JiVitA-3    BANGLADESH   NA                   NA                -1.3352235   -1.3688736   -1.3015735
24 months   JiVitA-4    BANGLADESH   NA                   NA                -1.2344089   -1.2708428   -1.1979750
24 months   Keneba      GAMBIA       NA                   NA                -0.7973955   -0.8498696   -0.7449213
24 months   LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED      BANGLADESH   NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED      BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED      INDIA        NA                   NA                -0.9581250   -1.0746982   -0.8415518
24 months   PROVIDE     BANGLADESH   NA                   NA                -0.8945581   -0.9774087   -0.8117074


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0811613   -0.2933119    0.1309892
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                  0.0407649   -0.0180824    0.0996122
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0672426   -0.2056877    0.0712024
Birth       Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba      GAMBIA       0                    1                 -0.0269307   -0.1566087    0.1027474
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                 -0.1319793   -0.5176905    0.2537319
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.7449108   -0.9757262   -0.5140954
Birth       PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE     BANGLADESH   0                    1                  0.0178980   -0.1676127    0.2034087
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.1654962   -0.3796257    0.0486332
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                  0.0049197   -0.0507027    0.0605421
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.2162764   -0.3078262   -0.1247265
6 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba      GAMBIA       0                    1                 -0.2962209   -0.4183967   -0.1740451
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0197015   -0.3365453    0.3759484
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                 -0.0269071   -0.4389113    0.3850970
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.9231173   -1.5318478   -0.3143869
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.2404799   -0.9853549    0.5043950
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.2382581   -0.9378196    0.4613034
6 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE     BANGLADESH   0                    1                 -0.2583163   -0.4455914   -0.0710412
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.2938243   -0.5591750   -0.0284736
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                  0.0414176   -0.0358294    0.1186645
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0145240   -0.1058067    0.0767587
24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba      GAMBIA       0                    1                 -0.1348085   -0.2454374   -0.0241795
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0273920   -0.3269789    0.3817630
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                 -0.0558166   -0.4985521    0.3869189
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                  0.4406341   -0.4498101    1.3310782
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.0748837   -0.3362149    0.4859823
24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE     BANGLADESH   0                    1                 -0.1485105   -0.3264760    0.0294549


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0099269   -0.0505209    0.0306672
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0088521   -0.0039643    0.0216685
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0132988   -0.0413298    0.0147322
Birth       Keneba      GAMBIA       1                    NA                -0.0190771   -0.1119948    0.0738405
Birth       MAL-ED      BANGLADESH   1                    NA                -0.1028371   -0.4357269    0.2300527
Birth       MAL-ED      PERU         1                    NA                -0.7278257   -0.9533592   -0.5022921
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0096131   -0.1321759    0.1514020
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0320768   -0.0747409    0.0105873
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0005237   -0.0123090    0.0133564
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0527909   -0.0746290   -0.0309527
6 months    Keneba      GAMBIA       1                    NA                -0.2114708   -0.2993649   -0.1235766
6 months    LCNI-5      MALAWI       1                    NA                 0.0136948   -0.2820449    0.3094345
6 months    MAL-ED      BANGLADESH   1                    NA                -0.0449726   -0.4170258    0.3270806
6 months    MAL-ED      BRAZIL       1                    NA                -0.9013148   -1.4804684   -0.3221612
6 months    MAL-ED      INDIA        1                    NA                -0.2311910   -0.9473188    0.4849368
6 months    MAL-ED      PERU         1                    NA                -0.2330025   -0.9150876    0.4490827
6 months    PROVIDE     BANGLADESH   1                    NA                -0.1887660   -0.3318798   -0.0456522
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0599213   -0.1110517   -0.0087909
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0094940   -0.0084606    0.0274487
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0041391   -0.0264906    0.0182125
24 months   Keneba      GAMBIA       1                    NA                -0.0902998   -0.1678476   -0.0127520
24 months   LCNI-5      MALAWI       1                    NA                 0.0065471   -0.2874190    0.3005131
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0620620   -0.4701884    0.3460645
24 months   MAL-ED      BRAZIL       1                    NA                 0.4362904   -0.4041859    1.2767667
24 months   MAL-ED      INDIA        1                    NA                 0.0718750   -0.3227110    0.4664610
24 months   PROVIDE     BANGLADESH   1                    NA                -0.1138761   -0.2487551    0.0210029
