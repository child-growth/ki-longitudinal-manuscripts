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

**Intervention Variable:** ever_stunted06

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

studyid                    country                        ever_stunted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  ---------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                              0      145     240
ki0047075b-MAL-ED          BANGLADESH                     0                              1       10     240
ki0047075b-MAL-ED          BANGLADESH                     1                              0       77     240
ki0047075b-MAL-ED          BANGLADESH                     1                              1        8     240
ki0047075b-MAL-ED          BRAZIL                         0                              0      165     207
ki0047075b-MAL-ED          BRAZIL                         0                              1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                              0       40     207
ki0047075b-MAL-ED          BRAZIL                         1                              1        0     207
ki0047075b-MAL-ED          INDIA                          0                              0      136     235
ki0047075b-MAL-ED          INDIA                          0                              1       14     235
ki0047075b-MAL-ED          INDIA                          1                              0       71     235
ki0047075b-MAL-ED          INDIA                          1                              1       14     235
ki0047075b-MAL-ED          NEPAL                          0                              0      192     235
ki0047075b-MAL-ED          NEPAL                          0                              1        1     235
ki0047075b-MAL-ED          NEPAL                          1                              0       41     235
ki0047075b-MAL-ED          NEPAL                          1                              1        1     235
ki0047075b-MAL-ED          PERU                           0                              0      147     270
ki0047075b-MAL-ED          PERU                           0                              1        0     270
ki0047075b-MAL-ED          PERU                           1                              0      121     270
ki0047075b-MAL-ED          PERU                           1                              1        2     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              0      153     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              1        2     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              0      104     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              1        0     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              0      141     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              0      104     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                              0      167     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                              1       11     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                              0      175     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                              1       17     370
ki1000108-IRC              INDIA                          0                              0      204     410
ki1000108-IRC              INDIA                          0                              1       28     410
ki1000108-IRC              INDIA                          1                              0      158     410
ki1000108-IRC              INDIA                          1                              1       20     410
ki1000109-EE               PAKISTAN                       0                              0       87     374
ki1000109-EE               PAKISTAN                       0                              1        7     374
ki1000109-EE               PAKISTAN                       1                              0      242     374
ki1000109-EE               PAKISTAN                       1                              1       38     374
ki1000109-ResPak           PAKISTAN                       0                              0       79     230
ki1000109-ResPak           PAKISTAN                       0                              1       16     230
ki1000109-ResPak           PAKISTAN                       1                              0      104     230
ki1000109-ResPak           PAKISTAN                       1                              1       31     230
ki1000304b-SAS-CompFeed    INDIA                          0                              0      698    1388
ki1000304b-SAS-CompFeed    INDIA                          0                              1      100    1388
ki1000304b-SAS-CompFeed    INDIA                          1                              0      460    1388
ki1000304b-SAS-CompFeed    INDIA                          1                              1      130    1388
ki1000304b-SAS-FoodSuppl   INDIA                          0                              0      179     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                              1       36     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                              0      147     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                              1       40     402
ki1017093-NIH-Birth        BANGLADESH                     0                              0      295     541
ki1017093-NIH-Birth        BANGLADESH                     0                              1       23     541
ki1017093-NIH-Birth        BANGLADESH                     1                              0      186     541
ki1017093-NIH-Birth        BANGLADESH                     1                              1       37     541
ki1017093b-PROVIDE         BANGLADESH                     0                              0      436     615
ki1017093b-PROVIDE         BANGLADESH                     0                              1       20     615
ki1017093b-PROVIDE         BANGLADESH                     1                              0      139     615
ki1017093b-PROVIDE         BANGLADESH                     1                              1       20     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                              0      460     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                              1       19     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                              0      226     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                              1       25     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1514    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       66    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0      402    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       36    2018
ki1101329-Keneba           GAMBIA                         0                              0     1469    2299
ki1101329-Keneba           GAMBIA                         0                              1       97    2299
ki1101329-Keneba           GAMBIA                         1                              0      627    2299
ki1101329-Keneba           GAMBIA                         1                              1      106    2299
ki1112895-Guatemala BSC    GUATEMALA                      0                              0      180     274
ki1112895-Guatemala BSC    GUATEMALA                      0                              1        1     274
ki1112895-Guatemala BSC    GUATEMALA                      1                              0       90     274
ki1112895-Guatemala BSC    GUATEMALA                      1                              1        3     274
ki1113344-GMS-Nepal        NEPAL                          0                              0      363     590
ki1113344-GMS-Nepal        NEPAL                          0                              1       62     590
ki1113344-GMS-Nepal        NEPAL                          1                              0      118     590
ki1113344-GMS-Nepal        NEPAL                          1                              1       47     590
ki1114097-CMIN             BANGLADESH                     0                              0      107     252
ki1114097-CMIN             BANGLADESH                     0                              1        3     252
ki1114097-CMIN             BANGLADESH                     1                              0      120     252
ki1114097-CMIN             BANGLADESH                     1                              1       22     252
ki1114097-CMIN             BRAZIL                         0                              0      101     119
ki1114097-CMIN             BRAZIL                         0                              1        0     119
ki1114097-CMIN             BRAZIL                         1                              0       18     119
ki1114097-CMIN             BRAZIL                         1                              1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                              0      825    1017
ki1114097-CMIN             GUINEA-BISSAU                  0                              1       37    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                              0      143    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                              1       12    1017
ki1114097-CMIN             PERU                           0                              0      566     653
ki1114097-CMIN             PERU                           0                              1        1     653
ki1114097-CMIN             PERU                           1                              0       85     653
ki1114097-CMIN             PERU                           1                              1        1     653
ki1114097-CONTENT          PERU                           0                              0      166     215
ki1114097-CONTENT          PERU                           0                              1        0     215
ki1114097-CONTENT          PERU                           1                              0       49     215
ki1114097-CONTENT          PERU                           1                              1        0     215
ki1119695-PROBIT           BELARUS                        0                              0    14554   16595
ki1119695-PROBIT           BELARUS                        0                              1       19   16595
ki1119695-PROBIT           BELARUS                        1                              0     2017   16595
ki1119695-PROBIT           BELARUS                        1                              1        5   16595
ki1126311-ZVITAMBO         ZIMBABWE                       0                              0     7147   10679
ki1126311-ZVITAMBO         ZIMBABWE                       0                              1      246   10679
ki1126311-ZVITAMBO         ZIMBABWE                       1                              0     3059   10679
ki1126311-ZVITAMBO         ZIMBABWE                       1                              1      227   10679
ki1135781-COHORTS          GUATEMALA                      0                              0      555    1023
ki1135781-COHORTS          GUATEMALA                      0                              1       12    1023
ki1135781-COHORTS          GUATEMALA                      1                              0      427    1023
ki1135781-COHORTS          GUATEMALA                      1                              1       29    1023
ki1135781-COHORTS          INDIA                          0                              0     4740    6893
ki1135781-COHORTS          INDIA                          0                              1      420    6893
ki1135781-COHORTS          INDIA                          1                              0     1382    6893
ki1135781-COHORTS          INDIA                          1                              1      351    6893
ki1135781-COHORTS          PHILIPPINES                    0                              0     1889    2809
ki1135781-COHORTS          PHILIPPINES                    0                              1      108    2809
ki1135781-COHORTS          PHILIPPINES                    1                              0      694    2809
ki1135781-COHORTS          PHILIPPINES                    1                              1      118    2809
ki1148112-LCNI-5           MALAWI                         0                              0      498     797
ki1148112-LCNI-5           MALAWI                         0                              1        4     797
ki1148112-LCNI-5           MALAWI                         1                              0      287     797
ki1148112-LCNI-5           MALAWI                         1                              1        8     797
kiGH5241-JiVitA-3          BANGLADESH                     0                              0     8327   17265
kiGH5241-JiVitA-3          BANGLADESH                     0                              1     1524   17265
kiGH5241-JiVitA-3          BANGLADESH                     1                              0     5696   17265
kiGH5241-JiVitA-3          BANGLADESH                     1                              1     1718   17265
kiGH5241-JiVitA-4          BANGLADESH                     0                              0     2986    5257
kiGH5241-JiVitA-4          BANGLADESH                     0                              1      243    5257
kiGH5241-JiVitA-4          BANGLADESH                     1                              0     1707    5257
kiGH5241-JiVitA-4          BANGLADESH                     1                              1      321    5257


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
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
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
![](/tmp/a858f9bb-b903-437a-9cd3-ea2ec44add28/2342a780-fb32-4ac6-8e23-a01e4e38be5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a858f9bb-b903-437a-9cd3-ea2ec44add28/2342a780-fb32-4ac6-8e23-a01e4e38be5d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a858f9bb-b903-437a-9cd3-ea2ec44add28/2342a780-fb32-4ac6-8e23-a01e4e38be5d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a858f9bb-b903-437a-9cd3-ea2ec44add28/2342a780-fb32-4ac6-8e23-a01e4e38be5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0645161   0.0257599   0.1032723
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.0941176   0.0319139   0.1563214
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1120058   0.0510482   0.1729633
ki0047075b-MAL-ED          INDIA                          1                    NA                0.1929509   0.0386283   0.3472735
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0608559   0.0255798   0.0961319
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0895078   0.0487210   0.1302947
ki1000108-IRC              INDIA                          0                    NA                0.1074489   0.0684824   0.1464153
ki1000108-IRC              INDIA                          1                    NA                0.1077944   0.0542427   0.1613462
ki1000109-EE               PAKISTAN                       0                    NA                0.0744681   0.0213251   0.1276111
ki1000109-EE               PAKISTAN                       1                    NA                0.1357143   0.0955452   0.1758834
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1925873   0.1148612   0.2703133
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2307786   0.1566348   0.3049224
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1802869   0.1421716   0.2184023
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1789872   0.1310923   0.2268820
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1664440   0.1162347   0.2166532
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2160670   0.1563260   0.2758080
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0674626   0.0401107   0.0948145
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1626185   0.1109969   0.2142400
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0441248   0.0251897   0.0630599
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1239861   0.0717572   0.1762149
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0406476   0.0232112   0.0580841
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0962986   0.0595709   0.1330264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0422485   0.0322661   0.0522308
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0818946   0.0553641   0.1084251
ki1101329-Keneba           GAMBIA                         0                    NA                0.0721355   0.0573533   0.0869177
ki1101329-Keneba           GAMBIA                         1                    NA                0.1262368   0.0983600   0.1541137
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1477358   0.1141606   0.1813110
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2770555   0.2075467   0.3465643
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0431773   0.0296052   0.0567495
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0782956   0.0370862   0.1195049
ki1119695-PROBIT           BELARUS                        0                    NA                0.0013038   0.0002440   0.0023635
ki1119695-PROBIT           BELARUS                        1                    NA                0.0024728   0.0001388   0.0048068
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0324406   0.0282238   0.0366575
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0626236   0.0493983   0.0758489
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0243585   0.0086453   0.0400717
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0689326   0.0424034   0.0954619
ki1135781-COHORTS          INDIA                          0                    NA                0.0788897   0.0713542   0.0864252
ki1135781-COHORTS          INDIA                          1                    NA                0.1328133   0.1112458   0.1543808
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0792039   0.0653156   0.0930923
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1229452   0.0861310   0.1597594
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1774835   0.1717296   0.1832374
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2205353   0.2014009   0.2396696
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0561592   0.0474934   0.0648250
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1489938   0.1145365   0.1834511


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0750000   0.0416074   0.1083926
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1203209   0.0873047   0.1533370
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0481809   0.0350130   0.0613488
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014462   0.0004207   0.0024717
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0442925   0.0403901   0.0481949
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
ki1135781-COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.4588235   0.5972043   3.563548
ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 1.7226870   0.6531139   4.543848
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4708172   0.7017649   3.082661
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.0032160   0.5415345   1.858501
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.8224490   0.8416430   3.946234
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.1983067   0.7105913   2.020766
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.9927905   0.6910781   1.426225
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.2981366   0.8621435   1.954615
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 2.4104992   1.4397570   4.035755
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.8098950   1.5392411   5.129482
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.3691071   1.3336339   4.208553
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9384042   1.2976531   2.895544
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.7499957   1.2964581   2.362194
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.8753446   1.3389918   2.626541
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.8133482   0.9833722   3.343832
ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 1.8966370   0.6161343   5.838390
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.9304070   1.5066464   2.473355
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 2.8299184   1.3380174   5.985302
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 1.6835318   1.3958453   2.030511
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.5522612   1.0984483   2.193562
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2425675   1.1353630   1.359895
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.6530609   2.0097600   3.502275


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0104839   -0.0155348   0.0365026
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0071432   -0.0425902   0.0568765
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0148198   -0.0130396   0.0426792
ki1000108-IRC              INDIA                          0                    NA                 0.0096243   -0.0167854   0.0360339
ki1000109-EE               PAKISTAN                       0                    NA                 0.0458528   -0.0040933   0.0957988
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0117605   -0.0539070   0.0774281
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0145809   -0.0560324   0.0268706
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0226108   -0.0136630   0.0588845
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0434432    0.0200715   0.0668148
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0209158    0.0064059   0.0354257
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0196263    0.0054077   0.0338450
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0082966    0.0021956   0.0143976
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0161638    0.0045630   0.0277645
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0370100    0.0152395   0.0587804
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0050036   -0.0017558   0.0117630
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001424   -0.0001556   0.0004405
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0118519    0.0085814   0.0151225
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0157197    0.0011661   0.0302732
ki1135781-COHORTS          INDIA                          0                    NA                 0.0329629    0.0272298   0.0386960
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0012517   -0.0100904   0.0125939
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0102952    0.0056158   0.0149747
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0511263    0.0430235   0.0592292


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1397849   -0.2802981   0.4220331
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0599517   -0.4625276   0.3957783
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1958334   -0.2624025   0.4877355
ki1000108-IRC              INDIA                          0                    NA                 0.0822074   -0.1723219   0.2814744
ki1000109-EE               PAKISTAN                       0                    NA                 0.3810875   -0.1888599   0.6777983
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0575516   -0.3228406   0.3285593
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0879925   -0.3743571   0.1387044
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1195990   -0.0938287   0.2913827
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.3917125    0.1645789   0.5570932
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3215810    0.0843097   0.4973712
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3256185    0.0707566   0.5105800
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1641430    0.0386432   0.2732595
ki1101329-Keneba           GAMBIA                         0                    NA                 0.1830566    0.0432719   0.3024177
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2003293    0.0772254   0.3070103
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1038499   -0.0448478   0.2313857
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0984898   -0.1451996   0.2903240
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2675824    0.1941488   0.3343243
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3922251   -0.0720450   0.6554339
ki1135781-COHORTS          INDIA                          0                    NA                 0.2946994    0.2454018   0.3407764
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0155581   -0.1356605   0.1466412
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0548264    0.0305259   0.0785177
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4765444    0.4121563   0.5338799
