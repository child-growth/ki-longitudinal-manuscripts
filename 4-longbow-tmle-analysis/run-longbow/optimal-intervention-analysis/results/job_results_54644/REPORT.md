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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           15027   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            2987   18014
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11673   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5111   16784
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5914    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2689    8603
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a9b6bd7a-1f6a-4125-8761-970bbe333d1d/c4f291a5-8bae-4d02-b51e-088a2f007edb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5469771   -0.9952491   -0.0987051
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9948960    0.0171382    1.9726538
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4414661   -1.7937137   -1.0892184
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0157501   -0.1445620    0.1130618
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4425120   -0.5944790    1.4795030
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.9188709    0.4542215    1.3835203
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2268879   -1.4847258    1.0309500
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2156066   -0.3760430    0.8072562
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.1460399   -0.5814438    0.2893640
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.2672516   -1.9105825   -0.6239208
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5272621   -0.8491844   -0.2053399
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5706815   -1.7625581   -1.3788049
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2758673   -1.3565311   -1.1952035
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9097226   -1.1376357   -0.6818096
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0616314   -0.5533820    0.4301191
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9416821   -1.2446166   -0.6387477
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.5801207    0.5474498    0.6127917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1717743    0.0339475    0.3096012
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3039056   -0.8980041    0.2901928
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6886897   -0.8247029   -0.5526765
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2840215   -0.5713485    0.0033055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6996845   -0.7402023   -0.6591668
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6680161   -0.7699511   -0.5660811
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2010170   -0.3481754   -0.0538586
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.1622520    0.9812595    1.3432446
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6797833   -0.8184550   -0.5411115
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0785723   -0.0631285    0.2202732
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1495075    0.8742159    1.4247992
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9800246    0.4434431    1.5166061
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4892072    0.1940489    0.7843654
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4637387   -0.6421543   -0.2853231
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1943847   -0.6387640    0.2499946
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.7928029   -0.9460814   -0.6395244
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0199089   -0.1844118    0.2242296
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6097647   -0.7420587   -0.4774707
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8977656   -1.0459874   -0.7495438
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5180245   -0.6194563   -0.4165927
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1725500   -0.2666914   -0.0784087
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0528271   -0.0313340    0.1369883
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0344462   -0.1301798    0.1990723
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2109047   -0.2988115   -0.1229978
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1731301   -0.3209198   -0.0253404
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.6246324   -0.8435775   -0.4056874
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.6475648   -0.8739966   -0.4211330
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.1355828    0.9329784    1.3381872
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6499752    0.5688677    0.7310828
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3000600    0.2569137    0.3432064
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1884196    0.1023522    0.2744870
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6477954   -0.6766668   -0.6189241
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2939939   -0.3629377   -0.2250501
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4999738    0.4103476    0.5896001
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5484365   -0.5716574   -0.5252157
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3504889   -0.3944022   -0.3065757
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7561199   -0.8937335   -0.6185064
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3665856   -0.3188101    1.0519812
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8921330   -1.0782388   -0.7060272
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1501381   -0.5284455    0.2281694
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1135512   -0.0807017    0.3078041
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2065878   -0.1279710    0.5411466
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0825306   -0.0507003    0.2157615
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4440769   -0.5579512   -0.3302027
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7001317   -0.7984026   -0.6018608
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.9086725   -1.0915076   -0.7258373
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8745894   -0.9802416   -0.7689371
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8560181   -0.9429734   -0.7690628
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5450563   -0.6445187   -0.4455938
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7762248   -0.8281342   -0.7243154
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1294934   -1.2702085   -0.9887784
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7632681   -0.8964522   -0.6300840
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.6113375    0.4675721    0.7551030
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.9286490    0.7182130    1.1390850
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2051607   -1.3771073   -1.0332141
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1890437   -0.2522488   -0.1258385
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5540428   -0.5838319   -0.5242537
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5848579   -0.6224678   -0.5472480
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1095782    0.0097199    0.2094364
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2008592   -1.2277344   -1.1739839
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1353584   -1.1722110   -1.0985058


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3948833   -0.8095252    0.0197586
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5919928   -1.5363875    0.3524019
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.5090216    0.1243156    0.8937277
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0362674   -0.0820250    0.0094901
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6350953   -1.6313511    0.3611604
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1564361   -0.6023306    0.2894583
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2379377   -1.3369829    0.8611076
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.2261897   -1.8032896   -0.6490897
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.1872652   -0.5630020    0.1884716
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed           0.9009358    0.4475603    1.3543113
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1427832   -0.3348957    0.0493293
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.2207598    0.0499061    0.3916135
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0225913   -0.0425891   -0.0025936
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3344287   -0.5504355   -0.1184220
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.1733140   -1.6566220   -0.6900060
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1747609   -0.4596296    0.1101078
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.7249841   -1.9417717   -1.5081964
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.6872640   -0.8205931   -0.5539348
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.7582372   -1.3438083   -0.1726661
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2960560   -0.4270878   -0.1650241
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4587036   -0.7410185   -0.1763886
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0781427   -0.1132142   -0.0430713
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0206108   -0.1042276    0.0630060
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0633407   -0.0315733    0.1582546
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1901747   -0.2955973   -0.0847521
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0282146   -0.0830986    0.0266694
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0318585   -0.0432944    0.1070113
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0966260   -0.3334445    0.1401926
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4378461   -0.9399888    0.0642966
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0470142   -0.2101723    0.3042007
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0389379   -0.1351056    0.0572298
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4045451   -0.8100316    0.0009415
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0181007   -0.0918441    0.1280455
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1840930   -0.3068378   -0.0613482
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0559437   -0.1029771   -0.0089103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1143923   -0.2162311   -0.0125534
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0706207   -0.0009083    0.1421497
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0265406   -0.0787735    0.0256923
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0230649   -0.0579250    0.0117952
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0464870   -0.1057879    0.1987618
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0263009   -0.0448740    0.0974758
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0891167   -0.0025194    0.1807528
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0207908   -0.1755683    0.2171500
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.0695196   -0.0809999    0.2200390
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0671510   -0.2507142    0.1164122
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0707314   -0.1364961   -0.0049666
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0104914   -0.0245518    0.0455346
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0056614   -0.0454410    0.0567638
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0430848   -0.0542541   -0.0319156
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0001506   -0.0560791    0.0563802
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0500334   -0.1109885    0.0109216
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0450796   -0.0571487   -0.0330106
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0393166   -0.0637243   -0.0149089
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0631725   -0.1106130   -0.0157320
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0960377   -0.5327394    0.7248149
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0595190   -0.1901013    0.0710634
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2247742   -0.5781442    0.1285959
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0023530   -0.1680291    0.1633231
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2024423   -0.1034046    0.5082892
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0277331   -0.0864412    0.0309750
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1130736   -0.1661658   -0.0599814
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0456833   -0.0802444   -0.0111222
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.1033514   -0.2345870    0.0278843
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0369897   -0.0849475    0.0109681
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0368489   -0.0759810    0.0022832
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0652939   -0.1069714   -0.0236164
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0337042   -0.0565280   -0.0108805
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0068173   -0.1181410    0.1045064
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0902710   -0.1784561   -0.0020858
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0445083   -0.0903939    0.0013774
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2412195   -0.4465623   -0.0358766
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0226203   -0.1128587    0.1580993
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0925367   -0.1301945   -0.0548789
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0532809   -0.0640479   -0.0425139
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0251013   -0.0364916   -0.0137110
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1573490   -0.2198689   -0.0948292
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0969439   -0.1120032   -0.0818847
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0877503   -0.1084460   -0.0670546
