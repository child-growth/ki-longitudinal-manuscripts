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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             187     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              28     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0              56      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1               6      62
Birth       ki0047075b-MAL-ED          INDIA                          0              37      45
Birth       ki0047075b-MAL-ED          INDIA                          1               8      45
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      26
Birth       ki0047075b-MAL-ED          PERU                           0             207     228
Birth       ki0047075b-MAL-ED          PERU                           1              21     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             112     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               8     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             102     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              13     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              74      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              12      86
Birth       ki1000108-IRC              INDIA                          0             318     343
Birth       ki1000108-IRC              INDIA                          1              25     343
Birth       ki1000109-EE               PAKISTAN                       0             137     177
Birth       ki1000109-EE               PAKISTAN                       1              40     177
Birth       ki1000109-ResPak           PAKISTAN                       0              28      38
Birth       ki1000109-ResPak           PAKISTAN                       1              10      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             901    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             202    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     0             506     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              69     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             491     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              41     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             625     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              82     707
Birth       ki1101329-Keneba           GAMBIA                         0            1425    1466
Birth       ki1101329-Keneba           GAMBIA                         1              41    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          0             570     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1              71     641
Birth       ki1114097-CMIN             BANGLADESH                     0              17      19
Birth       ki1114097-CMIN             BANGLADESH                     1               2      19
Birth       ki1114097-CONTENT          PERU                           0               2       2
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1119695-PROBIT           BELARUS                        0           13804   13830
Birth       ki1119695-PROBIT           BELARUS                        1              26   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12227   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             690   12917
Birth       ki1135781-COHORTS          GUATEMALA                      0             732     756
Birth       ki1135781-COHORTS          GUATEMALA                      1              24     756
Birth       ki1135781-COHORTS          INDIA                          0            5813    6193
Birth       ki1135781-COHORTS          INDIA                          1             380    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2813    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1              86    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           19230   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            2853   22083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            1963    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             433    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             202     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              39     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0             184     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              25     209
6 months    ki0047075b-MAL-ED          INDIA                          0             198     236
6 months    ki0047075b-MAL-ED          INDIA                          1              38     236
6 months    ki0047075b-MAL-ED          NEPAL                          0             208     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              28     236
6 months    ki0047075b-MAL-ED          PERU                           0             239     273
6 months    ki0047075b-MAL-ED          PERU                           1              34     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             227     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              27     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             292     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              76     368
6 months    ki1000108-IRC              INDIA                          0             356     408
6 months    ki1000108-IRC              INDIA                          1              52     408
6 months    ki1000109-EE               PAKISTAN                       0             209     375
6 months    ki1000109-EE               PAKISTAN                       1             166     375
6 months    ki1000109-ResPak           PAKISTAN                       0             173     239
6 months    ki1000109-ResPak           PAKISTAN                       1              66     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             969    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             365    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             452     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             542     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              61     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028
6 months    ki1101329-Keneba           GAMBIA                         0            1893    2089
6 months    ki1101329-Keneba           GAMBIA                         1             196    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0             473     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1              91     564
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243
6 months    ki1114097-CONTENT          PERU                           0             197     215
6 months    ki1114097-CONTENT          PERU                           1              18     215
6 months    ki1119695-PROBIT           BELARUS                        0           15628   15758
6 months    ki1119695-PROBIT           BELARUS                        1             130   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7632    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             873    8505
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     963
6 months    ki1135781-COHORTS          GUATEMALA                      1             154     963
6 months    ki1135781-COHORTS          INDIA                          0            6034    6850
6 months    ki1135781-COHORTS          INDIA                          1             816    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2549    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1             157    2706
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           12290   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            4436   16726
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3473    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1360    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0             150     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              19     169
24 months   ki0047075b-MAL-ED          INDIA                          0             191     227
24 months   ki0047075b-MAL-ED          INDIA                          1              36     227
24 months   ki0047075b-MAL-ED          NEPAL                          0             201     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              27     228
24 months   ki0047075b-MAL-ED          PERU                           0             174     201
24 months   ki0047075b-MAL-ED          PERU                           1              27     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             214     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             295     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              77     372
24 months   ki1000108-IRC              INDIA                          0             358     409
24 months   ki1000108-IRC              INDIA                          1              51     409
24 months   ki1000109-EE               PAKISTAN                       0             100     168
24 months   ki1000109-EE               PAKISTAN                       1              68     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             354     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             519     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              60     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1101329-Keneba           GAMBIA                         0            1550    1726
24 months   ki1101329-Keneba           GAMBIA                         1             176    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          0             405     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1              82     487
24 months   ki1114097-CMIN             BANGLADESH                     0             153     243
24 months   ki1114097-CMIN             BANGLADESH                     1              90     243
24 months   ki1114097-CONTENT          PERU                           0             147     164
24 months   ki1114097-CONTENT          PERU                           1              17     164
24 months   ki1119695-PROBIT           BELARUS                        0            3961    3972
24 months   ki1119695-PROBIT           BELARUS                        1              11    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             331     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             102     433
24 months   ki1135781-COHORTS          GUATEMALA                      0             743    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1             339    1082
24 months   ki1135781-COHORTS          INDIA                          0            4654    5291
24 months   ki1135781-COHORTS          INDIA                          1             637    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2311    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1             138    2449
24 months   ki1148112-LCNI-5           MALAWI                         0             365     563
24 months   ki1148112-LCNI-5           MALAWI                         1             198     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            6193    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2345    8538
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            3380    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1355    4735


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
![](/tmp/011a7c7b-9dc6-4ea8-98f6-799be7a2f356/a8b4fe75-7e3e-4183-9297-2528b3704f61/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5464474   -0.9888705   -0.1040244
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0432657   -0.0223693    2.1089006
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3264925   -1.7215538   -0.9314312
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0119076   -0.1375049    0.1136897
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4763433   -0.5791385    1.5318251
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6511463   -0.1795839    1.4818765
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9353914   -1.7576928   -0.1130900
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2255687   -0.4530025    0.9041399
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.1046714   -0.5131935    0.3038507
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0220463   -0.5864562    0.5423635
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5871121   -0.9461850   -0.2280393
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2458487   -1.4480323   -1.0436652
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2764761   -1.3571433   -1.1958089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8151955   -1.0338538   -0.5965372
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1253920   -0.6083309    0.3575469
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9481976   -1.2290144   -0.6673808
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.5434089    0.5212801    0.5655378
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1869157    0.0511228    0.3227086
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3074065   -0.9238101    0.3089970
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7148695   -0.8498899   -0.5798491
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2713348   -0.5757887    0.0331190
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6862909   -0.7293674   -0.6432145
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.7028318   -0.7848118   -0.6208519
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1205144   -0.2650865    0.0240578
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0555136    0.8812604    1.2297668
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6582366   -0.8479640   -0.4685092
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1535116    0.0131221    0.2939011
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0723492    0.9453378    1.1993606
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9536546    0.3812162    1.5260931
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2105004    0.0594640    0.3615369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3493015   -0.5677460   -0.1308570
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3776026   -0.8682559    0.1130508
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.8069035   -0.9702736   -0.6435334
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.1018904   -0.0948317    0.2986124
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6064089   -0.7432699   -0.4695479
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.9393865   -1.1082610   -0.7705121
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4374050   -0.5894423   -0.2853677
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1874686   -0.2876623   -0.0872750
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0536983   -0.0304008    0.1377974
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0185089   -0.0701294    0.1071471
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1540929   -0.2416667   -0.0665190
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0378220   -0.1638667    0.0882226
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4646956   -0.6391077   -0.2902834
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.5575886   -0.7633776   -0.3517995
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.0468792    0.9123378    1.1814207
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6226397    0.5461800    0.6990994
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3106970    0.2788472    0.3425468
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1990443    0.0902202    0.3078683
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6525134   -0.6818562   -0.6231706
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2159086   -0.3132798   -0.1185374
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5121505    0.4206151    0.6036858
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5603417   -0.5826279   -0.5380555
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3535610   -0.3972268   -0.3098952
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7587471   -0.8970070   -0.6204872
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7142568    0.0131162    1.4153975
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8834939   -1.0334000   -0.7335879
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4347373   -0.5465904   -0.3228843
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1403581    0.0172509    0.2634653
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2777022   -0.0639864    0.6193908
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1787982   -0.0045975    0.3621938
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4466854   -0.5600051   -0.3333656
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6895836   -0.7871248   -0.5920425
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.8347192   -1.0147606   -0.6546778
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8736473   -0.9793740   -0.7679207
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8674044   -0.9617780   -0.7730308
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5461577   -0.6457349   -0.4465806
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7927727   -0.8431805   -0.7423649
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1849098   -1.3204608   -1.0493588
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7419981   -0.8758534   -0.6081429
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.6266736    0.4838762    0.7694710
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.9699104    0.7559968    1.1838241
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2976661   -1.4338692   -1.1614630
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1913985   -0.2551378   -0.1276592
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5593708   -0.5898125   -0.5289291
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5930765   -0.6306130   -0.5555399
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0918600   -0.0087852    0.1925051
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2172626   -1.2434945   -1.1910308
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1361809   -1.1730249   -1.0993369


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3947619   -0.8037674    0.0142437
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6403625   -1.6671613    0.3864363
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3940480    0.0116260    0.7764701
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0401100   -0.0833032    0.0030832
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6689266   -1.6836661    0.3458129
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1112885   -0.6498338    0.8724107
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.4705658   -0.2732145    1.2143461
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.2361518   -1.8947579   -0.5775457
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.2286337   -0.5775846    0.1203173
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3442695   -0.8708693    0.1823304
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0829332   -0.2898587    0.1239923
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1040730   -0.2813836    0.0732375
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0219826   -0.0419063   -0.0020588
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4289558   -0.6351403   -0.2227713
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.1095534   -1.5839617   -0.6351452
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1682454   -0.4295400    0.0930491
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.6882723   -1.9020654   -1.4744791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7024054   -0.8336154   -0.5711953
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.7547363   -1.3619715   -0.1475012
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2698762   -0.3999333   -0.1398191
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4713902   -0.7706846   -0.1720959
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0638658   -0.1026059   -0.0251256
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0142050   -0.0460365    0.0744465
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0178812   -0.0685009    0.0327385
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0837911   -0.1466063   -0.0209759
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0500331   -0.2088562    0.1087899
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0424664   -0.0938509    0.0089180
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0154506   -0.0672263    0.0363252
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4109315   -0.9458900    0.1240269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3257209    0.1819936    0.4694482
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1533751   -0.3123868    0.0056366
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2213272   -0.6662883    0.2236340
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0322012   -0.0752059    0.1396084
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.2660745   -0.4073826   -0.1247664
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0592995   -0.1043710   -0.0142280
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0727714   -0.1881439    0.0426012
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0099987   -0.1303713    0.1103738
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0116220   -0.0683497    0.0451057
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0239361   -0.0585872    0.0107151
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0624243   -0.0083895    0.1332380
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0305109   -0.0998569    0.0388351
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0461913   -0.1112710    0.0188884
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1391461   -0.2905798    0.0122877
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0204567   -0.1661243    0.1252109
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0215526   -0.0606206    0.1037257
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0433958   -0.1113124    0.0245208
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0001455   -0.0185042    0.0182131
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0049633   -0.0867223    0.0767958
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0383669   -0.0505749   -0.0261589
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0779347   -0.1661059    0.0102364
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0622101   -0.1267478    0.0023277
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0326790   -0.0432750   -0.0220830
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0362445   -0.0595934   -0.0128956
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0614416   -0.1100185   -0.0128647
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2550261   -0.8904938    0.3804416
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0687968   -0.1815338    0.0439402
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0582899   -0.0312460    0.1478259
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0199103   -0.0952918    0.0554711
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1371507   -0.1716819    0.4459834
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1248496   -0.2624099    0.0127108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1104652   -0.1638704   -0.0570599
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0562314   -0.0920274   -0.0204353
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.1773046   -0.3060843   -0.0485249
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0379317   -0.0857140    0.0098506
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0254626   -0.0706805    0.0197552
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0641924   -0.1056060   -0.0227789
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0171563   -0.0356552    0.0013426
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0485991   -0.0579256    0.1551237
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.1115410   -0.1997281   -0.0233538
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0598443   -0.1108133   -0.0088754
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2824809   -0.4917059   -0.0732559
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1151257    0.0216916    0.2085597
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0901819   -0.1282008   -0.0521630
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0479530   -0.0603301   -0.0355758
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0168827   -0.0271819   -0.0065835
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1396308   -0.2033445   -0.0759172
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0821588   -0.0958944   -0.0684231
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0869278   -0.1071992   -0.0666565
