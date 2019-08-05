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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_swasted624

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* earlybf
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_earlybf
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted624    dead   n_cell       n
--------------------------  -----------------------------  ----------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      234     239
ki0047075b-MAL-ED           BANGLADESH                     0                     1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                     0        5     239
ki0047075b-MAL-ED           BANGLADESH                     1                     1        0     239
ki0047075b-MAL-ED           INDIA                          0                     0      230     235
ki0047075b-MAL-ED           INDIA                          0                     1        0     235
ki0047075b-MAL-ED           INDIA                          1                     0        5     235
ki0047075b-MAL-ED           INDIA                          1                     1        0     235
ki0047075b-MAL-ED           PERU                           0                     0      267     270
ki0047075b-MAL-ED           PERU                           0                     1        1     270
ki0047075b-MAL-ED           PERU                           1                     0        2     270
ki0047075b-MAL-ED           PERU                           1                     1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      250     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0        9     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      241     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        4     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0     245
ki1000304-VITAMIN-A         INDIA                          0                     0     3326    3519
ki1000304-VITAMIN-A         INDIA                          0                     1       13    3519
ki1000304-VITAMIN-A         INDIA                          1                     0      178    3519
ki1000304-VITAMIN-A         INDIA                          1                     1        2    3519
ki1000304b-SAS-CompFeed     INDIA                          0                     0     1247    1389
ki1000304b-SAS-CompFeed     INDIA                          0                     1        8    1389
ki1000304b-SAS-CompFeed     INDIA                          1                     0      130    1389
ki1000304b-SAS-CompFeed     INDIA                          1                     1        4    1389
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0      348     401
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        3     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0       49     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        1     401
ki1017093b-PROVIDE          BANGLADESH                     0                     0      600     613
ki1017093b-PROVIDE          BANGLADESH                     0                     1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                     0       13     613
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1933    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0       83    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2017
ki1101329-Keneba            GAMBIA                         0                     0     2356    2700
ki1101329-Keneba            GAMBIA                         0                     1       29    2700
ki1101329-Keneba            GAMBIA                         1                     0      308    2700
ki1101329-Keneba            GAMBIA                         1                     1        7    2700
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0     6818    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1       35    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0      294    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        4    7151
ki1113344-GMS-Nepal         NEPAL                          0                     0      476     590
ki1113344-GMS-Nepal         NEPAL                          0                     1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                     0      112     590
ki1113344-GMS-Nepal         NEPAL                          1                     1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0    10098   10684
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      240   10684
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0      286   10684
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1       60   10684
ki1148112-iLiNS-DOSE        MALAWI                         0                     0     1648    1693
ki1148112-iLiNS-DOSE        MALAWI                         0                     1       26    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                     0       18    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                     1        1    1693
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1113    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       15    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       16    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        2    1146
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    16570   17266
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      147   17266
kiGH5241-JiVitA-3           BANGLADESH                     1                     0      541   17266
kiGH5241-JiVitA-3           BANGLADESH                     1                     1        8   17266
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     5147    5428
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       42    5428
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      233    5428
kiGH5241-JiVitA-4           BANGLADESH                     1                     1        6    5428


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

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
![](/tmp/d4323366-c36e-4929-9a8e-fceea5f45a9e/2c9197f0-e7ad-4077-b750-6565b843dccc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d4323366-c36e-4929-9a8e-fceea5f45a9e/2c9197f0-e7ad-4077-b750-6565b843dccc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d4323366-c36e-4929-9a8e-fceea5f45a9e/2c9197f0-e7ad-4077-b750-6565b843dccc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d4323366-c36e-4929-9a8e-fceea5f45a9e/2c9197f0-e7ad-4077-b750-6565b843dccc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0121593   0.0077600   0.0165586
ki1101329-Keneba     GAMBIA       1                    NA                0.0222222   0.0059410   0.0385034
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0233084   0.0204015   0.0262152
ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.1546887   0.1154658   0.1939116
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0087934   0.0073345   0.0102524
kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0145719   0.0051215   0.0240223
kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0080940   0.0056069   0.0105812
kiGH5241-JiVitA-4    BANGLADESH   1                    NA                0.0251046   0.0056051   0.0446041


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       NA                   NA                0.0133333   0.0090062   0.0176605
ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0280794   0.0249467   0.0312120
kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0089772   0.0075383   0.0104160
kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.0088430   0.0063037   0.0113823


### Parameter: RR


studyid              country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1101329-Keneba     GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba     GAMBIA       1                    0                 1.827586   0.8072482   4.137602
ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 6.636618   5.0034312   8.802899
kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3    BANGLADESH   1                    0                 1.657138   0.8460063   3.245964
kiGH5241-JiVitA-4    BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4    BANGLADESH   1                    0                 3.101614   1.3507520   7.121965


### Parameter: PAR


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0011740   -0.0007974   0.0031454
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0047710    0.0033867   0.0061553
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0001837   -0.0001217   0.0004891
kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0007490   -0.0001144   0.0016124


### Parameter: PAF


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0880503   -0.0692706   0.2222247
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.1699115    0.1229924   0.2143205
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0204671   -0.0141773   0.0539280
kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0846984   -0.0154515   0.1749709
