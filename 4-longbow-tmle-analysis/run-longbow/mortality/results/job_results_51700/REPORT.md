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

**Intervention Variable:** ever_wasted06

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

studyid                    country                        ever_wasted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                             0      180     240
ki0047075b-MAL-ED          BANGLADESH                     0                             1        5     240
ki0047075b-MAL-ED          BANGLADESH                     1                             0       42     240
ki0047075b-MAL-ED          BANGLADESH                     1                             1       13     240
ki0047075b-MAL-ED          BRAZIL                         0                             0      192     207
ki0047075b-MAL-ED          BRAZIL                         0                             1        1     207
ki0047075b-MAL-ED          BRAZIL                         1                             0       13     207
ki0047075b-MAL-ED          BRAZIL                         1                             1        1     207
ki0047075b-MAL-ED          INDIA                          0                             0      153     235
ki0047075b-MAL-ED          INDIA                          0                             1        6     235
ki0047075b-MAL-ED          INDIA                          1                             0       54     235
ki0047075b-MAL-ED          INDIA                          1                             1       22     235
ki0047075b-MAL-ED          NEPAL                          0                             0      193     235
ki0047075b-MAL-ED          NEPAL                          0                             1        0     235
ki0047075b-MAL-ED          NEPAL                          1                             0       40     235
ki0047075b-MAL-ED          NEPAL                          1                             1        2     235
ki0047075b-MAL-ED          PERU                           0                             0      258     270
ki0047075b-MAL-ED          PERU                           0                             1        2     270
ki0047075b-MAL-ED          PERU                           1                             0       10     270
ki0047075b-MAL-ED          PERU                           1                             1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      232     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        0     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0       25     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        2     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      233     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0       12     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      174     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1        3     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0      168     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       25     370
ki1000108-IRC              INDIA                          0                             0      179     410
ki1000108-IRC              INDIA                          0                             1        6     410
ki1000108-IRC              INDIA                          1                             0      183     410
ki1000108-IRC              INDIA                          1                             1       42     410
ki1000109-EE               PAKISTAN                       0                             0      253     375
ki1000109-EE               PAKISTAN                       0                             1        9     375
ki1000109-EE               PAKISTAN                       1                             0       77     375
ki1000109-EE               PAKISTAN                       1                             1       36     375
ki1000109-ResPak           PAKISTAN                       0                             0      123     230
ki1000109-ResPak           PAKISTAN                       0                             1       15     230
ki1000109-ResPak           PAKISTAN                       1                             0       60     230
ki1000109-ResPak           PAKISTAN                       1                             1       32     230
ki1000304b-SAS-CompFeed    INDIA                          0                             0      957    1384
ki1000304b-SAS-CompFeed    INDIA                          0                             1      107    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             0      199    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             1      121    1384
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      281     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       25     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       45     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       51     402
ki1017093-NIH-Birth        BANGLADESH                     0                             0      329     541
ki1017093-NIH-Birth        BANGLADESH                     0                             1       14     541
ki1017093-NIH-Birth        BANGLADESH                     1                             0      152     541
ki1017093-NIH-Birth        BANGLADESH                     1                             1       46     541
ki1017093b-PROVIDE         BANGLADESH                     0                             0      438     615
ki1017093b-PROVIDE         BANGLADESH                     0                             1       19     615
ki1017093b-PROVIDE         BANGLADESH                     1                             0      137     615
ki1017093b-PROVIDE         BANGLADESH                     1                             1       21     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      516     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       17     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0      170     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1       27     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1669    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       30    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0      247    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       72    2018
ki1101329-Keneba           GAMBIA                         0                             0     1808    2270
ki1101329-Keneba           GAMBIA                         0                             1       90    2270
ki1101329-Keneba           GAMBIA                         1                             0      265    2270
ki1101329-Keneba           GAMBIA                         1                             1      107    2270
ki1112895-Guatemala BSC    GUATEMALA                      0                             0      263     274
ki1112895-Guatemala BSC    GUATEMALA                      0                             1        3     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             0        7     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             1        1     274
ki1113344-GMS-Nepal        NEPAL                          0                             0      376     590
ki1113344-GMS-Nepal        NEPAL                          0                             1       36     590
ki1113344-GMS-Nepal        NEPAL                          1                             0      105     590
ki1113344-GMS-Nepal        NEPAL                          1                             1       73     590
ki1114097-CMIN             BANGLADESH                     0                             0      196     252
ki1114097-CMIN             BANGLADESH                     0                             1       11     252
ki1114097-CMIN             BANGLADESH                     1                             0       31     252
ki1114097-CMIN             BANGLADESH                     1                             1       14     252
ki1114097-CMIN             BRAZIL                         0                             0      109     119
ki1114097-CMIN             BRAZIL                         0                             1        0     119
ki1114097-CMIN             BRAZIL                         1                             0       10     119
ki1114097-CMIN             BRAZIL                         1                             1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                             0      929    1019
ki1114097-CMIN             GUINEA-BISSAU                  0                             1       28    1019
ki1114097-CMIN             GUINEA-BISSAU                  1                             0       41    1019
ki1114097-CMIN             GUINEA-BISSAU                  1                             1       21    1019
ki1114097-CMIN             PERU                           0                             0      606     653
ki1114097-CMIN             PERU                           0                             1        0     653
ki1114097-CMIN             PERU                           1                             0       45     653
ki1114097-CMIN             PERU                           1                             1        2     653
ki1114097-CONTENT          PERU                           0                             0      211     215
ki1114097-CONTENT          PERU                           0                             1        0     215
ki1114097-CONTENT          PERU                           1                             0        4     215
ki1114097-CONTENT          PERU                           1                             1        0     215
ki1119695-PROBIT           BELARUS                        0                             0    12381   16596
ki1119695-PROBIT           BELARUS                        0                             1        3   16596
ki1119695-PROBIT           BELARUS                        1                             0     4191   16596
ki1119695-PROBIT           BELARUS                        1                             1       21   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     8382   10613
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1      217   10613
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0     1768   10613
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1      246   10613
ki1135781-COHORTS          GUATEMALA                      0                             0      786    1017
ki1135781-COHORTS          GUATEMALA                      0                             1       25    1017
ki1135781-COHORTS          GUATEMALA                      1                             0      190    1017
ki1135781-COHORTS          GUATEMALA                      1                             1       16    1017
ki1135781-COHORTS          INDIA                          0                             0     4756    6892
ki1135781-COHORTS          INDIA                          0                             1      113    6892
ki1135781-COHORTS          INDIA                          1                             0     1366    6892
ki1135781-COHORTS          INDIA                          1                             1      657    6892
ki1135781-COHORTS          PHILIPPINES                    0                             0     2013    2808
ki1135781-COHORTS          PHILIPPINES                    0                             1       98    2808
ki1135781-COHORTS          PHILIPPINES                    1                             0      569    2808
ki1135781-COHORTS          PHILIPPINES                    1                             1      128    2808
ki1148112-LCNI-5           MALAWI                         0                             0      777     797
ki1148112-LCNI-5           MALAWI                         0                             1        7     797
ki1148112-LCNI-5           MALAWI                         1                             0        8     797
ki1148112-LCNI-5           MALAWI                         1                             1        5     797
kiGH5241-JiVitA-3          BANGLADESH                     0                             0    12235   17260
kiGH5241-JiVitA-3          BANGLADESH                     0                             1     1503   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             0     1780   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             1     1742   17260
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     4245    5239
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      304    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      432    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      258    5239


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

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/73999c13-3b22-4f12-8821-059970e5d7f8/f7bf21fb-2f4d-4591-849e-d2299e3eb0f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73999c13-3b22-4f12-8821-059970e5d7f8/f7bf21fb-2f4d-4591-849e-d2299e3eb0f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73999c13-3b22-4f12-8821-059970e5d7f8/f7bf21fb-2f4d-4591-849e-d2299e3eb0f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73999c13-3b22-4f12-8821-059970e5d7f8/f7bf21fb-2f4d-4591-849e-d2299e3eb0f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0270270   0.0036107   0.0504433
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2363636   0.1238495   0.3488778
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0377358   0.0080534   0.0674183
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2894737   0.1872946   0.3916527
ki1000108-IRC              INDIA                          0                    NA                0.0324324   0.0068747   0.0579902
ki1000108-IRC              INDIA                          1                    NA                0.1866667   0.1356920   0.2376414
ki1000109-EE               PAKISTAN                       0                    NA                0.0343511   0.0122682   0.0564341
ki1000109-EE               PAKISTAN                       1                    NA                0.3185841   0.2325626   0.4046055
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1109015   0.0579185   0.1638844
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3457211   0.2465808   0.4448614
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1028812   0.0792367   0.1265257
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4531347   0.3777765   0.5284929
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0828695   0.0518317   0.1139073
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5302267   0.4288222   0.6316312
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0404548   0.0193860   0.0615236
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2268047   0.1675423   0.2860672
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0416540   0.0232148   0.0600931
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1299854   0.0754535   0.1845173
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0321250   0.0171986   0.0470515
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1297183   0.0808373   0.1785993
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0176246   0.0113588   0.0238904
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2212294   0.1753492   0.2671097
ki1101329-Keneba           GAMBIA                         0                    NA                0.0486386   0.0390101   0.0582670
ki1101329-Keneba           GAMBIA                         1                    NA                0.2513537   0.2063339   0.2963735
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0888557   0.0615486   0.1161628
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3984959   0.3258812   0.4711105
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0517759   0.0211921   0.0823596
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2559545   0.1154761   0.3964329
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0293795   0.0186729   0.0400861
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3069140   0.1944388   0.4193892
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0317511   0.0281269   0.0353753
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2339084   0.1923614   0.2754554
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0316234   0.0194322   0.0438146
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0825970   0.0421128   0.1230812
ki1135781-COHORTS          INDIA                          0                    NA                0.0308563   0.0255374   0.0361752
ki1135781-COHORTS          INDIA                          1                    NA                0.3479154   0.3166361   0.3791947
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0459299   0.0374330   0.0544268
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2281154   0.1681447   0.2880862
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0089286   0.0022811   0.0155761
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1448664   0.1385229   0.1512099
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5908040   0.5644969   0.6171111
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0739796   0.0640740   0.0838851
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5076401   0.4309322   0.5843481


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0750000   0.0416074   0.1083926
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
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
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0480864   0.0349437   0.0612290
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
ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                  8.745454    3.254289    23.502204
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000     1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  7.671053    3.239109    18.167049
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000108-IRC              INDIA                          1                    0                  5.755556    2.499673    13.252299
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000     1.000000
ki1000109-EE               PAKISTAN                       1                    0                  9.274336    4.618123    18.625166
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000     1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.117372    1.787289     5.437289
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.404445    3.174266     6.111377
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.398331    4.200041     9.747199
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  5.606374    3.128975    10.045279
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.120602    1.694154     5.748093
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.037920    2.219974     7.344587
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000     1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.552318    8.317730    18.942750
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000     1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.167786    3.962076     6.740410
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000     1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.484754    3.139759     6.405911
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  4.943510    2.210840    11.053851
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000     1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 10.446528    6.234568    17.504012
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000     1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  7.366940    5.963712     9.100341
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  2.611894    1.401931     4.866138
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          INDIA                          1                    0                 11.275339    9.284691    13.692785
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.966599    3.606049     6.840480
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000     1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 43.076923   18.058272   102.757410
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.078268    3.836932     4.334784
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  6.861896    5.596597     8.413258


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0479730   0.0193712   0.0765747
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0814131   0.0438395   0.1189866
ki1000108-IRC              INDIA                          0                    NA                0.0846407   0.0524758   0.1168057
ki1000109-EE               PAKISTAN                       0                    NA                0.0856489   0.0558012   0.1154965
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0934464   0.0463585   0.1405342
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0618587   0.0491210   0.0745964
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1061852   0.0749383   0.1374321
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0704509   0.0462323   0.0946695
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0233867   0.0085869   0.0381865
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0281489   0.0141549   0.0421429
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0329205   0.0248850   0.0409561
ki1101329-Keneba           GAMBIA                         0                    NA                0.0381456   0.0297268   0.0465643
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0958901   0.0698031   0.1219771
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0474305   0.0195156   0.0753454
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0187068   0.0102377   0.0271760
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0118746   0.0084175   0.0153318
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0086912   0.0007107   0.0166718
ki1135781-COHORTS          INDIA                          0                    NA                0.0808674   0.0733675   0.0883674
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0345544   0.0266846   0.0424242
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061279   0.0006884   0.0115674
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0431406   0.0376064   0.0486748
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0332928   0.0252073   0.0413783


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6396396   0.2527566   0.8262151
ki0047075b-MAL-ED          INDIA                          0                    NA                0.6832884   0.3691087   0.8410087
ki1000108-IRC              INDIA                          0                    NA                0.7229730   0.4236989   0.8668336
ki1000109-EE               PAKISTAN                       0                    NA                0.7137405   0.4945346   0.8378830
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4572907   0.2035132   0.6302094
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3754929   0.2784446   0.4594883
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5616638   0.4098343   0.6744327
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6352325   0.4271624   0.7677260
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3595703   0.1202358   0.5337953
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4670163   0.2356647   0.6283416
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6513096   0.5309093   0.7408071
ki1101329-Keneba           GAMBIA                         0                    NA                0.4395455   0.3543073   0.5135314
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5190380   0.3862756   0.6230810
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4780993   0.1918344   0.6629648
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3890259   0.2277563   0.5166172
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2721936   0.1988978   0.3387833
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2155852   0.0035196   0.3825201
ki1135781-COHORTS          INDIA                          0                    NA                0.7238160   0.6752824   0.7650955
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4293311   0.3433759   0.5040344
ki1148112-LCNI-5           MALAWI                         0                    NA                0.4069940   0.0430324   0.6325309
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2294626   0.2022603   0.2557373
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3103577   0.2398989   0.3742852
