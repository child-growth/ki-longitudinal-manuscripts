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

**Outcome Variable:** co24

## Predictor Variables

**Intervention Variable:** wast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                         wast06   co24   n_cell      n
-------------  ---------------  -----------------------------  -------  -----  -------  -----
0-6 months     CMC-V-BCS-2002   INDIA                                0      0      173    368
0-6 months     CMC-V-BCS-2002   INDIA                                0      1        5    368
0-6 months     CMC-V-BCS-2002   INDIA                                1      0      174    368
0-6 months     CMC-V-BCS-2002   INDIA                                1      1       16    368
0-6 months     CMIN             BANGLADESH                           0      0      204    271
0-6 months     CMIN             BANGLADESH                           0      1       17    271
0-6 months     CMIN             BANGLADESH                           1      0       39    271
0-6 months     CMIN             BANGLADESH                           1      1       11    271
0-6 months     CONTENT          PERU                                 0      0      211    215
0-6 months     CONTENT          PERU                                 0      1        0    215
0-6 months     CONTENT          PERU                                 1      0        4    215
0-6 months     CONTENT          PERU                                 1      1        0    215
0-6 months     EE               PAKISTAN                             0      0      227    379
0-6 months     EE               PAKISTAN                             0      1       28    379
0-6 months     EE               PAKISTAN                             1      0       92    379
0-6 months     EE               PAKISTAN                             1      1       32    379
0-6 months     GMS-Nepal        NEPAL                                0      0      396    686
0-6 months     GMS-Nepal        NEPAL                                0      1       33    686
0-6 months     GMS-Nepal        NEPAL                                1      0      217    686
0-6 months     GMS-Nepal        NEPAL                                1      1       40    686
0-6 months     Guatemala BSC    GUATEMALA                            0      0      285    295
0-6 months     Guatemala BSC    GUATEMALA                            0      1        0    295
0-6 months     Guatemala BSC    GUATEMALA                            1      0        2    295
0-6 months     Guatemala BSC    GUATEMALA                            1      1        8    295
0-6 months     IRC              INDIA                                0      0      181    409
0-6 months     IRC              INDIA                                0      1        5    409
0-6 months     IRC              INDIA                                1      0      214    409
0-6 months     IRC              INDIA                                1      1        9    409
0-6 months     Keneba           GAMBIA                               0      0     1732   2462
0-6 months     Keneba           GAMBIA                               0      1       60   2462
0-6 months     Keneba           GAMBIA                               1      0      611   2462
0-6 months     Keneba           GAMBIA                               1      1       59   2462
0-6 months     MAL-ED           BANGLADESH                           0      0      195    263
0-6 months     MAL-ED           BANGLADESH                           0      1        8    263
0-6 months     MAL-ED           BANGLADESH                           1      0       52    263
0-6 months     MAL-ED           BANGLADESH                           1      1        8    263
0-6 months     MAL-ED           BRAZIL                               0      0      217    233
0-6 months     MAL-ED           BRAZIL                               0      1        1    233
0-6 months     MAL-ED           BRAZIL                               1      0       15    233
0-6 months     MAL-ED           BRAZIL                               1      1        0    233
0-6 months     MAL-ED           INDIA                                0      0      164    251
0-6 months     MAL-ED           INDIA                                0      1        5    251
0-6 months     MAL-ED           INDIA                                1      0       70    251
0-6 months     MAL-ED           INDIA                                1      1       12    251
0-6 months     MAL-ED           NEPAL                                0      0      191    240
0-6 months     MAL-ED           NEPAL                                0      1        1    240
0-6 months     MAL-ED           NEPAL                                1      0       47    240
0-6 months     MAL-ED           NEPAL                                1      1        1    240
0-6 months     MAL-ED           PERU                                 0      0      289    302
0-6 months     MAL-ED           PERU                                 0      1        2    302
0-6 months     MAL-ED           PERU                                 1      0       10    302
0-6 months     MAL-ED           PERU                                 1      1        1    302
0-6 months     MAL-ED           SOUTH AFRICA                         0      0      275    312
0-6 months     MAL-ED           SOUTH AFRICA                         0      1        2    312
0-6 months     MAL-ED           SOUTH AFRICA                         1      0       35    312
0-6 months     MAL-ED           SOUTH AFRICA                         1      1        0    312
0-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF         0      0      244    261
0-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF         0      1        4    261
0-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF         1      0       12    261
0-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF         1      1        1    261
0-6 months     PROVIDE          BANGLADESH                           0      0      496    700
0-6 months     PROVIDE          BANGLADESH                           0      1       23    700
0-6 months     PROVIDE          BANGLADESH                           1      0      166    700
0-6 months     PROVIDE          BANGLADESH                           1      1       15    700
0-6 months     ResPak           PAKISTAN                             0      0      173    282
0-6 months     ResPak           PAKISTAN                             0      1        0    282
0-6 months     ResPak           PAKISTAN                             1      0      103    282
0-6 months     ResPak           PAKISTAN                             1      1        6    282
0-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         0      0     2044   2396
0-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         0      1       19   2396
0-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         1      0      321   2396
0-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF         1      1       12   2396
18-24 months   CMC-V-BCS-2002   INDIA                                0      0        5      5
18-24 months   CMC-V-BCS-2002   INDIA                                0      1        0      5
18-24 months   CMC-V-BCS-2002   INDIA                                1      0        0      5
18-24 months   CMC-V-BCS-2002   INDIA                                1      1        0      5
18-24 months   IRC              INDIA                                0      0        1      1
18-24 months   IRC              INDIA                                0      1        0      1
18-24 months   IRC              INDIA                                1      0        0      1
18-24 months   IRC              INDIA                                1      1        0      1
18-24 months   Keneba           GAMBIA                               0      0      222    264
18-24 months   Keneba           GAMBIA                               0      1        0    264
18-24 months   Keneba           GAMBIA                               1      0       26    264
18-24 months   Keneba           GAMBIA                               1      1       16    264


