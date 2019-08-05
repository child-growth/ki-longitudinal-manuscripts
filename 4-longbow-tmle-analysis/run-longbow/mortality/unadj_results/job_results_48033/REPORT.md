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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted06    dead624   n_cell       n
--------------------------  -----------------------------  --------------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                      0      185     239
ki0047075b-MAL-ED           BANGLADESH                     0                      1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                      0       54     239
ki0047075b-MAL-ED           BANGLADESH                     1                      1        0     239
ki0047075b-MAL-ED           INDIA                          0                      0      161     235
ki0047075b-MAL-ED           INDIA                          0                      1        0     235
ki0047075b-MAL-ED           INDIA                          1                      0       74     235
ki0047075b-MAL-ED           INDIA                          1                      1        0     235
ki0047075b-MAL-ED           PERU                           0                      0      259     270
ki0047075b-MAL-ED           PERU                           0                      1        1     270
ki0047075b-MAL-ED           PERU                           1                      0       10     270
ki0047075b-MAL-ED           PERU                           1                      1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      0      233     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      0       26     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      234     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       11     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     245
ki1000304-VITAMIN-A         INDIA                          0                      0     2302    2710
ki1000304-VITAMIN-A         INDIA                          0                      1       11    2710
ki1000304-VITAMIN-A         INDIA                          1                      0      395    2710
ki1000304-VITAMIN-A         INDIA                          1                      1        2    2710
ki1000304b-SAS-CompFeed     INDIA                          0                      0     1069    1381
ki1000304b-SAS-CompFeed     INDIA                          0                      1        5    1381
ki1000304b-SAS-CompFeed     INDIA                          1                      0      301    1381
ki1000304b-SAS-CompFeed     INDIA                          1                      1        6    1381
ki1000304b-SAS-FoodSuppl    INDIA                          0                      0      326     401
ki1000304b-SAS-FoodSuppl    INDIA                          0                      1        1     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                      0       71     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                      1        3     401
ki1017093b-PROVIDE          BANGLADESH                     0                      0      456     613
ki1017093b-PROVIDE          BANGLADESH                     0                      1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                      0      157     613
ki1017093b-PROVIDE          BANGLADESH                     1                      1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     1722    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        0    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0      295    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    2017
ki1101329-Keneba            GAMBIA                         0                      0     1851    2227
ki1101329-Keneba            GAMBIA                         0                      1       23    2227
ki1101329-Keneba            GAMBIA                         1                      0      345    2227
ki1101329-Keneba            GAMBIA                         1                      1        8    2227
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      0       39      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      0        4      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                      0      413     590
ki1113344-GMS-Nepal         NEPAL                          0                      1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                      0      175     590
ki1113344-GMS-Nepal         NEPAL                          1                      1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                      0     8477   10593
ki1126311-ZVITAMBO          ZIMBABWE                       0                      1      229   10593
ki1126311-ZVITAMBO          ZIMBABWE                       1                      0     1824   10593
ki1126311-ZVITAMBO          ZIMBABWE                       1                      1       63   10593
ki1148112-iLiNS-DOSE        MALAWI                         0                      0      978     994
ki1148112-iLiNS-DOSE        MALAWI                         0                      1        5     994
ki1148112-iLiNS-DOSE        MALAWI                         1                      0       10     994
ki1148112-iLiNS-DOSE        MALAWI                         1                      1        1     994
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      0     1026    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      1       16    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      0       39    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      1        0    1081
kiGH5241-JiVitA-3           BANGLADESH                     0                      0    14252   17173
kiGH5241-JiVitA-3           BANGLADESH                     0                      1      120   17173
kiGH5241-JiVitA-3           BANGLADESH                     1                      0     2771   17173
kiGH5241-JiVitA-3           BANGLADESH                     1                      1       30   17173
kiGH5241-JiVitA-4           BANGLADESH                     0                      0     4501    5082
kiGH5241-JiVitA-4           BANGLADESH                     0                      1       32    5082
kiGH5241-JiVitA-4           BANGLADESH                     1                      0      541    5082
kiGH5241-JiVitA-4           BANGLADESH                     1                      1        8    5082


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
![](/tmp/888a38dd-c96f-45a7-a7a8-505df62cfe6c/abd152ed-56df-406e-a17d-c047bda2757d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/888a38dd-c96f-45a7-a7a8-505df62cfe6c/abd152ed-56df-406e-a17d-c047bda2757d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/888a38dd-c96f-45a7-a7a8-505df62cfe6c/abd152ed-56df-406e-a17d-c047bda2757d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/888a38dd-c96f-45a7-a7a8-505df62cfe6c/abd152ed-56df-406e-a17d-c047bda2757d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0046555   -0.0002940   0.0096049
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0195440    0.0089488   0.0301391
ki1101329-Keneba          GAMBIA       0                    NA                0.0122732    0.0072871   0.0172593
ki1101329-Keneba          GAMBIA       1                    NA                0.0226629    0.0071341   0.0381917
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0263037    0.0229418   0.0296656
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0333863    0.0252806   0.0414921
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0083496    0.0068728   0.0098264
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0107105    0.0065820   0.0148390
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0070593    0.0044264   0.0096923
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0145719    0.0024499   0.0266940


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0079652   0.0042817   0.0116488
ki1101329-Keneba          GAMBIA       NA                   NA                0.0139201   0.0090531   0.0187871
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0275654   0.0244474   0.0306833
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0087346   0.0073184   0.0101508
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0078709   0.0051970   0.0105448


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 4.198046   1.0211980   17.257757
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.846533   0.8325351    4.095543
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.269264   0.9647019    1.669977
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.282756   0.8414981    1.955398
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.064208   0.8260305    5.158348


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0033097    0.0002060   0.0064135
ki1101329-Keneba          GAMBIA       0                    NA                0.0016469   -0.0009432   0.0042369
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0012617   -0.0003024   0.0028257
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0003851   -0.0003260   0.0010961
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008116   -0.0005385   0.0021617


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4155240   -0.2496021   0.7266232
ki1101329-Keneba          GAMBIA       0                    NA                0.1183083   -0.0832550   0.2823663
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0457703   -0.0124526   0.1006449
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0440857   -0.0399478   0.1213289
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1031105   -0.0781466   0.2538948
