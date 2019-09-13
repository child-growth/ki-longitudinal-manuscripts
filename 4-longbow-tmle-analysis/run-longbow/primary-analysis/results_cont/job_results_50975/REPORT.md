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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              47     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0             170     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1              21     191
Birth       ki0047075b-MAL-ED          INDIA                          0             173     206
Birth       ki0047075b-MAL-ED          INDIA                          1              33     206
Birth       ki0047075b-MAL-ED          NEPAL                          0             155     173
Birth       ki0047075b-MAL-ED          NEPAL                          1              18     173
Birth       ki0047075b-MAL-ED          PERU                           0             253     287
Birth       ki0047075b-MAL-ED          PERU                           1              34     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             234     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              28     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             105     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              18     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              74      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              16      90
Birth       ki1000108-IRC              INDIA                          0             343     388
Birth       ki1000108-IRC              INDIA                          1              45     388
Birth       ki1000109-EE               PAKISTAN                       0               1       2
Birth       ki1000109-EE               PAKISTAN                       1               1       2
Birth       ki1000109-ResPak           PAKISTAN                       0               5       7
Birth       ki1000109-ResPak           PAKISTAN                       1               2       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             141     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              46     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     0              27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               5      27
Birth       ki1101329-Keneba           GAMBIA                         0            1459    1541
Birth       ki1101329-Keneba           GAMBIA                         1              82    1541
Birth       ki1114097-CMIN             BANGLADESH                     0               7      13
Birth       ki1114097-CMIN             BANGLADESH                     1               6      13
Birth       ki1114097-CMIN             BRAZIL                         0             110     115
Birth       ki1114097-CMIN             BRAZIL                         1               5     115
Birth       ki1114097-CMIN             PERU                           0              10      10
Birth       ki1114097-CMIN             PERU                           1               0      10
Birth       ki1114097-CONTENT          PERU                           0               2       2
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1119695-PROBIT           BELARUS                        0           13851   13884
Birth       ki1119695-PROBIT           BELARUS                        1              33   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12398   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1432   13830
Birth       ki1135781-COHORTS          GUATEMALA                      0             802     852
Birth       ki1135781-COHORTS          GUATEMALA                      1              50     852
Birth       ki1135781-COHORTS          INDIA                          0            5848    6640
Birth       ki1135781-COHORTS          INDIA                          1             792    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1             187    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           13275   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            6338   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             575     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             247     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             202     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              39     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0             188     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              21     209
6 months    ki0047075b-MAL-ED          INDIA                          0             197     236
6 months    ki0047075b-MAL-ED          INDIA                          1              39     236
6 months    ki0047075b-MAL-ED          NEPAL                          0             209     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              27     236
6 months    ki0047075b-MAL-ED          PERU                           0             239     273
6 months    ki0047075b-MAL-ED          PERU                           1              34     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             229     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             296     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              73     369
6 months    ki1000108-IRC              INDIA                          0             361     407
6 months    ki1000108-IRC              INDIA                          1              46     407
6 months    ki1000109-EE               PAKISTAN                       0             246     372
6 months    ki1000109-EE               PAKISTAN                       1             126     372
6 months    ki1000109-ResPak           PAKISTAN                       0             173     235
6 months    ki1000109-ResPak           PAKISTAN                       1              62     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             972    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             364    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             452     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             523     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              60     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             139    2029
6 months    ki1101329-Keneba           GAMBIA                         0            1892    2089
6 months    ki1101329-Keneba           GAMBIA                         1             197    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0             504     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1              59     563
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243
6 months    ki1114097-CMIN             BRAZIL                         0             104     108
6 months    ki1114097-CMIN             BRAZIL                         1               4     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0             748     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             100     848
6 months    ki1114097-CMIN             PERU                           0             605     637
6 months    ki1114097-CMIN             PERU                           1              32     637
6 months    ki1114097-CONTENT          PERU                           0             197     215
6 months    ki1114097-CONTENT          PERU                           1              18     215
6 months    ki1119695-PROBIT           BELARUS                        0           15632   15761
6 months    ki1119695-PROBIT           BELARUS                        1             129   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7446    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             849    8295
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     961
6 months    ki1135781-COHORTS          GUATEMALA                      1             152     961
6 months    ki1135781-COHORTS          INDIA                          0            6048    6860
6 months    ki1135781-COHORTS          INDIA                          1             812    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2552    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1             156    2708
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11751   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5060   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3475    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0             153     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              16     169
24 months   ki0047075b-MAL-ED          INDIA                          0             190     227
24 months   ki0047075b-MAL-ED          INDIA                          1              37     227
24 months   ki0047075b-MAL-ED          NEPAL                          0             202     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              26     228
24 months   ki0047075b-MAL-ED          PERU                           0             174     201
24 months   ki0047075b-MAL-ED          PERU                           1              27     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             216     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              22     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             297     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              75     372
24 months   ki1000108-IRC              INDIA                          0             362     409
24 months   ki1000108-IRC              INDIA                          1              47     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             355     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             518     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              59     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1101329-Keneba           GAMBIA                         0            1549    1725
24 months   ki1101329-Keneba           GAMBIA                         1             176    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0             448     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1              51     499
24 months   ki1114097-CMIN             BANGLADESH                     0             153     242
24 months   ki1114097-CMIN             BANGLADESH                     1              89     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0             450     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             101     551
24 months   ki1114097-CMIN             PERU                           0             343     429
24 months   ki1114097-CMIN             PERU                           1              86     429
24 months   ki1114097-CONTENT          PERU                           0             147     164
24 months   ki1114097-CONTENT          PERU                           1              17     164
24 months   ki1119695-PROBIT           BELARUS                        0            4024    4035
24 months   ki1119695-PROBIT           BELARUS                        1              11    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             356     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             101     457
24 months   ki1135781-COHORTS          GUATEMALA                      0             742    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1             331    1073
24 months   ki1135781-COHORTS          INDIA                          0            4699    5340
24 months   ki1135781-COHORTS          INDIA                          1             641    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2310    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1             135    2445
24 months   ki1148112-LCNI-5           MALAWI                         0             377     579
24 months   ki1148112-LCNI-5           MALAWI                         1             202     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5961    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2671    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            3396    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9dfd5509-3715-40d4-99f3-4630975579b4/00586939-5a0c-447d-9802-669adafca717/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9dfd5509-3715-40d4-99f3-4630975579b4/00586939-5a0c-447d-9802-669adafca717/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9dfd5509-3715-40d4-99f3-4630975579b4/00586939-5a0c-447d-9802-669adafca717/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.7343945   -0.8347848   -0.6340042
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.6645622   -2.8276326   -2.5014918
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.5041366   -0.6304595   -0.3778137
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -2.8581102   -3.1740865   -2.5421339
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.6942324   -0.8049765   -0.5834884
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -2.6564341   -2.8581124   -2.4547557
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4629109   -0.5868709   -0.3389509
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -2.6938909   -3.1076595   -2.2801224
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.6945707   -0.7864745   -0.6026669
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -2.6958907   -2.9666618   -2.4251196
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.5008732   -0.6088474   -0.3928990
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -2.4865512   -2.7950930   -2.1780094
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5844066   -0.7402574   -0.4285559
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0559316   -3.7070201   -2.4048430
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.6186522   -0.7727511   -0.4645533
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5990825   -2.9708962   -2.2272688
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0492704   -0.0890338    0.1875746
Birth       ki1000108-IRC              INDIA                          1                    NA                -2.9965045   -3.3124392   -2.6805699
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.9615123   -1.0672502   -0.8557745
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.7112430   -2.8879901   -2.5344959
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.7318182   -1.0404321   -0.4232043
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.7740000   -3.0567771   -2.4912229
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.2053721    0.1518887    0.2588555
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -3.0370498   -3.2779055   -2.7961942
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -0.4085714   -1.4766014    0.6594585
Birth       ki1114097-CMIN             BANGLADESH                     1                    NA                -3.7300000   -4.5650701   -2.8949299
Birth       ki1114097-CMIN             BRAZIL                         0                    NA                 0.1989091    0.0282832    0.3695350
Birth       ki1114097-CMIN             BRAZIL                         1                    NA                -3.0500000   -3.5786844   -2.5213156
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3340838    1.1734159    1.4947518
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -2.3889555   -2.4119083   -2.3660027
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2352111   -0.2523128   -0.2181095
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.8027432   -2.8442917   -2.7611946
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3068334    0.2351044    0.3785623
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.6928428   -2.9050524   -2.4806332
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.3926836   -0.4162946   -0.3690726
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -2.7140415   -2.7613408   -2.6667422
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0877000   -0.1210902   -0.0543097
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.7147257   -2.8151665   -2.6142850
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.9681562   -0.9823674   -0.9539450
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.8468395   -2.8668849   -2.8267942
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.9821025   -1.0520096   -0.9121954
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.6956328   -2.7776730   -2.6135925
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0104077   -1.1181523   -0.9026631
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.1561200   -2.4706266   -1.8416134
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1220652   -0.0257013    0.2698316
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.6231048   -1.1031714   -0.1430382
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0421117   -1.1561454   -0.9280780
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -2.1043474   -2.4064046   -1.8022903
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4234972   -0.5297551   -0.3172393
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5969990   -1.9570846   -1.2369134
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.1674489   -1.2702171   -1.0646807
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -2.4461064   -2.7228722   -2.1693406
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9842117   -1.1131362   -0.8552872
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7862450   -2.2179532   -1.3545367
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1764289   -1.2967543   -1.0561036
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.3068658   -2.6327441   -1.9809876
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.2255408   -1.3756760   -1.0754056
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.2344527   -2.5810428   -1.8878626
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1202142   -1.2541071   -0.9863213
6 months    ki1000108-IRC              INDIA                          1                    NA                -2.1430316   -2.5780384   -1.7080248
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -1.7230824   -1.8442776   -1.6018872
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -3.1177459   -3.3052961   -2.9301958
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.1965196   -1.4361374   -0.9569018
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -1.9740145   -2.3344154   -1.6136135
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.0565865   -1.1332183   -0.9799547
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.3127978   -2.3895982   -2.2359973
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.2514906   -1.3440011   -1.1589801
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.9127619   -3.0536858   -2.7718381
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.2248577   -1.3138901   -1.1358254
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.3454415   -2.5463747   -2.1445083
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9859401   -1.0625910   -0.9092892
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.9681459   -2.2003559   -1.7359359
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.0445929   -1.1165461   -0.9726396
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.1083919   -2.2727434   -1.9440403
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4624791   -0.5113234   -0.4136349
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6787252   -1.8630348   -1.4944156
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8049240   -0.8520418   -0.7578062
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.8896006   -2.0587243   -1.7204769
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.1766203   -1.2680047   -1.0852359
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.7746881   -2.9304721   -2.6189042
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1787668   -1.2510911   -1.1064425
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.6284375   -2.8440255   -2.4128495
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.3308544   -1.4724364   -1.1892724
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.5656991   -2.7659871   -2.3654111
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.4107326   -0.4804648   -0.3410004
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -2.0893971   -2.2927773   -1.8860169
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.4363994   -0.5138940   -0.3589049
6 months    ki1114097-CMIN             PERU                           1                    NA                -1.9680613   -2.2631439   -1.6729788
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1936059   -0.3652506   -0.0219612
6 months    ki1114097-CONTENT          PERU                           1                    NA                -1.6123387   -2.0528781   -1.1717994
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1205360    0.0223546    0.2187175
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -1.5347515   -1.6437613   -1.4257417
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8003967   -0.8269644   -0.7738290
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.6821048   -1.7651836   -1.5990260
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.5938762   -1.6598155   -1.5279369
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.9780261   -3.1147856   -2.8412665
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.8312596   -0.8582611   -0.8042582
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -2.2301053   -2.3105370   -2.1496736
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.0650037   -1.1068015   -1.0232059
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.3799796   -2.5276146   -2.2323445
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -1.0547986   -1.1119879   -0.9976094
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -2.6931206   -2.7632585   -2.6229828
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.9601802   -0.9836397   -0.9367207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1289277   -2.1583010   -2.0995545
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.0072117   -1.0440886   -0.9703348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.2103547   -2.2710216   -2.1496877
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.8142609   -1.9459324   -1.6825895
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.5518897   -2.8455852   -2.2581941
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0970279   -0.0781283    0.2721841
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.4592856   -1.1198368    0.2012656
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.7281035   -1.8577614   -1.5984456
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -2.4470428   -2.7787772   -2.1153085
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.1628787   -1.2810576   -1.0446999
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -2.0394916   -2.4322831   -1.6467001
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.6456703   -1.7651858   -1.5261548
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.4025377   -2.7965407   -2.0085348
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.5854643   -1.7264099   -1.4445186
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.9996705   -2.4717705   -1.5275705
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5097547   -2.6557069   -2.3638025
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.1937689   -3.4821751   -2.9053626
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.4840323   -2.5966683   -2.3713963
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.8431863   -3.0645937   -2.6217789
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7168393   -1.8163468   -1.6173317
24 months   ki1000108-IRC              INDIA                          1                    NA                -2.2575130   -2.4990251   -2.0160009
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -2.0130508   -2.1183473   -1.9077544
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -3.0642386   -3.3047543   -2.8237228
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5108767   -1.5955957   -1.4261576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.1801360   -2.5001360   -1.8601359
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3242750   -1.4094948   -1.2390551
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.1112019   -2.3464594   -1.8759444
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.4803845   -1.5312134   -1.4295557
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -2.2930730   -2.4669582   -2.1191877
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.7975030   -1.8840592   -1.7109468
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.5689834   -2.8206148   -2.3173521
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.2753141   -2.4177455   -2.1328827
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.9441463   -3.1564785   -2.7318141
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -1.3083034   -1.4065716   -1.2100351
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -2.7568580   -2.9485908   -2.5651251
24 months   ki1114097-CMIN             PERU                           0                    NA                -1.3128413   -1.4085616   -1.2171210
24 months   ki1114097-CMIN             PERU                           1                    NA                -2.6477017   -2.7982161   -2.4971874
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.5984704   -0.7732464   -0.4236944
24 months   ki1114097-CONTENT          PERU                           1                    NA                -1.5724410   -2.0566107   -1.0882714
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1287557   -0.4306358    0.1731244
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -1.0738455   -1.3606534   -0.7870376
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -2.2702211   -2.4011078   -2.1393343
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.8740305   -3.0949699   -2.6530911
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.6241802   -2.6995819   -2.5487785
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.3916494   -3.4930277   -3.2902711
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -1.7889656   -1.8225224   -1.7554087
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.7702976   -2.8613140   -2.6792811
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.3393160   -2.3848693   -2.2937627
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -3.2440377   -3.4116976   -3.0763778
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -1.4897904   -1.5745223   -1.4050586
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -2.5894013   -2.7065644   -2.4722382
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.7615400   -1.7913254   -1.7317547
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.5787033   -2.6208998   -2.5365067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5287928   -1.5655783   -1.4920073
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.3360580   -2.3953757   -2.2767402


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.9415385   -3.1064163   -0.7766606
Birth       ki1114097-CMIN             BRAZIL                         NA                   NA                 0.0576522   -0.1471825    0.2624869
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5747407   -1.5944667   -1.5550147
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4029220   -1.6085859   -1.1972581
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.6075943   -0.6832781   -0.5319106
6 months    ki1114097-CMIN             PERU                           NA                   NA                -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8907480   -0.9167182   -0.8647779
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9968455   -1.0246180   -0.9690730
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5626652   -1.6124881   -1.5128424
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -1.5745644   -1.6739586   -1.4751703
24 months   ki1114097-CMIN             PERU                           NA                   NA                -1.5807226   -1.6772768   -1.4841684
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.3994530   -2.5144490   -2.2844569
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8612302   -2.9255771   -2.7968833
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9067566   -1.9394274   -1.8740857
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0126460   -2.0403823   -1.9849097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7582681   -1.7937283   -1.7228079


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.9301677   -2.1220178   -1.7383176
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 -2.3539736   -2.6947267   -2.0132204
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 -1.9622016   -2.1933489   -1.7310543
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0                 -2.2309801   -2.6631108   -1.7988493
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -2.0013199   -2.2876066   -1.7150332
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -1.9856780   -2.3134859   -1.6578702
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -2.4715250   -3.1416616   -1.8013884
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -1.9804303   -2.3854792   -1.5753813
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -3.0457750   -3.3907277   -2.7008222
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.7497307   -1.9780860   -1.5213754
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -2.0421818   -2.4607573   -1.6236064
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 -3.2424219   -3.4892991   -2.9955447
Birth       ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     1                    0                 -3.3214286   -4.6771683   -1.9656889
Birth       ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         1                    0                 -3.2489091   -3.8044453   -2.6933729
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -3.7230393   -3.8922934   -3.5537852
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -2.5675320   -2.6124849   -2.5225791
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 -2.9996762   -3.2237615   -2.7755909
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -2.3213579   -2.3742273   -2.2684885
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 -2.6270257   -2.7328884   -2.5211631
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.8786833   -1.9031672   -1.8541995
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.7135303   -1.8208755   -1.6061851
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.1457123   -1.4793159   -0.8121086
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.7451700   -1.2469048   -0.2434351
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -1.0622357   -1.3857753   -0.7386961
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -1.1735018   -1.5483662   -0.7986374
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -1.2786575   -1.5739928   -0.9833222
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.8020333   -1.2525909   -0.3514756
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.1304369   -1.4775381   -0.7833357
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -1.0089119   -1.3881408   -0.6296830
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -1.0228174   -1.4780462   -0.5675885
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -1.3946636   -1.6176969   -1.1716302
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.7774949   -1.2115900   -0.3433998
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.2562112   -1.3364171   -1.1760054
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -1.6612714   -1.8299750   -1.4925677
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -1.1205838   -1.3405840   -0.9005836
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.9822058   -1.2267600   -0.7376517
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -1.0637990   -1.2432534   -0.8843445
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.2162461   -1.4067282   -1.0257639
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -1.0846766   -1.2601568   -0.9091965
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.5980678   -1.7792407   -1.4168949
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -1.4496708   -1.6771158   -1.2222257
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -1.2348447   -1.4805854   -0.9891040
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 -1.6786645   -1.8935563   -1.4637726
6 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 -1.5316619   -1.8368853   -1.2264386
6 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 -1.4187328   -1.8893013   -0.9481644
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -1.6552876   -1.7894113   -1.5211639
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.8817081   -0.9688712   -0.7945449
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -1.3841499   -1.5361071   -1.2321927
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -1.3988456   -1.4836782   -1.3140130
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -1.3149759   -1.4682220   -1.1617297
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -1.6383220   -1.7290665   -1.5475775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.1687476   -1.2029707   -1.1345244
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.2031430   -1.2734317   -1.1328542
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.7376287   -1.0600036   -0.4152539
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.5563135   -1.2401374    0.1275104
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.7189393   -1.0747013   -0.3631773
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.8766129   -1.2877403   -0.4654855
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.7568675   -1.1686936   -0.3450413
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.4142062   -0.9047929    0.0763805
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.6840141   -1.0077459   -0.3602823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3591540   -0.6076795   -0.1106285
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.5406737   -0.8019916   -0.2793558
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -1.0511877   -1.3137349   -0.7886405
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.6692593   -0.9992548   -0.3392638
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.7869269   -1.0373632   -0.5364907
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.8126884   -0.9934964   -0.6318805
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.7714804   -1.0363193   -0.5066416
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.6688322   -0.9249771   -0.4126873
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 -1.4485546   -1.6643084   -1.2328007
24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 -1.3348604   -1.5135037   -1.1562172
24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 -0.9739707   -1.4922006   -0.4557408
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.9450898   -1.2988900   -0.5912895
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.6038094   -0.8606924   -0.3469265
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.7674692   -0.8937906   -0.6411478
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.9813320   -1.0781659   -0.8844982
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.9047217   -1.0784534   -0.7309900
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -1.0996109   -1.2445507   -0.9546712
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.8171632   -0.8638588   -0.7704676
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.8072652   -0.8742781   -0.7402524


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.3500024   -0.4469857   -0.2530192
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.2568058   -0.3672380   -0.1463736
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.3163986   -0.4220187   -0.2107786
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.2459909   -0.3591002   -0.1328815
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.2376593   -0.3190374   -0.1562811
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.2257299   -0.3115924   -0.1398674
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.3494145   -0.5204236   -0.1784054
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3467922   -0.5161587   -0.1774257
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3573117   -0.4632427   -0.2513806
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.4331401   -0.6069527   -0.2593275
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.3781818   -0.6928017   -0.0635619
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.1712254   -0.2098632   -0.1325876
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -1.5329670   -2.6595527   -0.4063814
Birth       ki1114097-CMIN             BRAZIL                         0                    NA                -0.1412569   -0.2652554   -0.0172584
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0086063   -0.0130864   -0.0041262
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2657549   -0.2795931   -0.2519166
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1771033   -0.2276346   -0.1265720
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.2772125   -0.2963985   -0.2580265
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1613492   -0.1846961   -0.1380024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6065845   -0.6228134   -0.5903557
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.5155617   -0.5836307   -0.4474927
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1952700   -0.2725743   -0.1179658
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0710444   -0.1286641   -0.0134248
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1782555   -0.2516837   -0.1048273
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1375621   -0.2005189   -0.0746053
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.1593521   -0.2211159   -0.0975883
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0791643   -0.1345120   -0.0238166
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1836925   -0.2560437   -0.1113414
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1979100   -0.2797012   -0.1161187
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1141920   -0.1724563   -0.0559277
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.4773881   -0.5792672   -0.3755089
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2064024   -0.3292964   -0.0835084
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.3452698   -0.3867050   -0.3038345
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.6471936   -0.7519934   -0.5423938
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1825243   -0.2322494   -0.1327992
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1011639   -0.1354093   -0.0669186
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1540854   -0.1916439   -0.1165270
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0809597   -0.0992310   -0.0626885
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0992130   -0.1198718   -0.0785541
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.3852805   -0.4747166   -0.2958444
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1533854   -0.1982867   -0.1084840
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.4535832   -0.5726296   -0.3345368
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.1968617   -0.2419621   -0.1517614
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.0768554   -0.1069467   -0.0467641
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1203158   -0.1942779   -0.0463537
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0135374   -0.0204035   -0.0066714
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0903513   -0.1009298   -0.0797729
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2218574   -0.2630021   -0.1807128
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.1655859   -0.1802410   -0.1509307
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0755687   -0.0901598   -0.0609776
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.6053921   -0.6690915   -0.5416926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3529131   -0.3665414   -0.3392847
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3375823   -0.3620793   -0.3130854
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1288523   -0.1930604   -0.0646441
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0551936   -0.1106480    0.0002609
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1177115   -0.1851893   -0.0502336
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1123406   -0.1745341   -0.0501470
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.1044292   -0.1687288   -0.0401297
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0373719   -0.0821794    0.0074357
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0961331   -0.1539839   -0.0382824
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0753360   -0.1275160   -0.0231560
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0656383   -0.1015471   -0.0297295
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1677436   -0.2252090   -0.1102783
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0752412   -0.1100974   -0.0403850
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1052581   -0.1458712   -0.0646450
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0822807   -0.1029796   -0.0615818
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0860875   -0.1211667   -0.0510083
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.2356363   -0.3374798   -0.1337928
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.2662610   -0.3276168   -0.2049053
24 months   ki1114097-CMIN             PERU                           0                    NA                -0.2678813   -0.3300916   -0.2056711
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0977492   -0.1703194   -0.0251789
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0026491   -0.0136829    0.0083848
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1292319   -0.1900822   -0.0683816
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2370500   -0.2813453   -0.1927547
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1177910   -0.1322110   -0.1033710
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0505491   -0.0633634   -0.0377347
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.3856500   -0.4530508   -0.3182492
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2511059   -0.2675825   -0.2346294
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2294753   -0.2511672   -0.2077834
