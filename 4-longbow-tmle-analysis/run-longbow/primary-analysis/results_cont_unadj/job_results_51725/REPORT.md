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

unadjusted

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
![](/tmp/0c0f0bca-3196-4500-89b1-7022c3230f8d/ef6a255a-9144-4004-9217-1831d6251b25/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0c0f0bca-3196-4500-89b1-7022c3230f8d/ef6a255a-9144-4004-9217-1831d6251b25/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0c0f0bca-3196-4500-89b1-7022c3230f8d/ef6a255a-9144-4004-9217-1831d6251b25/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.7342857   -0.8345835   -0.6339879
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.6487234   -2.8091088   -2.4883380
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.5022941   -0.6283378   -0.3762504
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -2.8547619   -3.1535277   -2.5559961
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.6926590   -0.8032564   -0.5820615
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -2.6775758   -2.8610113   -2.4941402
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4665161   -0.5899221   -0.3431101
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -2.7961111   -3.1049379   -2.4872843
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.6953755   -0.7871435   -0.6036075
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -2.6947059   -2.9365801   -2.4528317
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.5014957   -0.6095402   -0.3934513
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -2.6078571   -2.8937962   -2.3219181
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5867619   -0.7416196   -0.4319042
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.9583333   -3.4713410   -2.4453257
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.6186486   -0.7717240   -0.4655733
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5693750   -2.9130892   -2.2256608
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0484548   -0.0897334    0.1866430
Birth       ki1000108-IRC              INDIA                          1                    NA                -3.0253333   -3.3364760   -2.7141906
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.9625532   -1.0646029   -0.8605035
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.7191304   -2.8993162   -2.5389447
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.7318182   -1.0404321   -0.4232043
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.7740000   -3.0567771   -2.4912229
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.2067101    0.1533197    0.2601004
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -3.0362195   -3.2739947   -2.7984443
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -0.4085714   -1.4766014    0.6594585
Birth       ki1114097-CMIN             BANGLADESH                     1                    NA                -3.7300000   -4.5650701   -2.8949299
Birth       ki1114097-CMIN             BRAZIL                         0                    NA                 0.1989091    0.0282832    0.3695350
Birth       ki1114097-CMIN             BRAZIL                         1                    NA                -3.0500000   -3.5786844   -2.5213156
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3344473    1.1741627    1.4947320
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -2.4393939   -2.4568030   -2.4219849
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2344152   -0.2515126   -0.2173178
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.8087151   -2.8490681   -2.7683621
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3083042    0.2366931    0.3799154
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.7346000   -2.9701783   -2.4990217
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.3925051   -0.4161172   -0.3688931
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -2.7181061   -2.7653506   -2.6708615
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0878589   -0.1212465   -0.0544713
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.7168984   -2.8178064   -2.6159904
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.9651917   -0.9793245   -0.9510589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.8514468   -2.8714507   -2.8314430
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.9825739   -1.0524406   -0.9127073
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.6967611   -2.7778258   -2.6156965
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0107261   -1.1185195   -0.9029326
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.2154274   -2.5235199   -1.9073348
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1215248   -0.0261536    0.2692032
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.5801587   -1.0552995   -0.1050180
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0403130   -1.1539542   -0.9266718
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -2.1298718   -2.4226977   -1.8370459
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4221611   -0.5283364   -0.3159858
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.6362346   -1.9663113   -1.3061578
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.1663040   -1.2690519   -1.0635562
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -2.4550000   -2.7194635   -2.1905365
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9846106   -1.1131811   -0.8560401
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7848667   -2.2410827   -1.3286506
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1850481   -1.3051862   -1.0649099
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.2938462   -2.5848455   -2.0028468
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.2230518   -1.3725803   -1.0735233
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.2360274   -2.5490677   -1.9229871
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1110295   -1.2447773   -0.9772818
6 months    ki1000108-IRC              INDIA                          1                    NA                -2.2026449   -2.6056272   -1.7996627
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -1.7220122   -1.8428678   -1.6011566
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -3.1346032   -3.3236101   -2.9455962
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.1960983   -1.4365314   -0.9556651
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -1.9800269   -2.3397939   -1.6202599
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.0616872   -1.1392747   -0.9840998
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.3102198   -2.3830398   -2.2373998
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.2529741   -1.3452746   -1.1606737
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.9108784   -3.0518672   -2.7698896
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.2254959   -1.3145037   -1.1364882
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.3745882   -2.5733760   -2.1758005
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9861217   -1.0628272   -0.9094163
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.9673333   -2.1895225   -1.7451442
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.0452121   -1.1171408   -0.9732834
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.1209804   -2.2832303   -1.9587305
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4614458   -0.5102559   -0.4126357
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6583093   -1.8414454   -1.4751733
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8056612   -0.8528140   -0.7585084
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.8499041   -2.0116353   -1.6881730
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.1775804   -1.2687879   -1.0863729
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.7960563   -2.9502510   -2.6418617
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1788624   -1.2512307   -1.1064942
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.6416102   -2.8651634   -2.4180569
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.3203091   -1.4613535   -1.1792646
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.5462138   -2.7458030   -2.3466246
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.4095544   -0.4791923   -0.3399164
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -2.0889333   -2.3008271   -1.8770396
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.4358815   -0.5133477   -0.3584154
6 months    ki1114097-CMIN             PERU                           1                    NA                -1.9760937   -2.2646851   -1.6875024
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1729653   -0.3445797   -0.0013509
6 months    ki1114097-CONTENT          PERU                           1                    NA                -1.8566111   -2.2829086   -1.4303136
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1205866    0.0224337    0.2187395
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -1.5395736   -1.6498783   -1.4292689
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7994554   -0.8260234   -0.7728874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.6914134   -1.7742207   -1.6086061
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.5932756   -1.6592132   -1.5273381
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.9997368   -3.1402084   -2.8592653
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.8311028   -0.8581032   -0.8041025
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -2.2313424   -2.3115217   -2.1511631
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.0651959   -1.1069697   -1.0234221
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.3736538   -2.5248430   -2.2224647
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -1.0559623   -1.1128502   -0.9990744
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -2.6965696   -2.7673361   -2.6258030
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.9588997   -0.9822945   -0.9355048
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1356482   -2.1653988   -2.1058977
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.0066633   -1.0434335   -0.9698931
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.2113164   -2.2712310   -2.1514018
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.8172067   -1.9486983   -1.6857151
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.6260606   -2.9132221   -2.3388991
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0847386   -0.0912644    0.2607416
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.3684375   -0.8604784    0.1236034
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.7275789   -1.8570426   -1.5981153
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -2.4529730   -2.7849218   -2.1210242
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.1645545   -1.2825975   -1.0465114
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -2.1350000   -2.5187139   -1.7512861
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.6452299   -1.7645688   -1.5258910
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.4259259   -2.7961936   -2.0556583
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.5880093   -1.7288473   -1.4471712
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.9647727   -2.4199453   -1.5096002
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5091436   -2.6550493   -2.3632380
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.1365152   -3.4201375   -2.8528928
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.4788047   -2.5909314   -2.3666780
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.8784000   -3.0927368   -2.6640632
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7157274   -1.8150523   -1.6164025
24 months   ki1000108-IRC              INDIA                          1                    NA                -2.2965957   -2.5427351   -2.0504564
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -2.0096925   -2.1148723   -1.9045127
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -3.0016216   -3.2428197   -2.7604236
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5126448   -1.5972675   -1.4280221
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.2311864   -2.5151167   -1.9472562
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3240090   -1.4092656   -1.2387524
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.0988571   -2.3282827   -1.8694316
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.4801533   -1.5309359   -1.4293708
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -2.2888636   -2.4497110   -2.1280163
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8013728   -1.8876537   -1.7150919
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.6058170   -2.8631625   -2.3484715
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.2673856   -2.4094776   -2.1252937
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.9296629   -3.1399213   -2.7194045
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -1.3061333   -1.4043576   -1.2079091
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -2.7705446   -2.9596647   -2.5814244
24 months   ki1114097-CMIN             PERU                           0                    NA                -1.3116764   -1.4071710   -1.2161817
24 months   ki1114097-CMIN             PERU                           1                    NA                -2.6537791   -2.8035970   -2.5039612
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.5802041   -0.7542914   -0.4061168
24 months   ki1114097-CONTENT          PERU                           1                    NA                -1.6994118   -2.1533773   -1.2454462
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1286427   -0.4309165    0.1736310
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -1.1418182   -1.3649247   -0.9187117
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -2.2674719   -2.3981412   -2.1368027
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.8646535   -3.0837919   -2.6455151
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.6251213   -2.7005943   -2.5496482
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.3905136   -3.4914129   -3.2896142
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -1.7890211   -1.8226124   -1.7554297
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.7698440   -2.8613028   -2.6783852
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.3392771   -2.3848374   -2.2937167
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -3.2554815   -3.4248877   -3.0860753
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -1.4886340   -1.5727509   -1.4045170
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -2.5973515   -2.7155572   -2.4791458
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.7616239   -1.7913094   -1.7319384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.5728641   -2.6154486   -2.5302796
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5281625   -1.5649253   -1.4913998
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.3345501   -2.3932942   -2.2758060


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.9144377   -2.1036020   -1.7252734
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 -2.3524678   -2.6767331   -2.0282024
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 -1.9849168   -2.1991139   -1.7707197
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0                 -2.3295950   -2.6621653   -1.9970246
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -1.9993304   -2.2580281   -1.7406327
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -2.1063614   -2.4120324   -1.8006904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -2.3715714   -2.9074424   -1.8357004
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -1.9507264   -2.3269862   -1.5744665
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -3.0737881   -3.4142375   -2.7333388
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.7565772   -1.9656437   -1.5475108
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -2.0421818   -2.4607573   -1.6236064
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 -3.2429296   -3.4866253   -2.9992339
Birth       ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     1                    0                 -3.3214286   -4.6771683   -1.9656889
Birth       ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         1                    0                 -3.2489091   -3.8044453   -2.6933729
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -3.7738413   -3.9413773   -3.6063053
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -2.5742999   -2.6181255   -2.5304742
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 -3.0429042   -3.2891263   -2.7966822
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -2.3256009   -2.3784174   -2.2727845
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 -2.6290395   -2.7353276   -2.5227514
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.8862551   -1.9105967   -1.8619135
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.7141872   -1.8207078   -1.6076667
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.2047013   -1.5311067   -0.8782959
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.7016836   -1.1992453   -0.2041219
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -1.0895588   -1.4036628   -0.7754547
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -1.2140735   -1.5608066   -0.8673404
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -1.2886960   -1.5724178   -1.0049741
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.8002560   -1.2742428   -0.3262693
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.1087981   -1.4236215   -0.7939747
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -1.0129756   -1.3598949   -0.6660563
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -1.0916154   -1.5162130   -0.6670177
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -1.4125910   -1.6369338   -1.1882482
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.7839286   -1.2166415   -0.3512158
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.2485325   -1.3246483   -1.1724168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -1.6579042   -1.8264190   -1.4893895
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -1.1490923   -1.3668971   -0.9312875
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.9812116   -1.2162685   -0.7461547
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -1.0757683   -1.2532472   -0.8982894
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.1968636   -1.3863925   -1.0073346
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -1.0442429   -1.2127076   -0.8757782
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.6184759   -1.7976262   -1.4393257
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -1.4627477   -1.6977227   -1.2277728
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -1.2259047   -1.4703007   -0.9815087
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 -1.6793790   -1.9024225   -1.4563354
6 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 -1.5402122   -1.8390198   -1.2414046
6 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 -1.6836458   -2.1431902   -1.2241014
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -1.6601603   -1.7938742   -1.5264463
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.8919580   -0.9789230   -0.8049931
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -1.4064612   -1.5616385   -1.2512838
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -1.4002395   -1.4848429   -1.3156361
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -1.3084579   -1.4653120   -1.1516039
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -1.6406073   -1.7314046   -1.5498101
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.1767486   -1.2113970   -1.1421002
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.2046531   -1.2744298   -1.1348763
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.8088539   -1.1246890   -0.4930189
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.4531761   -0.9757479    0.0693958
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.7253940   -1.0816956   -0.3690924
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.9704455   -1.3719060   -0.5689851
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.7806960   -1.1697203   -0.3916717
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.3767635   -0.8532269    0.0997000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.6273715   -0.9463231   -0.3084199
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3995953   -0.6414892   -0.1577013
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.5808683   -0.8462925   -0.3154441
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.9919291   -1.2550627   -0.7287955
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.7185417   -1.0148141   -0.4222692
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.7748481   -1.0196026   -0.5300936
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.8087103   -0.9773838   -0.6400368
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.8044442   -1.0758684   -0.5330201
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.6622773   -0.9160463   -0.4085083
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 -1.4644112   -1.6775179   -1.2513046
24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 -1.3421027   -1.5197671   -1.1644383
24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 -1.1192077   -1.6054084   -0.6330070
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -1.0131755   -1.3454821   -0.6808688
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.5971816   -0.8523209   -0.3420422
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.7653923   -0.8913957   -0.6393889
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.9808229   -1.0782555   -0.8833904
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.9162044   -1.0916302   -0.7407787
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -1.1087175   -1.2537977   -0.9636374
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.8112402   -0.8587175   -0.7637629
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.8063876   -0.8730109   -0.7397643


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.3501112   -0.4471432   -0.2530792
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.2586483   -0.3691947   -0.1481019
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.3179721   -0.4233749   -0.2125693
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.2423856   -0.3541727   -0.1305985
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.2368545   -0.3177637   -0.1559453
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.2251073   -0.3105478   -0.1396668
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.3470592   -0.5152066   -0.1789118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3467958   -0.5155645   -0.1780271
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3564960   -0.4622064   -0.2507857
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.4320992   -0.6075135   -0.2566849
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.3781818   -0.6928017   -0.0635619
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.1725634   -0.2111614   -0.1339655
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -1.5329670   -2.6595527   -0.4063814
Birth       ki1114097-CMIN             BRAZIL                         0                    NA                -0.1412569   -0.2652554   -0.0172584
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0089698   -0.0134848   -0.0044548
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2665508   -0.2803879   -0.2527137
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1785742   -0.2287510   -0.1283974
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.2773910   -0.2965856   -0.2581963
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1611903   -0.1845066   -0.1378740
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6095490   -0.6257307   -0.5933673
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.5150903   -0.5830996   -0.4470811
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1949517   -0.2720287   -0.1178746
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0705041   -0.1281347   -0.0128735
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1800542   -0.2533431   -0.1067653
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1388982   -0.2022607   -0.0755358
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.1604969   -0.2221887   -0.0988052
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0787654   -0.1338952   -0.0236356
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1750734   -0.2459513   -0.1041954
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2003990   -0.2804624   -0.1203355
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1233767   -0.1819703   -0.0647830
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.4784582   -0.5804476   -0.3764688
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2068237   -0.3292677   -0.0843797
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.3401690   -0.3809527   -0.2993854
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.6457101   -0.7502670   -0.5411532
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1818861   -0.2313773   -0.1323949
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1009823   -0.1352155   -0.0667492
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1534662   -0.1909170   -0.1160155
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0819931   -0.1004793   -0.0635070
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0984758   -0.1190607   -0.0778908
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.3843204   -0.4733370   -0.2953037
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1532897   -0.1977689   -0.1088106
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.4641285   -0.5831827   -0.3450743
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.1980400   -0.2430103   -0.1530697
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.0773733   -0.1075223   -0.0472243
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1409564   -0.2143296   -0.0675831
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0135880   -0.0204428   -0.0067333
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0912926   -0.1019266   -0.0806587
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2224580   -0.2631566   -0.1817593
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.1657426   -0.1804014   -0.1510839
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0753765   -0.0899896   -0.0607633
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.6042284   -0.6673857   -0.5410711
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3541935   -0.3678152   -0.3405718
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3381307   -0.3626538   -0.3136077
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1259065   -0.1890135   -0.0627996
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0429042   -0.0962915    0.0104830
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1182360   -0.1860077   -0.0504644
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1106648   -0.1715419   -0.0497878
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.1048696   -0.1688390   -0.0409002
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0348269   -0.0810091    0.0113553
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0967442   -0.1545794   -0.0389090
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0805636   -0.1319887   -0.0291385
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0667501   -0.1021539   -0.0313464
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1711020   -0.2287276   -0.1134764
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0734731   -0.1085994   -0.0383467
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1055241   -0.1460202   -0.0650279
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0825119   -0.1032407   -0.0617830
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0822177   -0.1172547   -0.0471807
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.2435648   -0.3452297   -0.1418999
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.2684311   -0.3298168   -0.2070454
24 months   ki1114097-CMIN             PERU                           0                    NA                -0.2690462   -0.3311726   -0.2069199
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.1160154   -0.1886992   -0.0433316
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0027621   -0.0133078    0.0077837
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1319810   -0.1927822   -0.0711799
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2361089   -0.2803657   -0.1918521
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1177355   -0.1322234   -0.1032476
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0505880   -0.0633414   -0.0378346
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.3868065   -0.4532727   -0.3203402
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2510221   -0.2676685   -0.2343757
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2301056   -0.2517401   -0.2084710
