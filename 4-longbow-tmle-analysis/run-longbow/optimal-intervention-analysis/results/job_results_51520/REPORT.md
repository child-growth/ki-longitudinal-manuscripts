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

**Intervention Variable:** enwast

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

agecat      studyid                    country                        enwast    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            201     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             40     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0            177     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              6     183
Birth       ki0047075b-MAL-ED          INDIA                          0            170     203
Birth       ki0047075b-MAL-ED          INDIA                          1             33     203
Birth       ki0047075b-MAL-ED          NEPAL                          0            148     169
Birth       ki0047075b-MAL-ED          NEPAL                          1             21     169
Birth       ki0047075b-MAL-ED          PERU                           0            273     279
Birth       ki0047075b-MAL-ED          PERU                           1              6     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            240     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             20     260
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            116     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             74      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             11      85
Birth       ki1000108-IRC              INDIA                          0            256     369
Birth       ki1000108-IRC              INDIA                          1            113     369
Birth       ki1000109-EE               PAKISTAN                       0              1       2
Birth       ki1000109-EE               PAKISTAN                       1              1       2
Birth       ki1000109-ResPak           PAKISTAN                       0              6       6
Birth       ki1000109-ResPak           PAKISTAN                       1              0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            155     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             11     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0             21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             20      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              3      23
Birth       ki1101329-Keneba           GAMBIA                         0           1504    1537
Birth       ki1101329-Keneba           GAMBIA                         1             33    1537
Birth       ki1114097-CMIN             BANGLADESH                     0              5       8
Birth       ki1114097-CMIN             BANGLADESH                     1              3       8
Birth       ki1114097-CMIN             BRAZIL                         0            103     111
Birth       ki1114097-CMIN             BRAZIL                         1              8     111
Birth       ki1114097-CMIN             PERU                           0             10      10
Birth       ki1114097-CMIN             PERU                           1              0      10
Birth       ki1114097-CONTENT          PERU                           0              2       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1119695-PROBIT           BELARUS                        0          10936   13877
Birth       ki1119695-PROBIT           BELARUS                        1           2941   13877
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          10856   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           2236   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0            564     762
Birth       ki1135781-COHORTS          GUATEMALA                      1            198     762
Birth       ki1135781-COHORTS          INDIA                          0           5097    6231
Birth       ki1135781-COHORTS          INDIA                          1           1134    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2448    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1            462    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0          14203   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           1542   15745
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            647     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             36     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            188     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             41     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0            195     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1              7     202
6 months    ki0047075b-MAL-ED          INDIA                          0            193     233
6 months    ki0047075b-MAL-ED          INDIA                          1             40     233
6 months    ki0047075b-MAL-ED          NEPAL                          0            205     232
6 months    ki0047075b-MAL-ED          NEPAL                          1             27     232
6 months    ki0047075b-MAL-ED          PERU                           0            261     266
6 months    ki0047075b-MAL-ED          PERU                           1              5     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            236     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             17     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            235     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            266     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             97     363
6 months    ki1000108-IRC              INDIA                          0            256     387
6 months    ki1000108-IRC              INDIA                          1            131     387
6 months    ki1000109-EE               PAKISTAN                       0            294     326
6 months    ki1000109-EE               PAKISTAN                       1             32     326
6 months    ki1000109-ResPak           PAKISTAN                       0            183     226
6 months    ki1000109-ResPak           PAKISTAN                       1             43     226
6 months    ki1000304b-SAS-CompFeed    INDIA                          0           1074    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            139    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0            311     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             69     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0            368     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1            146     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            457     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            119     576
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            516     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            178     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1901    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            119    2020
6 months    ki1101329-Keneba           GAMBIA                         0           2000    2078
6 months    ki1101329-Keneba           GAMBIA                         1             78    2078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            293     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              6     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0            470     561
6 months    ki1113344-GMS-Nepal        NEPAL                          1             91     561
6 months    ki1114097-CMIN             BANGLADESH                     0            218     232
6 months    ki1114097-CMIN             BANGLADESH                     1             14     232
6 months    ki1114097-CMIN             BRAZIL                         0             98     105
6 months    ki1114097-CMIN             BRAZIL                         1              7     105
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0            822     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             22     844
6 months    ki1114097-CMIN             PERU                           0            605     637
6 months    ki1114097-CMIN             PERU                           1             32     637
6 months    ki1114097-CONTENT          PERU                           0            214     215
6 months    ki1114097-CONTENT          PERU                           1              1     215
6 months    ki1119695-PROBIT           BELARUS                        0          12721   15754
6 months    ki1119695-PROBIT           BELARUS                        1           3033   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           6622    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1223    7845
6 months    ki1135781-COHORTS          GUATEMALA                      0            725     901
6 months    ki1135781-COHORTS          GUATEMALA                      1            176     901
6 months    ki1135781-COHORTS          INDIA                          0           5364    6508
6 months    ki1135781-COHORTS          INDIA                          1           1144    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2191    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1            402    2593
6 months    ki1148112-LCNI-5           MALAWI                         0            825     839
6 months    ki1148112-LCNI-5           MALAWI                         1             14     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0          12711   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           1525   14236
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4010    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            400    4410
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            164     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             37     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0            157     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1              6     163
24 months   ki0047075b-MAL-ED          INDIA                          0            184     224
24 months   ki0047075b-MAL-ED          INDIA                          1             40     224
24 months   ki0047075b-MAL-ED          NEPAL                          0            199     225
24 months   ki0047075b-MAL-ED          NEPAL                          1             26     225
24 months   ki0047075b-MAL-ED          PERU                           0            193     197
24 months   ki0047075b-MAL-ED          PERU                           1              4     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            221     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             16     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            202     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            267     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             98     365
24 months   ki1000108-IRC              INDIA                          0            256     388
24 months   ki1000108-IRC              INDIA                          1            132     388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0            293     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1            116     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            451     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118     569
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            363     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            137     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1101329-Keneba           GAMBIA                         0           1636    1716
24 months   ki1101329-Keneba           GAMBIA                         1             80    1716
24 months   ki1113344-GMS-Nepal        NEPAL                          0            421     497
24 months   ki1113344-GMS-Nepal        NEPAL                          1             76     497
24 months   ki1114097-CMIN             BANGLADESH                     0            217     232
24 months   ki1114097-CMIN             BANGLADESH                     1             15     232
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0            527     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             21     548
24 months   ki1114097-CMIN             PERU                           0            414     429
24 months   ki1114097-CMIN             PERU                           1             15     429
24 months   ki1114097-CONTENT          PERU                           0            163     164
24 months   ki1114097-CONTENT          PERU                           1              1     164
24 months   ki1119695-PROBIT           BELARUS                        0           3121    4032
24 months   ki1119695-PROBIT           BELARUS                        1            911    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            347     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             52     399
24 months   ki1135781-COHORTS          GUATEMALA                      0            876    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1            153    1029
24 months   ki1135781-COHORTS          INDIA                          0           4252    5071
24 months   ki1135781-COHORTS          INDIA                          1            819    5071
24 months   ki1135781-COHORTS          PHILIPPINES                    0           1989    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1            358    2347
24 months   ki1148112-LCNI-5           MALAWI                         0            569     579
24 months   ki1148112-LCNI-5           MALAWI                         1             10     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           6413    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            824    7237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           3943    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            372    4315


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/4b93e5ec-cc12-4564-9c08-059f063bdd58/1bef9df3-cbb7-4ea1-9220-8e12152ceca3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7531671   -1.0650903   -0.4412438
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2870969   -0.9188149    0.3446212
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8777035   -1.1216721   -0.6337350
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8588149   -1.1458051   -0.5718247
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0462124   -1.4425407   -0.6498840
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2905013   -1.0513379    0.4703353
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9383245   -1.5835312   -0.2931177
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.9424672    0.6517410    1.2331934
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2120271   -1.3700513   -1.0540030
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1668469   -0.9549230    0.6212292
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.6097961   -0.1441541    1.3637464
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.4865423   -0.3061044    1.2791890
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           2.1975317    2.0169023    2.3781611
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2366142    0.1801318    0.2930966
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.7359464    0.5915000    0.8803927
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3060715   -0.3726097   -0.2395333
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.2256313    0.1200151    0.3312474
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0752285   -1.1272808   -1.0231762
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0360331   -1.4728738   -0.5991923
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1358295   -1.3203784   -0.9512807
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2792111   -0.5891584    1.1475805
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2734012   -1.5657820   -0.9810203
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4944870   -0.6109888   -0.3779852
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8979779   -1.4699837   -0.3259721
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1282182   -1.6191329   -0.6373034
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3733492   -1.5369866   -1.2097119
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1340851   -1.2905877   -0.9775825
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.2044906   -2.4195312   -1.9894500
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.6016182   -1.8332747   -1.3699617
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2490416   -1.3410554   -1.1570278
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8150072   -1.9380564   -1.6919580
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.4339001   -1.5696421   -1.2981581
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0408794   -1.1244979   -0.9572609
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0875804   -1.1887954   -0.9863654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4445539   -0.5940839   -0.2950240
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8757872   -0.9227527   -0.8288217
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5320251   -1.6424393   -1.4216108
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1607900   -1.3200541   -1.0015259
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.8451253   -2.3144073   -1.3758433
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0954856   -1.1131110    0.9221398
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.6925938   -0.7756220   -0.6095656
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.3268108   -0.6888070    0.0351854
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1585747    0.0165616    0.3005879
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7724094   -0.8004606   -0.7443583
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6297847   -1.7796255   -1.4799439
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9390203   -0.9895350   -0.8885055
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0701626   -1.1711058   -0.9692194
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4476329   -1.5323167   -1.3629491
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1050873   -1.1581341   -1.0520404
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2404083   -1.2786961   -1.2021205
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8576799   -2.1529901   -1.5623697
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0900719   -0.0829744    0.2631183
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8004329   -2.1444728   -1.4563929
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.5558895   -1.7751795   -1.3365995
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4000534   -2.1930596   -0.6070473
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.6661733   -2.8608309   -2.4715157
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7459611   -1.8767031   -1.6152191
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.1490282   -2.3327447   -1.9653118
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.7448845   -1.8571043   -1.6326647
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3505580   -1.4775315   -1.2235846
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5267108   -1.5781155   -1.4753061
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.6782881   -1.8949791   -1.4615971
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.6038402   -3.0949927   -2.1126877
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.6902830   -1.7975107   -1.5830552
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.7965350   -2.2460128   -1.3470572
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0718766   -0.4077920    0.2640388
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2586092   -2.3899931   -2.1272253
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.6463748   -2.8039025   -2.4888472
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.8486821   -1.9187316   -1.7786325
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.2962623   -2.4094185   -2.1831061
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8968591   -1.9768358   -1.8168824
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8639481   -1.9219772   -1.8059190
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7434368   -1.8149419   -1.6719317


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9434025   -1.0553995   -0.8314055
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6545355   -0.7954300   -0.5136410
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9670443   -1.0993703   -0.8347184
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6373964   -0.7808443   -0.4939486
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8569176   -0.9598499   -0.7539853
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6936923   -0.8141845   -0.5732001
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.8205882   -0.9953903   -0.6457861
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.1140921   -0.2561277    0.0279434
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.1589157   -1.2666273   -1.0512040
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0442941   -0.0185771    0.1071652
Birth       ki1114097-CMIN             BRAZIL                         observed             observed           0.1770270    0.0025580    0.3514960
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3278057    1.1691020    1.4865095
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.3412145   -0.3591726   -0.3232564
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.2220341    0.1435838    0.3004845
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.5071369   -0.5319444   -0.4823294
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.1490962   -0.1843045   -0.1138879
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1673153   -1.1822647   -1.1523660
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.1775403   -1.2476425   -1.1074380
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1553785   -1.2731711   -1.0375858
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0784818   -0.0680282    0.2249919
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2047496   -1.3231151   -1.0863842
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5342241   -0.6451165   -0.4233318
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3033145   -1.4123055   -1.1943235
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0492984   -1.1745095   -0.9240873
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4223508   -1.5654032   -1.2792984
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.1884152   -1.3196342   -1.0571962
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0046626   -2.1248969   -1.8844282
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4026180   -1.6123162   -1.1929198
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.2781121   -1.3694457   -1.1867786
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3447001   -1.4316348   -1.2577653
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0675376   -1.1432331   -0.9918422
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1560014   -1.2261266   -1.0858763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424220   -0.5912180   -0.4936261
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.8963775   -0.9433248   -0.8494302
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3262953   -1.4042959   -1.2482948
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7090230   -1.8439050   -1.5741410
6 months    ki1114097-CMIN             BRAZIL                         observed             observed          -0.6480000   -0.8487905   -0.4472095
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.5979325   -0.6732517   -0.5226132
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5132548   -0.5926717   -0.4338380
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1076416    0.0130507    0.2022324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8394653   -0.8656101   -0.8133205
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.7950277   -1.8646284   -1.7254271
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9241887   -0.9514678   -0.8969095
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.0928731   -1.1347142   -1.0510321
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1247577   -1.1475519   -1.1019635
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2460635   -1.2827993   -1.2093277
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.8962687   -2.0241450   -1.7683923
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0696012   -0.0999839    0.2391864
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8363616   -1.9636359   -1.7090873
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2619556   -1.3827787   -1.1411324
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6216878   -1.7575225   -1.4858530
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5564429   -2.6570768   -2.4558090
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7623926   -1.8591106   -1.6656746
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1194886   -2.2222242   -2.0167530
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5715641   -1.6543870   -1.4887413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4004800   -1.4835266   -1.3174334
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5586932   -1.6085568   -1.5088295
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8761201   -1.9601745   -1.7920656
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.4877155   -2.6168325   -2.3585986
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -1.5673266   -1.6667006   -1.4679527
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.5807226   -1.6772768   -1.4841684
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1311901   -0.4268581    0.1644779
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.2965664   -2.4199830   -2.1731498
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8596404   -2.9251693   -2.7941116
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.8596470   -1.8926187   -1.8266754
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3603707   -2.4055731   -2.3151683
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.8752232   -1.9042428   -1.8462036
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.6962457   -1.7323673   -1.6601241


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1902354   -0.4674919    0.0870210
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3674386   -0.9974538    0.2625765
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0893408   -0.2938334    0.1151518
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2214184   -0.0386661    0.4815030
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1892948   -0.1913357    0.5699253
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4031910   -1.1271624    0.3207804
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1177362   -0.4410022    0.6764747
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.0565593   -1.2880422   -0.8250765
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0531115   -0.0269563    0.1331793
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3624388   -1.0577820    0.3329045
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5655020   -1.3043718    0.1733677
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.3095153   -1.0706886    0.4516580
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.8697260   -1.0049633   -0.7344886
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5778287   -0.6274156   -0.5282417
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5139122   -0.6422603   -0.3855641
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2010654   -0.2600907   -0.1420401
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3747275   -0.4692255   -0.2802295
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0920868   -0.1407824   -0.0433913
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1415072   -0.5603504    0.2773360
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0195489   -0.1701305    0.1310327
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2007292   -1.0576027    0.6561442
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0686515   -0.1728301    0.3101331
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0397372   -0.0830843    0.0036099
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4053366   -0.9742596    0.1635863
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0789198   -0.3928306    0.5506702
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0490015   -0.1402759    0.0422729
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0543301   -0.1522937    0.0436335
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.1998280    0.0200282    0.3796278
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.1990002    0.0462894    0.3517110
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0290705   -0.0621521    0.0040110
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0836770   -0.1438710   -0.0234831
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0892000   -0.0094817    0.1878817
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0266583   -0.0672286    0.0139121
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0684211   -0.1433551    0.0065130
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0978681   -0.2407061    0.0449699
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0205903   -0.0331400   -0.0080406
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0298757   -0.0567012   -0.0030501
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1655053   -0.3077986   -0.0232120
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.1361023   -0.2972077    0.5694124
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.5525144   -1.5328475    0.4278187
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0946613    0.0558508    0.1334718
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.1864440   -0.5337422    0.1608542
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0509332   -0.1500616    0.0481953
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0670558   -0.0790458   -0.0550659
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1652431   -0.3014434   -0.0290427
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.0148316   -0.0257939    0.0554571
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0227105   -0.1121606    0.0667396
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2125578   -0.2825658   -0.1425498
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0196704   -0.0671782    0.0278374
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0056552   -0.0168813    0.0055709
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0385887   -0.3087589    0.2315814
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0204707   -0.0533819    0.0124404
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0359287   -0.3400935    0.2682360
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2939340    0.1118182    0.4760497
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2216343   -0.9814920    0.5382234
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1097304   -0.0475468    0.2670077
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0164315   -0.0987209    0.0658578
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0295396   -0.1225538    0.1816330
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1733203    0.0934789    0.2531617
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0499220   -0.1471554    0.0473115
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0319824   -0.0478427   -0.0161221
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1978319   -0.3919580   -0.0037059
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed           0.1161247   -0.3439656    0.5762150
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.1229563    0.0665909    0.1793218
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.2158124   -0.2237140    0.6553388
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0593135   -0.1456683    0.0270413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0379572   -0.0867489    0.0108346
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2132656   -0.3589810   -0.0675501
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0109649   -0.0708855    0.0489556
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0641084   -0.1665525    0.0383356
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0214187   -0.0078532    0.0506906
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0112750   -0.0628677    0.0403176
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0471912   -0.0160472    0.1104295
