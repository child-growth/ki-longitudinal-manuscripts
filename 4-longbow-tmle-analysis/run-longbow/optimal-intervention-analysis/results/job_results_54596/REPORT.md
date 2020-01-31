---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        sex       n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female       118     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male         113     231
Birth       ki0047075b-MAL-ED          BRAZIL                         Female        34      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Male          31      65
Birth       ki0047075b-MAL-ED          INDIA                          Female        23      47
Birth       ki0047075b-MAL-ED          INDIA                          Male          24      47
Birth       ki0047075b-MAL-ED          NEPAL                          Female        17      27
Birth       ki0047075b-MAL-ED          NEPAL                          Male          10      27
Birth       ki0047075b-MAL-ED          PERU                           Female       116     233
Birth       ki0047075b-MAL-ED          PERU                           Male         117     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female        58     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male          65     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        70     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male          55     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female        46      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male          46      92
Birth       ki1000108-IRC              INDIA                          Female       173     388
Birth       ki1000108-IRC              INDIA                          Male         215     388
Birth       ki1000109-EE               PAKISTAN                       Female       122     240
Birth       ki1000109-EE               PAKISTAN                       Male         118     240
Birth       ki1000109-ResPak           PAKISTAN                       Female        20      42
Birth       ki1000109-ResPak           PAKISTAN                       Male          22      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female       585    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male         667    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female       286     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male         322     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female       256     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male         283     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female       368     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male         364     732
Birth       ki1101329-Keneba           GAMBIA                         Female       740    1543
Birth       ki1101329-Keneba           GAMBIA                         Male         803    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          Female       328     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Male         368     696
Birth       ki1114097-CMIN             BANGLADESH                     Female        11      26
Birth       ki1114097-CMIN             BANGLADESH                     Male          15      26
Birth       ki1114097-CONTENT          PERU                           Female         2       2
Birth       ki1114097-CONTENT          PERU                           Male           0       2
Birth       ki1119695-PROBIT           BELARUS                        Female      7179   13890
Birth       ki1119695-PROBIT           BELARUS                        Male        6711   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female      6753   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male        7122   13875
Birth       ki1135781-COHORTS          GUATEMALA                      Female       404     852
Birth       ki1135781-COHORTS          GUATEMALA                      Male         448     852
Birth       ki1135781-COHORTS          INDIA                          Female      3195    6640
Birth       ki1135781-COHORTS          INDIA                          Male        3445    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    Female      1433    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Male        1617    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female     11043   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male       11412   22455
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female      1389    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male        1434    2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female       123     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male         118     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Female       103     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male         106     209
6 months    ki0047075b-MAL-ED          INDIA                          Female       130     236
6 months    ki0047075b-MAL-ED          INDIA                          Male         106     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female       110     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male         126     236
6 months    ki0047075b-MAL-ED          PERU                           Female       126     273
6 months    ki0047075b-MAL-ED          PERU                           Male         147     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female       126     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male         128     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       126     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         121     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         183     369
6 months    ki1000108-IRC              INDIA                          Female       183     407
6 months    ki1000108-IRC              INDIA                          Male         224     407
6 months    ki1000109-EE               PAKISTAN                       Female       182     373
6 months    ki1000109-EE               PAKISTAN                       Male         191     373
6 months    ki1000109-ResPak           PAKISTAN                       Female       115     239
6 months    ki1000109-ResPak           PAKISTAN                       Male         124     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female       609    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male         727    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       201     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         179     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female       245     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male         292     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female       288     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male         316     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         353     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1026    2029
6 months    ki1101329-Keneba           GAMBIA                         Female      1011    2089
6 months    ki1101329-Keneba           GAMBIA                         Male        1078    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         146     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female       273     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Male         291     564
6 months    ki1114097-CMIN             BANGLADESH                     Female       106     243
6 months    ki1114097-CMIN             BANGLADESH                     Male         137     243
6 months    ki1114097-CONTENT          PERU                           Female       106     215
6 months    ki1114097-CONTENT          PERU                           Male         109     215
6 months    ki1119695-PROBIT           BELARUS                        Female      8142   15761
6 months    ki1119695-PROBIT           BELARUS                        Male        7619   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      4201    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        4468    8669
6 months    ki1135781-COHORTS          GUATEMALA                      Female       456     961
6 months    ki1135781-COHORTS          GUATEMALA                      Male         505     961
6 months    ki1135781-COHORTS          INDIA                          Female      3287    6860
6 months    ki1135781-COHORTS          INDIA                          Male        3573    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    Female      1276    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Male        1432    2708
6 months    ki1148112-LCNI-5           MALAWI                         Female       420     839
6 months    ki1148112-LCNI-5           MALAWI                         Male         419     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      8249   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        8562   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female      2407    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male        2424    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female       104     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male         108     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female        79     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male          90     169
24 months   ki0047075b-MAL-ED          INDIA                          Female       122     227
24 months   ki0047075b-MAL-ED          INDIA                          Male         105     227
24 months   ki0047075b-MAL-ED          NEPAL                          Female       106     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male         122     228
24 months   ki0047075b-MAL-ED          PERU                           Female        91     201
24 months   ki0047075b-MAL-ED          PERU                           Male         110     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       118     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       106     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         108     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         185     371
24 months   ki1000108-IRC              INDIA                          Female       185     409
24 months   ki1000108-IRC              INDIA                          Male         224     409
24 months   ki1000109-EE               PAKISTAN                       Female        79     167
24 months   ki1000109-EE               PAKISTAN                       Male          88     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       195     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         234     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       279     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         299     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         254     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ki1101329-Keneba           GAMBIA                         Female       822    1725
24 months   ki1101329-Keneba           GAMBIA                         Male         903    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          Female       228     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Male         260     488
24 months   ki1114097-CMIN             BANGLADESH                     Female       104     242
24 months   ki1114097-CMIN             BANGLADESH                     Male         138     242
24 months   ki1114097-CONTENT          PERU                           Female        83     164
24 months   ki1114097-CONTENT          PERU                           Male          81     164
24 months   ki1119695-PROBIT           BELARUS                        Female      2081    4035
24 months   ki1119695-PROBIT           BELARUS                        Male        1954    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       808    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         832    1640
24 months   ki1135781-COHORTS          GUATEMALA                      Female       512    1070
24 months   ki1135781-COHORTS          GUATEMALA                      Male         558    1070
24 months   ki1135781-COHORTS          INDIA                          Female      2543    5337
24 months   ki1135781-COHORTS          INDIA                          Male        2794    5337
24 months   ki1135781-COHORTS          PHILIPPINES                    Female      1158    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male        1287    2445
24 months   ki1148112-LCNI-5           MALAWI                         Female       294     579
24 months   ki1148112-LCNI-5           MALAWI                         Male         285     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      4168    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        4464    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female      2376    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male        2376    4752


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/043c916e-a94e-40b3-990b-98e0980438e3/b8d4bf37-72a4-42ff-bcde-4a634f610dc0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2098818   -1.3950876   -1.0246761
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5646696   -1.0164153   -0.1129239
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0147755   -1.4468124   -0.5827385
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5814229   -1.3055244    0.1426785
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9988110   -1.1568843   -0.8407377
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5377078   -0.7855074   -0.2899082
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3953898   -1.7220462   -1.0687334
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8060790   -1.0897549   -0.5224030
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2314268   -0.4798443    0.0169908
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.8931089   -2.1775633   -1.6086545
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.6221483   -1.3550958    0.1107991
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4174969   -1.5152638   -1.3197299
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8849928   -1.0122339   -0.7577517
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8343097   -0.9421327   -0.7264867
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8846289   -0.9854606   -0.7837972
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0900758   -0.1798792   -0.0002724
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0612783   -1.1757502   -0.9468064
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.3874430   -2.6438521   -0.1310338
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.6983733    1.5338925    1.8628541
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4459044   -0.4756653   -0.4161435
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1964599    0.0779416    0.3149782
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6307512   -0.6707008   -0.5908016
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1660185   -0.2229407   -0.1090962
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5626771   -1.5865866   -1.5387677
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5068544   -1.5743499   -1.4393588
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0586171   -1.2079162   -0.9093179
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1509702   -0.0412616    0.3432021
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0914472   -1.2319478   -0.9509465
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5221824   -0.6723128   -0.3720521
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0988230   -1.2421448   -0.9555011
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9925889   -1.1689910   -0.8161869
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2691196   -1.4388627   -1.0993765
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2678487   -1.4574395   -1.0782580
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1139118   -1.3177434   -0.9100803
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.9819002   -2.1391449   -1.8246556
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.6628473   -1.9670962   -1.3585984
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4892038   -1.5676877   -1.4107199
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -2.0103972   -2.1750062   -1.8457881
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3291154   -1.4489599   -1.2092709
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0387777   -1.1390395   -0.9385159
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1495921   -1.2494593   -1.0497248
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4381816   -0.5045854   -0.3717778
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8618438   -0.9262823   -0.7974052
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4431563   -1.5840384   -1.3022741
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3100595   -1.4127002   -1.2074189
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.7284236   -1.9137218   -1.5431254
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.5414380    0.3462000    0.7366761
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8274800    0.7265428    0.9284173
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7621109   -0.7971567   -0.7270652
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7063456   -1.8002139   -1.6124773
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9400969   -0.9784253   -0.9017685
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9991759   -1.0576793   -0.9406725
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4613388   -1.5513395   -1.3713381
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2153631   -1.2434773   -1.1872490
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2654777   -1.3141776   -1.2167777
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9298140   -2.1122180   -1.7474099
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2179761    0.0068904    0.4290617
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7288767   -1.8905236   -1.5672298
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2483022   -1.4236818   -1.0729226
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5602066   -1.7389768   -1.3814365
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4474400   -1.6311515   -1.2637286
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5229476   -2.7113705   -2.3345247
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4375885   -2.5640497   -2.3111274
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7457147   -1.8821482   -1.6092812
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.5865610   -2.7896615   -2.3834606
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.3218947   -2.4604263   -2.1833630
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6620849   -1.7760137   -1.5481561
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4572959   -1.5698322   -1.3447595
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5425760   -1.6134982   -1.4716539
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.9349743   -2.0590205   -1.8109281
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.6104619   -2.7939718   -2.4269521
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.1974295   -0.4081160    0.0132570
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.2357973   -0.1715406    0.6431351
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4460921   -1.5243224   -1.3678618
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.9411300   -3.0310421   -2.8512178
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.1656605   -2.2122396   -2.1190815
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3780549   -2.4425251   -2.3135848
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7687267   -1.8721347   -1.6653187
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9833517   -2.0195655   -1.9471379
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7524432   -1.7986488   -1.7062375


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       ki1114097-CMIN             BANGLADESH                     observed             observed          -1.8811538   -2.5124807   -1.2498270
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5002724   -0.5208163   -0.4797285
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4314086   -1.6374838   -1.2253335
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8679450   -0.8935071   -0.8423828
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9968455   -1.0246180   -0.9690730
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5774356   -1.6272400   -1.5276311
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6055701   -1.6625562   -1.5485840
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9923738   -3.0565851   -2.9281626
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.1198201   -2.1524299   -2.0872104
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0136481   -2.0413552   -1.9859409
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0917866   -0.0452159    0.2287891
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1113304   -0.3904915    0.1678306
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1888416   -0.5016284    0.1239453
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2719104   -0.8455806    0.3017598
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1160213   -0.0025762    0.2346188
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0939995   -0.2800638    0.0920648
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2397898    0.0214634    0.4581162
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1551167   -0.3753395    0.0651061
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0766145   -0.2576644    0.1044354
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.0322339   -0.1539811    0.2184490
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3578517   -0.8525731    0.1368698
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0139249   -0.0617851    0.0339354
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0460269   -0.1402275    0.0481737
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0507924   -0.1300439    0.0284591
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0248656   -0.0962391    0.0465078
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1208794    0.0577067    0.1840521
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0238798   -0.0992870    0.0515274
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.4937109   -1.4125262    0.4251044
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3714288   -0.3966930   -0.3461645
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0543680   -0.0754790   -0.0332571
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0667298   -0.1462840    0.0128243
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0391449   -0.0683616   -0.0099281
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0830307   -0.1245144   -0.0415471
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0267377   -0.0425147   -0.0109607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0164365   -0.0665065    0.0336336
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1463760   -0.2624999   -0.0302522
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1033945   -0.2501080    0.0433190
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1200783   -0.2310669   -0.0090896
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0393995   -0.1595710    0.0807720
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2248431   -0.3404449   -0.1092413
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0707313   -0.2010016    0.0595390
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0996253   -0.2202085    0.0209578
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1556020   -0.2979013   -0.0133028
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1204944   -0.2678731    0.0268843
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1016565   -0.2236628    0.0203498
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.2314387    0.0225718    0.4403056
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0873475    0.0231158    0.1515793
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1117130   -0.0041851    0.2276110
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0782666   -0.1742520    0.0177187
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0529138   -0.1305439    0.0247163
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0490863   -0.1197768    0.0216043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1052572   -0.1547601   -0.0557544
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0422932   -0.0909314    0.0063451
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1187445   -0.2280183   -0.0094707
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0407797   -0.1212484    0.0396889
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0560140   -0.2100352    0.0980072
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.8553597   -1.0301793   -0.6805402
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.7204814   -0.7501266   -0.6908362
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1058340   -0.1321277   -0.0795404
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1093880   -0.1807560   -0.0380201
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0567486   -0.0856049   -0.0278923
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1413965   -0.1856720   -0.0971210
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1988519   -0.2685873   -0.1291165
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0977301   -0.1154598   -0.0800004
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0793164   -0.1129419   -0.0456908
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0485823   -0.1801732    0.0830087
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2118617   -0.3890100   -0.0347133
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1573127   -0.2739985   -0.0406269
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0592855   -0.1699048    0.0513338
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1922643   -0.3275579   -0.0569708
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1976195   -0.3350814   -0.0601575
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1226131   -0.2593703    0.0141440
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1212794   -0.2211094   -0.0214494
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0530628   -0.1565801    0.0504545
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.0834290   -0.2366359    0.0697779
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.1028368    0.0065333    0.1991403
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0596627   -0.0215322    0.1408576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0160313   -0.0683627    0.1004253
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0348595   -0.0870667    0.0173476
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0475563   -0.0409908    0.1361034
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed           0.0995115   -0.0131084    0.2121314
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.4987900   -0.6714048   -0.3261753
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3672021   -0.5175811   -0.2168230
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1594780   -0.2173411   -0.1016150
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0512439   -0.1181650    0.0156773
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.0458404    0.0132281    0.0784527
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0360596   -0.0834267    0.0113076
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1174219   -0.1976175   -0.0372262
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0302963   -0.0538268   -0.0067658
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0282786   -0.0588602    0.0023030
