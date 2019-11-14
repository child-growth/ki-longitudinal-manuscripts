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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female     10535   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male       11548   22083
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      8207   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        8519   16726
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      4120    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        4418    8538
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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

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
![](/tmp/ec2c9a9a-8eed-42ca-a1b5-035162e2f12c/195d0cbe-db89-4730-87ad-23a800b8c675/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8383548   -1.0590969   -0.6176128
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5288644    0.0749942    0.9827347
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8925412   -1.2857441   -0.4993383
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4903498   -0.9756607   -0.0050389
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2171495   -0.3922313   -0.0420678
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4767047   -0.8163135   -0.1370959
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8383389    0.5448039    1.1318740
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2982273   -0.7791141    0.1826595
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9202616   -1.1773240   -0.6631991
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.2663652   -0.5357906    0.0030602
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.2057602   -0.7875731    0.3760527
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5860150   -0.7620049   -0.4100251
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3873231   -1.5288801   -1.2457661
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2600734   -1.3635197   -1.1566270
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2665912   -1.3848690   -1.1483135
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.2142463   -1.3000696   -1.1284231
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0819319   -1.2195424   -0.9443213
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1274106   -1.3474622   -0.9073590
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4224701   -0.4585852   -0.3863550
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9468897   -1.0912525   -0.8025269
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9932282   -1.0348107   -0.9516457
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7172827   -0.7849896   -0.6495757
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7273609   -0.7515167   -0.7032050
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6676836   -0.7410933   -0.5942739
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0384579   -0.1497065    0.2266223
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0593412    0.8302726    1.2884097
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9198318   -1.0927275   -0.7469361
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2172992    0.0283458    0.4062526
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1504653    0.9719512    1.3289795
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6074529    0.3993442    0.8155616
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3755459    0.1859269    0.5651650
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3757013   -0.6017886   -0.1496140
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7071765   -0.8967465   -0.5176064
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.7018369   -0.8601368   -0.5435369
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0822473   -0.3417473    0.1772528
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6502378   -0.8110814   -0.4893942
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8739649   -1.0297638   -0.7181661
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4365382   -0.5658185   -0.3072579
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1696077   -0.2902862   -0.0489292
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0476772   -0.1628584    0.0675040
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1102148    0.0397799    0.1806498
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2215388   -0.2916995   -0.1513781
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0128845   -0.1566256    0.1308566
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5723545   -0.6853268   -0.4593821
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.5334608   -0.7380956   -0.3288260
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.2013261    1.0330479    1.3696043
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8139212    0.7542956    0.8735469
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2782078    0.2416712    0.3147444
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2826738    0.1885418    0.3768058
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6597967   -0.6984719   -0.6211215
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3230762   -0.3828868   -0.2632657
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4285132    0.3208478    0.5361786
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5874844   -0.6146577   -0.5603111
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3981288   -0.4504419   -0.3458157
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8484552   -1.0097501   -0.6871603
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5461458    0.2551148    0.8371768
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9039897   -1.0604989   -0.7474805
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3448542   -0.5034908   -0.1862177
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0905809   -0.0862393    0.2674011
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3030923    0.1317561    0.4744286
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1306159   -0.2895343    0.0283026
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5299643   -0.6615988   -0.3983299
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8867702   -1.0146155   -0.7589250
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.8774932   -1.0781556   -0.6768309
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9543638   -1.1017590   -0.8069687
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8464433   -0.9650215   -0.7278651
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5950996   -0.7171133   -0.4730859
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7859385   -0.8526462   -0.7192307
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0572214   -1.1802511   -0.9341917
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7935338   -0.9419360   -0.6451316
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.7989910    0.6115360    0.9864459
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8966635    0.7745645    1.0187624
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0150666   -1.1332151   -0.8969181
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2563740   -0.3351213   -0.1776267
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5531729   -0.5922351   -0.5141108
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6225069   -0.6743983   -0.5706155
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1781548   -0.2902008   -0.0661087
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2668736   -1.2981624   -1.2355849
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1855597   -1.2279336   -1.1431857


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9412093   -1.0864308   -0.7959878
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7501567   -0.7680049   -0.7323085
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7082698   -0.8347304   -0.5818092
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5427231    0.3906363    0.6948099
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5930207   -0.6125866   -0.5734549
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2994214   -1.3227674   -1.2760754
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1028545   -0.2465829    0.0408740
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1259612   -0.4474078    0.1954854
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0399033   -0.3337475    0.2539410
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2781117   -0.7214850    0.1652615
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1651320    0.0417984    0.2884656
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2841213    0.0600400    0.5082027
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0759042   -0.2524618    0.1006535
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1665983   -0.4735135    0.1403169
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0903215   -0.2517839    0.0711408
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.0669398   -0.2590312    0.1251515
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1605556   -0.5023948    0.1812836
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0840303   -0.1273884   -0.0406722
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0374014   -0.0630382    0.1378409
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0383853   -0.1113447    0.0345741
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0224399   -0.0622638    0.1071436
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0206991   -0.0805957    0.0391975
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0345112   -0.1302887    0.0612664
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0174527   -0.0408547    0.0059493
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0930196   -0.1179429   -0.0680962
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1152531   -0.2213361   -0.0091702
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0084825   -0.0201899    0.0371550
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0254424   -0.0748015    0.0239168
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0227958   -0.0369303   -0.0086613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0209433   -0.0730694    0.0311828
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1768535   -0.3100552   -0.0436517
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0876187   -0.2516903    0.0764529
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2115621    0.0803085    0.3428156
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1062540   -0.2287021    0.0161941
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0935667   -0.2056687    0.0185353
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0647298   -0.2190825    0.0896229
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1606754    0.0292578    0.2920931
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1269753   -0.2817590    0.0278083
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1082467   -0.0264916    0.2429850
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0728654   -0.1904825    0.0447517
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0819368   -0.2721862    0.1083126
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0154706   -0.0591125    0.0281713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1381930   -0.2482353   -0.0281506
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0108656   -0.0934001    0.0716689
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0294830   -0.1085846    0.0496187
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0774394   -0.0021446    0.1570234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0292817   -0.0824874    0.0239241
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0369350   -0.0144801    0.0883501
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0711289   -0.1800978    0.0378399
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0314871   -0.1201283    0.0571541
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0445845   -0.1694892    0.0803203
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1328943   -0.2520705   -0.0137181
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2346773   -0.2531664   -0.2161883
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0323436    0.0064322    0.0582550
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0885928   -0.1634754   -0.0137102
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0310836   -0.0575355   -0.0046316
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0292329   -0.0107019    0.0691678
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0214272   -0.0504522    0.0933066
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0055363   -0.0224678    0.0113951
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0083233   -0.0255723    0.0422190
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0282665   -0.0918948    0.1484278
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0869150   -0.2822266    0.1083966
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0483011   -0.1562957    0.0596936
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0315931   -0.1381584    0.0749722
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0298669   -0.0782744    0.1380082
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1117606   -0.0105797    0.2341010
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1845645    0.0578449    0.3112841
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0271862   -0.1289732    0.0746007
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.1409552    0.0481003    0.2338102
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.1345306   -0.2892798    0.0202187
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0427848   -0.0633269    0.1488965
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0464237   -0.1264886    0.0336412
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0152506   -0.1092823    0.0787810
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0239905   -0.0733598    0.0253788
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0790894   -0.1739953    0.0158166
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0600053   -0.1851438    0.0651333
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.2321617   -0.3681634   -0.0961600
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2092340   -0.2536804   -0.1647875
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1674738   -0.2500266   -0.0849211
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0252064   -0.0818002    0.0313874
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0541508   -0.0835612   -0.0247404
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0125477   -0.0257938    0.0508892
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1303839    0.0491384    0.2116294
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0325478   -0.0541115   -0.0109840
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0375491   -0.0694253   -0.0056729
