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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female     13145   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male       13522   26667
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      8222   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        8531   16753
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      4136    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        4429    8565
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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9fd74c69-7367-449c-9956-7bb45fe821c7/57dbb393-2aeb-47bf-b3ab-e2a5560cbae6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2007887   -1.4077503   -0.9938270
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5701985   -1.0149562   -0.1254409
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0075184   -1.4417589   -0.5732778
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5755694   -1.2290812    0.0779424
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9984396   -1.1767375   -0.8201416
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5289471   -0.7761830   -0.2817112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4401151   -1.7311259   -1.1491042
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8284127   -1.1186523   -0.5381731
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2352806   -0.4841291    0.0135678
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -2.0729565   -2.3182353   -1.8276777
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.6103600   -1.3213771    0.1006571
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4174969   -1.5152638   -1.3197299
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8832121   -1.0104840   -0.7559402
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8375589   -0.9453054   -0.7298123
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8825652   -0.9833567   -0.7817738
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0055868   -0.0909443    0.0797707
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0613021   -1.1757948   -0.9468094
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.2712895   -2.3775803   -0.1649987
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.6987034    1.5342720    1.8631347
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4460083   -0.4757724   -0.4162443
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1960808    0.0773722    0.3147894
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6310519   -0.6709962   -0.5911076
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1662417   -0.2231463   -0.1093371
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1490169   -1.1820439   -1.1159899
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5072541   -1.5747922   -1.4397161
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0587177   -1.2078377   -0.9095977
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1507053   -0.0418580    0.3432686
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0958159   -1.2357812   -0.9558505
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6932393   -0.8536264   -0.5328522
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0906686   -1.2329460   -0.9483913
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9948866   -1.1713422   -0.8184310
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2656622   -1.4356225   -1.0957020
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2581113   -1.4465212   -1.0697015
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1052870   -1.3101973   -0.9003768
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.9838017   -2.1416656   -1.8259379
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.7571807   -2.0208890   -1.4934724
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4892038   -1.5676877   -1.4107199
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -2.0374430   -2.2047327   -1.8701532
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3304574   -1.4501298   -1.2107850
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0354117   -1.1363127   -0.9345107
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1478522   -1.2477409   -1.0479636
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4380682   -0.5044655   -0.3716709
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8613629   -0.9257718   -0.7969540
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4438699   -1.5854351   -1.3023047
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3089920   -1.4116965   -1.2062874
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.7266962   -1.9117621   -1.5416303
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.5400843    0.3436250    0.7365435
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8276564    0.7266941    0.9286187
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7621030   -0.7971539   -0.7270520
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7062304   -1.8001336   -1.6123271
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9401588   -0.9785018   -0.9018159
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9995147   -1.0579781   -0.9410513
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4611031   -1.5508820   -1.3713242
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2373045   -1.2653185   -1.2092906
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2654058   -1.3140857   -1.2167259
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9263179   -2.1069959   -1.7456399
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2144353   -0.0003844    0.4292549
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7267338   -1.8898471   -1.5636204
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2606313   -1.4367580   -1.0845046
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5704482   -1.7468948   -1.3940015
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4514204   -1.6361156   -1.2667253
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5248640   -2.7140726   -2.3356554
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4359218   -2.5622129   -2.3096306
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7516621   -1.8877967   -1.6155275
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.5874915   -2.7917804   -2.3832027
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.3650474   -2.5020215   -2.2280733
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6560574   -1.7727894   -1.5393254
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4268333   -1.5398299   -1.3138367
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5413512   -1.6122623   -1.4704401
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -2.0297115   -2.1485363   -1.9108867
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.4506598   -2.6290460   -2.2722736
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.1905257   -0.3975151    0.0164637
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.2361763   -0.1739394    0.6462920
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4476632   -1.5258925   -1.3694339
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.9418660   -3.0320399   -2.8516921
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.1740253   -2.2202898   -2.1277608
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3780172   -2.4424978   -2.3135365
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7683871   -1.8717296   -1.6650446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9910108   -2.0272751   -1.9547465
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7519411   -1.7981595   -1.7057227


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1729576   -1.2009629   -1.1449523
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0639173   -1.1916078   -0.9362269
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3355900   -1.3586765   -1.3125035
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0195844   -2.0472504   -1.9919183
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0826934   -0.0565628    0.2219497
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1058015   -0.3789151    0.1673122
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1960987   -0.5120864    0.1198890
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2777640   -0.7973897    0.2418617
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1156499   -0.0039990    0.2352987
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1027602   -0.2881864    0.0826660
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2845151    0.0831821    0.4858481
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1327829   -0.3583876    0.0928217
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0727606   -0.2541900    0.1086688
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.2120815    0.0228390    0.4013241
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3696400   -0.8475023    0.1082223
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0139249   -0.0617851    0.0339354
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0478076   -0.1420227    0.0464075
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0475432   -0.1267023    0.0316159
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0269293   -0.0982186    0.0443600
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0363904   -0.0258650    0.0986459
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0238559   -0.0993188    0.0516069
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.6098643   -1.4134715    0.1937429
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3717588   -0.3971315   -0.3463861
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0542641   -0.0753778   -0.0331503
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0663507   -0.1459889    0.0132874
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0388442   -0.0680554   -0.0096330
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0828075   -0.1242800   -0.0413349
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0239407   -0.0434903   -0.0043910
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0160367   -0.0660887    0.0340153
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1467733   -0.2626150   -0.0309317
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0996846   -0.2463692    0.0470000
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1155542   -0.2258017   -0.0053067
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1321800    0.0148738    0.2494862
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2374266   -0.3530473   -0.1218059
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0690307   -0.1993944    0.0613330
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1030827   -0.2236958    0.0175303
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1653395   -0.3070685   -0.0236104
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1291192   -0.2770006    0.0187622
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0997550   -0.2221238    0.0226137
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.3257720    0.1223900    0.5291540
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0873475    0.0231158    0.1515793
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1387587    0.0212309    0.2562866
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0769247   -0.1727843    0.0189349
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0562798   -0.1343875    0.0218279
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0508261   -0.1214857    0.0198335
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1053707   -0.1548795   -0.0558619
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0427740   -0.0913945    0.0058465
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1180309   -0.2278009   -0.0082609
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0418473   -0.1223827    0.0386882
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0577414   -0.2116655    0.0961826
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.8540060   -1.0296637   -0.6783482
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.7206578   -0.7504111   -0.6909044
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1058420   -0.1321407   -0.0795433
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1095033   -0.1809289   -0.0380776
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0566867   -0.0855535   -0.0278199
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1410577   -0.1853021   -0.0968133
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1990876   -0.2686718   -0.1295034
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0982855   -0.1159943   -0.0805767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0793882   -0.1130033   -0.0457731
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0525972   -0.1827250    0.0775306
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2073347   -0.3868652   -0.0278042
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1581120   -0.2758055   -0.0404186
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0512327   -0.1620158    0.0595503
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1840294   -0.3173346   -0.0507242
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1977602   -0.3353092   -0.0602112
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1202996   -0.2576390    0.0170398
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1229462   -0.2226970   -0.0231953
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0471154   -0.1504160    0.0561852
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.0824985   -0.2367574    0.0717604
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.1459895    0.0472227    0.2447564
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0536353   -0.0281226    0.1353931
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0144313   -0.0993312    0.0704686
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0360843   -0.0882748    0.0161062
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1422935    0.0553210    0.2292660
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0602906   -0.1675461    0.0469649
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.5056938   -0.6760592   -0.3353284
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3675811   -0.5216374   -0.2135247
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1579069   -0.2157680   -0.1000458
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0505078   -0.1176491    0.0166334
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.0542052    0.0216326    0.0867777
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0360974   -0.0834681    0.0112733
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1177614   -0.1978893   -0.0376335
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0285736   -0.0520681   -0.0050790
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0287807   -0.0593775    0.0018161
