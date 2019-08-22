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
![](/tmp/fbab7fae-5bbc-47b0-8343-55ef88063f81/63afc421-fd0e-4bc4-9472-57e5ac1af9d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fbab7fae-5bbc-47b0-8343-55ef88063f81/63afc421-fd0e-4bc4-9472-57e5ac1af9d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fbab7fae-5bbc-47b0-8343-55ef88063f81/63afc421-fd0e-4bc4-9472-57e5ac1af9d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fbab7fae-5bbc-47b0-8343-55ef88063f81/63afc421-fd0e-4bc4-9472-57e5ac1af9d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1110436   0.0587422   0.1633450
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3563219   0.2574775   0.4551664
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1028812   0.0792367   0.1265257
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4531347   0.3777765   0.5284929
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0826670   0.0516425   0.1136915
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5324361   0.4302031   0.6346691
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0403582   0.0193196   0.0613968
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2289021   0.1695808   0.2882235
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0413034   0.0229122   0.0596946
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1303204   0.0760149   0.1846258
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0321820   0.0172755   0.0470884
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1333053   0.0846627   0.1819480
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0175951   0.0113326   0.0238575
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2304726   0.1846271   0.2763181
ki1101329-Keneba           GAMBIA                         0                    NA                0.0483995   0.0388195   0.0579794
ki1101329-Keneba           GAMBIA                         1                    NA                0.2567429   0.2108669   0.3026189
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0896717   0.0623854   0.1169579
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4004182   0.3283836   0.4724527
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0531086   0.0225141   0.0837031
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3524284   0.2112087   0.4936482
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0294191   0.0187066   0.0401316
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3054866   0.1940136   0.4169596
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0302847   0.0268988   0.0336706
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2386550   0.1974605   0.2798496
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0313040   0.0193010   0.0433071
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0781870   0.0404692   0.1159048
ki1135781-COHORTS          INDIA                          0                    NA                0.0385989   0.0318922   0.0453057
ki1135781-COHORTS          INDIA                          1                    NA                0.3503027   0.3194883   0.3811172
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0444708   0.0363458   0.0525959
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2373805   0.1724999   0.3022611
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0089286   0.0022811   0.0155761
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1490416   0.1427807   0.1553025
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5857789   0.5580889   0.6134689
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0722665   0.0625958   0.0819371
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4970817   0.4174958   0.5766677


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
ki1000109-ResPak           PAKISTAN                       1                    0                  3.208847    1.857565     5.543117
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.404445    3.174266     6.111377
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.440736    4.220606     9.828702
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  5.671766    3.166238    10.159985
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.155197    1.713968     5.808314
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.142238    2.296257     7.472218
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000     1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 13.098698    8.711125    19.696178
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000     1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.304662    4.066694     6.919486
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000     1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.465381    3.138350     6.353538
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  6.635995    3.279437    13.428045
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000     1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 10.383952    6.207484    17.370397
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000     1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  7.880382    6.414849     9.680730
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  2.497667    1.350952     4.617737
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          INDIA                          1                    0                  9.075453    7.469153    11.027200
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.337890    3.846290     7.407935
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000     1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 43.076923   18.058272   102.757410
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.930305    3.697839     4.177385
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  6.878455    5.579758     8.479426


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0479730   0.0193712   0.0765747
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0814131   0.0438395   0.1189866
ki1000108-IRC              INDIA                          0                    NA                0.0846407   0.0524758   0.1168057
ki1000109-EE               PAKISTAN                       0                    NA                0.0856489   0.0558012   0.1154965
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0933042   0.0464104   0.1401980
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0618587   0.0491210   0.0745964
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1063878   0.0750816   0.1376939
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0705476   0.0463203   0.0947748
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0237372   0.0089378   0.0385367
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0280920   0.0141128   0.0420713
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0329500   0.0249158   0.0409843
ki1101329-Keneba           GAMBIA                         0                    NA                0.0383847   0.0299770   0.0467923
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0950741   0.0690626   0.1210856
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0460977   0.0184124   0.0737831
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0186672   0.0102046   0.0271298
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0133410   0.0101051   0.0165769
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0090106   0.0011380   0.0168833
ki1135781-COHORTS          INDIA                          0                    NA                0.0731248   0.0647289   0.0815207
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0360135   0.0283924   0.0436346
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061279   0.0006884   0.0115674
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0389654   0.0335819   0.0443488
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0350059   0.0273765   0.0426353


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6396396   0.2527566   0.8262151
ki0047075b-MAL-ED          INDIA                          0                    NA                0.6832884   0.3691087   0.8410087
ki1000108-IRC              INDIA                          0                    NA                0.7229730   0.4236989   0.8668336
ki1000109-EE               PAKISTAN                       0                    NA                0.7137405   0.4945346   0.8378830
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4565951   0.2065181   0.6278568
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3754929   0.2784446   0.4594883
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5627352   0.4106544   0.6755716
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6361038   0.4281511   0.7684346
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3649602   0.1257385   0.5387243
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4660721   0.2353171   0.6271932
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6518935   0.5315467   0.7413229
ki1101329-Keneba           GAMBIA                         0                    NA                0.4423004   0.3575146   0.5158974
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5146212   0.3824784   0.6184870
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4646653   0.1826659   0.6493683
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3882026   0.2270017   0.5157867
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3058066   0.2397923   0.3660884
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2235079   0.0160587   0.3872195
ki1135781-COHORTS          INDIA                          0                    NA                0.6545146   0.5919406   0.7074931
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4474595   0.3669494   0.5177306
ki1148112-LCNI-5           MALAWI                         0                    NA                0.4069940   0.0430324   0.6325309
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2072549   0.1807292   0.2329217
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3263273   0.2605389   0.3862626
