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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* impfloor
* earlybf
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_impfloor
* delta_earlybf
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      245     263
ki0047075b-MAL-ED           BANGLADESH                     0                    1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                    0       16     263
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     263
ki0047075b-MAL-ED           INDIA                          0                    0      228     251
ki0047075b-MAL-ED           INDIA                          0                    1        2     251
ki0047075b-MAL-ED           INDIA                          1                    0       21     251
ki0047075b-MAL-ED           INDIA                          1                    1        0     251
ki0047075b-MAL-ED           PERU                           0                    0      299     302
ki0047075b-MAL-ED           PERU                           0                    1        2     302
ki0047075b-MAL-ED           PERU                           1                    0        1     302
ki0047075b-MAL-ED           PERU                           1                    1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      305     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0        7     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      254     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        4     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
ki1000304-VITAMIN-A         INDIA                          0                    0     3279    3473
ki1000304-VITAMIN-A         INDIA                          0                    1       48    3473
ki1000304-VITAMIN-A         INDIA                          1                    0      136    3473
ki1000304-VITAMIN-A         INDIA                          1                    1       10    3473
ki1000304b-SAS-CompFeed     INDIA                          0                    0     1378    1508
ki1000304b-SAS-CompFeed     INDIA                          0                    1       26    1508
ki1000304b-SAS-CompFeed     INDIA                          1                    0       94    1508
ki1000304b-SAS-CompFeed     INDIA                          1                    1       10    1508
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      385     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        3     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0       27     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        3     418
ki1017093b-PROVIDE          BANGLADESH                     0                    0      667     700
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                    0       29     700
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2310    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       85    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
ki1101329-Keneba            GAMBIA                         0                    0     2259    2451
ki1101329-Keneba            GAMBIA                         0                    1       48    2451
ki1101329-Keneba            GAMBIA                         1                    0      135    2451
ki1101329-Keneba            GAMBIA                         1                    1        9    2451
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0      328     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0        8     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                    0      540     602
ki1113344-GMS-Nepal         NEPAL                          0                    1        5     602
ki1113344-GMS-Nepal         NEPAL                          1                    0       57     602
ki1113344-GMS-Nepal         NEPAL                          1                    1        0     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0    11946   13858
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      905   13858
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0      865   13858
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      142   13858
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1699    1814
ki1148112-iLiNS-DOSE        MALAWI                         0                    1      113    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                    0        1    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        1    1814
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1133    1183
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       36    1183
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0       12    1183
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        2    1183
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    25135   26922
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      508   26922
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     1226   26922
kiGH5241-JiVitA-3           BANGLADESH                     1                    1       53   26922
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     5076    5252
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       42    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                    0      129    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                    1        5    5252


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/c5c720f5-182c-41f6-92a9-79146ecceddb/e44b6186-e5db-4896-9e3a-9c6c41033ab3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c5c720f5-182c-41f6-92a9-79146ecceddb/e44b6186-e5db-4896-9e3a-9c6c41033ab3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c5c720f5-182c-41f6-92a9-79146ecceddb/e44b6186-e5db-4896-9e3a-9c6c41033ab3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c5c720f5-182c-41f6-92a9-79146ecceddb/e44b6186-e5db-4896-9e3a-9c6c41033ab3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0144377    0.0103842   0.0184913
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0626869    0.0223415   0.1030322
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0183704    0.0089951   0.0277457
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0936099    0.0530815   0.1341383
ki1101329-Keneba          GAMBIA       0                    NA                0.0208062    0.0149806   0.0266319
ki1101329-Keneba          GAMBIA       1                    NA                0.0625000    0.0229560   0.1020440
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0702711    0.0659396   0.0746025
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1843119    0.1541529   0.2144709
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0197013    0.0179935   0.0214092
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0447242    0.0331471   0.0563013
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0082063    0.0056243   0.0107884
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0373134   -0.0014001   0.0760270


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0167003   0.0124378   0.0209627
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1101329-Keneba          GAMBIA       NA                   NA                0.0232558   0.0172879   0.0292237
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0755520   0.0711518   0.0799523
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0208380   0.0190898   0.0225861
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 4.341876   2.151191    8.763468
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.095694   2.565720   10.120391
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 3.003906   1.503842    6.000268
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.622870   2.202648    3.123261
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.270110   1.737750    2.965560
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.546908   1.538202   13.440613


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0022625    0.0004930   0.0040320
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0055023    0.0018523   0.0091522
ki1101329-Keneba          GAMBIA       0                    NA                0.0024496    0.0000693   0.0048298
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0052809    0.0036006   0.0069613
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0011366    0.0005985   0.0016748
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0007426   -0.0002615   0.0017468


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.1354781    0.0291435   0.2301662
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2304845    0.0862891   0.3519241
ki1101329-Keneba          GAMBIA       0                    NA                0.1053316    0.0007878   0.1989374
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0698982    0.0479811   0.0913107
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0545465    0.0290268   0.0793954
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0829862   -0.0306227   0.1840717
