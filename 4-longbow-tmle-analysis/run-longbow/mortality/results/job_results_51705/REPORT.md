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

**Intervention Variable:** ever_underweight06

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

studyid                    country                        ever_underweight06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  -------------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                                  0      160     240
ki0047075b-MAL-ED          BANGLADESH                     0                                  1        3     240
ki0047075b-MAL-ED          BANGLADESH                     1                                  0       62     240
ki0047075b-MAL-ED          BANGLADESH                     1                                  1       15     240
ki0047075b-MAL-ED          BRAZIL                         0                                  0      193     207
ki0047075b-MAL-ED          BRAZIL                         0                                  1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                                  0       12     207
ki0047075b-MAL-ED          BRAZIL                         1                                  1        0     207
ki0047075b-MAL-ED          INDIA                          0                                  0      140     235
ki0047075b-MAL-ED          INDIA                          0                                  1        1     235
ki0047075b-MAL-ED          INDIA                          1                                  0       67     235
ki0047075b-MAL-ED          INDIA                          1                                  1       27     235
ki0047075b-MAL-ED          NEPAL                          0                                  0      196     235
ki0047075b-MAL-ED          NEPAL                          0                                  1        0     235
ki0047075b-MAL-ED          NEPAL                          1                                  0       37     235
ki0047075b-MAL-ED          NEPAL                          1                                  1        2     235
ki0047075b-MAL-ED          PERU                           0                                  0      227     270
ki0047075b-MAL-ED          PERU                           0                                  1        1     270
ki0047075b-MAL-ED          PERU                           1                                  0       41     270
ki0047075b-MAL-ED          PERU                           1                                  1        1     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                  0      217     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                  1        0     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                  0       40     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                  1        2     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                  0      204     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                  1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                  0       41     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                  1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                                  0      186     373
ki1000108-CMC-V-BCS-2002   INDIA                          0                                  1        4     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                  0      159     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                  1       24     373
ki1000108-IRC              INDIA                          0                                  0      199     410
ki1000108-IRC              INDIA                          0                                  1       12     410
ki1000108-IRC              INDIA                          1                                  0      163     410
ki1000108-IRC              INDIA                          1                                  1       36     410
ki1000109-EE               PAKISTAN                       0                                  0      104     375
ki1000109-EE               PAKISTAN                       0                                  1        1     375
ki1000109-EE               PAKISTAN                       1                                  0      226     375
ki1000109-EE               PAKISTAN                       1                                  1       44     375
ki1000109-ResPak           PAKISTAN                       0                                  0      125     230
ki1000109-ResPak           PAKISTAN                       0                                  1       17     230
ki1000109-ResPak           PAKISTAN                       1                                  0       58     230
ki1000109-ResPak           PAKISTAN                       1                                  1       30     230
ki1000304b-SAS-CompFeed    INDIA                          0                                  0      760    1389
ki1000304b-SAS-CompFeed    INDIA                          0                                  1       46    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                  0      398    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                  1      185    1389
ki1000304b-SAS-FoodSuppl   INDIA                          0                                  0      180     400
ki1000304b-SAS-FoodSuppl   INDIA                          0                                  1        8     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                  0      144     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                  1       68     400
ki1017093-NIH-Birth        BANGLADESH                     0                                  0      289     541
ki1017093-NIH-Birth        BANGLADESH                     0                                  1        9     541
ki1017093-NIH-Birth        BANGLADESH                     1                                  0      192     541
ki1017093-NIH-Birth        BANGLADESH                     1                                  1       51     541
ki1017093b-PROVIDE         BANGLADESH                     0                                  0      406     615
ki1017093b-PROVIDE         BANGLADESH                     0                                  1        8     615
ki1017093b-PROVIDE         BANGLADESH                     1                                  0      169     615
ki1017093b-PROVIDE         BANGLADESH                     1                                  1       32     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                                  0      494     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                                  1       10     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                  0      192     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                  1       34     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  0     1740    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  1       31    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  0      176    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  1       71    2018
ki1101329-Keneba           GAMBIA                         0                                  0     1752    2271
ki1101329-Keneba           GAMBIA                         0                                  1       64    2271
ki1101329-Keneba           GAMBIA                         1                                  0      320    2271
ki1101329-Keneba           GAMBIA                         1                                  1      135    2271
ki1112895-Guatemala BSC    GUATEMALA                      0                                  0      216     274
ki1112895-Guatemala BSC    GUATEMALA                      0                                  1        0     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                  0       54     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                  1        4     274
ki1113344-GMS-Nepal        NEPAL                          0                                  0      352     590
ki1113344-GMS-Nepal        NEPAL                          0                                  1       19     590
ki1113344-GMS-Nepal        NEPAL                          1                                  0      129     590
ki1113344-GMS-Nepal        NEPAL                          1                                  1       90     590
ki1114097-CMIN             BANGLADESH                     0                                  0      118     252
ki1114097-CMIN             BANGLADESH                     0                                  1        1     252
ki1114097-CMIN             BANGLADESH                     1                                  0      109     252
ki1114097-CMIN             BANGLADESH                     1                                  1       24     252
ki1114097-CMIN             BRAZIL                         0                                  0      106     119
ki1114097-CMIN             BRAZIL                         0                                  1        0     119
ki1114097-CMIN             BRAZIL                         1                                  0       13     119
ki1114097-CMIN             BRAZIL                         1                                  1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                                  0      894    1018
ki1114097-CMIN             GUINEA-BISSAU                  0                                  1       24    1018
ki1114097-CMIN             GUINEA-BISSAU                  1                                  0       76    1018
ki1114097-CMIN             GUINEA-BISSAU                  1                                  1       24    1018
ki1114097-CMIN             PERU                           0                                  0      596     653
ki1114097-CMIN             PERU                           0                                  1        0     653
ki1114097-CMIN             PERU                           1                                  0       55     653
ki1114097-CMIN             PERU                           1                                  1        2     653
ki1114097-CONTENT          PERU                           0                                  0      200     215
ki1114097-CONTENT          PERU                           0                                  1        0     215
ki1114097-CONTENT          PERU                           1                                  0       15     215
ki1114097-CONTENT          PERU                           1                                  1        0     215
ki1119695-PROBIT           BELARUS                        0                                  0    15356   16596
ki1119695-PROBIT           BELARUS                        0                                  1       12   16596
ki1119695-PROBIT           BELARUS                        1                                  0     1216   16596
ki1119695-PROBIT           BELARUS                        1                                  1       12   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                                  0     8592   10693
ki1126311-ZVITAMBO         ZIMBABWE                       0                                  1      214   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                  0     1627   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                  1      260   10693
ki1135781-COHORTS          GUATEMALA                      0                                  0      731    1023
ki1135781-COHORTS          GUATEMALA                      0                                  1        4    1023
ki1135781-COHORTS          GUATEMALA                      1                                  0      251    1023
ki1135781-COHORTS          GUATEMALA                      1                                  1       37    1023
ki1135781-COHORTS          INDIA                          0                                  0     4367    6897
ki1135781-COHORTS          INDIA                          0                                  1      112    6897
ki1135781-COHORTS          INDIA                          1                                  0     1759    6897
ki1135781-COHORTS          INDIA                          1                                  1      659    6897
ki1135781-COHORTS          PHILIPPINES                    0                                  0     2080    2809
ki1135781-COHORTS          PHILIPPINES                    0                                  1       73    2809
ki1135781-COHORTS          PHILIPPINES                    1                                  0      503    2809
ki1135781-COHORTS          PHILIPPINES                    1                                  1      153    2809
ki1148112-LCNI-5           MALAWI                         0                                  0      683     796
ki1148112-LCNI-5           MALAWI                         0                                  1        2     796
ki1148112-LCNI-5           MALAWI                         1                                  0      101     796
ki1148112-LCNI-5           MALAWI                         1                                  1       10     796
kiGH5241-JiVitA-3          BANGLADESH                     0                                  0     8689   17274
kiGH5241-JiVitA-3          BANGLADESH                     0                                  1      840   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                  0     5339   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                  1     2406   17274
kiGH5241-JiVitA-4          BANGLADESH                     0                                  0     3354    5263
kiGH5241-JiVitA-4          BANGLADESH                     0                                  1      124    5263
kiGH5241-JiVitA-4          BANGLADESH                     1                                  0     1344    5263
kiGH5241-JiVitA-4          BANGLADESH                     1                                  1      441    5263


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/079f58e3-75a8-4467-badc-07835772dcf6/6f118409-f533-4c43-9d9c-8e5cf1abb339/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/079f58e3-75a8-4467-badc-07835772dcf6/6f118409-f533-4c43-9d9c-8e5cf1abb339/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/079f58e3-75a8-4467-badc-07835772dcf6/6f118409-f533-4c43-9d9c-8e5cf1abb339/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/079f58e3-75a8-4467-badc-07835772dcf6/6f118409-f533-4c43-9d9c-8e5cf1abb339/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0587560   0.0263752   0.0911369
ki1000108-IRC              INDIA                          1                    NA                0.1803243   0.1262574   0.2343912
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1161846   0.0614579   0.1709113
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3458727   0.2458170   0.4459285
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0523262   0.0401361   0.0645163
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3268966   0.3070211   0.3467722
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0425532   0.0136640   0.0714424
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3207547   0.2578442   0.3836653
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0302013   0.0107524   0.0496503
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2098765   0.1586286   0.2611245
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0193237   0.0060525   0.0325948
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1592040   0.1085836   0.2098244
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0202813   0.0080209   0.0325416
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1454161   0.0983456   0.1924867
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0174878   0.0113781   0.0235975
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2803680   0.2232791   0.3374568
ki1101329-Keneba           GAMBIA                         0                    NA                0.0354741   0.0268979   0.0440503
ki1101329-Keneba           GAMBIA                         1                    NA                0.2864241   0.2368105   0.3360377
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0510332   0.0285505   0.0735159
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4062875   0.3406580   0.4719169
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0260636   0.0157408   0.0363864
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2274792   0.1427439   0.3122146
ki1119695-PROBIT           BELARUS                        0                    NA                0.0008020   0.0000535   0.0015505
ki1119695-PROBIT           BELARUS                        1                    NA                0.0095252   0.0055582   0.0134921
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0739102   0.0698651   0.0779554
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2110204   0.1726547   0.2493862
ki1135781-COHORTS          INDIA                          0                    NA                0.0328978   0.0286961   0.0370996
ki1135781-COHORTS          INDIA                          1                    NA                0.2751155   0.2411173   0.3091136
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0379611   0.0299015   0.0460207
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2265558   0.1707810   0.2823307
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0962269   0.0901632   0.1022907
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3846620   0.3657754   0.4035485
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0669610   0.0582139   0.0757080
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2868989   0.2439280   0.3298697


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0876266   0.0759950   0.0992582
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0471513   0.0341242   0.0601783
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0443281   0.0404267   0.0482294
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.069034    1.638157    5.749737
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.976923    1.711620    5.177594
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  6.247285    4.928462    7.919017
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  7.537735    3.718279   15.280577
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  6.949245    3.490055   13.837033
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.238806    3.865305   17.560819
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  7.169969    3.611037   14.236482
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.032228   10.699932   24.021867
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  8.074174    5.999689   10.865943
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  7.961239    4.982379   12.721096
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  8.727852    5.068466   15.029280
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 11.876718    5.276562   26.732640
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.855091    2.359538    3.454721
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  8.362721    7.001737    9.988251
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.968112    4.313631    8.257164
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.997446    3.693405    4.326516
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.284567    3.512782    5.225921


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki1000108-IRC              INDIA                          0                    NA                 0.0583171    0.0269637    0.0896706
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0881632    0.0416339    0.1346924
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1139805    0.0999485    0.1280125
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1474468    0.1083088    0.1865848
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0807044    0.0549555    0.1064533
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0457170    0.0278436    0.0635904
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0399927    0.0244317    0.0555537
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0330573    0.0251047    0.0410100
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0521525    0.0425103    0.0617946
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1337126    0.1045171    0.1629080
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0210877    0.0119119    0.0302635
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0006441    0.0002325    0.0010558
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0295822   -0.0333985   -0.0257658
ki1135781-COHORTS          INDIA                          0                    NA                 0.0788899    0.0719965    0.0857833
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0424946    0.0338521    0.0511371
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0916855    0.0853184    0.0980527
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0403922    0.0312311    0.0495534


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki1000108-IRC              INDIA                          0                    NA                 0.4981256    0.1944498    0.6873218
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.4314369    0.1763733    0.6075115
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.6853633    0.6225617    0.7377154
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.7760358    0.5768128    0.8814710
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.7276846    0.5090700    0.8489485
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.7028985    0.4528294    0.8386805
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.6635152    0.4296021    0.8015034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6540164    0.5378956    0.7409576
ki1101329-Keneba           GAMBIA                         0                    NA                 0.5951673    0.5070405    0.6675397
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.7237653    0.5902495    0.8137754
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.4472345    0.2705742    0.5811093
ki1119695-PROBIT           BELARUS                        0                    NA                 0.4454140    0.2043962    0.6134186
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.6673460   -0.7962630   -0.5476814
ki1135781-COHORTS          INDIA                          0                    NA                 0.7057115    0.6690009    0.7383507
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.5281743    0.4377210    0.6040765
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4879162    0.4589755    0.5153088
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3762555    0.3019112    0.4426823
