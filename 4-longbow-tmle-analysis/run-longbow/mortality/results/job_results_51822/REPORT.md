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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_month
* delta_brthmon
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_stunted06    co_occurence   n_cell      n
-------------------------  -----------------------------  ---------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                            0      141    221
ki0047075b-MAL-ED          BANGLADESH                     0                            1        5    221
ki0047075b-MAL-ED          BANGLADESH                     1                            0       66    221
ki0047075b-MAL-ED          BANGLADESH                     1                            1        9    221
ki0047075b-MAL-ED          BRAZIL                         0                            0      146    180
ki0047075b-MAL-ED          BRAZIL                         0                            1        0    180
ki0047075b-MAL-ED          BRAZIL                         1                            0       33    180
ki0047075b-MAL-ED          BRAZIL                         1                            1        1    180
ki0047075b-MAL-ED          INDIA                          0                            0      139    228
ki0047075b-MAL-ED          INDIA                          0                            1        6    228
ki0047075b-MAL-ED          INDIA                          1                            0       72    228
ki0047075b-MAL-ED          INDIA                          1                            1       11    228
ki0047075b-MAL-ED          NEPAL                          0                            0      187    229
ki0047075b-MAL-ED          NEPAL                          0                            1        1    229
ki0047075b-MAL-ED          NEPAL                          1                            0       38    229
ki0047075b-MAL-ED          NEPAL                          1                            1        3    229
ki0047075b-MAL-ED          PERU                           0                            0      116    222
ki0047075b-MAL-ED          PERU                           0                            1        0    222
ki0047075b-MAL-ED          PERU                           1                            0      100    222
ki0047075b-MAL-ED          PERU                           1                            1        6    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            0      141    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            1        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            0       96    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            1        2    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            0      132    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            0       92    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                            0      171    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                            1        7    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            0      173    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            1       15    366
ki1000108-IRC              INDIA                          0                            0      228    405
ki1000108-IRC              INDIA                          0                            1        3    405
ki1000108-IRC              INDIA                          1                            0      152    405
ki1000108-IRC              INDIA                          1                            1       22    405
ki1000109-EE               PAKISTAN                       0                            0       76    350
ki1000109-EE               PAKISTAN                       0                            1       13    350
ki1000109-EE               PAKISTAN                       1                            0      199    350
ki1000109-EE               PAKISTAN                       1                            1       62    350
ki1000109-ResPak           PAKISTAN                       0                            0        2      9
ki1000109-ResPak           PAKISTAN                       0                            1        0      9
ki1000109-ResPak           PAKISTAN                       1                            0        7      9
ki1000109-ResPak           PAKISTAN                       1                            1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                            0      685   1259
ki1000304b-SAS-CompFeed    INDIA                          0                            1       36   1259
ki1000304b-SAS-CompFeed    INDIA                          1                            0      446   1259
ki1000304b-SAS-CompFeed    INDIA                          1                            1       92   1259
ki1000304b-SAS-FoodSuppl   INDIA                          0                            0      145    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                            1       25    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                            0      118    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                            1       35    323
ki1017093-NIH-Birth        BANGLADESH                     0                            0      255    462
ki1017093-NIH-Birth        BANGLADESH                     0                            1       19    462
ki1017093-NIH-Birth        BANGLADESH                     1                            0      156    462
ki1017093-NIH-Birth        BANGLADESH                     1                            1       32    462
ki1017093b-PROVIDE         BANGLADESH                     0                            0      389    551
ki1017093b-PROVIDE         BANGLADESH                     0                            1       20    551
ki1017093b-PROVIDE         BANGLADESH                     1                            0      126    551
ki1017093b-PROVIDE         BANGLADESH                     1                            1       16    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                            0      408    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                            1        7    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                            0      197    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                            1       22    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      756    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1        4    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0      203    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1       17    980
ki1101329-Keneba           GAMBIA                         0                            0     1166   1776
ki1101329-Keneba           GAMBIA                         0                            1       40   1776
ki1101329-Keneba           GAMBIA                         1                            0      510   1776
ki1101329-Keneba           GAMBIA                         1                            1       60   1776
ki1113344-GMS-Nepal        NEPAL                          0                            0      368    550
ki1113344-GMS-Nepal        NEPAL                          0                            1       29    550
ki1113344-GMS-Nepal        NEPAL                          1                            0      124    550
ki1113344-GMS-Nepal        NEPAL                          1                            1       29    550
ki1114097-CMIN             BANGLADESH                     0                            0       95    237
ki1114097-CMIN             BANGLADESH                     0                            1        5    237
ki1114097-CMIN             BANGLADESH                     1                            0      116    237
ki1114097-CMIN             BANGLADESH                     1                            1       21    237
ki1114097-CMIN             BRAZIL                         0                            0       97    115
ki1114097-CMIN             BRAZIL                         0                            1        0    115
ki1114097-CMIN             BRAZIL                         1                            0       18    115
ki1114097-CMIN             BRAZIL                         1                            1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                            0      450    541
ki1114097-CMIN             GUINEA-BISSAU                  0                            1       11    541
ki1114097-CMIN             GUINEA-BISSAU                  1                            0       74    541
ki1114097-CMIN             GUINEA-BISSAU                  1                            1        6    541
ki1114097-CMIN             PERU                           0                            0      328    375
ki1114097-CMIN             PERU                           0                            1        0    375
ki1114097-CMIN             PERU                           1                            0       47    375
ki1114097-CMIN             PERU                           1                            1        0    375
ki1114097-CONTENT          PERU                           0                            0      155    200
ki1114097-CONTENT          PERU                           0                            1        0    200
ki1114097-CONTENT          PERU                           1                            0       44    200
ki1114097-CONTENT          PERU                           1                            1        1    200
ki1119695-PROBIT           BELARUS                        0                            0     1905   2146
ki1119695-PROBIT           BELARUS                        0                            1        0   2146
ki1119695-PROBIT           BELARUS                        1                            0      241   2146
ki1119695-PROBIT           BELARUS                        1                            1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                            0      947   1666
ki1126311-ZVITAMBO         ZIMBABWE                       0                            1       28   1666
ki1126311-ZVITAMBO         ZIMBABWE                       1                            0      631   1666
ki1126311-ZVITAMBO         ZIMBABWE                       1                            1       60   1666
ki1135781-COHORTS          GUATEMALA                      0                            0      419    778
ki1135781-COHORTS          GUATEMALA                      0                            1       12    778
ki1135781-COHORTS          GUATEMALA                      1                            0      321    778
ki1135781-COHORTS          GUATEMALA                      1                            1       26    778
ki1135781-COHORTS          PHILIPPINES                    0                            0     1694   2487
ki1135781-COHORTS          PHILIPPINES                    0                            1       92   2487
ki1135781-COHORTS          PHILIPPINES                    1                            0      606   2487
ki1135781-COHORTS          PHILIPPINES                    1                            1       95   2487
ki1148112-LCNI-5           MALAWI                         0                            0      443    693
ki1148112-LCNI-5           MALAWI                         0                            1        4    693
ki1148112-LCNI-5           MALAWI                         1                            0      233    693
ki1148112-LCNI-5           MALAWI                         1                            1       13    693
kiGH5241-JiVitA-4          BANGLADESH                     0                            0     2693   4541
kiGH5241-JiVitA-4          BANGLADESH                     0                            1      113   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                            0     1412   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                            1      323   4541


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
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/c0dd937f-eb2d-446c-b761-9d4ea36a2122/dfe3d1c7-7e36-43b7-898d-02f46b38dfec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c0dd937f-eb2d-446c-b761-9d4ea36a2122/dfe3d1c7-7e36-43b7-898d-02f46b38dfec/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c0dd937f-eb2d-446c-b761-9d4ea36a2122/dfe3d1c7-7e36-43b7-898d-02f46b38dfec/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c0dd937f-eb2d-446c-b761-9d4ea36a2122/dfe3d1c7-7e36-43b7-898d-02f46b38dfec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.0342466   0.0046802   0.0638130
ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.1200000   0.0462887   0.1937113
ki0047075b-MAL-ED          INDIA           0                    NA                0.0413793   0.0088905   0.0738681
ki0047075b-MAL-ED          INDIA           1                    NA                0.1325301   0.0594250   0.2056353
ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.0393258   0.0107329   0.0679188
ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.0797872   0.0410013   0.1185732
ki1000109-EE               PAKISTAN        0                    NA                0.1499443   0.0749913   0.2248973
ki1000109-EE               PAKISTAN        1                    NA                0.2366136   0.1849563   0.2882710
ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0444087   0.0335432   0.0552743
ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1599362   0.1210582   0.1988142
ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1437793   0.0904712   0.1970874
ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2331018   0.1653834   0.3008202
ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0619967   0.0345642   0.0894293
ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1686617   0.1011664   0.2361570
ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0513693   0.0300386   0.0727000
ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.1016457   0.0483658   0.1549256
ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0168675   0.0044682   0.0292668
ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.1004566   0.0606121   0.1403012
ki1101329-Keneba           GAMBIA          0                    NA                0.0390610   0.0271523   0.0509697
ki1101329-Keneba           GAMBIA          1                    NA                0.0897393   0.0638782   0.1156003
ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0725053   0.0468169   0.0981938
ki1113344-GMS-Nepal        NEPAL           1                    NA                0.1798178   0.1169560   0.2426796
ki1114097-CMIN             BANGLADESH      0                    NA                0.0500000   0.0071932   0.0928068
ki1114097-CMIN             BANGLADESH      1                    NA                0.1532847   0.0928308   0.2137385
ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0238612   0.0099167   0.0378056
ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.0750000   0.0172295   0.1327705
ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0290733   0.0185315   0.0396151
ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0858736   0.0648953   0.1068519
ki1135781-COHORTS          GUATEMALA       0                    NA                0.0291309   0.0119343   0.0463274
ki1135781-COHORTS          GUATEMALA       1                    NA                0.0740827   0.0458058   0.1023596
ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0699159   0.0561218   0.0837101
ki1135781-COHORTS          PHILIPPINES     1                    NA                0.1059893   0.0682985   0.1436800
kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0350126   0.0283051   0.0417200
kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.1794906   0.1345491   0.2244320


