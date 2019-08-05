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

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        pers_wasted06    dead   n_cell       n
--------------------------  -----------------------------  --------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      233     239
ki0047075b-MAL-ED           BANGLADESH                     0                   1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                   0        6     239
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     239
ki0047075b-MAL-ED           INDIA                          0                   0      217     235
ki0047075b-MAL-ED           INDIA                          0                   1        0     235
ki0047075b-MAL-ED           INDIA                          1                   0       18     235
ki0047075b-MAL-ED           INDIA                          1                   1        0     235
ki0047075b-MAL-ED           PERU                           0                   0      269     270
ki0047075b-MAL-ED           PERU                           0                   1        1     270
ki0047075b-MAL-ED           PERU                           1                   0        0     270
ki0047075b-MAL-ED           PERU                           1                   1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      257     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0        2     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      245     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
ki1000304-VITAMIN-A         INDIA                          0                   0     2302    2710
ki1000304-VITAMIN-A         INDIA                          0                   1       11    2710
ki1000304-VITAMIN-A         INDIA                          1                   0      395    2710
ki1000304-VITAMIN-A         INDIA                          1                   1        2    2710
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1236    1381
ki1000304b-SAS-CompFeed     INDIA                          0                   1        6    1381
ki1000304b-SAS-CompFeed     INDIA                          1                   0      134    1381
ki1000304b-SAS-CompFeed     INDIA                          1                   1        5    1381
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      326     401
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        1     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       71     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        3     401
ki1017093b-PROVIDE          BANGLADESH                     0                   0      600     613
ki1017093b-PROVIDE          BANGLADESH                     0                   1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                   0       13     613
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     1967    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0       49    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2017
ki1101329-Keneba            GAMBIA                         0                   0     2138    2227
ki1101329-Keneba            GAMBIA                         0                   1       30    2227
ki1101329-Keneba            GAMBIA                         1                   0       58    2227
ki1101329-Keneba            GAMBIA                         1                   1        1    2227
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0       39      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0        4      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                   0      516     590
ki1113344-GMS-Nepal         NEPAL                          0                   1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                   0       72     590
ki1113344-GMS-Nepal         NEPAL                          1                   1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0     9724   10593
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      274   10593
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0      576   10593
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1       19   10593
ki1148112-iLiNS-DOSE        MALAWI                         0                   0      978     994
ki1148112-iLiNS-DOSE        MALAWI                         0                   1        5     994
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       10     994
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        1     994
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1026    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       16    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       39    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        0    1081
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    15984   17173
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      137   17173
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     1038   17173
kiGH5241-JiVitA-3           BANGLADESH                     1                   1       14   17173
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4507    5082
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       32    5082
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      535    5082
kiGH5241-JiVitA-4           BANGLADESH                     1                   1        8    5082


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
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/feff825e-822e-4c27-925a-473953464491/5709406e-8a5f-4c68-a18d-1f11af70cb07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/feff825e-822e-4c27-925a-473953464491/5709406e-8a5f-4c68-a18d-1f11af70cb07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/feff825e-822e-4c27-925a-473953464491/5709406e-8a5f-4c68-a18d-1f11af70cb07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/feff825e-822e-4c27-925a-473953464491/5709406e-8a5f-4c68-a18d-1f11af70cb07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0048309   0.0007351   0.0089268
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0359712   0.0131372   0.0588052
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0274055   0.0242051   0.0306058
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0319328   0.0178048   0.0460608
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0084982   0.0070936   0.0099029
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0133080   0.0050931   0.0215229
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0070500   0.0044204   0.0096796
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0147330   0.0024797   0.0269863


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0079652   0.0042817   0.0116488
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0276598   0.0245366   0.0307829
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0087929   0.0073738   0.0102119
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0078709   0.0051970   0.0105448


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 7.446043   2.1605455   25.661833
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.165197   0.7373503    1.841300
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.565971   0.8287167    2.959111
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.089779   0.8363677    5.221598


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0031343    0.0007436   0.0055251
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0002543   -0.0005596   0.0010682
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0002946   -0.0002142   0.0008034
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008209   -0.0005284   0.0021702


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3935002   -0.0417687   0.6469063
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0091936   -0.0206555   0.0381698
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0335090   -0.0251943   0.0888509
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1042961   -0.0767190   0.2548795
