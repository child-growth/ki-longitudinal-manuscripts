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
![](/tmp/a8a0944c-23b7-4358-9a90-ced531e49516/0bedb2e8-e9d3-43a3-bf02-6900dca025ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a8a0944c-23b7-4358-9a90-ced531e49516/0bedb2e8-e9d3-43a3-bf02-6900dca025ea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a8a0944c-23b7-4358-9a90-ced531e49516/0bedb2e8-e9d3-43a3-bf02-6900dca025ea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a8a0944c-23b7-4358-9a90-ced531e49516/0bedb2e8-e9d3-43a3-bf02-6900dca025ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1079670   0.0555835   0.1603505
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3390890   0.2404941   0.4376839
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1028812   0.0792367   0.1265257
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4531347   0.3777765   0.5284929
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0818772   0.0511583   0.1125961
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5322506   0.4306004   0.6339008
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0402254   0.0192783   0.0611725
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2328062   0.1735263   0.2920860
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0415933   0.0231534   0.0600332
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1305449   0.0765917   0.1844982
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0324922   0.0175753   0.0474091
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1368360   0.0887996   0.1848724
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0176489   0.0113817   0.0239162
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2234091   0.1772373   0.2695809
ki1101329-Keneba           GAMBIA                         0                    NA                0.0487552   0.0391074   0.0584031
ki1101329-Keneba           GAMBIA                         1                    NA                0.2545607   0.2091698   0.2999516
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0900264   0.0627748   0.1172779
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4134182   0.3414240   0.4854124
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0532035   0.0224904   0.0839167
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3040564   0.1652652   0.4428477
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0293961   0.0186873   0.0401050
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3009762   0.1896503   0.4123021
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0404336   0.0366327   0.0442345
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2355109   0.1931661   0.2778558
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0312689   0.0192509   0.0432868
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0810715   0.0425792   0.1195639
ki1135781-COHORTS          INDIA                          0                    NA                0.0349291   0.0273540   0.0425043
ki1135781-COHORTS          INDIA                          1                    NA                0.3474594   0.3165193   0.3783995
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0437904   0.0357546   0.0518262
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2227507   0.1637426   0.2817587
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0089286   0.0022811   0.0155761
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1430334   0.1360509   0.1500159
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5856623   0.5595586   0.6117660
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0702060   0.0585060   0.0819061
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5066756   0.4265657   0.5867855


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
ki1000109-ResPak           PAKISTAN                       1                    0                  3.140673    1.782987     5.532192
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.404445    3.174266     6.111377
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.500597    4.263308     9.911965
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  5.787539    3.243383    10.327366
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.138606    1.711322     5.756282
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.211351    2.362801     7.506126
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000     1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.658498    8.391898    19.094318
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000     1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.221197    4.004589     6.807415
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000     1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.592189    3.241626     6.505439
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.714966    2.738474    11.926654
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000     1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 10.238640    6.095752    17.197180
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000     1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.824634    4.753262     7.137490
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  2.592724    1.410008     4.767504
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          INDIA                          1                    0                  9.947551    7.868529    12.575892
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.086750    3.690623     7.011017
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000     1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 43.076923   18.058272   102.757410
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.094584    3.837433     4.368967
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  7.216981    5.706387     9.127460


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0479730    0.0193712   0.0765747
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0814131    0.0438395   0.1189866
ki1000108-IRC              INDIA                          0                    NA                0.0846407    0.0524758   0.1168057
ki1000109-EE               PAKISTAN                       0                    NA                0.0856489    0.0558012   0.1154965
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0963808    0.0493924   0.1433693
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0618587    0.0491210   0.0745964
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1071775    0.0759402   0.1384148
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0706803    0.0465178   0.0948428
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0234474    0.0086593   0.0382354
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0277818    0.0138125   0.0417511
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0328962    0.0248591   0.0409332
ki1101329-Keneba           GAMBIA                         0                    NA                0.0380289    0.0296024   0.0464554
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0947194    0.0687540   0.1206848
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0460028    0.0183412   0.0736644
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0186902    0.0102192   0.0271613
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0031921   -0.0004156   0.0067999
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0090458    0.0011553   0.0169363
ki1135781-COHORTS          INDIA                          0                    NA                0.0767946    0.0676760   0.0859132
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0366940    0.0291391   0.0442488
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061279    0.0006884   0.0115674
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0449736    0.0387089   0.0512382
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0370664    0.0266782   0.0474545


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6396396    0.2527566   0.8262151
ki0047075b-MAL-ED          INDIA                          0                    NA                0.6832884    0.3691087   0.8410087
ki1000108-IRC              INDIA                          0                    NA                0.7229730    0.4236989   0.8668336
ki1000109-EE               PAKISTAN                       0                    NA                0.7137405    0.4945346   0.8378830
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4716509    0.2189439   0.6425958
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3754929    0.2784446   0.4594883
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5669127    0.4163232   0.6786499
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6373008    0.4305557   0.7689841
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3605033    0.1212697   0.5346057
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4609252    0.2306220   0.6222902
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6508278    0.5304059   0.7403689
ki1101329-Keneba           GAMBIA                         0                    NA                0.4382011    0.3527556   0.5123666
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5127012    0.3809936   0.6163851
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4637082    0.1809335   0.6488578
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3886808    0.2273518   0.5163244
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0731709   -0.0100818   0.1495618
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2243798    0.0162683   0.3884646
ki1135781-COHORTS          INDIA                          0                    NA                0.6873616    0.6144967   0.7464540
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4559143    0.3767661   0.5250110
ki1148112-LCNI-5           MALAWI                         0                    NA                0.4069940    0.0430324   0.6325309
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2392122    0.2076870   0.2694830
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3455349    0.2492594   0.4294640
