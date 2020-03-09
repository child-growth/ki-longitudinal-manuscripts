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

**Outcome Variable:** wasted

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

agecat      studyid         country                        predfeed36    wasted   n_cell      n
----------  --------------  -----------------------------  -----------  -------  -------  -----
Birth       EE              PAKISTAN                       1                  0        2      6
Birth       EE              PAKISTAN                       1                  1        0      6
Birth       EE              PAKISTAN                       0                  0        3      6
Birth       EE              PAKISTAN                       0                  1        1      6
Birth       GMS-Nepal       NEPAL                          1                  0      320    491
Birth       GMS-Nepal       NEPAL                          1                  1       76    491
Birth       GMS-Nepal       NEPAL                          0                  0       77    491
Birth       GMS-Nepal       NEPAL                          0                  1       18    491
Birth       JiVitA-3        BANGLADESH                     1                  0     5983   8619
Birth       JiVitA-3        BANGLADESH                     1                  1      763   8619
Birth       JiVitA-3        BANGLADESH                     0                  0     1680   8619
Birth       JiVitA-3        BANGLADESH                     0                  1      193   8619
Birth       JiVitA-4        BANGLADESH                     1                  0     1540   2128
Birth       JiVitA-4        BANGLADESH                     1                  1      174   2128
Birth       JiVitA-4        BANGLADESH                     0                  0      367   2128
Birth       JiVitA-4        BANGLADESH                     0                  1       47   2128
Birth       MAL-ED          BANGLADESH                     1                  0       59    208
Birth       MAL-ED          BANGLADESH                     1                  1       10    208
Birth       MAL-ED          BANGLADESH                     0                  0      115    208
Birth       MAL-ED          BANGLADESH                     0                  1       24    208
Birth       MAL-ED          BRAZIL                         1                  0        7     62
Birth       MAL-ED          BRAZIL                         1                  1        0     62
Birth       MAL-ED          BRAZIL                         0                  0       53     62
Birth       MAL-ED          BRAZIL                         0                  1        2     62
Birth       MAL-ED          INDIA                          1                  0        4     40
Birth       MAL-ED          INDIA                          1                  1        0     40
Birth       MAL-ED          INDIA                          0                  0       31     40
Birth       MAL-ED          INDIA                          0                  1        5     40
Birth       MAL-ED          NEPAL                          1                  0        0     25
Birth       MAL-ED          NEPAL                          1                  1        1     25
Birth       MAL-ED          NEPAL                          0                  0       23     25
Birth       MAL-ED          NEPAL                          0                  1        1     25
Birth       MAL-ED          PERU                           1                  0       57    218
Birth       MAL-ED          PERU                           1                  1        0    218
Birth       MAL-ED          PERU                           0                  0      156    218
Birth       MAL-ED          PERU                           0                  1        5    218
Birth       MAL-ED          SOUTH AFRICA                   1                  0        2    104
Birth       MAL-ED          SOUTH AFRICA                   1                  1        0    104
Birth       MAL-ED          SOUTH AFRICA                   0                  0       93    104
Birth       MAL-ED          SOUTH AFRICA                   0                  1        9    104
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      110    111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    111
6 months    EE              PAKISTAN                       1                  0        4      9
6 months    EE              PAKISTAN                       1                  1        0      9
6 months    EE              PAKISTAN                       0                  0        5      9
6 months    EE              PAKISTAN                       0                  1        0      9
6 months    GMS-Nepal       NEPAL                          1                  0      383    527
6 months    GMS-Nepal       NEPAL                          1                  1       39    527
6 months    GMS-Nepal       NEPAL                          0                  0       95    527
6 months    GMS-Nepal       NEPAL                          0                  1       10    527
6 months    JiVitA-3        BANGLADESH                     1                  0     6001   8535
6 months    JiVitA-3        BANGLADESH                     1                  1      575   8535
6 months    JiVitA-3        BANGLADESH                     0                  0     1789   8535
6 months    JiVitA-3        BANGLADESH                     0                  1      170   8535
6 months    JiVitA-4        BANGLADESH                     1                  0     3093   4188
6 months    JiVitA-4        BANGLADESH                     1                  1      159   4188
6 months    JiVitA-4        BANGLADESH                     0                  0      858   4188
6 months    JiVitA-4        BANGLADESH                     0                  1       78   4188
6 months    LCNI-5          MALAWI                         1                  0       47    272
6 months    LCNI-5          MALAWI                         1                  1        0    272
6 months    LCNI-5          MALAWI                         0                  0      221    272
6 months    LCNI-5          MALAWI                         0                  1        4    272
6 months    MAL-ED          BANGLADESH                     1                  0       78    240
6 months    MAL-ED          BANGLADESH                     1                  1        3    240
6 months    MAL-ED          BANGLADESH                     0                  0      154    240
6 months    MAL-ED          BANGLADESH                     0                  1        5    240
6 months    MAL-ED          BRAZIL                         1                  0       25    209
6 months    MAL-ED          BRAZIL                         1                  1        0    209
6 months    MAL-ED          BRAZIL                         0                  0      183    209
6 months    MAL-ED          BRAZIL                         0                  1        1    209
6 months    MAL-ED          INDIA                          1                  0       16    233
6 months    MAL-ED          INDIA                          1                  1        1    233
6 months    MAL-ED          INDIA                          0                  0      198    233
6 months    MAL-ED          INDIA                          0                  1       18    233
6 months    MAL-ED          NEPAL                          1                  0        8    235
6 months    MAL-ED          NEPAL                          1                  1        0    235
6 months    MAL-ED          NEPAL                          0                  0      223    235
6 months    MAL-ED          NEPAL                          0                  1        4    235
6 months    MAL-ED          PERU                           1                  0       72    272
6 months    MAL-ED          PERU                           1                  1        0    272
6 months    MAL-ED          PERU                           0                  0      200    272
6 months    MAL-ED          PERU                           0                  1        0    272
6 months    MAL-ED          SOUTH AFRICA                   1                  0        3    250
6 months    MAL-ED          SOUTH AFRICA                   1                  1        0    250
6 months    MAL-ED          SOUTH AFRICA                   0                  0      240    250
6 months    MAL-ED          SOUTH AFRICA                   0                  1        7    250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5    243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      237    243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    243
6 months    SAS-FoodSuppl   INDIA                          1                  0        0    168
6 months    SAS-FoodSuppl   INDIA                          1                  1        0    168
6 months    SAS-FoodSuppl   INDIA                          0                  0      127    168
6 months    SAS-FoodSuppl   INDIA                          0                  1       41    168
24 months   EE              PAKISTAN                       1                  0        0      3
24 months   EE              PAKISTAN                       1                  1        0      3
24 months   EE              PAKISTAN                       0                  0        3      3
24 months   EE              PAKISTAN                       0                  1        0      3
24 months   GMS-Nepal       NEPAL                          1                  0      304    445
24 months   GMS-Nepal       NEPAL                          1                  1       58    445
24 months   GMS-Nepal       NEPAL                          0                  0       60    445
24 months   GMS-Nepal       NEPAL                          0                  1       23    445
24 months   JiVitA-3        BANGLADESH                     1                  0     2563   4317
24 months   JiVitA-3        BANGLADESH                     1                  1      757   4317
24 months   JiVitA-3        BANGLADESH                     0                  0      775   4317
24 months   JiVitA-3        BANGLADESH                     0                  1      222   4317
24 months   JiVitA-4        BANGLADESH                     1                  0     2551   4035
24 months   JiVitA-4        BANGLADESH                     1                  1      593   4035
24 months   JiVitA-4        BANGLADESH                     0                  0      692   4035
24 months   JiVitA-4        BANGLADESH                     0                  1      199   4035
24 months   LCNI-5          MALAWI                         1                  0       33    184
24 months   LCNI-5          MALAWI                         1                  1        1    184
24 months   LCNI-5          MALAWI                         0                  0      147    184
24 months   LCNI-5          MALAWI                         0                  1        3    184
24 months   MAL-ED          BANGLADESH                     1                  0       62    212
24 months   MAL-ED          BANGLADESH                     1                  1        7    212
24 months   MAL-ED          BANGLADESH                     0                  0      129    212
24 months   MAL-ED          BANGLADESH                     0                  1       14    212
24 months   MAL-ED          BRAZIL                         1                  0       20    169
24 months   MAL-ED          BRAZIL                         1                  1        0    169
24 months   MAL-ED          BRAZIL                         0                  0      146    169
24 months   MAL-ED          BRAZIL                         0                  1        3    169
24 months   MAL-ED          INDIA                          1                  0       16    224
24 months   MAL-ED          INDIA                          1                  1        1    224
24 months   MAL-ED          INDIA                          0                  0      181    224
24 months   MAL-ED          INDIA                          0                  1       26    224
24 months   MAL-ED          NEPAL                          1                  0        8    227
24 months   MAL-ED          NEPAL                          1                  1        0    227
24 months   MAL-ED          NEPAL                          0                  0      214    227
24 months   MAL-ED          NEPAL                          0                  1        5    227
24 months   MAL-ED          PERU                           1                  0       52    201
24 months   MAL-ED          PERU                           1                  1        1    201
24 months   MAL-ED          PERU                           0                  0      145    201
24 months   MAL-ED          PERU                           0                  1        3    201
24 months   MAL-ED          SOUTH AFRICA                   1                  0        3    235
24 months   MAL-ED          SOUTH AFRICA                   1                  1        0    235
24 months   MAL-ED          SOUTH AFRICA                   0                  0      231    235
24 months   MAL-ED          SOUTH AFRICA                   0                  1        1    235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        4    213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      205    213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4    213


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
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
![](/tmp/1d43d0f3-8498-43be-90ed-ae7ff37581b3/c24ddb50-a0f4-4b00-bf29-923010b18b73/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1d43d0f3-8498-43be-90ed-ae7ff37581b3/c24ddb50-a0f4-4b00-bf29-923010b18b73/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1d43d0f3-8498-43be-90ed-ae7ff37581b3/c24ddb50-a0f4-4b00-bf29-923010b18b73/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1d43d0f3-8498-43be-90ed-ae7ff37581b3/c24ddb50-a0f4-4b00-bf29-923010b18b73/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.1910788   0.1522263   0.2299313
Birth       GMS-Nepal   NEPAL        0                    NA                0.1797093   0.1006688   0.2587498
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1108749   0.1032405   0.1185094
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1110162   0.1029366   0.1190957
Birth       JiVitA-4    BANGLADESH   1                    NA                0.1016805   0.0837296   0.1196315
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1161418   0.0784890   0.1537946
Birth       MAL-ED      BANGLADESH   1                    NA                0.1497440   0.0612854   0.2382025
Birth       MAL-ED      BANGLADESH   0                    NA                0.1745666   0.1104712   0.2386620
6 months    GMS-Nepal   NEPAL        1                    NA                0.0923091   0.0647415   0.1198767
6 months    GMS-Nepal   NEPAL        0                    NA                0.1007847   0.0433973   0.1581721
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0874273   0.0796923   0.0951623
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0875193   0.0740392   0.1009995
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0491934   0.0387818   0.0596051
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0817352   0.0629827   0.1004877
24 months   GMS-Nepal   NEPAL        1                    NA                0.1597672   0.1219614   0.1975730
24 months   GMS-Nepal   NEPAL        0                    NA                0.2803723   0.1799116   0.3808330
24 months   JiVitA-3    BANGLADESH   1                    NA                0.2269537   0.2096941   0.2442132
24 months   JiVitA-3    BANGLADESH   0                    NA                0.2265851   0.1947240   0.2584461
24 months   JiVitA-4    BANGLADESH   1                    NA                0.1912569   0.1752530   0.2072609
24 months   JiVitA-4    BANGLADESH   0                    NA                0.2163972   0.1788724   0.2539221
24 months   MAL-ED      BANGLADESH   1                    NA                0.1014493   0.0300414   0.1728571
24 months   MAL-ED      BANGLADESH   0                    NA                0.0979021   0.0490785   0.1467257


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1914460   0.1566101   0.2262820
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1109177   0.1033745   0.1184610
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.1038534   0.0874500   0.1202568
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1634615   0.1130867   0.2138364
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0929791   0.0681617   0.1177965
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0872876   0.0805483   0.0940269
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0565903   0.0475372   0.0656433
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1820225   0.1461311   0.2179138
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.2267779   0.2114523   0.2421034
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1962825   0.1816413   0.2109237
24 months   MAL-ED      BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 0.9404985   0.5791950   1.527184
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 1.0012739   0.9644437   1.039511
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.1422224   0.7943924   1.642352
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 1.1657671   0.5804534   2.341296
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.0918174   0.5733818   2.079008
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 1.0010532   0.8386979   1.194837
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.6615060   1.2155052   2.271156
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.7548802   1.1426068   2.695244
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9983759   0.8523608   1.169404
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1314478   0.9352735   1.368770
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 0.9650350   0.4072906   2.286555


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0003672   -0.0167679   0.0175024
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0000428   -0.0008580   0.0009437
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0021729   -0.0057953   0.0101410
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0137176   -0.0612199   0.0886550
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0006700   -0.0118103   0.0131503
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0001396   -0.0036940   0.0034148
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0073968    0.0026616   0.0121321
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0222553    0.0024064   0.0421042
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0001758   -0.0084435   0.0080919
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0050256   -0.0032341   0.0132853
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0023927   -0.0607420   0.0559567


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                 0.0019183   -0.0917230   0.0875275
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0003859   -0.0077700   0.0084759
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0209223   -0.0588245   0.0946629
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0839192   -0.5103701   0.4443720
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0072061   -0.1364921   0.1327352
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0015996   -0.0431544   0.0382998
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1307084    0.0389899   0.2136733
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1222667    0.0079966   0.2233738
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0007752   -0.0379060   0.0350272
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0256038   -0.0172254   0.0666297
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0241546   -0.8202312   0.4237586