### Parameter: E(Y)


studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.0633484   0.0311604   0.0955364
ki0047075b-MAL-ED          INDIA           NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.0601093   0.0357249   0.0844936
ki1000109-EE               PAKISTAN        NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.1016680   0.0902317   0.1131043
ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH      NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA          NA                   NA                0.0563063   0.0455826   0.0670300
ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH      NA                   NA                0.1097046   0.0698323   0.1495770
ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0314233   0.0167088   0.0461377
ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0528211   0.0420773   0.0635650
ki1135781-COHORTS          GUATEMALA       NA                   NA                0.0488432   0.0336878   0.0639985
ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0960141   0.0859500   0.1060782


### Parameter: RR


studyid                    country         intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH      1                    0                 3.504000   1.2145141   10.109406
ki0047075b-MAL-ED          INDIA           0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA           1                    0                 3.202811   1.2268899    8.360978
ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 2.028875   0.8460862    4.865149
ki1000109-EE               PAKISTAN        0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN        1                    0                 1.578010   0.9140299    2.724327
ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA           1                    0                 3.601458   2.4499681    5.294151
ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.621247   1.0122183    2.596714
ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH      1                    0                 2.720493   1.4980422    4.940502
ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH      1                    0                 1.978725   1.0127460    3.866076
ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 5.955642   2.5832748   13.730507
ki1101329-Keneba           GAMBIA          0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA          1                    0                 2.297415   1.5123601    3.489987
ki1113344-GMS-Nepal        NEPAL           0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL           1                    0                 2.480062   1.5064937    4.082798
ki1114097-CMIN             BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH      1                    0                 3.065693   1.1944241    7.868626
ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU   1                    0                 3.143182   1.1952586    8.265652
ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 2.953695   1.9067789    4.575420
ki1135781-COHORTS          GUATEMALA       0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA       1                    0                 2.543101   1.2588471    5.137527
ki1135781-COHORTS          PHILIPPINES     0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES     1                    0                 1.515952   1.0104631    2.274315
kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH      1                    0                 5.126463   3.7460768    7.015505


