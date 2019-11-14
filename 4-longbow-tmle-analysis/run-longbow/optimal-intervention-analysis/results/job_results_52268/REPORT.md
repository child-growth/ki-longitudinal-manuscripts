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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            179     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             36     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0             60      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1              2      62
Birth       ki0047075b-MAL-ED          INDIA                          0             40      45
Birth       ki0047075b-MAL-ED          INDIA                          1              5      45
Birth       ki0047075b-MAL-ED          NEPAL                          0             24      26
Birth       ki0047075b-MAL-ED          NEPAL                          1              2      26
Birth       ki0047075b-MAL-ED          PERU                           0            223     228
Birth       ki0047075b-MAL-ED          PERU                           1              5     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            108     121
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            114     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             75      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             12      87
Birth       ki1000108-IRC              INDIA                          0            251     364
Birth       ki1000108-IRC              INDIA                          1            113     364
Birth       ki1000109-EE               PAKISTAN                       0            155     180
Birth       ki1000109-EE               PAKISTAN                       1             25     180
Birth       ki1000109-ResPak           PAKISTAN                       0             34      38
Birth       ki1000109-ResPak           PAKISTAN                       1              4      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            985    1105
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            120    1105
Birth       ki1017093-NIH-Birth        BANGLADESH                     0            407     580
Birth       ki1017093-NIH-Birth        BANGLADESH                     1            173     580
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            415     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            117     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            535     713
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            178     713
Birth       ki1101329-Keneba           GAMBIA                         0           1102    1488
Birth       ki1101329-Keneba           GAMBIA                         1            386    1488
Birth       ki1113344-GMS-Nepal        NEPAL                          0            509     645
Birth       ki1113344-GMS-Nepal        NEPAL                          1            136     645
Birth       ki1114097-CMIN             BANGLADESH                     0             15      19
Birth       ki1114097-CMIN             BANGLADESH                     1              4      19
Birth       ki1114097-CONTENT          PERU                           0              2       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1119695-PROBIT           BELARUS                        0          10942   13883
Birth       ki1119695-PROBIT           BELARUS                        1           2941   13883
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          10856   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           2236   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0            564     762
Birth       ki1135781-COHORTS          GUATEMALA                      1            198     762
Birth       ki1135781-COHORTS          INDIA                          0           5097    6231
Birth       ki1135781-COHORTS          INDIA                          1           1134    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2448    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1            462    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0          19597   22085
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           2488   22085
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0           2157    2399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            242    2399
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            188     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             41     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0            192     199
6 months    ki0047075b-MAL-ED          BRAZIL                         1              7     199
6 months    ki0047075b-MAL-ED          INDIA                          0            189     232
6 months    ki0047075b-MAL-ED          INDIA                          1             43     232
6 months    ki0047075b-MAL-ED          NEPAL                          0            201     232
6 months    ki0047075b-MAL-ED          NEPAL                          1             31     232
6 months    ki0047075b-MAL-ED          PERU                           0            261     266
6 months    ki0047075b-MAL-ED          PERU                           1              5     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            235     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             18     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            235     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            272     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             91     363
6 months    ki1000108-IRC              INDIA                          0            268     382
6 months    ki1000108-IRC              INDIA                          1            114     382
6 months    ki1000109-EE               PAKISTAN                       0            255     292
6 months    ki1000109-EE               PAKISTAN                       1             37     292
6 months    ki1000109-ResPak           PAKISTAN                       0            185     228
6 months    ki1000109-ResPak           PAKISTAN                       1             43     228
6 months    ki1000304b-SAS-CompFeed    INDIA                          0           1074    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            139    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0            311     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             69     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0            368     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1            146     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            472     597
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            125     597
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            517     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            177     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1901    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            119    2020
6 months    ki1101329-Keneba           GAMBIA                         0           1641    2029
6 months    ki1101329-Keneba           GAMBIA                         1            388    2029
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            293     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              6     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0            421     528
6 months    ki1113344-GMS-Nepal        NEPAL                          1            107     528
6 months    ki1114097-CMIN             BANGLADESH                     0            218     232
6 months    ki1114097-CMIN             BANGLADESH                     1             14     232
6 months    ki1114097-CONTENT          PERU                           0            214     215
6 months    ki1114097-CONTENT          PERU                           1              1     215
6 months    ki1119695-PROBIT           BELARUS                        0          12721   15754
6 months    ki1119695-PROBIT           BELARUS                        1           3033   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           6904    8174
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1270    8174
6 months    ki1135781-COHORTS          GUATEMALA                      0            725     901
6 months    ki1135781-COHORTS          GUATEMALA                      1            176     901
6 months    ki1135781-COHORTS          INDIA                          0           5364    6508
6 months    ki1135781-COHORTS          INDIA                          1           1144    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2191    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1            402    2593
6 months    ki1148112-LCNI-5           MALAWI                         0            825     839
6 months    ki1148112-LCNI-5           MALAWI                         1             14     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0          12662   14183
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           1521   14183
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4010    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            400    4410
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            164     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             37     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0            154     160
24 months   ki0047075b-MAL-ED          BRAZIL                         1              6     160
24 months   ki0047075b-MAL-ED          INDIA                          0            180     223
24 months   ki0047075b-MAL-ED          INDIA                          1             43     223
24 months   ki0047075b-MAL-ED          NEPAL                          0            195     225
24 months   ki0047075b-MAL-ED          NEPAL                          1             30     225
24 months   ki0047075b-MAL-ED          PERU                           0            193     197
24 months   ki0047075b-MAL-ED          PERU                           1              4     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            221     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             16     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            202     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            272     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             92     364
24 months   ki1000108-IRC              INDIA                          0            269     383
24 months   ki1000108-IRC              INDIA                          1            114     383
24 months   ki1000109-EE               PAKISTAN                       0            115     137
24 months   ki1000109-EE               PAKISTAN                       1             22     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     0            293     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1            116     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            452     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118     570
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            364     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            136     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1101329-Keneba           GAMBIA                         0           1354    1677
24 months   ki1101329-Keneba           GAMBIA                         1            323    1677
24 months   ki1113344-GMS-Nepal        NEPAL                          0            365     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1             90     455
24 months   ki1114097-CMIN             BANGLADESH                     0            217     232
24 months   ki1114097-CMIN             BANGLADESH                     1             15     232
24 months   ki1114097-CONTENT          PERU                           0            163     164
24 months   ki1114097-CONTENT          PERU                           1              1     164
24 months   ki1119695-PROBIT           BELARUS                        0           3121    4032
24 months   ki1119695-PROBIT           BELARUS                        1            911    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0           1346    1505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            159    1505
24 months   ki1135781-COHORTS          GUATEMALA                      0            874    1027
24 months   ki1135781-COHORTS          GUATEMALA                      1            153    1027
24 months   ki1135781-COHORTS          INDIA                          0           4252    5070
24 months   ki1135781-COHORTS          INDIA                          1            818    5070
24 months   ki1135781-COHORTS          PHILIPPINES                    0           1989    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1            358    2347
24 months   ki1148112-LCNI-5           MALAWI                         0            569     579
24 months   ki1148112-LCNI-5           MALAWI                         1             10     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           6357    7179
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            822    7179
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
![](/tmp/06488871-6313-411c-8b43-19a8c9c532d2/2ef5d9dd-75da-4ff8-82cc-a0802f1b459a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8452863   -1.1766760   -0.5138965
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2774088   -2.0680015   -0.4868160
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1386550   -1.5262736   -0.7510365
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1316826   -0.5090846    0.7724499
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4685441   -0.8820092   -0.0550790
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.9362413    0.6433405    1.2291422
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.7469639   -1.5104141    0.0164863
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1391246   -1.2721832   -1.0060660
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5994821   -0.7819593   -0.4170048
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8119828   -0.9377630   -0.6862027
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7513376   -0.8856137   -0.6170614
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.6979329    0.5715060    0.8243597
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7499556   -0.9028627   -0.5970486
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           2.1815546    1.9962842    2.3668250
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2325019    0.1757765    0.2892272
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.7206889    0.5733963    0.8679815
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2974398   -0.3642522   -0.2306273
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.2358522    0.1319945    0.3397100
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6898486   -0.7338654   -0.6458317
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1305835   -1.2888146   -0.9723523
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1376925   -1.2688985   -1.0064866
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0935080   -0.0585158    0.2455318
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2472785   -1.5194652   -0.9750918
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4218215   -0.6069360   -0.2367071
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6914978   -1.8021295   -1.5808661
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.2838326   -1.7649208   -0.8027444
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3791058   -1.5672487   -1.1909628
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0123220   -1.1949899   -0.8296541
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.9961424   -2.2080600   -1.7842248
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.2970131   -1.7085814   -0.8854447
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2516551   -1.3456994   -1.1576108
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8003414   -1.9520338   -1.6486490
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.4056117   -1.5477017   -1.2635218
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0401793   -1.1505299   -0.9298287
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1071537   -1.2231925   -0.9911150
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5196839   -0.6839338   -0.3554340
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8821427   -0.9340801   -0.8302052
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5319773   -1.6423939   -1.4215608
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2089316   -1.3522359   -1.0656272
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.7576268   -2.0949462   -1.4203075
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1428041    0.0046634    0.2809448
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7454307   -0.7730484   -0.7178131
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6512744   -1.8041469   -1.4984019
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9886250   -1.0453599   -0.9318901
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.1211244   -1.2241924   -1.0180564
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.5805066   -1.6911282   -1.4698850
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0830080   -1.1340703   -1.0319456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2412690   -1.2794980   -1.2030399
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9233669   -2.2173802   -1.6293536
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0338886   -0.1421999    0.2099771
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7359615   -2.0672615   -1.4046614
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.3568728   -1.7053602   -1.0083854
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.3394840   -2.0873618   -0.5916062
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5747459   -2.7624567   -2.3870350
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7098938   -1.8245349   -1.5952527
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.6353823   -2.9388034   -2.3319613
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.2031743   -2.3912539   -2.0150946
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6528785   -1.7553049   -1.5504521
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3481311   -1.4802102   -1.2160521
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5201616   -1.5926365   -1.4476866
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.6813029   -1.8288891   -1.5337166
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.7046749   -3.1725280   -2.2368218
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0720244   -0.4056614    0.2616126
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5085826   -1.5719870   -1.4451782
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7970590   -2.9647384   -2.6293796
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.0568733   -2.1462340   -1.9675126
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.2603523   -2.3685365   -2.1521680
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.5649989   -1.6508933   -1.4791046
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8541400   -1.9277687   -1.7805113
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7297742   -1.7719387   -1.6876097


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9625581   -1.0817638   -0.8433525
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0862222   -1.3432542   -0.8291902
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8352193   -0.9473216   -0.7231170
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5594215   -0.7261377   -0.3927053
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.8194253   -1.0062738   -0.6325768
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.1131044   -0.2551572    0.0289484
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.2383333   -1.3946042   -1.0820625
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.1641176   -1.2153187   -1.1129166
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.8156034   -0.8972149   -0.7339920
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8579887   -0.9311892   -0.7847883
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.8487377   -0.9161997   -0.7812758
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.1338508    0.0777935    0.1899081
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.9117209   -0.9811840   -0.8422578
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3292725    1.1705582    1.4879867
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.3412145   -0.3591726   -0.3232564
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.2220341    0.1435838    0.3004845
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.5071369   -0.5319444   -0.4823294
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.1490962   -0.1843045   -0.1138879
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7423283   -0.7679323   -0.7167243
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2196123   -1.2608853   -1.1783394
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1551820   -1.2728984   -1.0374655
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0859715   -0.0613794    0.2333224
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1905891   -1.3084276   -1.0727506
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5342241   -0.6451165   -0.4233318
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3046429   -1.4135547   -1.1957310
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0498419   -1.1750104   -0.9246734
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4223508   -1.5654032   -1.2792984
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.1707373   -1.3023712   -1.0391035
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -1.7873630   -1.9021295   -1.6725965
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4274196   -1.6382670   -1.2165722
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.2781121   -1.3694457   -1.1867786
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3447001   -1.4316348   -1.2577653
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0728671   -1.1465641   -0.9991701
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1560014   -1.2261266   -1.0858763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424220   -0.5912180   -0.4936261
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.8918017   -0.9392551   -0.8443483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.2753093   -1.3514861   -1.1991326
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7090230   -1.8439050   -1.5741410
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1076416    0.0130507    0.2022324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8157359   -0.8414876   -0.7899842
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.7950277   -1.8646284   -1.7254271
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9241887   -0.9514678   -0.8969095
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.0928731   -1.1347142   -1.0510321
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1472030   -1.1699352   -1.1244707
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2464966   -1.2832103   -1.2097829
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9292786   -2.0574012   -1.8011560
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0122813   -0.1599736    0.1845361
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8684081   -1.9942750   -1.7425412
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2990889   -1.4193577   -1.1788201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6477215   -1.7833702   -1.5120729
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5559249   -2.6552739   -2.4565759
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7639600   -1.8601530   -1.6677669
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.5941727   -2.7436756   -2.4446699
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1580827   -2.2606216   -2.0555438
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5877105   -1.6705437   -1.5048773
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4121200   -1.4955578   -1.3286822
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5730887   -1.6234321   -1.5227452
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8435238   -1.9304004   -1.7566473
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.4877155   -2.6168325   -2.3585986
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1311901   -0.4268581    0.1644779
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.5460133   -1.6038691   -1.4881575
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9946835   -3.0601854   -2.9291817
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0741479   -2.1071054   -2.0411904
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3841755   -2.4295300   -2.3388211
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.8818345   -1.9108126   -1.8528564
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7182341   -1.7544244   -1.6820437


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1172719   -0.4138206    0.1792768
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1911866   -0.5661491    0.9485222
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.3034357   -0.0883949    0.6952664
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6911041   -1.2937503   -0.0884580
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3508812   -0.7476066    0.0458443
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.0493457   -1.2815524   -0.8171390
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.4913694   -1.1748425    0.1921036
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0249931   -0.1412335    0.0912473
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2161214   -0.3594904   -0.0727524
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0460059   -0.1413025    0.0492906
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0974002   -0.2093976    0.0145973
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5640821   -0.6691674   -0.4589968
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1617653   -0.2960671   -0.0274635
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.8522821   -0.9904626   -0.7141017
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5737164   -0.6235290   -0.5239038
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4986548   -0.6287284   -0.3685812
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2096971   -0.2689621   -0.1504321
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3849485   -0.4777174   -0.2921795
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0524797   -0.0878343   -0.0171252
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0890289   -0.2347684    0.0567107
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0174894   -0.0758627    0.0408838
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0075365   -0.0224093    0.0073363
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0566894   -0.1710193    0.2843982
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1124026   -0.2543243    0.0295191
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.3868549    0.2406147    0.5330952
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2339907   -0.2212918    0.6892733
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0432450   -0.1614291    0.0749391
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1584154   -0.2914120   -0.0254187
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.2087794    0.0234344    0.3941244
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1304065   -0.4588494    0.1980363
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0264570   -0.0585259    0.0056118
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0983428   -0.2058223    0.0091367
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0609117   -0.0459506    0.1677739
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0326878   -0.1195787    0.0542031
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0488477   -0.1357510    0.0380556
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0227381   -0.1813691    0.1358929
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0096590   -0.0338468    0.0145289
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0299234   -0.0566620   -0.0031849
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0663778   -0.1843279    0.0515724
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.0486038   -0.2510716    0.3482793
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0351626   -0.1442947    0.0739695
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0703051   -0.0820269   -0.0585833
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1437533   -0.2831560   -0.0043506
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.0644363    0.0159538    0.1129188
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0282513   -0.0633194    0.1198219
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0796841   -0.1726183    0.0132501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0641950   -0.1086272   -0.0197629
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0052276   -0.0163020    0.0058467
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0059117   -0.2629290    0.2511057
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0216073   -0.0533212    0.0101065
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1324466   -0.4230569    0.1581637
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0577839   -0.2535623    0.3691301
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3082375   -1.0238364    0.4073614
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0188209   -0.1347328    0.1723747
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0540661   -0.1175073    0.0093750
24 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.0412096   -0.2093778    0.2917969
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0450915   -0.1095354    0.1997185
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0651680   -0.0013761    0.1317121
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0639889   -0.1644466    0.0364689
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0529271   -0.1051295   -0.0007247
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1622209   -0.2846962   -0.0397457
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed           0.2169594   -0.2175722    0.6514910
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0591657   -0.1399515    0.0216201
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0374307   -0.0648315   -0.0100298
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1976245   -0.3533934   -0.0418557
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0172747   -0.0982079    0.0636586
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1238232   -0.2222328   -0.0254137
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3211496   -0.3940327   -0.2482665
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0276945   -0.0963987    0.0410096
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0115401   -0.0112991    0.0343793
