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

**Outcome Variable:** swasted

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

agecat      studyid         country                        predfeed36    swasted   n_cell      n
----------  --------------  -----------------------------  -----------  --------  -------  -----
Birth       EE              PAKISTAN                       1                   0        2      6
Birth       EE              PAKISTAN                       1                   1        0      6
Birth       EE              PAKISTAN                       0                   0        3      6
Birth       EE              PAKISTAN                       0                   1        1      6
Birth       GMS-Nepal       NEPAL                          1                   0      378    491
Birth       GMS-Nepal       NEPAL                          1                   1       18    491
Birth       GMS-Nepal       NEPAL                          0                   0       92    491
Birth       GMS-Nepal       NEPAL                          0                   1        3    491
Birth       JiVitA-3        BANGLADESH                     1                   0     6603   8619
Birth       JiVitA-3        BANGLADESH                     1                   1      143   8619
Birth       JiVitA-3        BANGLADESH                     0                   0     1844   8619
Birth       JiVitA-3        BANGLADESH                     0                   1       29   8619
Birth       JiVitA-4        BANGLADESH                     1                   0     1695   2128
Birth       JiVitA-4        BANGLADESH                     1                   1       19   2128
Birth       JiVitA-4        BANGLADESH                     0                   0      404   2128
Birth       JiVitA-4        BANGLADESH                     0                   1       10   2128
Birth       MAL-ED          BANGLADESH                     1                   0       69    208
Birth       MAL-ED          BANGLADESH                     1                   1        0    208
Birth       MAL-ED          BANGLADESH                     0                   0      131    208
Birth       MAL-ED          BANGLADESH                     0                   1        8    208
Birth       MAL-ED          BRAZIL                         1                   0        7     62
Birth       MAL-ED          BRAZIL                         1                   1        0     62
Birth       MAL-ED          BRAZIL                         0                   0       55     62
Birth       MAL-ED          BRAZIL                         0                   1        0     62
Birth       MAL-ED          INDIA                          1                   0        4     40
Birth       MAL-ED          INDIA                          1                   1        0     40
Birth       MAL-ED          INDIA                          0                   0       36     40
Birth       MAL-ED          INDIA                          0                   1        0     40
Birth       MAL-ED          NEPAL                          1                   0        1     25
Birth       MAL-ED          NEPAL                          1                   1        0     25
Birth       MAL-ED          NEPAL                          0                   0       23     25
Birth       MAL-ED          NEPAL                          0                   1        1     25
Birth       MAL-ED          PERU                           1                   0       57    218
Birth       MAL-ED          PERU                           1                   1        0    218
Birth       MAL-ED          PERU                           0                   0      161    218
Birth       MAL-ED          PERU                           0                   1        0    218
Birth       MAL-ED          SOUTH AFRICA                   1                   0        2    104
Birth       MAL-ED          SOUTH AFRICA                   1                   1        0    104
Birth       MAL-ED          SOUTH AFRICA                   0                   0      102    104
Birth       MAL-ED          SOUTH AFRICA                   0                   1        0    104
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      111    111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    111
6 months    EE              PAKISTAN                       1                   0        4      9
6 months    EE              PAKISTAN                       1                   1        0      9
6 months    EE              PAKISTAN                       0                   0        5      9
6 months    EE              PAKISTAN                       0                   1        0      9
6 months    GMS-Nepal       NEPAL                          1                   0      416    527
6 months    GMS-Nepal       NEPAL                          1                   1        6    527
6 months    GMS-Nepal       NEPAL                          0                   0      105    527
6 months    GMS-Nepal       NEPAL                          0                   1        0    527
6 months    JiVitA-3        BANGLADESH                     1                   0     6477   8535
6 months    JiVitA-3        BANGLADESH                     1                   1       99   8535
6 months    JiVitA-3        BANGLADESH                     0                   0     1936   8535
6 months    JiVitA-3        BANGLADESH                     0                   1       23   8535
6 months    JiVitA-4        BANGLADESH                     1                   0     3233   4188
6 months    JiVitA-4        BANGLADESH                     1                   1       19   4188
6 months    JiVitA-4        BANGLADESH                     0                   0      925   4188
6 months    JiVitA-4        BANGLADESH                     0                   1       11   4188
6 months    LCNI-5          MALAWI                         1                   0       47    272
6 months    LCNI-5          MALAWI                         1                   1        0    272
6 months    LCNI-5          MALAWI                         0                   0      225    272
6 months    LCNI-5          MALAWI                         0                   1        0    272
6 months    MAL-ED          BANGLADESH                     1                   0       80    240
6 months    MAL-ED          BANGLADESH                     1                   1        1    240
6 months    MAL-ED          BANGLADESH                     0                   0      158    240
6 months    MAL-ED          BANGLADESH                     0                   1        1    240
6 months    MAL-ED          BRAZIL                         1                   0       25    209
6 months    MAL-ED          BRAZIL                         1                   1        0    209
6 months    MAL-ED          BRAZIL                         0                   0      184    209
6 months    MAL-ED          BRAZIL                         0                   1        0    209
6 months    MAL-ED          INDIA                          1                   0       17    233
6 months    MAL-ED          INDIA                          1                   1        0    233
6 months    MAL-ED          INDIA                          0                   0      210    233
6 months    MAL-ED          INDIA                          0                   1        6    233
6 months    MAL-ED          NEPAL                          1                   0        8    235
6 months    MAL-ED          NEPAL                          1                   1        0    235
6 months    MAL-ED          NEPAL                          0                   0      227    235
6 months    MAL-ED          NEPAL                          0                   1        0    235
6 months    MAL-ED          PERU                           1                   0       72    272
6 months    MAL-ED          PERU                           1                   1        0    272
6 months    MAL-ED          PERU                           0                   0      200    272
6 months    MAL-ED          PERU                           0                   1        0    272
6 months    MAL-ED          SOUTH AFRICA                   1                   0        3    250
6 months    MAL-ED          SOUTH AFRICA                   1                   1        0    250
6 months    MAL-ED          SOUTH AFRICA                   0                   0      244    250
6 months    MAL-ED          SOUTH AFRICA                   0                   1        3    250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5    243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      238    243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    243
6 months    SAS-FoodSuppl   INDIA                          1                   0        0    168
6 months    SAS-FoodSuppl   INDIA                          1                   1        0    168
6 months    SAS-FoodSuppl   INDIA                          0                   0      156    168
6 months    SAS-FoodSuppl   INDIA                          0                   1       12    168
24 months   EE              PAKISTAN                       1                   0        0      3
24 months   EE              PAKISTAN                       1                   1        0      3
24 months   EE              PAKISTAN                       0                   0        3      3
24 months   EE              PAKISTAN                       0                   1        0      3
24 months   GMS-Nepal       NEPAL                          1                   0      355    445
24 months   GMS-Nepal       NEPAL                          1                   1        7    445
24 months   GMS-Nepal       NEPAL                          0                   0       76    445
24 months   GMS-Nepal       NEPAL                          0                   1        7    445
24 months   JiVitA-3        BANGLADESH                     1                   0     3173   4317
24 months   JiVitA-3        BANGLADESH                     1                   1      147   4317
24 months   JiVitA-3        BANGLADESH                     0                   0      966   4317
24 months   JiVitA-3        BANGLADESH                     0                   1       31   4317
24 months   JiVitA-4        BANGLADESH                     1                   0     3068   4035
24 months   JiVitA-4        BANGLADESH                     1                   1       76   4035
24 months   JiVitA-4        BANGLADESH                     0                   0      866   4035
24 months   JiVitA-4        BANGLADESH                     0                   1       25   4035
24 months   LCNI-5          MALAWI                         1                   0       34    184
24 months   LCNI-5          MALAWI                         1                   1        0    184
24 months   LCNI-5          MALAWI                         0                   0      150    184
24 months   LCNI-5          MALAWI                         0                   1        0    184
24 months   MAL-ED          BANGLADESH                     1                   0       69    212
24 months   MAL-ED          BANGLADESH                     1                   1        0    212
24 months   MAL-ED          BANGLADESH                     0                   0      143    212
24 months   MAL-ED          BANGLADESH                     0                   1        0    212
24 months   MAL-ED          BRAZIL                         1                   0       20    169
24 months   MAL-ED          BRAZIL                         1                   1        0    169
24 months   MAL-ED          BRAZIL                         0                   0      148    169
24 months   MAL-ED          BRAZIL                         0                   1        1    169
24 months   MAL-ED          INDIA                          1                   0       17    224
24 months   MAL-ED          INDIA                          1                   1        0    224
24 months   MAL-ED          INDIA                          0                   0      205    224
24 months   MAL-ED          INDIA                          0                   1        2    224
24 months   MAL-ED          NEPAL                          1                   0        8    227
24 months   MAL-ED          NEPAL                          1                   1        0    227
24 months   MAL-ED          NEPAL                          0                   0      219    227
24 months   MAL-ED          NEPAL                          0                   1        0    227
24 months   MAL-ED          PERU                           1                   0       53    201
24 months   MAL-ED          PERU                           1                   1        0    201
24 months   MAL-ED          PERU                           0                   0      146    201
24 months   MAL-ED          PERU                           0                   1        2    201
24 months   MAL-ED          SOUTH AFRICA                   1                   0        3    235
24 months   MAL-ED          SOUTH AFRICA                   1                   1        0    235
24 months   MAL-ED          SOUTH AFRICA                   0                   0      232    235
24 months   MAL-ED          SOUTH AFRICA                   0                   1        0    235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        4    213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      209    213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    213


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
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/fc68f705-5548-4f68-aa01-517a67f9dc15/3b407a79-e478-4f9a-bae9-0b09db5a9c95/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc68f705-5548-4f68-aa01-517a67f9dc15/3b407a79-e478-4f9a-bae9-0b09db5a9c95/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc68f705-5548-4f68-aa01-517a67f9dc15/3b407a79-e478-4f9a-bae9-0b09db5a9c95/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc68f705-5548-4f68-aa01-517a67f9dc15/3b407a79-e478-4f9a-bae9-0b09db5a9c95/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                0.0211668   0.0171509   0.0251826
Birth       JiVitA-3    BANGLADESH   0                    NA                0.0154254   0.0077179   0.0231329
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0110842   0.0059808   0.0161875
Birth       JiVitA-4    BANGLADESH   0                    NA                0.0240736   0.0037511   0.0443960
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0150519   0.0119842   0.0181197
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0119117   0.0056328   0.0181905
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0059315   0.0019719   0.0098912
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0121520   0.0060367   0.0182673
24 months   GMS-Nepal   NEPAL        1                    NA                0.0193370   0.0051354   0.0335386
24 months   GMS-Nepal   NEPAL        0                    NA                0.0843373   0.0244858   0.1441889
24 months   JiVitA-3    BANGLADESH   1                    NA                0.0442125   0.0350955   0.0533296
24 months   JiVitA-3    BANGLADESH   0                    NA                0.0311075   0.0204517   0.0417634
24 months   JiVitA-4    BANGLADESH   1                    NA                0.0241723   0.0179848   0.0303598
24 months   JiVitA-4    BANGLADESH   0                    NA                0.0273331   0.0165707   0.0380955


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.0199559   0.0164404   0.0234714
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.0136278   0.0077812   0.0194744
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0142941   0.0115468   0.0170414
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0071633   0.0038384   0.0104883
24 months   GMS-Nepal   NEPAL        NA                   NA                0.0314607   0.0152239   0.0476974
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0412323   0.0338116   0.0486531
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0250310   0.0196459   0.0304161


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.7287569   0.4253070    1.248714
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 2.1718837   0.8288114    5.691377
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.7913707   0.4472398    1.400295
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 2.0487170   0.8839413    4.748326
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 4.3614458   1.5707064   12.110608
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.7035904   0.4715266    1.049865
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1307625   0.7036899    1.817027


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0012108   -0.0030946   0.0006729
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0025436   -0.0017466   0.0068338
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0007579   -0.0023953   0.0008796
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0012318   -0.0003938   0.0028574
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0121237    0.0004112   0.0238361
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0029802   -0.0062316   0.0002712
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0008587   -0.0020186   0.0037360


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0606762   -0.1598659   0.0300310
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.1866499   -0.1486973   0.4240969
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0530188   -0.1755659   0.0567534
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1719588   -0.1252815   0.3906838
24 months   GMS-Nepal   NEPAL        1                    NA                 0.3853591   -0.0298156   0.6331543
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0722785   -0.1500998   0.0002771
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0343051   -0.0883013   0.1430988
