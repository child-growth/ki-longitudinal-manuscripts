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

**Intervention Variable:** ever_wasted624

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted624    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      195     239
ki0047075b-MAL-ED           BANGLADESH                     0                    1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                    0       44     239
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     239
ki0047075b-MAL-ED           INDIA                          0                    0      171     235
ki0047075b-MAL-ED           INDIA                          0                    1        0     235
ki0047075b-MAL-ED           INDIA                          1                    0       64     235
ki0047075b-MAL-ED           INDIA                          1                    1        0     235
ki0047075b-MAL-ED           PERU                           0                    0      252     270
ki0047075b-MAL-ED           PERU                           0                    1        1     270
ki0047075b-MAL-ED           PERU                           1                    0       17     270
ki0047075b-MAL-ED           PERU                           1                    1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      223     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0       36     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      219     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       26     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     245
ki1000304-VITAMIN-A         INDIA                          0                    0     2806    3519
ki1000304-VITAMIN-A         INDIA                          0                    1       10    3519
ki1000304-VITAMIN-A         INDIA                          1                    0      698    3519
ki1000304-VITAMIN-A         INDIA                          1                    1        5    3519
ki1000304b-SAS-CompFeed     INDIA                          0                    0      956    1389
ki1000304b-SAS-CompFeed     INDIA                          0                    1        8    1389
ki1000304b-SAS-CompFeed     INDIA                          1                    0      421    1389
ki1000304b-SAS-CompFeed     INDIA                          1                    1        4    1389
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      256     401
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        3     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0      141     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        1     401
ki1017093b-PROVIDE          BANGLADESH                     0                    0      514     613
ki1017093b-PROVIDE          BANGLADESH                     0                    1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                    0       99     613
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1692    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      324    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2017
ki1101329-Keneba            GAMBIA                         0                    0     1818    2700
ki1101329-Keneba            GAMBIA                         0                    1       28    2700
ki1101329-Keneba            GAMBIA                         1                    0      846    2700
ki1101329-Keneba            GAMBIA                         1                    1        8    2700
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0     5732    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1       23    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0     1380    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1       16    7151
ki1113344-GMS-Nepal         NEPAL                          0                    0      309     590
ki1113344-GMS-Nepal         NEPAL                          0                    1        2     590
ki1113344-GMS-Nepal         NEPAL                          1                    0      279     590
ki1113344-GMS-Nepal         NEPAL                          1                    1        0     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     9484   10684
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      198   10684
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0      900   10684
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      102   10684
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1536    1693
ki1148112-iLiNS-DOSE        MALAWI                         0                    1       23    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                    0      130    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        4    1693
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1062    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       14    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0       67    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        3    1146
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    14306   17266
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      131   17266
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     2805   17266
kiGH5241-JiVitA-3           BANGLADESH                     1                    1       24   17266
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     4049    5428
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       36    5428
kiGH5241-JiVitA-4           BANGLADESH                     1                    0     1331    5428
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       12    5428


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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/3ee887a2-24bb-476c-b902-3546ce701ab3/97914fd6-c563-4a8f-928e-e4707352dc92/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3ee887a2-24bb-476c-b902-3546ce701ab3/97914fd6-c563-4a8f-928e-e4707352dc92/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3ee887a2-24bb-476c-b902-3546ce701ab3/97914fd6-c563-4a8f-928e-e4707352dc92/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3ee887a2-24bb-476c-b902-3546ce701ab3/97914fd6-c563-4a8f-928e-e4707352dc92/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0035511   0.0013538   0.0057485
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0071124   0.0008995   0.0133252
ki1101329-Keneba            GAMBIA         0                    NA                0.0151679   0.0095915   0.0207444
ki1101329-Keneba            GAMBIA         1                    NA                0.0093677   0.0029056   0.0158298
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0039965   0.0023664   0.0056267
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0114613   0.0058773   0.0170454
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0204503   0.0176310   0.0232697
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1017964   0.0830729   0.1205200
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0090739   0.0074791   0.0106687
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0084836   0.0051678   0.0117993
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0088127   0.0058448   0.0117807
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0089352   0.0040933   0.0137771


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0042626   0.0021098   0.0064154
ki1101329-Keneba            GAMBIA         NA                   NA                0.0133333   0.0090062   0.0176605
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054538   0.0037467   0.0071609
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0280794   0.0249467   0.0312120
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0089772   0.0075383   0.0104160
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0088430   0.0063037   0.0113823


### Parameter: RR


studyid                     country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.0000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 2.0028449   0.6866609   5.841876
ki1101329-Keneba            GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 0.6175979   0.2826352   1.349539
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.8678211   1.5191343   5.413872
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 4.9777415   3.9555242   6.264128
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 0.9349405   0.6088937   1.435577
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.0138992   0.5363638   1.916594


### Parameter: PAR


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                 0.0007114   -0.0006059   0.0020288
ki1101329-Keneba            GAMBIA         0                    NA                -0.0018346   -0.0045363   0.0008671
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0014573    0.0003196   0.0025949
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.0076291    0.0057972   0.0094609
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0000967   -0.0006999   0.0005065
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0000303   -0.0013720   0.0014326


### Parameter: PAF


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                 0.1669034   -0.1905231   0.4170210
ki1101329-Keneba            GAMBIA         0                    NA                -0.1375948   -0.3536309   0.0439625
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.2672013    0.0486748   0.4355307
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.2716959    0.2112131   0.3275410
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0107747   -0.0801586   0.0541523
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0034272   -0.1685252   0.1500762
