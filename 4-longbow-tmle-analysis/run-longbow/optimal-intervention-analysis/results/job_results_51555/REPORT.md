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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female       119     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male         122     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Female        86     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Male          97     183
Birth       ki0047075b-MAL-ED          INDIA                          Female       108     203
Birth       ki0047075b-MAL-ED          INDIA                          Male          95     203
Birth       ki0047075b-MAL-ED          NEPAL                          Female        82     168
Birth       ki0047075b-MAL-ED          NEPAL                          Male          86     168
Birth       ki0047075b-MAL-ED          PERU                           Female       127     279
Birth       ki0047075b-MAL-ED          PERU                           Male         152     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female       128     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male         130     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        58     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male          60     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female        46      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male          42      88
Birth       ki1000108-IRC              INDIA                          Female       148     343
Birth       ki1000108-IRC              INDIA                          Male         195     343
Birth       ki1000109-EE               PAKISTAN                       Female         0       1
Birth       ki1000109-EE               PAKISTAN                       Male           1       1
Birth       ki1000109-ResPak           PAKISTAN                       Female         2       6
Birth       ki1000109-ResPak           PAKISTAN                       Male           4       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female        71     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male          95     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female        12      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male          16      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female         9      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male          14      23
Birth       ki1101329-Keneba           GAMBIA                         Female       696    1423
Birth       ki1101329-Keneba           GAMBIA                         Male         727    1423
Birth       ki1114097-CMIN             BANGLADESH                     Female         5       8
Birth       ki1114097-CMIN             BANGLADESH                     Male           3       8
Birth       ki1114097-CMIN             BRAZIL                         Female        57     111
Birth       ki1114097-CMIN             BRAZIL                         Male          54     111
Birth       ki1114097-CMIN             PERU                           Female         7      10
Birth       ki1114097-CMIN             PERU                           Male           3      10
Birth       ki1114097-CONTENT          PERU                           Female         2       2
Birth       ki1114097-CONTENT          PERU                           Male           0       2
Birth       ki1119695-PROBIT           BELARUS                        Female      7142   13824
Birth       ki1119695-PROBIT           BELARUS                        Male        6682   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female      6221   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male        6695   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Female       360     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male         396     756
Birth       ki1135781-COHORTS          INDIA                          Female      2952    6193
Birth       ki1135781-COHORTS          INDIA                          Male        3241    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Female      1360    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male        1539    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female      7412   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male        8297   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female       314     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male         369     683
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         182     368
6 months    ki1000108-IRC              INDIA                          Female       184     408
6 months    ki1000108-IRC              INDIA                          Male         224     408
6 months    ki1000109-EE               PAKISTAN                       Female       182     376
6 months    ki1000109-EE               PAKISTAN                       Male         194     376
6 months    ki1000109-ResPak           PAKISTAN                       Female       111     235
6 months    ki1000109-ResPak           PAKISTAN                       Male         124     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female       610    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male         724    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       202     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         178     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female       245     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male         291     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female       276     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male         306     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         353     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1025    2028
6 months    ki1101329-Keneba           GAMBIA                         Female      1011    2089
6 months    ki1101329-Keneba           GAMBIA                         Male        1078    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         146     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female       273     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male         290     563
6 months    ki1114097-CMIN             BANGLADESH                     Female       105     243
6 months    ki1114097-CMIN             BANGLADESH                     Male         138     243
6 months    ki1114097-CMIN             BRAZIL                         Female        55     108
6 months    ki1114097-CMIN             BRAZIL                         Male          53     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female       420     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male         429     849
6 months    ki1114097-CMIN             PERU                           Female       292     636
6 months    ki1114097-CMIN             PERU                           Male         344     636
6 months    ki1114097-CONTENT          PERU                           Female       106     215
6 months    ki1114097-CONTENT          PERU                           Male         109     215
6 months    ki1119695-PROBIT           BELARUS                        Female      8138   15757
6 months    ki1119695-PROBIT           BELARUS                        Male        7619   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      4020    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        4244    8264
6 months    ki1135781-COHORTS          GUATEMALA                      Female       456     963
6 months    ki1135781-COHORTS          GUATEMALA                      Male         507     963
6 months    ki1135781-COHORTS          INDIA                          Female      3284    6850
6 months    ki1135781-COHORTS          INDIA                          Male        3566    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    Female      1275    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male        1431    2706
6 months    ki1148112-LCNI-5           MALAWI                         Female       420     839
6 months    ki1148112-LCNI-5           MALAWI                         Male         419     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      8234   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        8550   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female      2408    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male        2425    4833
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         186     372
24 months   ki1000108-IRC              INDIA                          Female       185     409
24 months   ki1000108-IRC              INDIA                          Male         224     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       195     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         233     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       278     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         300     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         254     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ki1101329-Keneba           GAMBIA                         Female       823    1726
24 months   ki1101329-Keneba           GAMBIA                         Male         903    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          Female       232     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Male         266     498
24 months   ki1114097-CMIN             BANGLADESH                     Female       104     243
24 months   ki1114097-CMIN             BANGLADESH                     Male         139     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female       272     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male         279     551
24 months   ki1114097-CMIN             PERU                           Female       199     429
24 months   ki1114097-CMIN             PERU                           Male         230     429
24 months   ki1114097-CONTENT          PERU                           Female        83     164
24 months   ki1114097-CONTENT          PERU                           Male          81     164
24 months   ki1119695-PROBIT           BELARUS                        Female      2047    3971
24 months   ki1119695-PROBIT           BELARUS                        Male        1924    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       256     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         167     423
24 months   ki1135781-COHORTS          GUATEMALA                      Female       516    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Male         566    1082
24 months   ki1135781-COHORTS          INDIA                          Female      2521    5291
24 months   ki1135781-COHORTS          INDIA                          Male        2770    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    Female      1158    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male        1291    2449
24 months   ki1148112-LCNI-5           MALAWI                         Female       286     563
24 months   ki1148112-LCNI-5           MALAWI                         Male         277     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      4152    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        4451    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female      2367    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male        2368    4735


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
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/25619c9d-1b2b-48d0-9681-ad7b62f483b9/f150255c-3182-4f26-93fd-136cabe5c588/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8837465   -1.0911651   -0.6763278
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3313655    0.0689553    0.5937758
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2478775   -1.4488590   -1.0468960
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7687397   -0.9692686   -0.5682109
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0520226   -0.2105983    0.1065532
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1550396   -0.3697566    0.0596774
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.9111364    0.6179580    1.2043147
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2720214   -0.7606837    0.2166409
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9207703   -1.1770514   -0.6644892
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1697563   -0.4841521    0.1446395
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1487612   -1.6411403   -0.6563820
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4819128   -1.1518331    0.1880075
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.9021578    1.7885661    2.0157496
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.3626763   -0.6543290   -0.0710236
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1285478   -1.3486007   -0.9084950
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4224474   -0.4585615   -0.3863332
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9523614   -1.0965136   -0.8082091
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.0059419   -1.0478952   -0.9639887
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7174356   -0.7851007   -0.6497704
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7046086   -0.7301049   -0.6791123
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4084470   -0.5247879   -0.2921062
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0313488   -0.1563259    0.2190236
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0481791    0.8201169    1.2762413
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8492238   -1.0334230   -0.6650245
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2220597    0.0310501    0.4130693
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1449313    0.9663670    1.3234955
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6011967    0.3931380    0.8092555
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3531620    0.1712698    0.5350543
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3756618   -0.6004463   -0.1508772
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.6595750   -0.8389453   -0.4802047
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6585070   -0.8169483   -0.5000656
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0857383   -0.3527933    0.1813167
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6502378   -0.8110814   -0.4893942
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8809377   -1.0364390   -0.7254365
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4184601   -0.5440639   -0.2928562
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1721850   -0.2957198   -0.0486501
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0662430   -0.1840416    0.0515556
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1099116    0.0394130    0.1804103
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1967645   -0.2664017   -0.1271273
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0100685   -0.1539760    0.1338391
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5722977   -0.6853628   -0.4592326
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.5396352   -0.7432767   -0.3359937
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed           0.6835527    0.3895627    0.9775428
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0001126   -0.0981571    0.0983822
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.5582930    0.4330592    0.6835269
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.2012514    1.0307853    1.3717176
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8142758    0.7547914    0.8737602
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2849166    0.2476466    0.3221866
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2827437    0.1888574    0.3766299
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6600163   -0.6986913   -0.6213414
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2872167   -0.3470663   -0.2273672
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4377688    0.3345051    0.5410324
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5878151   -0.6148938   -0.5607363
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4173034   -0.4676972   -0.3669096
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8557743   -1.0144014   -0.6971473
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5245550    0.2371795    0.8119305
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9021982   -1.0589417   -0.7454547
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4177148   -0.5698000   -0.2656296
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0144918   -0.1713484    0.2003320
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2810433    0.0987089    0.4633776
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1146037   -0.2669238    0.0377165
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5350783   -0.6674591   -0.4026976
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8739459   -1.0070666   -0.7408252
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8638344   -1.0080166   -0.7196522
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8428017   -0.9619068   -0.7236966
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6823059   -0.8086799   -0.5559319
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7846992   -0.8513063   -0.7180922
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0524847   -1.1734413   -0.9315280
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7904295   -0.9387548   -0.6421043
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0817086   -0.1972890    0.0338718
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.7646918    0.6559312    0.8734523
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.8006009    0.6126019    0.9885999
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8969113    0.7747541    1.0190685
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0124955   -1.1315676   -0.8934235
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2553150   -0.3339133   -0.1767168
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5531432   -0.5922083   -0.5140780
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5964421   -0.6474254   -0.5454588
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1085457   -0.2187986    0.0017072
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2639391   -1.2952407   -1.2326375
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1854413   -1.2278045   -1.1430781


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             BRAZIL                         observed             observed           0.5889815    0.3767666    0.8011963
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3047138    0.2786437    0.3307839
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           observed             observed           0.6477778    0.5676685    0.7278870
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0793241   -0.2137379    0.0550898
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0725142   -0.0969160    0.2419445
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1787642    0.0456135    0.3119148
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1357245   -0.2729366    0.0014875
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0215617   -0.1423668    0.0992435
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0987605   -0.0448422    0.2423633
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1179160   -0.3203124    0.0844804
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3554786   -0.7283714    0.0174143
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0898128   -0.2507019    0.0710763
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1000028   -0.2380722    0.0380666
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2751674   -0.6979531    0.1476183
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2689568   -0.8594062    0.3214926
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1985387   -0.2798267   -0.1172508
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.2294331    0.0168343    0.4420318
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0177991   -0.0408871    0.0052890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0926951   -0.1176086   -0.0677815
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1097815   -0.2157275   -0.0038355
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0211963   -0.0078544    0.0502470
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0252895   -0.0746186    0.0240395
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0194909   -0.0346780   -0.0043039
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0401308   -0.0454055    0.1256671
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1711448   -0.3041233   -0.0381663
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0764566   -0.2399155    0.0870023
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1458269    0.0203097    0.2713440
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1110145   -0.2352949    0.0132659
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0905357   -0.2027809    0.0217095
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0591232   -0.2130323    0.0947859
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1638892    0.0320199    0.2957585
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1270149   -0.2808316    0.0268019
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0606453   -0.0645884    0.1858790
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0627696   -0.1805225    0.0549833
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0826234   -0.2793935    0.1141467
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0154706   -0.0591125    0.0281713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1312202   -0.2410480   -0.0213923
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0204501   -0.1015975    0.0606973
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0361856   -0.1162756    0.0439044
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0960053    0.0155902    0.1764204
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0289785   -0.0822358    0.0242788
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0121422   -0.0398882    0.0641725
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0739449   -0.1828994    0.0350096
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0325010   -0.1210223    0.0560203
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0384101   -0.1624336    0.0856135
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0945712   -0.3115862    0.1224437
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0419206   -0.1209355    0.0370944
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.1138087    0.0252343    0.2023831
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1328196   -0.2536312   -0.0120081
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2353125   -0.2537570   -0.2168679
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0197972   -0.0059697    0.0455641
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0886627   -0.1633888   -0.0139365
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0308639   -0.0573148   -0.0044131
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0066266   -0.0454362    0.0321831
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0121597   -0.0594224    0.0837418
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0057011   -0.0226462    0.0112440
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0274979   -0.0063756    0.0613714
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0349489   -0.0869434    0.1568411
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0779277   -0.2724477    0.1165922
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0500925   -0.1582691    0.0580840
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0412674   -0.0679392    0.1504741
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1054087   -0.0071109    0.2179284
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1456584    0.0247350    0.2665818
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1646971    0.0396685    0.2897257
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0220722   -0.1244916    0.0803472
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.1281309    0.0352368    0.2210250
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0477447   -0.1550342    0.0595449
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0451394   -0.1252048    0.0349259
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0719557   -0.0229344    0.1668458
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0252298   -0.0745276    0.0240680
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0791017   -0.1724017    0.0141983
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0631096   -0.1883042    0.0620851
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0625352   -0.1519905    0.0269202
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.1169140   -0.2025185   -0.0313095
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.2337716   -0.3705971   -0.0969462
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2105678   -0.2551677   -0.1659679
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1684974   -0.2527481   -0.0842466
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0262654   -0.0827581    0.0302274
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0541806   -0.0835945   -0.0247666
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0135170   -0.0522076    0.0251735
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0606949   -0.0211887    0.1425784
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0338640   -0.0555325   -0.0121955
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0376674   -0.0695315   -0.0058034
