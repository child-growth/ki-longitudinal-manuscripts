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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted06    dead624   n_cell       n
--------------------------  -----------------------------  ---------------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                       0      159     239
ki0047075b-MAL-ED           BANGLADESH                     0                       1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                       0       80     239
ki0047075b-MAL-ED           BANGLADESH                     1                       1        0     239
ki0047075b-MAL-ED           INDIA                          0                       0      155     235
ki0047075b-MAL-ED           INDIA                          0                       1        0     235
ki0047075b-MAL-ED           INDIA                          1                       0       80     235
ki0047075b-MAL-ED           INDIA                          1                       1        0     235
ki0047075b-MAL-ED           PERU                           0                       0      149     270
ki0047075b-MAL-ED           PERU                           0                       1        0     270
ki0047075b-MAL-ED           PERU                           1                       0      120     270
ki0047075b-MAL-ED           PERU                           1                       1        1     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       0      159     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       0      100     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      145     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0      100     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     245
ki1000304-VITAMIN-A         INDIA                          0                       0     1945    2714
ki1000304-VITAMIN-A         INDIA                          0                       1        9    2714
ki1000304-VITAMIN-A         INDIA                          1                       0      756    2714
ki1000304-VITAMIN-A         INDIA                          1                       1        4    2714
ki1000304b-SAS-CompFeed     INDIA                          0                       0      808    1386
ki1000304b-SAS-CompFeed     INDIA                          0                       1        2    1386
ki1000304b-SAS-CompFeed     INDIA                          1                       0      566    1386
ki1000304b-SAS-CompFeed     INDIA                          1                       1       10    1386
ki1000304b-SAS-FoodSuppl    INDIA                          0                       0      240     399
ki1000304b-SAS-FoodSuppl    INDIA                          0                       1        1     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                       0      155     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                       1        3     399
ki1017093b-PROVIDE          BANGLADESH                     0                       0      457     613
ki1017093b-PROVIDE          BANGLADESH                     0                       1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                       0      156     613
ki1017093b-PROVIDE          BANGLADESH                     1                       1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1602    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      415    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2017
ki1101329-Keneba            GAMBIA                         0                       0     1534    2256
ki1101329-Keneba            GAMBIA                         0                       1       11    2256
ki1101329-Keneba            GAMBIA                         1                       0      691    2256
ki1101329-Keneba            GAMBIA                         1                       1       20    2256
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       0       39      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       0        4      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                       0      425     590
ki1113344-GMS-Nepal         NEPAL                          0                       1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                       0      163     590
ki1113344-GMS-Nepal         NEPAL                          1                       1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                       0     7575   10664
ki1126311-ZVITAMBO          ZIMBABWE                       0                       1      166   10664
ki1126311-ZVITAMBO          ZIMBABWE                       1                       0     2791   10664
ki1126311-ZVITAMBO          ZIMBABWE                       1                       1      132   10664
ki1148112-iLiNS-DOSE        MALAWI                         0                       0      704     993
ki1148112-iLiNS-DOSE        MALAWI                         0                       1        3     993
ki1148112-iLiNS-DOSE        MALAWI                         1                       0      283     993
ki1148112-iLiNS-DOSE        MALAWI                         1                       1        3     993
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       0      921    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       1       14    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       0      172    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       1        2    1109
kiGH5241-JiVitA-3           BANGLADESH                     0                       0    10382   17201
kiGH5241-JiVitA-3           BANGLADESH                     0                       1       67   17201
kiGH5241-JiVitA-3           BANGLADESH                     1                       0     6666   17201
kiGH5241-JiVitA-3           BANGLADESH                     1                       1       86   17201
kiGH5241-JiVitA-4           BANGLADESH                     0                       0     3315    5116
kiGH5241-JiVitA-4           BANGLADESH                     0                       1       22    5116
kiGH5241-JiVitA-4           BANGLADESH                     1                       0     1760    5116
kiGH5241-JiVitA-4           BANGLADESH                     1                       1       19    5116


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
![](/tmp/732264e6-4ec9-4804-bcfc-6a911316ce81/dcb2e7e2-68eb-4d2b-80df-6337b5f28b67/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/732264e6-4ec9-4804-bcfc-6a911316ce81/dcb2e7e2-68eb-4d2b-80df-6337b5f28b67/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/732264e6-4ec9-4804-bcfc-6a911316ce81/dcb2e7e2-68eb-4d2b-80df-6337b5f28b67/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/732264e6-4ec9-4804-bcfc-6a911316ce81/dcb2e7e2-68eb-4d2b-80df-6337b5f28b67/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0071197   0.0029264   0.0113131
ki1101329-Keneba     GAMBIA       1                    NA                0.0281294   0.0159733   0.0402855
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0214443   0.0182171   0.0246714
ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0451591   0.0376309   0.0526873
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0064121   0.0048384   0.0079858
kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0127370   0.0099709   0.0155031
kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0065927   0.0034835   0.0097020
kiGH5241-JiVitA-4    BANGLADESH   1                    NA                0.0106802   0.0056810   0.0156793


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       NA                   NA                0.0137411   0.0089363   0.0185460
ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0279445   0.0248162   0.0310727
kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0088948   0.0074554   0.0103343
kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.0080141   0.0053295   0.0106986


### Parameter: RR


studyid              country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1101329-Keneba     GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba     GAMBIA       1                    0                 3.950901   1.9030056   8.202615
ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 2.105882   1.6822825   2.636145
kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3    BANGLADESH   1                    0                 1.986396   1.4290348   2.761144
kiGH5241-JiVitA-4    BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4    BANGLADESH   1                    0                 1.619986   0.8357127   3.140258


### Parameter: PAR


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0066214    0.0025488   0.0106940
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0065002    0.0042462   0.0087543
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0024827    0.0012264   0.0037391
kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0014213   -0.0006232   0.0034658


### Parameter: PAF


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.4818666    0.1691577   0.6768794
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.2326122    0.1521268   0.3054575
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.2791210    0.1323366   0.4010736
kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.1773537   -0.1184740   0.3949372