The following strata were considered:

* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-24 months, studyid: IRC, country: INDIA
* agecat: 18-24 months, studyid: Keneba, country: GAMBIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 18-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-24 months, studyid: IRC, country: INDIA
* agecat: 18-24 months, studyid: Keneba, country: GAMBIA

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
![](/tmp/53c36669-bc95-4a35-aa3f-a98a23926885/6b2ca200-0be7-4260-b23b-42242881c304/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53c36669-bc95-4a35-aa3f-a98a23926885/6b2ca200-0be7-4260-b23b-42242881c304/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/53c36669-bc95-4a35-aa3f-a98a23926885/6b2ca200-0be7-4260-b23b-42242881c304/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53c36669-bc95-4a35-aa3f-a98a23926885/6b2ca200-0be7-4260-b23b-42242881c304/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.0280899   0.0037837   0.0523961
0-6 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.0842105   0.0446699   0.1237511
0-6 months   CMIN             BANGLADESH                     0                    NA                0.0769231   0.0417264   0.1121198
0-6 months   CMIN             BANGLADESH                     1                    NA                0.2200000   0.1049665   0.3350335
0-6 months   EE               PAKISTAN                       0                    NA                0.1098039   0.0713798   0.1482280
0-6 months   EE               PAKISTAN                       1                    NA                0.2580645   0.1809461   0.3351829
0-6 months   GMS-Nepal        NEPAL                          0                    NA                0.0769231   0.0516892   0.1021569
0-6 months   GMS-Nepal        NEPAL                          1                    NA                0.1556420   0.1112888   0.1999952
0-6 months   IRC              INDIA                          0                    NA                0.0268817   0.0036097   0.0501538
0-6 months   IRC              INDIA                          1                    NA                0.0403587   0.0144974   0.0662201
0-6 months   Keneba           GAMBIA                         0                    NA                0.0334821   0.0251515   0.0418128
0-6 months   Keneba           GAMBIA                         1                    NA                0.0880597   0.0665977   0.1095217
0-6 months   MAL-ED           BANGLADESH                     0                    NA                0.0394089   0.0125929   0.0662248
0-6 months   MAL-ED           BANGLADESH                     1                    NA                0.1333333   0.0471556   0.2195111
0-6 months   MAL-ED           INDIA                          0                    NA                0.0295858   0.0039886   0.0551830
0-6 months   MAL-ED           INDIA                          1                    NA                0.1463415   0.0696876   0.2229953
0-6 months   PROVIDE          BANGLADESH                     0                    NA                0.0443160   0.0265981   0.0620339
0-6 months   PROVIDE          BANGLADESH                     1                    NA                0.0828729   0.0426809   0.1230650
0-6 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0092099   0.0050869   0.0133328
0-6 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0360360   0.0160137   0.0560584


### Parameter: E(Y)


agecat       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0570652   0.0333328   0.0807976
0-6 months   CMIN             BANGLADESH                     NA                   NA                0.1033210   0.0670150   0.1396271
0-6 months   EE               PAKISTAN                       NA                   NA                0.1583113   0.1215125   0.1951102
0-6 months   GMS-Nepal        NEPAL                          NA                   NA                0.1064140   0.0833215   0.1295065
0-6 months   IRC              INDIA                          NA                   NA                0.0342298   0.0165874   0.0518722
0-6 months   Keneba           GAMBIA                         NA                   NA                0.0483347   0.0398612   0.0568082
0-6 months   MAL-ED           BANGLADESH                     NA                   NA                0.0608365   0.0318931   0.0897799
0-6 months   MAL-ED           INDIA                          NA                   NA                0.0677291   0.0365806   0.0988776
0-6 months   PROVIDE          BANGLADESH                     NA                   NA                0.0542857   0.0374887   0.0710827
0-6 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0129382   0.0084123   0.0174641


### Parameter: RR


agecat       studyid          country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-----------  ---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
0-6 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
0-6 months   CMC-V-BCS-2002   INDIA                          1                    0                 2.997895   1.1201045    8.023691
0-6 months   CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
0-6 months   CMIN             BANGLADESH                     1                    0                 2.860000   1.4276233    5.729523
0-6 months   EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
0-6 months   EE               PAKISTAN                       1                    0                 2.350230   1.4834118    3.723567
0-6 months   GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
0-6 months   GMS-Nepal        NEPAL                          1                    0                 2.023346   1.3102540    3.124532
0-6 months   IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
0-6 months   IRC              INDIA                          1                    0                 1.501345   0.5113467    4.408042
0-6 months   Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
0-6 months   Keneba           GAMBIA                         1                    0                 2.630050   1.8565369    3.725841
0-6 months   MAL-ED           BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
0-6 months   MAL-ED           BANGLADESH                     1                    0                 3.383333   1.3236197    8.648213
0-6 months   MAL-ED           INDIA                          0                    0                 1.000000   1.0000000    1.000000
0-6 months   MAL-ED           INDIA                          1                    0                 4.946341   1.7990478   13.599580
0-6 months   PROVIDE          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
0-6 months   PROVIDE          BANGLADESH                     1                    0                 1.870046   0.9974310    3.506078
0-6 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
0-6 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 3.912755   1.9169139    7.986613


### Parameter: PAR


agecat       studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.0289753    0.0048405   0.0531102
0-6 months   CMIN             BANGLADESH                     0                    NA                0.0263980    0.0032366   0.0495593
0-6 months   EE               PAKISTAN                       0                    NA                0.0485074    0.0194585   0.0775563
0-6 months   GMS-Nepal        NEPAL                          0                    NA                0.0294909    0.0101619   0.0488199
0-6 months   IRC              INDIA                          0                    NA                0.0073481   -0.0116321   0.0263283
0-6 months   Keneba           GAMBIA                         0                    NA                0.0148525    0.0085143   0.0211908
0-6 months   MAL-ED           BANGLADESH                     0                    NA                0.0214276    0.0002916   0.0425637
0-6 months   MAL-ED           INDIA                          0                    NA                0.0381433    0.0108830   0.0654035
0-6 months   PROVIDE          BANGLADESH                     0                    NA                0.0099697   -0.0014565   0.0213960
0-6 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0037283    0.0008630   0.0065937


### Parameter: PAF


agecat       studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.5077582   -0.0439218   0.7678925
0-6 months   CMIN             BANGLADESH                     0                    NA                0.2554945    0.0145482   0.4375286
0-6 months   EE               PAKISTAN                       0                    NA                0.3064052    0.1099510   0.4594975
0-6 months   GMS-Nepal        NEPAL                          0                    NA                0.2771338    0.0814203   0.4311485
0-6 months   IRC              INDIA                          0                    NA                0.2146697   -0.5698999   0.6071446
0-6 months   Keneba           GAMBIA                         0                    NA                0.3072854    0.1757801   0.4178089
0-6 months   MAL-ED           BANGLADESH                     0                    NA                0.3522167   -0.0424343   0.5974584
0-6 months   MAL-ED           INDIA                          0                    NA                0.5631744    0.1017422   0.7875703
0-6 months   PROVIDE          BANGLADESH                     0                    NA                0.1836528   -0.0473459   0.3637033
0-6 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2881647    0.0603199   0.4607639
