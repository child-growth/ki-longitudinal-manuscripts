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
![](/tmp/8f9b68e0-cb72-4dd5-b10e-1e35af2fe78f/f440afd5-3c42-4d18-a579-e69f01b69390/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f9b68e0-cb72-4dd5-b10e-1e35af2fe78f/f440afd5-3c42-4d18-a579-e69f01b69390/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f9b68e0-cb72-4dd5-b10e-1e35af2fe78f/f440afd5-3c42-4d18-a579-e69f01b69390/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f9b68e0-cb72-4dd5-b10e-1e35af2fe78f/f440afd5-3c42-4d18-a579-e69f01b69390/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0645161   0.0257599   0.1032723
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.0941176   0.0319139   0.1563214
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0999395   0.0460572   0.1538219
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2174388   0.0467105   0.3881671
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0644688   0.0291060   0.0998315
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0940537   0.0537318   0.1343755
ki1000108-IRC              INDIA                          0                    NA                0.1045082   0.0670657   0.1419506
ki1000108-IRC              INDIA                          1                    NA                0.1073010   0.0540452   0.1605567
ki1000109-EE               PAKISTAN                       0                    NA                0.0744681   0.0213251   0.1276111
ki1000109-EE               PAKISTAN                       1                    NA                0.1357143   0.0955452   0.1758834
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1915704   0.1146650   0.2684757
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2313913   0.1584181   0.3043644
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1802869   0.1421716   0.2184023
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1789872   0.1310923   0.2268820
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1684655   0.1182868   0.2186443
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2149099   0.1559700   0.2738497
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0703225   0.0421338   0.0985113
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1688247   0.1121269   0.2255226
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0445620   0.0255642   0.0635598
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1233509   0.0716140   0.1750877
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0406029   0.0230923   0.0581136
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0947966   0.0579944   0.1315989
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0424257   0.0324240   0.0524275
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0814423   0.0549293   0.1079553
ki1101329-Keneba           GAMBIA                         0                    NA                0.0751902   0.0600153   0.0903650
ki1101329-Keneba           GAMBIA                         1                    NA                0.1224287   0.0945199   0.1503375
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1477854   0.1142101   0.1813607
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2780683   0.2092293   0.3469073
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0430239   0.0294743   0.0565735
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0780929   0.0372324   0.1189534
ki1119695-PROBIT           BELARUS                        0                    NA                0.0013038   0.0002440   0.0023635
ki1119695-PROBIT           BELARUS                        1                    NA                0.0024728   0.0001388   0.0048068
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0353282   0.0310475   0.0396090
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0671819   0.0515735   0.0827904
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0245161   0.0075791   0.0414532
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0682985   0.0425894   0.0940076
ki1135781-COHORTS          INDIA                          0                    NA                0.0784363   0.0711182   0.0857543
ki1135781-COHORTS          INDIA                          1                    NA                0.1363399   0.1122701   0.1604097
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0712756   0.0581880   0.0843633
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1191816   0.0839625   0.1544008
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2101775   0.2042656   0.2160893
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2248620   0.2056155   0.2441086
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0615804   0.0532726   0.0698882
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1494394   0.1135035   0.1853753


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
ki0047075b-MAL-ED          INDIA                          1                    0                 2.1757039   0.8379683   5.649006
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4589027   0.7252019   2.934903
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.0267234   0.5556948   1.897014
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.8224490   0.8416430   3.946234
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.2078655   0.7205692   2.024704
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.9927905   0.6910781   1.426225
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.2756904   0.8505270   1.913385
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 2.4007203   1.4220743   4.052853
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.7680733   1.5220652   5.034101
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.3347255   1.3070775   4.170329
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9196455   1.2839645   2.870047
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.6282544   1.2023307   2.205061
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.8815685   1.3458354   2.630559
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.8151057   0.9863561   3.340182
ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 1.8966370   0.6161343   5.838390
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.9016501   1.4635045   2.470968
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 2.7858597   1.2696056   6.112933
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 1.7382250   1.4251066   2.120140
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.6721230   1.1822769   2.364924
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0698675   0.9795146   1.168555
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.4267365   1.8426693   3.195934


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0104839   -0.0155348    0.0365026
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0192094   -0.0239253    0.0623441
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0112069   -0.0167449    0.0391587
ki1000108-IRC              INDIA                          0                    NA                 0.0125650   -0.0125742    0.0377042
ki1000109-EE               PAKISTAN                       0                    NA                 0.0458528   -0.0040933    0.0957988
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0127774   -0.0524322    0.0779871
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0145809   -0.0560324    0.0268706
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0205892   -0.0156339    0.0568122
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0405832    0.0167813    0.0643851
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0204787    0.0059772    0.0349801
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0196711    0.0054427    0.0338994
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0081194    0.0020097    0.0142291
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0131091    0.0010719    0.0251463
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0369604    0.0151174    0.0588033
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0051570   -0.0015949    0.0119089
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001424   -0.0001556    0.0004405
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0089643    0.0056448    0.0122838
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0155621   -0.0001271    0.0312512
ki1135781-COHORTS          INDIA                          0                    NA                 0.0334163    0.0279056    0.0389271
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0091800   -0.0013950    0.0197551
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0223987   -0.0272218   -0.0175757
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0457051    0.0378315    0.0535787


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1397849   -0.2802981    0.4220331
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1612218   -0.2817247    0.4510921
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1480913   -0.3060926    0.4443362
ki1000108-IRC              INDIA                          0                    NA                 0.1073262   -0.1331828    0.2967891
ki1000109-EE               PAKISTAN                       0                    NA                 0.3810875   -0.1888599    0.6777983
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0625279   -0.3146630    0.3314987
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0879925   -0.3743571    0.1387044
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1089060   -0.1038364    0.2806465
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.3659251    0.1321191    0.5367440
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3148594    0.0775510    0.4911180
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3263609    0.0705488    0.5117660
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1606365    0.0348876    0.2700010
ki1101329-Keneba           GAMBIA                         0                    NA                 0.1484622    0.0030309    0.2726789
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2000607    0.0765892    0.3070226
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1070345   -0.0414291    0.2343335
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0984898   -0.1451996    0.2903240
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2023885    0.1275465    0.2708103
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3882928   -0.1318798    0.6694122
ki1135781-COHORTS          INDIA                          0                    NA                 0.2987534    0.2519382    0.3426388
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1141005   -0.0252255    0.2344924
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1192825   -0.1475963   -0.0916672
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4260139    0.3657291    0.4805689
