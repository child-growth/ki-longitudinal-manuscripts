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
![](/tmp/4a5f3d41-9162-4ab2-aadf-4d433e3d4e9c/159bf805-b211-498f-9e8e-351bdf0e7948/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a5f3d41-9162-4ab2-aadf-4d433e3d4e9c/159bf805-b211-498f-9e8e-351bdf0e7948/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a5f3d41-9162-4ab2-aadf-4d433e3d4e9c/159bf805-b211-498f-9e8e-351bdf0e7948/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a5f3d41-9162-4ab2-aadf-4d433e3d4e9c/159bf805-b211-498f-9e8e-351bdf0e7948/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0645161   0.0257599   0.1032723
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.0941176   0.0319139   0.1563214
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1086475   0.0449697   0.1723254
ki0047075b-MAL-ED          INDIA                          1                    NA                0.1760505   0.0402554   0.3118456
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0603114   0.0251541   0.0954687
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0904289   0.0497565   0.1311013
ki1000108-IRC              INDIA                          0                    NA                0.1026778   0.0661771   0.1391785
ki1000108-IRC              INDIA                          1                    NA                0.1067221   0.0558272   0.1576170
ki1000109-EE               PAKISTAN                       0                    NA                0.0744681   0.0213251   0.1276111
ki1000109-EE               PAKISTAN                       1                    NA                0.1357143   0.0955452   0.1758834
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1896445   0.1128650   0.2664239
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2322980   0.1578578   0.3067382
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1802869   0.1421716   0.2184023
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1789872   0.1310923   0.2268820
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1659204   0.1159334   0.2159075
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2145849   0.1554844   0.2736854
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0710748   0.0422276   0.0999219
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1648387   0.1125911   0.2170864
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0441524   0.0252319   0.0630729
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1231108   0.0714902   0.1747314
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0406338   0.0231057   0.0581619
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0952915   0.0586266   0.1319565
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0423419   0.0323480   0.0523357
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0807098   0.0544804   0.1069392
ki1101329-Keneba           GAMBIA                         0                    NA                0.0719645   0.0574333   0.0864957
ki1101329-Keneba           GAMBIA                         1                    NA                0.1251397   0.0975572   0.1527222
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1476887   0.1141505   0.1812269
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2789366   0.2099487   0.3479245
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0431754   0.0296055   0.0567453
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0785662   0.0374227   0.1197097
ki1119695-PROBIT           BELARUS                        0                    NA                0.0013038   0.0002440   0.0023635
ki1119695-PROBIT           BELARUS                        1                    NA                0.0024728   0.0001388   0.0048068
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0332214   0.0291029   0.0373398
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0646901   0.0509184   0.0784618
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0247055   0.0091356   0.0402753
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0652305   0.0394455   0.0910156
ki1135781-COHORTS          INDIA                          0                    NA                0.0819525   0.0744969   0.0894080
ki1135781-COHORTS          INDIA                          1                    NA                0.1416521   0.1143229   0.1689812
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0643522   0.0522709   0.0764336
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1202714   0.0831532   0.1573897
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1889448   0.1831722   0.1947173
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2244966   0.2047280   0.2442651
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0594101   0.0509310   0.0678891
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1456881   0.1105787   0.1807975


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
ki0047075b-MAL-ED          INDIA                          1                    0                 1.6203818   0.6135982   4.279082
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4993672   0.7171862   3.134614
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.0393882   0.5720767   1.888432
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.8224490   0.8416430   3.946234
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.2249131   0.7269422   2.064005
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.9927905   0.6910781   1.426225
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.2932999   0.8596736   1.945651
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 2.3192303   1.3860547   3.880676
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.7883154   1.5307095   5.079150
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.3451263   1.3159385   4.179236
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9061475   1.2752732   2.849114
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.7389089   1.2913692   2.341549
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.8886789   1.3515066   2.639357
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.8196990   0.9889758   3.348216
ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 1.8966370   0.6161343   5.838390
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.9472445   1.5223728   2.490692
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 2.6403275   1.2564095   5.548612
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 1.7284660   1.3977723   2.137397
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.8689544   1.3034338   2.679838
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1881598   1.0842925   1.301977
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.4522459   1.8539208   3.243671


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0104839   -0.0155348   0.0365026
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0105014   -0.0420257   0.0630285
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0153643   -0.0123353   0.0430638
ki1000108-IRC              INDIA                          0                    NA                 0.0143954   -0.0101584   0.0389492
ki1000109-EE               PAKISTAN                       0                    NA                 0.0458528   -0.0040933   0.0957988
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0147033   -0.0501303   0.0795370
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0145809   -0.0560324   0.0268706
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0231343   -0.0129657   0.0592342
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0398310    0.0156190   0.0640429
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0208882    0.0063972   0.0353792
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0196401    0.0053991   0.0338811
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0082032    0.0020989   0.0143076
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0163348    0.0049911   0.0276784
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0370570    0.0152849   0.0588292
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0050055   -0.0017548   0.0117659
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001424   -0.0001556   0.0004405
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0110712    0.0079024   0.0142400
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0153727    0.0009720   0.0297735
ki1135781-COHORTS          INDIA                          0                    NA                 0.0299001    0.0243100   0.0354902
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0161034    0.0064073   0.0257996
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0011660   -0.0058596   0.0035276
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0478755    0.0399622   0.0557887


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1397849   -0.2802981   0.4220331
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0881368   -0.4756042   0.4365057
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2030281   -0.2529594   0.4930688
ki1000108-IRC              INDIA                          0                    NA                 0.1229606   -0.1106390   0.3074274
ki1000109-EE               PAKISTAN                       0                    NA                 0.3810875   -0.1888599   0.6777983
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0719525   -0.3030814   0.3390496
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0879925   -0.3743571   0.1387044
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1223682   -0.0899031   0.2932972
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.3591426    0.1186025   0.5340374
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3211568    0.0843437   0.4967237
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3258475    0.0696812   0.5114776
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1622953    0.0366812   0.2715298
ki1101329-Keneba           GAMBIA                         0                    NA                 0.1849933    0.0488115   0.3016779
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2005839    0.0775394   0.3072159
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1038903   -0.0448179   0.2314330
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0984898   -0.1451996   0.2903240
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2499560    0.1794181   0.3144304
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3835686   -0.0716032   0.6454027
ki1135781-COHORTS          INDIA                          0                    NA                 0.2673172    0.2194403   0.3122575
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.2001529    0.0744701   0.3087685
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0062095   -0.0316322   0.0185868
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4462434    0.3846099   0.5017041
