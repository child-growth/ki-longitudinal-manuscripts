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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female       106     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male         109     215
Birth       ki0047075b-MAL-ED          BRAZIL                         Female        31      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Male          31      62
Birth       ki0047075b-MAL-ED          INDIA                          Female        22      45
Birth       ki0047075b-MAL-ED          INDIA                          Male          23      45
Birth       ki0047075b-MAL-ED          NEPAL                          Female        16      26
Birth       ki0047075b-MAL-ED          NEPAL                          Male          10      26
Birth       ki0047075b-MAL-ED          PERU                           Female       112     228
Birth       ki0047075b-MAL-ED          PERU                           Male         116     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female        56     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male          64     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        63     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male          52     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female        43      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male          43      86
Birth       ki1000108-IRC              INDIA                          Female       148     343
Birth       ki1000108-IRC              INDIA                          Male         195     343
Birth       ki1000109-EE               PAKISTAN                       Female        88     177
Birth       ki1000109-EE               PAKISTAN                       Male          89     177
Birth       ki1000109-ResPak           PAKISTAN                       Female        16      38
Birth       ki1000109-ResPak           PAKISTAN                       Male          22      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female       497    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male         606    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female       269     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male         306     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female       251     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male         281     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female       350     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male         357     707
Birth       ki1101329-Keneba           GAMBIA                         Female       703    1466
Birth       ki1101329-Keneba           GAMBIA                         Male         763    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          Female       297     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Male         344     641
Birth       ki1114097-CMIN             BANGLADESH                     Female         9      19
Birth       ki1114097-CMIN             BANGLADESH                     Male          10      19
Birth       ki1114097-CONTENT          PERU                           Female         2       2
Birth       ki1114097-CONTENT          PERU                           Male           0       2
Birth       ki1119695-PROBIT           BELARUS                        Female      7145   13830
Birth       ki1119695-PROBIT           BELARUS                        Male        6685   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female      6222   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male        6695   12917
Birth       ki1135781-COHORTS          GUATEMALA                      Female       360     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male         396     756
Birth       ki1135781-COHORTS          INDIA                          Female      2952    6193
Birth       ki1135781-COHORTS          INDIA                          Male        3241    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Female      1360    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male        1539    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female      8524   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male        9490   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female      1142    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male        1254    2396
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
6 months    ki1000109-EE               PAKISTAN                       Female       182     375
6 months    ki1000109-EE               PAKISTAN                       Male         193     375
6 months    ki1000109-ResPak           PAKISTAN                       Female       115     239
6 months    ki1000109-ResPak           PAKISTAN                       Male         124     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female       610    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male         724    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       202     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         178     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female       245     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male         292     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female       288     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male         315     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         353     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1025    2028
6 months    ki1101329-Keneba           GAMBIA                         Female      1011    2089
6 months    ki1101329-Keneba           GAMBIA                         Male        1078    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         146     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female       273     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Male         291     564
6 months    ki1114097-CMIN             BANGLADESH                     Female       105     243
6 months    ki1114097-CMIN             BANGLADESH                     Male         138     243
6 months    ki1114097-CONTENT          PERU                           Female       106     215
6 months    ki1114097-CONTENT          PERU                           Male         109     215
6 months    ki1119695-PROBIT           BELARUS                        Female      8138   15758
6 months    ki1119695-PROBIT           BELARUS                        Male        7620   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      4144    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        4361    8505
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
24 months   ki1000109-EE               PAKISTAN                       Female        80     168
24 months   ki1000109-EE               PAKISTAN                       Male          88     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       195     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         233     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       279     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         300     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         254     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ki1101329-Keneba           GAMBIA                         Female       823    1726
24 months   ki1101329-Keneba           GAMBIA                         Male         903    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          Female       227     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Male         260     487
24 months   ki1114097-CMIN             BANGLADESH                     Female       104     243
24 months   ki1114097-CMIN             BANGLADESH                     Male         139     243
24 months   ki1114097-CONTENT          PERU                           Female        83     164
24 months   ki1114097-CONTENT          PERU                           Male          81     164
24 months   ki1119695-PROBIT           BELARUS                        Female      2047    3972
24 months   ki1119695-PROBIT           BELARUS                        Male        1925    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       263     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         170     433
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
```

```
## Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 10 does not match with column 1 of item 1.
## Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 10 does not match with column 1 of item 1.
## 
## Error in self$compute_step() : Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 10 does not match with column 1 of item 1.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/59e9850e-6e2f-4a5f-a314-c23b9216f40a/fe720d96-0f53-4fdc-884b-ebb7a028ff18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8364810   -1.0579265   -0.6150356
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5577665    0.1053654    1.0101677
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9937039   -1.3854090   -0.6019989
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4955673   -0.9953062    0.0041715
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1832017   -0.3567089   -0.0096944
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2422795   -0.5696655    0.0851065
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8645939    0.5718501    1.1573377
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3255035   -0.8071370    0.1561300
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9224267   -1.1808112   -0.6640423
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.2738427   -0.5417040   -0.0059815
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1857421   -0.7661381    0.3946539
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5860150   -0.7620049   -0.4100251
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3695483   -1.5153837   -1.2237128
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2586569   -1.3620003   -1.1553136
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2286726   -1.3509040   -1.1064412
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.2143725   -1.3001875   -1.1285575
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0846237   -1.2219262   -0.9473212
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1273762   -1.3472881   -0.9074643
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4224664   -0.4585788   -0.3863540
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9504785   -1.0949365   -0.8060205
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9784835   -1.0194643   -0.9375027
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7183285   -0.7860818   -0.6505752
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7591568   -0.7844200   -0.7338936
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6663306   -0.7396716   -0.5929897
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0301723   -0.1576552    0.2179997
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0499331    0.8223440    1.2775222
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8922025   -1.0856832   -0.6987217
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2159234    0.0259127    0.4059341
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1421163    0.9639821    1.3202506
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4525591    0.2411903    0.6639279
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4038522    0.2085033    0.5992011
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3792969   -0.6034518   -0.1551419
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7489005   -0.9272592   -0.5705417
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.7018029   -0.8600698   -0.5435360
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0789657   -0.3380152    0.1800838
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6502378   -0.8110814   -0.4893942
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8787478   -1.0342002   -0.7232953
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5371928   -0.6641872   -0.4101984
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1714675   -0.2918364   -0.0510987
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1435734   -0.2530824   -0.0340644
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1093317    0.0388241    0.1798394
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2101166   -0.2790857   -0.1411476
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0060028   -0.1505250    0.1385194
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5743403   -0.6874953   -0.4611854
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.5300215   -0.7352142   -0.3248287
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.1981588    1.0280407    1.3682770
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8140040    0.7545092    0.8734988
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2934969    0.2575201    0.3294737
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2824688    0.1884101    0.3765276
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6598867   -0.6985488   -0.6212246
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3038587   -0.3637050   -0.2440123
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4101184    0.3075653    0.5126714
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5879253   -0.6150091   -0.5608414
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3973933   -0.4504596   -0.3443271
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9337285   -1.1076204   -0.7598365
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5485610    0.2597143    0.8374078
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9065581   -1.0639186   -0.7491975
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3462526   -0.5053698   -0.1871354
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0683909   -0.2452608    0.1084789
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3449904    0.1782781    0.5117027
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1049863   -0.2746950    0.0647224
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5287536   -0.6610395   -0.3964676
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8637317   -0.9821487   -0.7453146
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.8707613   -1.0711294   -0.6703931
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8641310   -1.0078711   -0.7203909
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8467396   -0.9650645   -0.7284148
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6657630   -0.7938480   -0.5376780
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7847654   -0.8514212   -0.7181096
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0595914   -1.1828423   -0.9363405
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7935786   -0.9417031   -0.6454541
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.8013155    0.6133005    0.9893304
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8959790    0.7733559    1.0186022
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0153998   -1.1339534   -0.8968462
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2542899   -0.3329455   -0.1756342
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5528458   -0.5919146   -0.5137770
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5962786   -0.6472571   -0.5453001
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1109118   -0.2241089    0.0022852
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2640333   -1.2953132   -1.2327534
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1855490   -1.2279347   -1.1431633


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       ki1000109-ResPak           PAKISTAN                       observed             observed          -0.3663158   -0.7677415    0.0351099
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2349454   -1.2972413   -1.1726496
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7747022   -0.8887874   -0.6606170
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -0.1641841   -0.3464247    0.0180565
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846038   -0.2354782   -0.1337293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3105514    0.2848767    0.3362262
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499404    0.3788501    0.5210308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1825404   -1.2814625   -1.0836183
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0477709   -0.1296526    0.0341109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1053794   -0.2498376    0.0390787
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1548633   -0.4742137    0.1644871
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0612595   -0.2254885    0.3480075
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2728942   -0.7254479    0.1796595
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1311841    0.0090398    0.2533285
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0496962   -0.1812342    0.2806266
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1021591   -0.2789166    0.0745983
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1393221   -0.4456458    0.1670016
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0881563   -0.2503654    0.0740527
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.0594624   -0.2510693    0.1321446
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1805737   -0.5212897    0.1601422
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0840303   -0.1273884   -0.0406722
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0196265   -0.0805243    0.1197773
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0398017   -0.1127322    0.0331287
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0154788   -0.1006355    0.0696779
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0205729   -0.0804789    0.0393330
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0318193   -0.1273605    0.0637219
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0174872   -0.0406900    0.0057157
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0930233   -0.1179452   -0.0681014
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1116643   -0.2177778   -0.0055509
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0062622   -0.0347066    0.0221821
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0243966   -0.0737937    0.0250005
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0186704   -0.0336112   -0.0037296
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0222962   -0.0743399    0.0297474
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1678486   -0.3007494   -0.0349478
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0778557   -0.2415199    0.0858084
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1842046    0.0509401    0.3174691
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1054926   -0.2283460    0.0173608
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0892348   -0.2006247    0.0221552
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0896194   -0.0630378    0.2422766
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1323691   -0.0021106    0.2668487
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1233798   -0.2766738    0.0299143
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1499707    0.0170071    0.2829344
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0728993   -0.1906641    0.0448654
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0852184   -0.2749698    0.1045330
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0154706   -0.0591125    0.0281713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1334101   -0.2433435   -0.0234768
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0897890    0.0031184    0.1764596
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0276231   -0.1064065    0.0511603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1733356    0.0937802    0.2528911
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0283985   -0.0816481    0.0248511
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0255129   -0.0266326    0.0776583
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0780106   -0.1873770    0.0313558
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0295013   -0.1181640    0.0591615
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0480238   -0.1731223    0.0770747
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1297271   -0.2498942   -0.0095599
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2347601   -0.2532067   -0.2163135
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0170545   -0.0089732    0.0430823
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0883879   -0.1632592   -0.0135165
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0309935   -0.0574367   -0.0045504
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0100154   -0.0293191    0.0493498
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0398220   -0.0315455    0.1111895
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0055909   -0.0225376    0.0113558
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0075878   -0.0262715    0.0414472
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1144360   -0.0071844    0.2360564
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0859378   -0.2806578    0.1087823
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0450939   -0.1539960    0.0638082
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0286597   -0.1352442    0.0779248
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1795891    0.0599967    0.2991815
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0640397   -0.0599146    0.1879940
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1597838    0.0341958    0.2853719
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0283970   -0.1308571    0.0740631
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.1179167    0.0261263    0.2097071
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.1412626   -0.2957134    0.0131883
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0474480   -0.1543836    0.0594875
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0461274   -0.1259463    0.0336915
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0554128   -0.0395828    0.1504084
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0251636   -0.0745010    0.0241738
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0767194   -0.1717680    0.0183293
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0599605   -0.1849175    0.0649966
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.2344862   -0.3710278   -0.0979446
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2085495   -0.2531773   -0.1639218
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1671406   -0.2499311   -0.0843501
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0272906   -0.0838264    0.0292453
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0544780   -0.0838892   -0.0250668
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0136806   -0.0523747    0.0250135
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0631409   -0.0185942    0.1448761
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0337698   -0.0554262   -0.0121134
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0375598   -0.0694372   -0.0056823
