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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female       131     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male         126     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Female        93     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Male          98     191
Birth       ki0047075b-MAL-ED          INDIA                          Female       110     206
Birth       ki0047075b-MAL-ED          INDIA                          Male          96     206
Birth       ki0047075b-MAL-ED          NEPAL                          Female        84     173
Birth       ki0047075b-MAL-ED          NEPAL                          Male          89     173
Birth       ki0047075b-MAL-ED          PERU                           Female       134     287
Birth       ki0047075b-MAL-ED          PERU                           Male         153     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female       131     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male         131     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        61     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male          62     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female        45      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male          45      90
Birth       ki1000108-IRC              INDIA                          Female       173     388
Birth       ki1000108-IRC              INDIA                          Male         215     388
Birth       ki1000109-EE               PAKISTAN                       Female         0       2
Birth       ki1000109-EE               PAKISTAN                       Male           2       2
Birth       ki1000109-ResPak           PAKISTAN                       Female         3       7
Birth       ki1000109-ResPak           PAKISTAN                       Male           4       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female        84     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male         103     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female        12      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male          16      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female        13      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male          14      27
Birth       ki1101329-Keneba           GAMBIA                         Female       738    1541
Birth       ki1101329-Keneba           GAMBIA                         Male         803    1541
Birth       ki1114097-CMIN             BANGLADESH                     Female         6      13
Birth       ki1114097-CMIN             BANGLADESH                     Male           7      13
Birth       ki1114097-CMIN             BRAZIL                         Female        59     115
Birth       ki1114097-CMIN             BRAZIL                         Male          56     115
Birth       ki1114097-CMIN             PERU                           Female         7      10
Birth       ki1114097-CMIN             PERU                           Male           3      10
Birth       ki1114097-CONTENT          PERU                           Female         2       2
Birth       ki1114097-CONTENT          PERU                           Male           0       2
Birth       ki1119695-PROBIT           BELARUS                        Female      7176   13884
Birth       ki1119695-PROBIT           BELARUS                        Male        6708   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female      6736   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male        7094   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Female       404     852
Birth       ki1135781-COHORTS          GUATEMALA                      Male         448     852
Birth       ki1135781-COHORTS          INDIA                          Female      3195    6640
Birth       ki1135781-COHORTS          INDIA                          Male        3445    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    Female      1433    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Male        1617    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female      9619   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male        9994   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female       400     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male         422     822
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
6 months    ki1000109-EE               PAKISTAN                       Female       182     372
6 months    ki1000109-EE               PAKISTAN                       Male         190     372
6 months    ki1000109-ResPak           PAKISTAN                       Female       111     235
6 months    ki1000109-ResPak           PAKISTAN                       Male         124     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female       609    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male         727    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       201     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         179     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female       245     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male         292     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female       276     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male         307     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         353     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1026    2029
6 months    ki1101329-Keneba           GAMBIA                         Female      1011    2089
6 months    ki1101329-Keneba           GAMBIA                         Male        1078    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         146     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female       273     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male         290     563
6 months    ki1114097-CMIN             BANGLADESH                     Female       106     243
6 months    ki1114097-CMIN             BANGLADESH                     Male         137     243
6 months    ki1114097-CMIN             BRAZIL                         Female        55     108
6 months    ki1114097-CMIN             BRAZIL                         Male          53     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female       420     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male         428     848
6 months    ki1114097-CMIN             PERU                           Female       292     637
6 months    ki1114097-CMIN             PERU                           Male         345     637
6 months    ki1114097-CONTENT          PERU                           Female       106     215
6 months    ki1114097-CONTENT          PERU                           Male         109     215
6 months    ki1119695-PROBIT           BELARUS                        Female      8142   15761
6 months    ki1119695-PROBIT           BELARUS                        Male        7619   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      4031    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        4264    8295
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         186     372
24 months   ki1000108-IRC              INDIA                          Female       185     409
24 months   ki1000108-IRC              INDIA                          Male         224     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       195     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         234     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       278     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         299     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         254     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ki1101329-Keneba           GAMBIA                         Female       822    1725
24 months   ki1101329-Keneba           GAMBIA                         Male         903    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          Female       233     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Male         266     499
24 months   ki1114097-CMIN             BANGLADESH                     Female       104     242
24 months   ki1114097-CMIN             BANGLADESH                     Male         138     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female       272     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male         279     551
24 months   ki1114097-CMIN             PERU                           Female       199     429
24 months   ki1114097-CMIN             PERU                           Male         230     429
24 months   ki1114097-CONTENT          PERU                           Female        83     164
24 months   ki1114097-CONTENT          PERU                           Male          81     164
24 months   ki1119695-PROBIT           BELARUS                        Female      2081    4035
24 months   ki1119695-PROBIT           BELARUS                        Male        1954    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       267     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         190     457
24 months   ki1135781-COHORTS          GUATEMALA                      Female       514    1073
24 months   ki1135781-COHORTS          GUATEMALA                      Male         559    1073
24 months   ki1135781-COHORTS          INDIA                          Female      2545    5340
24 months   ki1135781-COHORTS          INDIA                          Male        2795    5340
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
```

```
## Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 4 does not match with column 1 of item 1.
## Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 4 does not match with column 1 of item 1.
## 
## Error in self$compute_step() : Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 4 does not match with column 1 of item 1.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/cb733506-145b-4a6c-95dd-218b3e27d917/c949da1d-e90f-4ba7-ad1b-fffb4db9e27b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1310749   -1.3108335   -0.9513164
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.8582442   -1.1133174   -0.6031709
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0973247   -1.2881613   -0.9064880
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6395062   -0.8415073   -0.4375051
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0022441   -1.1509556   -0.8535326
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8292159   -1.0256014   -0.6328303
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2499653   -1.5832593   -0.9166713
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8748987   -1.1390226   -0.6107749
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2280022   -0.4780139    0.0220095
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.5672823   -1.7130844   -1.4214803
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1943486   -0.7548118    0.3661147
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9365325   -1.3326304   -0.5404345
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0245045   -0.1175964    0.0685874
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.1648365   -0.4762038    0.1465309
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.6975505    1.5334827    1.8616183
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4453393   -0.4751460   -0.4155326
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1983237    0.0793793    0.3172681
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6309738   -0.6709277   -0.5910199
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1657204   -0.2226084   -0.1088324
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5431314   -1.5677591   -1.5185037
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4536420   -1.5787862   -1.3284978
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0591591   -1.2099838   -0.9083345
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1576200   -0.0356062    0.3508461
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1046552   -1.2461772   -0.9631332
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6635688   -0.8219268   -0.5052107
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0948629   -1.2371967   -0.9525290
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9929342   -1.1688004   -0.8170680
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2501275   -1.4209057   -1.0793493
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2606994   -1.4483591   -1.0730396
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1129909   -1.3163535   -0.9096283
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.1200581   -2.2812851   -1.9588310
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.4442329   -1.7196374   -1.1688284
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4892038   -1.5676877   -1.4107199
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -2.0313743   -2.1880018   -1.8747468
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3310278   -1.4504674   -1.2115883
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0209243   -1.1247782   -0.9170703
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1470815   -1.2470823   -1.0470806
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4382702   -0.5046909   -0.3718495
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8612706   -0.9256647   -0.7968766
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4409435   -1.5819698   -1.2999172
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2882149   -1.3909977   -1.1854320
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.7238255   -1.9079087   -1.5397423
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.4704111   -0.6906031   -0.2502190
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.4683408   -0.5675845   -0.3690971
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4081329   -0.5227769   -0.2934890
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.5404910    0.3443458    0.7366363
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8274785    0.7266437    0.9283132
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7760678   -0.8117940   -0.7403416
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7056646   -1.7994423   -1.6118869
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9401500   -0.9784826   -0.9018175
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9999414   -1.0583748   -0.9415080
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4611399   -1.5511053   -1.3711745
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2153549   -1.2434722   -1.1872376
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2653883   -1.3140772   -1.2166993
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8913645   -2.0695196   -1.7132094
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2410648    0.0275411    0.4545885
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.6891337   -1.8530343   -1.5252330
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2208389   -1.3996155   -1.0420622
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5642524   -1.7408303   -1.3876745
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4302903   -1.6146210   -1.2459596
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4956959   -2.6855055   -2.3058864
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4291368   -2.5554014   -2.3028722
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7358377   -1.8717570   -1.5999184
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.2713840   -2.4034050   -2.1393630
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6015419   -1.7198216   -1.4832623
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.5070160   -1.6175848   -1.3964471
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5265392   -1.5973885   -1.4556899
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -2.0117994   -2.1255399   -1.8980589
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.4533157   -2.6311239   -2.2755074
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.4617772   -1.6028064   -1.3207481
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.4667059   -1.6018621   -1.3315497
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.1884180   -0.3963411    0.0195050
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.2356948   -0.1727613    0.6441510
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2333459   -2.3569688   -2.1097230
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8252426   -2.9158271   -2.7346581
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.9520463   -1.9976332   -1.9064594
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3568308   -2.4209993   -2.2926622
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7576322   -1.8607493   -1.6545152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9830395   -2.0192683   -1.9468108
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7303623   -1.7765787   -1.6841458


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BRAZIL                         observed             observed           0.0576522   -0.1471825    0.2624869
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5747407   -1.5944667   -1.5550147
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4029220   -1.6085859   -1.1972581
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             BRAZIL                         observed             observed          -0.6841667   -0.8870073   -0.4813261
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.6075943   -0.6832781   -0.5319106
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8907480   -0.9167182   -0.8647779
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9968455   -1.0246180   -0.9690730
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5626652   -1.6124881   -1.5128424
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -1.5745644   -1.6739586   -1.4751703
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.5807226   -1.6772768   -1.4841684
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3994530   -2.5144490   -2.2844569
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8612302   -2.9255771   -2.7968833
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9067566   -1.9394274   -1.8740857
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0126460   -2.0403823   -1.9849097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7582681   -1.7937283   -1.7228079


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0466780   -0.0820860    0.1754421
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0973018   -0.0666666    0.2612701
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0866936   -0.0487796    0.2221668
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0693955   -0.2311478    0.0923568
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0700142   -0.0413129    0.1813412
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1026128   -0.0287654    0.2339910
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3161441    0.0996121    0.5326762
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0905457   -0.3009375    0.1198461
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0800390   -0.2623531    0.1022750
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1726299    0.0542399    0.2910200
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3349371   -0.6415443   -0.0283300
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1734675   -0.5779266    0.2309916
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0586511   -0.0047288    0.1220310
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.2224887    0.0155061    0.4294712
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3720730   -0.3974555   -0.3466904
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0556267   -0.0767549   -0.0344985
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0685937   -0.1485035    0.0113162
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0389223   -0.0681406   -0.0097039
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0833288   -0.1247883   -0.0418693
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0316093   -0.0481560   -0.0150626
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0440222   -0.1254645    0.0374201
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1465186   -0.2637132   -0.0293240
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1065992   -0.2538247    0.0406262
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1157120   -0.2264995   -0.0049245
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1025095   -0.0158023    0.2208212
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2319381   -0.3475017   -0.1163745
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0704418   -0.2002080    0.0593244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1099940   -0.2312295    0.0112416
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1627514   -0.3038932   -0.0216096
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1214153   -0.2682777    0.0254470
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0804124   -0.2065409    0.0457162
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0413109   -0.1743669    0.2569887
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0873475    0.0231158    0.1515793
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1326901    0.0177054    0.2476748
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0763543   -0.1720489    0.0193404
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0661798   -0.1467171    0.0143575
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0515969   -0.1223551    0.0191614
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1051687   -0.1546838   -0.0556535
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0428663   -0.0914798    0.0057472
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1209573   -0.2303189   -0.0115957
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0439373   -0.1244034    0.0365288
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0606121   -0.2139387    0.0927145
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.2137556   -0.4185955   -0.0089157
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1392535   -0.2156580   -0.0628490
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.1051219   -0.1916575   -0.0185862
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.8544127   -1.0299274   -0.6788980
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.7204799   -0.7499614   -0.6909983
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1146802   -0.1413324   -0.0880280
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1100690   -0.1813918   -0.0387462
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0566955   -0.0855570   -0.0278339
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1406310   -0.1848546   -0.0964073
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1990508   -0.2687516   -0.1293501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0977383   -0.1154691   -0.0800076
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0794058   -0.1130200   -0.0457916
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0517487   -0.1812283    0.0777309
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1992305   -0.3774886   -0.0209724
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1566813   -0.2753385   -0.0380242
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0543804   -0.1664254    0.0576645
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1858471   -0.3195964   -0.0520978
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1925459   -0.3295140   -0.0555778
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1101919   -0.2478529    0.0274691
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1302315   -0.2315638   -0.0288992
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0466399   -0.1499765    0.0566967
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0905895   -0.0096260    0.1908049
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0154241   -0.0661324    0.0969805
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0774829   -0.0057170    0.1606828
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0361260   -0.0883382    0.0160862
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1282089    0.0448191    0.2115987
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0576348   -0.1641856    0.0489161
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1127872   -0.2138208   -0.0117536
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.1140167   -0.2175090   -0.0105245
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.5078015   -0.6787554   -0.3368476
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3670996   -0.5181460   -0.2160533
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1661071   -0.2697971   -0.0624170
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0359876   -0.1030220    0.0310469
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.0452897    0.0132562    0.0773232
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0330343   -0.0802644    0.0141958
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1178082   -0.1979617   -0.0376547
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0296064   -0.0531423   -0.0060706
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0279058   -0.0585682    0.0027566
