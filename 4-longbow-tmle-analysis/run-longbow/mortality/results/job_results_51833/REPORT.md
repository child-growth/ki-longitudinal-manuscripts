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
![](/tmp/5580c408-ab5c-4e72-a7b6-52c5dc38892a/f4b2ae24-c987-43a6-9b2c-0ee702993b4f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5580c408-ab5c-4e72-a7b6-52c5dc38892a/f4b2ae24-c987-43a6-9b2c-0ee702993b4f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5580c408-ab5c-4e72-a7b6-52c5dc38892a/f4b2ae24-c987-43a6-9b2c-0ee702993b4f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5580c408-ab5c-4e72-a7b6-52c5dc38892a/f4b2ae24-c987-43a6-9b2c-0ee702993b4f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0595046   0.0263878   0.0926215
ki1000108-IRC              INDIA                          1                    NA                0.1797472   0.1255793   0.2339151
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1159990   0.0620764   0.1699215
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3451833   0.2452026   0.4451640
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0523262   0.0401361   0.0645163
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3268966   0.3070211   0.3467722
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0425532   0.0136640   0.0714424
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3207547   0.2578442   0.3836653
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0302013   0.0107524   0.0496503
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2098765   0.1586286   0.2611245
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0193237   0.0060525   0.0325948
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1592040   0.1085836   0.2098244
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0203195   0.0079616   0.0326775
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1451249   0.0980107   0.1922390
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0175906   0.0114503   0.0237309
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2857341   0.2280024   0.3434659
ki1101329-Keneba           GAMBIA                         0                    NA                0.0356436   0.0270908   0.0441964
ki1101329-Keneba           GAMBIA                         1                    NA                0.2759396   0.2270051   0.3248741
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0514401   0.0289863   0.0738939
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4114436   0.3460929   0.4767944
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0260755   0.0157522   0.0363988
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2280208   0.1430996   0.3129419
ki1119695-PROBIT           BELARUS                        0                    NA                0.0008015   0.0000540   0.0015489
ki1119695-PROBIT           BELARUS                        1                    NA                0.0094811   0.0054823   0.0134799
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1068309   0.1014066   0.1122553
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2181262   0.1795201   0.2567324
ki1135781-COHORTS          INDIA                          0                    NA                0.0339779   0.0296632   0.0382925
ki1135781-COHORTS          INDIA                          1                    NA                0.2739420   0.2395745   0.3083095
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0485464   0.0402925   0.0568002
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2294781   0.1733636   0.2855926
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0899248   0.0846258   0.0952237
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3844625   0.3661301   0.4027950
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0470259   0.0387912   0.0552605
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2774195   0.2361004   0.3187385


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
ki1000108-IRC              INDIA                          1                    0                  3.020726    1.601657    5.697093
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.975744    1.722428    5.141031
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  6.247285    4.928462    7.919017
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  7.537735    3.718279   15.280577
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  6.949245    3.490055   13.837033
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.238806    3.865305   17.560819
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  7.142136    3.583051   14.236500
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.243604   10.851273   24.315550
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.741639    5.746072   10.430250
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  7.998504    5.028556   12.722553
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  8.744625    5.079569   15.054125
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 11.829301    5.301224   26.396236
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.041789    1.696821    2.456889
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  8.062368    6.745399    9.636462
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.726988    3.510411    6.365184
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.275379    3.965133    4.609900
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.899296    4.696936    7.409446


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki1000108-IRC              INDIA                          0                    NA                 0.0575685    0.0257242    0.0894128
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0883489    0.0424944    0.1342034
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1139805    0.0999485    0.1280125
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1474468    0.1083088    0.1865848
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0807044    0.0549555    0.1064533
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0457170    0.0278436    0.0635904
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0399544    0.0243594    0.0555495
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0329545    0.0250005    0.0409085
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0519830    0.0423358    0.0616302
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1333057    0.1041333    0.1624781
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0210757    0.0119019    0.0302496
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0006446    0.0002324    0.0010569
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0625029   -0.0676633   -0.0573425
ki1135781-COHORTS          INDIA                          0                    NA                 0.0778099    0.0708690    0.0847508
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0319093    0.0233255    0.0404931
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0979877    0.0923222    0.1036532
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0603274    0.0513612    0.0692935


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki1000108-IRC              INDIA                          0                    NA                 0.4917313    0.1795040    0.6851452
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.4323455    0.1832308    0.6054802
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.6853633    0.6225617    0.7377154
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.7760358    0.5768128    0.8814710
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.7276846    0.5090700    0.8489485
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.7028985    0.4528294    0.8386805
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.6628805    0.4265432    0.8018167
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6519828    0.5353203    0.7393560
ki1101329-Keneba           GAMBIA                         0                    NA                 0.5932335    0.5053576    0.6654978
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.7215629    0.5885691    0.8115669
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.4469814    0.2703654    0.5808456
ki1119695-PROBIT           BELARUS                        0                    NA                 0.4457693    0.2053231    0.6134635
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.4100066   -1.6126780   -1.2230570
ki1135781-COHORTS          INDIA                          0                    NA                 0.6960502    0.6582039    0.7297059
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.3966072    0.3048188    0.4762763
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.5214539    0.4974936    0.5442718
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.5619520    0.4925350    0.6218733
