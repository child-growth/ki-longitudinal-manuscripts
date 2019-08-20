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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* single
* W_gagebrth
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_parity
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        pers_wasted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                             0      218     240
ki0047075b-MAL-ED          BANGLADESH                     0                             1       15     240
ki0047075b-MAL-ED          BANGLADESH                     1                             0        4     240
ki0047075b-MAL-ED          BANGLADESH                     1                             1        3     240
ki0047075b-MAL-ED          BRAZIL                         0                             0      205     207
ki0047075b-MAL-ED          BRAZIL                         0                             1        1     207
ki0047075b-MAL-ED          BRAZIL                         1                             0        0     207
ki0047075b-MAL-ED          BRAZIL                         1                             1        1     207
ki0047075b-MAL-ED          INDIA                          0                             0      201     235
ki0047075b-MAL-ED          INDIA                          0                             1       18     235
ki0047075b-MAL-ED          INDIA                          1                             0        6     235
ki0047075b-MAL-ED          INDIA                          1                             1       10     235
ki0047075b-MAL-ED          NEPAL                          0                             0      231     235
ki0047075b-MAL-ED          NEPAL                          0                             1        0     235
ki0047075b-MAL-ED          NEPAL                          1                             0        2     235
ki0047075b-MAL-ED          NEPAL                          1                             1        2     235
ki0047075b-MAL-ED          PERU                           0                             0      268     270
ki0047075b-MAL-ED          PERU                           0                             1        2     270
ki0047075b-MAL-ED          PERU                           1                             0        0     270
ki0047075b-MAL-ED          PERU                           1                             1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      256     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        1     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      245     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      307     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1       11     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0       35     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       17     370
ki1000108-IRC              INDIA                          0                             0      323     410
ki1000108-IRC              INDIA                          0                             1       26     410
ki1000108-IRC              INDIA                          1                             0       39     410
ki1000108-IRC              INDIA                          1                             1       22     410
ki1000109-EE               PAKISTAN                       0                             0      320     375
ki1000109-EE               PAKISTAN                       0                             1       30     375
ki1000109-EE               PAKISTAN                       1                             0       10     375
ki1000109-EE               PAKISTAN                       1                             1       15     375
ki1000109-ResPak           PAKISTAN                       0                             0      175     230
ki1000109-ResPak           PAKISTAN                       0                             1       32     230
ki1000109-ResPak           PAKISTAN                       1                             0        8     230
ki1000109-ResPak           PAKISTAN                       1                             1       15     230
ki1000304b-SAS-CompFeed    INDIA                          0                             0     1095    1384
ki1000304b-SAS-CompFeed    INDIA                          0                             1      162    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             0       61    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             1       66    1384
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      281     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       25     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       45     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       51     402
ki1017093-NIH-Birth        BANGLADESH                     0                             0      456     541
ki1017093-NIH-Birth        BANGLADESH                     0                             1       36     541
ki1017093-NIH-Birth        BANGLADESH                     1                             0       25     541
ki1017093-NIH-Birth        BANGLADESH                     1                             1       24     541
ki1017093b-PROVIDE         BANGLADESH                     0                             0      568     615
ki1017093b-PROVIDE         BANGLADESH                     0                             1       33     615
ki1017093b-PROVIDE         BANGLADESH                     1                             0        7     615
ki1017093b-PROVIDE         BANGLADESH                     1                             1        7     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      671     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       39     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0       15     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1        5     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       72    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       22    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       30    2018
ki1101329-Keneba           GAMBIA                         0                             0     2047    2270
ki1101329-Keneba           GAMBIA                         0                             1      161    2270
ki1101329-Keneba           GAMBIA                         1                             0       26    2270
ki1101329-Keneba           GAMBIA                         1                             1       36    2270
ki1112895-Guatemala BSC    GUATEMALA                      0                             0      264     274
ki1112895-Guatemala BSC    GUATEMALA                      0                             1        3     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             0        6     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             1        1     274
ki1113344-GMS-Nepal        NEPAL                          0                             0      449     590
ki1113344-GMS-Nepal        NEPAL                          0                             1       69     590
ki1113344-GMS-Nepal        NEPAL                          1                             0       32     590
ki1113344-GMS-Nepal        NEPAL                          1                             1       40     590
ki1114097-CMIN             BANGLADESH                     0                             0      223     252
ki1114097-CMIN             BANGLADESH                     0                             1       19     252
ki1114097-CMIN             BANGLADESH                     1                             0        4     252
ki1114097-CMIN             BANGLADESH                     1                             1        6     252
ki1114097-CMIN             BRAZIL                         0                             0      116     119
ki1114097-CMIN             BRAZIL                         0                             1        0     119
ki1114097-CMIN             BRAZIL                         1                             0        3     119
ki1114097-CMIN             BRAZIL                         1                             1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                             0      944    1019
ki1114097-CMIN             GUINEA-BISSAU                  0                             1       32    1019
ki1114097-CMIN             GUINEA-BISSAU                  1                             0       26    1019
ki1114097-CMIN             GUINEA-BISSAU                  1                             1       17    1019
ki1114097-CMIN             PERU                           0                             0      641     653
ki1114097-CMIN             PERU                           0                             1        1     653
ki1114097-CMIN             PERU                           1                             0       10     653
ki1114097-CMIN             PERU                           1                             1        1     653
ki1114097-CONTENT          PERU                           0                             0      215     215
ki1114097-CONTENT          PERU                           0                             1        0     215
ki1114097-CONTENT          PERU                           1                             0        0     215
ki1114097-CONTENT          PERU                           1                             1        0     215
ki1119695-PROBIT           BELARUS                        0                             0    15890   16596
ki1119695-PROBIT           BELARUS                        0                             1       11   16596
ki1119695-PROBIT           BELARUS                        1                             0      682   16596
ki1119695-PROBIT           BELARUS                        1                             1       13   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     9744   10613
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1      351   10613
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0      406   10613
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1      112   10613
ki1135781-COHORTS          GUATEMALA                      0                             0      934    1017
ki1135781-COHORTS          GUATEMALA                      0                             1       31    1017
ki1135781-COHORTS          GUATEMALA                      1                             0       42    1017
ki1135781-COHORTS          GUATEMALA                      1                             1       10    1017
ki1135781-COHORTS          INDIA                          0                             0     5684    6892
ki1135781-COHORTS          INDIA                          0                             1      277    6892
ki1135781-COHORTS          INDIA                          1                             0      438    6892
ki1135781-COHORTS          INDIA                          1                             1      493    6892
ki1135781-COHORTS          PHILIPPINES                    0                             0     2467    2808
ki1135781-COHORTS          PHILIPPINES                    0                             1      161    2808
ki1135781-COHORTS          PHILIPPINES                    1                             0      115    2808
ki1135781-COHORTS          PHILIPPINES                    1                             1       65    2808
ki1148112-LCNI-5           MALAWI                         0                             0      777     797
ki1148112-LCNI-5           MALAWI                         0                             1        7     797
ki1148112-LCNI-5           MALAWI                         1                             0        8     797
ki1148112-LCNI-5           MALAWI                         1                             1        5     797
kiGH5241-JiVitA-3          BANGLADESH                     0                             0    13690   17260
kiGH5241-JiVitA-3          BANGLADESH                     0                             1     2535   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             0      325   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             1      710   17260
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     4506    5239
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      393    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      171    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      169    5239


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: INDIA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/7385e3c0-bbb2-48ef-a446-32ac47b78235/f1e447e3-8119-4606-92e4-bf7ac484e455/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7385e3c0-bbb2-48ef-a446-32ac47b78235/f1e447e3-8119-4606-92e4-bf7ac484e455/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7385e3c0-bbb2-48ef-a446-32ac47b78235/f1e447e3-8119-4606-92e4-bf7ac484e455/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7385e3c0-bbb2-48ef-a446-32ac47b78235/f1e447e3-8119-4606-92e4-bf7ac484e455/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0821918   0.0457380   0.1186455
ki0047075b-MAL-ED          INDIA                          1                    NA                0.6250000   0.3872778   0.8627222
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0344551   0.0143729   0.0545374
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3501955   0.2172950   0.4830960
ki1000108-IRC              INDIA                          0                    NA                0.0750966   0.0473454   0.1028478
ki1000108-IRC              INDIA                          1                    NA                0.3550705   0.2270778   0.4830633
ki1000109-EE               PAKISTAN                       0                    NA                0.0857927   0.0563938   0.1151916
ki1000109-EE               PAKISTAN                       1                    NA                0.5507618   0.3487793   0.7527443
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1545894   0.1052342   0.2039446
ki1000109-ResPak           PAKISTAN                       1                    NA                0.6521739   0.4571027   0.8472451
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1320366   0.1155662   0.1485069
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5018650   0.4073634   0.5963665
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0824392   0.0513003   0.1135781
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5314937   0.4289295   0.6340580
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0731962   0.0501632   0.0962291
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4852489   0.3375881   0.6329097
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0365952   0.0282795   0.0449110
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5900819   0.4589598   0.7212041
ki1101329-Keneba           GAMBIA                         0                    NA                0.0730484   0.0621933   0.0839035
ki1101329-Keneba           GAMBIA                         1                    NA                0.5723113   0.4494478   0.6951748
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1338953   0.1046063   0.1631844
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5338798   0.4229442   0.6448153
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0329332   0.0217276   0.0441387
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3453740   0.2028159   0.4879320
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006943   0.0001318   0.0012569
ki1119695-PROBIT           BELARUS                        1                    NA                0.0154090   0.0023166   0.0285015
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0349358   0.0312014   0.0386702
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3833187   0.3451790   0.4214583
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0320721   0.0209311   0.0432131
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1785785   0.0563964   0.3007605
ki1135781-COHORTS          INDIA                          0                    NA                0.0480059   0.0422826   0.0537293
ki1135781-COHORTS          INDIA                          1                    NA                0.5403800   0.4988231   0.5819370
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0620035   0.0527462   0.0712607
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3387068   0.2580274   0.4193861
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0089286   0.0022811   0.0155761
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1572045   0.1509954   0.1634136
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7892609   0.7613609   0.8171609
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0810891   0.0716939   0.0904844
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5583113   0.4828585   0.6337641


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1200000   0.0870660   0.1529340
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0867841   0.0752007   0.0983676
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0480864   0.0349437   0.0612290
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0436257   0.0397395   0.0475120
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0150565   0.0065967   0.0235162
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000     1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  7.604167    4.239385    13.639560
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 10.163815    5.069041    20.379227
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000108-IRC              INDIA                          1                    0                  4.728184    2.816278     7.938039
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000     1.000000
ki1000109-EE               PAKISTAN                       1                    0                  6.419683    3.882057    10.616105
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000     1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  4.218750    2.723858     6.534061
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.800955    3.293688     4.386346
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.447099    4.216543     9.857623
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  6.629431    4.277948    10.273468
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  9.106061    5.088919    16.294295
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.551282    2.007191    10.319981
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000     1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.124555   11.733089    22.159661
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000     1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.834686    6.034039    10.172672
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000     1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.987293    2.953105     5.383656
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000     1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 10.487108    6.146313    17.893562
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000     1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 22.192577   10.238194    48.105210
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000     1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 10.972081    9.482268    12.695968
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  5.568036    2.593160    11.955693
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          INDIA                          1                    0                 11.256526    9.773259    12.964906
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.462706    4.129263     7.226751
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000     1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 43.076923   18.058272   102.757410
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  5.020599    4.770294     5.284038
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  6.885154    5.762433     8.226620


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0369572    0.0129774   0.0609369
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0412205    0.0203245   0.0621166
ki1000108-IRC              INDIA                          0                    NA                0.0419766    0.0209930   0.0629602
ki1000109-EE               PAKISTAN                       0                    NA                0.0342073    0.0158314   0.0525833
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0497585    0.0218535   0.0776634
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0327033    0.0238373   0.0415693
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1066155    0.0752855   0.1379456
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0377096    0.0213572   0.0540620
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139499    0.0088473   0.0190525
ki1101329-Keneba           GAMBIA                         0                    NA                0.0137357    0.0089681   0.0185034
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0508505    0.0328030   0.0688979
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0151532    0.0075615   0.0227449
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007518    0.0001690   0.0013346
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0086899    0.0066509   0.0107290
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0082426    0.0023823   0.0141029
ki1135781-COHORTS          INDIA                          0                    NA                0.0637178    0.0577409   0.0696947
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0184809    0.0132246   0.0237371
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061279    0.0006884   0.0115674
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0308024    0.0279873   0.0336176
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0261832    0.0202410   0.0321255


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3101761    0.1095701   0.4655873
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5447001    0.2876300   0.7090023
ki1000108-IRC              INDIA                          0                    NA                0.3585500    0.1814299   0.4973453
ki1000109-EE               PAKISTAN                       0                    NA                0.2850610    0.1351418   0.4089924
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2434988    0.1045154   0.3609113
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1985149    0.1519871   0.2424899
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5639400    0.4110908   0.6771177
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3400147    0.1995597   0.4558238
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2759883    0.1826982   0.3586300
ki1101329-Keneba           GAMBIA                         0                    NA                0.1582747    0.1052597   0.2081486
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2752456    0.1794626   0.3598476
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3151240    0.1666421   0.4371505
ki1119695-PROBIT           BELARUS                        0                    NA                0.5198688    0.3067115   0.6674891
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1991925    0.1538753   0.2420826
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2044561    0.0592657   0.3272383
ki1135781-COHORTS          INDIA                          0                    NA                0.5703158    0.5278454   0.6089659
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2296206    0.1676038   0.2870169
ki1148112-LCNI-5           MALAWI                         0                    NA                0.4069940    0.0430324   0.6325309
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1638366    0.1495674   0.1778664
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2440818    0.1933287   0.2916416
