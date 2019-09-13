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

**Intervention Variable:** ever_wasted06_noBW

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted06_noBW    dead   n_cell       n
--------------------------  -----------------------------  -------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      221     238
ki0047075b-MAL-ED           BANGLADESH                     0                        1        0     238
ki0047075b-MAL-ED           BANGLADESH                     1                        0       17     238
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     238
ki0047075b-MAL-ED           INDIA                          0                        0      194     230
ki0047075b-MAL-ED           INDIA                          0                        1        0     230
ki0047075b-MAL-ED           INDIA                          1                        0       36     230
ki0047075b-MAL-ED           INDIA                          1                        1        0     230
ki0047075b-MAL-ED           PERU                           0                        0      264     270
ki0047075b-MAL-ED           PERU                           0                        1        1     270
ki0047075b-MAL-ED           PERU                           1                        0        5     270
ki0047075b-MAL-ED           PERU                           1                        1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      247     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       11     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      237     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        8     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     245
ki1000304-VITAMIN-A         INDIA                          0                        0     2324    2355
ki1000304-VITAMIN-A         INDIA                          0                        1       11    2355
ki1000304-VITAMIN-A         INDIA                          1                        0       20    2355
ki1000304-VITAMIN-A         INDIA                          1                        1        0    2355
ki1000304b-SAS-CompFeed     INDIA                          0                        0     1177    1357
ki1000304b-SAS-CompFeed     INDIA                          0                        1        5    1357
ki1000304b-SAS-CompFeed     INDIA                          1                        0      169    1357
ki1000304b-SAS-CompFeed     INDIA                          1                        1        6    1357
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      327     328
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        1     328
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0        0     328
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        0     328
ki1017093b-PROVIDE          BANGLADESH                     0                        0      574     605
ki1017093b-PROVIDE          BANGLADESH                     0                        1        0     605
ki1017093b-PROVIDE          BANGLADESH                     1                        0       31     605
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     605
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1819    2001
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2001
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      181    2001
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2001
ki1101329-Keneba            GAMBIA                         0                        0     1902    2207
ki1101329-Keneba            GAMBIA                         0                        1       25    2207
ki1101329-Keneba            GAMBIA                         1                        0      275    2207
ki1101329-Keneba            GAMBIA                         1                        1        5    2207
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0       39      39
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        0      39
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0        0      39
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0      39
ki1113344-GMS-Nepal         NEPAL                          0                        0      474     556
ki1113344-GMS-Nepal         NEPAL                          0                        1        1     556
ki1113344-GMS-Nepal         NEPAL                          1                        0       81     556
ki1113344-GMS-Nepal         NEPAL                          1                        1        0     556
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0     9780   10406
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      265   10406
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0      344   10406
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1       17   10406
ki1148112-iLiNS-DOSE        MALAWI                         0                        0      978     983
ki1148112-iLiNS-DOSE        MALAWI                         0                        1        5     983
ki1148112-iLiNS-DOSE        MALAWI                         1                        0        0     983
ki1148112-iLiNS-DOSE        MALAWI                         1                        1        0     983
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0     1027    1044
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       16    1044
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0        1    1044
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1        0    1044
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    15646   16845
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      130   16845
kiGH5241-JiVitA-3           BANGLADESH                     1                        0     1054   16845
kiGH5241-JiVitA-3           BANGLADESH                     1                        1       15   16845
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     4783    4944
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       36    4944
kiGH5241-JiVitA-4           BANGLADESH                     1                        0      123    4944
kiGH5241-JiVitA-4           BANGLADESH                     1                        1        2    4944


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
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/9e3a4ddb-8346-4730-8956-bd40910333b7/605c9a7e-ba78-49ab-a8ff-3e9ba5ff972e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9e3a4ddb-8346-4730-8956-bd40910333b7/605c9a7e-ba78-49ab-a8ff-3e9ba5ff972e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9e3a4ddb-8346-4730-8956-bd40910333b7/605c9a7e-ba78-49ab-a8ff-3e9ba5ff972e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9e3a4ddb-8346-4730-8956-bd40910333b7/605c9a7e-ba78-49ab-a8ff-3e9ba5ff972e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0042301   -0.0001967   0.0086569
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0342857    0.0129503   0.0556212
ki1101329-Keneba          GAMBIA       0                    NA                0.0129735    0.0079200   0.0180271
ki1101329-Keneba          GAMBIA       1                    NA                0.0178571    0.0023418   0.0333725
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0263813    0.0232470   0.0295156
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0470914    0.0252384   0.0689445
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0082404    0.0068534   0.0096273
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0140318    0.0061507   0.0219129


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0081061   0.0043373   0.0118750
ki1101329-Keneba          GAMBIA       NA                   NA                0.0135931   0.0087610   0.0184252
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0270998   0.0239798   0.0302197
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0086079   0.0071912   0.0100246


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 8.105143   1.9878557   33.047339
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.376429   0.5311619    3.566814
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.785031   1.1056277    2.881925
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.702814   0.9559309    3.033247


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0038760    0.0009881   0.0067638
ki1101329-Keneba          GAMBIA       0                    NA                0.0006196   -0.0014517   0.0026909
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0007185   -0.0000509   0.0014878
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0003675   -0.0001348   0.0008698


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4781572   -0.1093728   0.7545281
ki1101329-Keneba          GAMBIA       0                    NA                0.0455803   -0.1186509   0.1857005
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0265119   -0.0021346   0.0543395
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0426969   -0.0161493   0.0981353
