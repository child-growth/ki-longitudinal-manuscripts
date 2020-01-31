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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             187     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              44     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0              56      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1               9      65
Birth       ki0047075b-MAL-ED          INDIA                          0              37      47
Birth       ki0047075b-MAL-ED          INDIA                          1              10      47
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      27
Birth       ki0047075b-MAL-ED          NEPAL                          1               2      27
Birth       ki0047075b-MAL-ED          PERU                           0             207     233
Birth       ki0047075b-MAL-ED          PERU                           1              26     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             113     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             102     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              23     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              75      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              17      92
Birth       ki1000108-IRC              INDIA                          0             343     388
Birth       ki1000108-IRC              INDIA                          1              45     388
Birth       ki1000109-EE               PAKISTAN                       0             140     240
Birth       ki1000109-EE               PAKISTAN                       1             100     240
Birth       ki1000109-ResPak           PAKISTAN                       0              28      42
Birth       ki1000109-ResPak           PAKISTAN                       1              14      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             903    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             349    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     0             511     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              97     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             491     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              48     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             631     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             101     732
Birth       ki1101329-Keneba           GAMBIA                         0            1460    1543
Birth       ki1101329-Keneba           GAMBIA                         1              83    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          0             574     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1             122     696
Birth       ki1114097-CMIN             BANGLADESH                     0              17      26
Birth       ki1114097-CMIN             BANGLADESH                     1               9      26
Birth       ki1114097-CONTENT          PERU                           0               2       2
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1119695-PROBIT           BELARUS                        0           13857   13890
Birth       ki1119695-PROBIT           BELARUS                        1              33   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12441   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1434   13875
Birth       ki1135781-COHORTS          GUATEMALA                      0             802     852
Birth       ki1135781-COHORTS          GUATEMALA                      1              50     852
Birth       ki1135781-COHORTS          INDIA                          0            5848    6640
Birth       ki1135781-COHORTS          INDIA                          1             792    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1             187    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           15068   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            7387   22455
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            1966    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             857    2823
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             294     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              75     369
6 months    ki1000108-IRC              INDIA                          0             358     407
6 months    ki1000108-IRC              INDIA                          1              49     407
6 months    ki1000109-EE               PAKISTAN                       0             209     373
6 months    ki1000109-EE               PAKISTAN                       1             164     373
6 months    ki1000109-ResPak           PAKISTAN                       0             173     239
6 months    ki1000109-ResPak           PAKISTAN                       1              66     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             972    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             364    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             452     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             543     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              61     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             139    2029
6 months    ki1101329-Keneba           GAMBIA                         0            1892    2089
6 months    ki1101329-Keneba           GAMBIA                         1             197    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0             473     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1              91     564
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243
6 months    ki1114097-CONTENT          PERU                           0             197     215
6 months    ki1114097-CONTENT          PERU                           1              18     215
6 months    ki1119695-PROBIT           BELARUS                        0           15632   15761
6 months    ki1119695-PROBIT           BELARUS                        1             129   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7795    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             874    8669
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     961
6 months    ki1135781-COHORTS          GUATEMALA                      1             152     961
6 months    ki1135781-COHORTS          INDIA                          0            6048    6860
6 months    ki1135781-COHORTS          INDIA                          1             812    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2552    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1             156    2708
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11707   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5104   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3475    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4831
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             294     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              77     371
24 months   ki1000108-IRC              INDIA                          0             358     409
24 months   ki1000108-IRC              INDIA                          1              51     409
24 months   ki1000109-EE               PAKISTAN                       0             100     167
24 months   ki1000109-EE               PAKISTAN                       1              67     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             355     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             518     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              60     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1101329-Keneba           GAMBIA                         0            1549    1725
24 months   ki1101329-Keneba           GAMBIA                         1             176    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0             406     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1              82     488
24 months   ki1114097-CMIN             BANGLADESH                     0             153     242
24 months   ki1114097-CMIN             BANGLADESH                     1              89     242
24 months   ki1114097-CONTENT          PERU                           0             147     164
24 months   ki1114097-CONTENT          PERU                           1              17     164
24 months   ki1119695-PROBIT           BELARUS                        0            4024    4035
24 months   ki1119695-PROBIT           BELARUS                        1              11    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1406    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             234    1640
24 months   ki1135781-COHORTS          GUATEMALA                      0             740    1070
24 months   ki1135781-COHORTS          GUATEMALA                      1             330    1070
24 months   ki1135781-COHORTS          INDIA                          0            4696    5337
24 months   ki1135781-COHORTS          INDIA                          1             641    5337
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2310    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1             135    2445
24 months   ki1148112-LCNI-5           MALAWI                         0             377     579
24 months   ki1148112-LCNI-5           MALAWI                         1             202     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5942    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2690    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            3396    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4752


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
![](/tmp/b0ab6152-bcda-437f-8f31-d96bb06ddb38/fc8e6cd5-2b71-4a78-999c-d1ec25a520b9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7503545   -0.8581597   -0.6425492
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3511903   -0.5710517   -0.1313289
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7949022   -1.0024774   -0.5873269
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6791493   -0.7800623   -0.5782363
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2616791   -0.4578958   -0.0654624
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7161301   -0.8563292   -0.5759311
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5847425   -0.7490791   -0.4204059
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0512175   -0.0879742    0.1904092
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.8993428   -1.0660954   -0.7325902
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1841539   -0.5523362    0.1840284
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.9058577   -0.9421918   -0.8695236
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6105620   -0.6874212   -0.5337028
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7355805   -0.8044747   -0.6666863
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6574041   -0.7192200   -0.5955883
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2043167    0.1507855    0.2578478
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7486072   -0.8151021   -0.6821123
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.9843967   -1.5130144   -0.4557789
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3355993    1.1748486    1.4963500
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2350696   -0.2521632   -0.2179760
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3080271    0.2363888    0.3796654
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3928327   -0.4164437   -0.3692217
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0877832   -0.1211976   -0.0543687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9633503   -0.9766518   -0.9500489
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9832130   -1.0218963   -0.9445297
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0090277   -1.1167489   -0.9013065
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1097503   -0.0404833    0.2599839
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0407382   -1.1558498   -0.9256266
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4248570   -0.5315297   -0.3181844
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1654732   -1.2680769   -1.0628695
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9772253   -1.1068267   -0.8476239
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1875375   -1.3079842   -1.0670907
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2187882   -1.3692843   -1.0682922
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1180074   -1.2531111   -0.9829037
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.5227563   -1.6462755   -1.3992370
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.1972617   -1.4373079   -0.9572156
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0563825   -1.1330244   -0.9797407
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.2529850   -1.3455533   -1.1604167
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2255497   -1.3146360   -1.1364634
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9949049   -1.0696861   -0.9201236
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0456571   -1.1176659   -0.9736483
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4627950   -0.5116466   -0.4139434
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8039640   -0.8511022   -0.7568258
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.1806369   -1.2720600   -1.0892138
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1969709   -1.2749652   -1.1189766
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.3221257   -1.4635679   -1.1806835
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1978566   -0.3695019   -0.0262112
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1204692    0.0223136    0.2186247
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7790208   -0.8052178   -0.7528237
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.5934567   -1.6593879   -1.5275254
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8313322   -0.8583332   -0.8043313
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0658954   -1.1076996   -1.0240913
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.0576336   -1.1148686   -1.0003986
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9574393   -0.9809856   -0.9338931
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0070521   -1.0438313   -0.9702729
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8458971   -1.9779455   -1.7138487
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0682230   -0.1080520    0.2444979
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7712641   -1.8994880   -1.6430402
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2026656   -1.3212698   -1.0840614
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7255280   -1.9212814   -1.5297747
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6125805   -1.7536614   -1.4714996
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5498975   -2.6970248   -2.4027701
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4654653   -2.5751067   -2.3558240
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7278629   -1.8282096   -1.6275163
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.4126711   -2.5771514   -2.2481908
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.0466114   -2.1514116   -1.9418113
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5252783   -1.6101970   -1.4403597
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3352289   -1.4210225   -1.2494352
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4958985   -1.5466874   -1.4451095
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7927329   -1.8828407   -1.7026251
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.2725306   -2.4143410   -2.1307201
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.5930978   -0.7678198   -0.4183758
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1287183   -0.4305495    0.1731130
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5184325   -1.5779648   -1.4589003
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7539565   -2.8292662   -2.6786468
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.0031322   -2.0366800   -1.9695844
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3639019   -2.4096142   -2.3181895
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4996243   -1.5845570   -1.4146916
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7603516   -1.7902861   -1.7304172
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5499802   -1.5869691   -1.5129913


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3677408   -0.4752209   -0.2602606
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3248097   -0.5283185   -0.1213010
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4087148   -0.6556468   -0.1617829
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2036404   -0.2831053   -0.1241754
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3700283   -0.5344993   -0.2055572
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4394699   -0.6199060   -0.2590338
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3764531   -0.5525496   -0.2003567
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3592588   -0.4648351   -0.2536824
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.9615322   -1.1412974   -0.7817670
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.7958461   -1.1673133   -0.4243789
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5255640   -0.5964803   -0.4546477
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3204577   -0.3829000   -0.2580155
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1495216   -0.1912141   -0.1078291
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2520904   -0.3005232   -0.2036576
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1735130   -0.2121346   -0.1348915
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3365509   -0.3977720   -0.2753298
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.8967572   -1.4750710   -0.3184434
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0086548   -0.0131612   -0.0041483
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2652028   -0.2790155   -0.2513901
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1782971   -0.2285400   -0.1280542
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2770634   -0.2962451   -0.2578817
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1612660   -0.1846266   -0.1379055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6260645   -0.6416680   -0.6104610
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5400778   -0.5795183   -0.5006374
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1959654   -0.2730517   -0.1188791
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0621746   -0.1214510   -0.0028982
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1707872   -0.2422837   -0.0992908
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1367249   -0.2013014   -0.0721484
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1581929   -0.2194990   -0.0968867
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0860949   -0.1430939   -0.0290959
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1812075   -0.2529082   -0.1095067
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2046625   -0.2862114   -0.1231136
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1163988   -0.1740437   -0.0587539
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.5608005   -0.6723736   -0.4492274
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.2341469   -0.3625544   -0.1057394
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3454737   -0.3868625   -0.3040850
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.6456992   -0.7504932   -0.5409052
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1818323   -0.2312792   -0.1323855
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0967866   -0.1297104   -0.0638629
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1530212   -0.1903964   -0.1156461
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0806439   -0.0989131   -0.0623746
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1001729   -0.1209787   -0.0793672
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3812639   -0.4703569   -0.2921709
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1538683   -0.1985838   -0.1091528
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.4623119   -0.5815202   -0.3431036
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1160651   -0.1901210   -0.0420093
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0134705   -0.0203110   -0.0066301
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0889242   -0.0991556   -0.0786928
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2222770   -0.2632757   -0.1812782
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1655133   -0.1801667   -0.1508598
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0746769   -0.0892882   -0.0600657
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.6025571   -0.6664857   -0.5386284
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3556539   -0.3692417   -0.3420660
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3377420   -0.3622459   -0.3132381
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1324991   -0.1962155   -0.0687827
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0621086   -0.1251178    0.0009007
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1149253   -0.1810360   -0.0488146
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1049221   -0.1651061   -0.0447381
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0269429   -0.1846859    0.1308000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0324790   -0.0803703    0.0154123
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0956633   -0.1539336   -0.0373929
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0934026   -0.1472480   -0.0395572
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0709146   -0.1073650   -0.0344642
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.2573189   -0.3835796   -0.1310583
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1724465   -0.2302598   -0.1146332
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0771438   -0.1122025   -0.0420851
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1060357   -0.1468375   -0.0652340
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0815371   -0.1021123   -0.0609619
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0946851   -0.1379253   -0.0514449
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.2384199   -0.3403226   -0.1365171
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.1031217   -0.1754690   -0.0307744
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0026865   -0.0136618    0.0082888
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0871376   -0.1136198   -0.0606554
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2384173   -0.2826175   -0.1942172
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1166879   -0.1309849   -0.1023910
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0502127   -0.0630663   -0.0373590
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3865242   -0.4544538   -0.3185947
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2532964   -0.2699636   -0.2366293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2307416   -0.2524403   -0.2090429