### Parameter: PAR


studyid                    country         intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.0291018    0.0016205   0.0565832
ki0047075b-MAL-ED          INDIA           0                    NA                0.0331821    0.0035059   0.0628582
ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.0207834   -0.0040547   0.0456216
ki1000109-EE               PAKISTAN        0                    NA                0.0643414   -0.0042044   0.1328873
ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0572593    0.0411453   0.0733732
ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.0419792    0.0012013   0.0827571
ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0483929    0.0237636   0.0730221
ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0139665   -0.0008438   0.0287767
ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0288739    0.0141307   0.0436170
ki1101329-Keneba           GAMBIA          0                    NA                0.0172453    0.0072136   0.0272771
ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0329492    0.0136290   0.0522694
ki1114097-CMIN             BANGLADESH      0                    NA                0.0597046    0.0163932   0.1030160
ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0075621   -0.0013584   0.0164826
ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0237478    0.0138843   0.0336114
ki1135781-COHORTS          GUATEMALA       0                    NA                0.0197123    0.0040591   0.0353656
ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0052750   -0.0056326   0.0161827
kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0610015    0.0520943   0.0699087


### Parameter: PAF


studyid                    country         intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.4593933   -0.0739341   0.7278645
ki0047075b-MAL-ED          INDIA           0                    NA                0.4450304   -0.0374217   0.7031186
ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.3457610   -0.1889189   0.6399849
ki1000109-EE               PAKISTAN        0                    NA                0.3002600   -0.0991642   0.5545378
ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.5631984    0.4256844   0.6677861
ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.2259880   -0.0234905   0.4146554
ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.4383824    0.2035412   0.6039791
ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.2137644   -0.0340127   0.4021675
ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.6312422    0.3025665   0.8050247
ki1101329-Keneba           GAMBIA          0                    NA                0.3062772    0.1169862   0.4549900
ki1113344-GMS-Nepal        NEPAL           0                    NA                0.3124493    0.1197107   0.4629879
ki1114097-CMIN             BANGLADESH      0                    NA                0.5442308    0.0218796   0.7876278
ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.2406533   -0.0718793   0.4620594
ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.4495898    0.2586768   0.5913370
ki1135781-COHORTS          GUATEMALA       0                    NA                0.4035840    0.0189417   0.6374201
ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0701553   -0.0854035   0.2034195
kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.6353394    0.5692078   0.6913191
