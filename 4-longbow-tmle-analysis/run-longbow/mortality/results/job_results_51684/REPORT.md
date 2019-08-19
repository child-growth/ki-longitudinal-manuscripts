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
ki1017093b-PROVIDE          BANGLADESH                     0                    0      666     699
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                    0       29     699
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2310    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       85    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
ki1101329-Keneba            GAMBIA                         0                    0     2235    2422
ki1101329-Keneba            GAMBIA                         0                    1       48    2422
ki1101329-Keneba            GAMBIA                         1                    0      130    2422
ki1101329-Keneba            GAMBIA                         1                    1        9    2422
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0      328     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0        8     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                    0      540     602
ki1113344-GMS-Nepal         NEPAL                          0                    1        5     602
ki1113344-GMS-Nepal         NEPAL                          1                    0       57     602
ki1113344-GMS-Nepal         NEPAL                          1                    1        0     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0    11937   13849
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      905   13849
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0      865   13849
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      142   13849
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1699    1814
ki1148112-iLiNS-DOSE        MALAWI                         0                    1      113    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                    0        1    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        1    1814
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1130    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       36    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0       11    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        2    1179
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    25101   26882
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      508   26882
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     1220   26882
kiGH5241-JiVitA-3           BANGLADESH                     1                    1       53   26882
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     5075    5251
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       42    5251
kiGH5241-JiVitA-4           BANGLADESH                     1                    0      129    5251
kiGH5241-JiVitA-4           BANGLADESH                     1                    1        5    5251


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
![](/tmp/64cf5051-81d1-4a42-97fb-7fb0da65ae54/6c80ed71-62c8-4b58-96bf-d0c003d29ad2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/64cf5051-81d1-4a42-97fb-7fb0da65ae54/6c80ed71-62c8-4b58-96bf-d0c003d29ad2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/64cf5051-81d1-4a42-97fb-7fb0da65ae54/6c80ed71-62c8-4b58-96bf-d0c003d29ad2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/64cf5051-81d1-4a42-97fb-7fb0da65ae54/6c80ed71-62c8-4b58-96bf-d0c003d29ad2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0144420    0.0103874   0.0184966
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0578962    0.0190436   0.0967489
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0183704    0.0089951   0.0277457
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0936099    0.0530815   0.1341383
ki1101329-Keneba          GAMBIA       0                    NA                0.0210250    0.0151387   0.0269112
ki1101329-Keneba          GAMBIA       1                    NA                0.0647482    0.0238308   0.1056656
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0702160    0.0659041   0.0745278
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1779427    0.1484759   0.2074095
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0197224    0.0180154   0.0214294
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0448720    0.0330400   0.0567040
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0082079    0.0056259   0.0107900
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0373134   -0.0013927   0.0760196


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0167003   0.0124378   0.0209627
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1101329-Keneba          GAMBIA       NA                   NA                0.0235343   0.0174958   0.0295728
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0756011   0.0711981   0.0800041
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0208690   0.0191196   0.0226184
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089507   0.0062400   0.0116614


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 4.008877   1.936503    8.299030
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.095694   2.565720   10.120391
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 3.079586   1.542817    6.147102
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.534219   2.124537    3.022902
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.275179   1.734184    2.984943
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.546020   1.538219   13.435214


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0022583    0.0004870   0.0040295
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0055023    0.0018523   0.0091522
ki1101329-Keneba          GAMBIA       0                    NA                0.0025093    0.0001025   0.0049161
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0053851    0.0037334   0.0070369
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0011466    0.0006087   0.0016844
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0007427   -0.0002614   0.0017469


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.1352230    0.0287619   0.2300144
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2304845    0.0862891   0.3519241
ki1101329-Keneba          GAMBIA       0                    NA                0.1066233    0.0022608   0.2000696
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0712309    0.0497582   0.0922185
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0549417    0.0294961   0.0797202
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0829816   -0.0306048   0.1840493
