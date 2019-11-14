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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           19226   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            7441   26667
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           12323   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            4430   16753
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            6221    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2344    8565
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
![](/tmp/62a7f058-36ce-4e53-ab54-ae5c89ae34e7/5b7fa483-cc84-476e-aaef-3714d5e80ff8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7481605   -0.8551055   -0.6412155
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3564635   -0.5758546   -0.1370723
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8047165   -1.0093282   -0.6001049
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6846106   -0.7867340   -0.5824871
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4371277   -0.5925135   -0.2817418
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7286685   -0.8688207   -0.5885162
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5938508   -0.7576321   -0.4300695
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0479069   -0.0903510    0.1861648
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.9298497   -1.0966223   -0.7630772
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.2868204   -0.6811782    0.1075374
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.9063356   -0.9447124   -0.8679589
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6115867   -0.6882963   -0.5348772
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7367662   -0.8056236   -0.6679088
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6577606   -0.7196694   -0.5958517
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2041243    0.1505826    0.2576660
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7480693   -0.8143651   -0.6817736
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.9911079   -1.5047738   -0.4774420
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3358432    1.1754218    1.4962646
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2368357   -0.2539429   -0.2197285
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3076412    0.2359518    0.3793306
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3936845   -0.4172849   -0.3700841
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0884221   -0.1218092   -0.0550351
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5407509   -0.5660645   -0.5154373
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9841262   -1.0226666   -0.9455857
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0137261   -1.1215570   -0.9058952
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1113768   -0.0393108    0.2620645
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0407976   -1.1568174   -0.9247778
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4272006   -0.5339054   -0.3204957
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1686964   -1.2714434   -1.0659495
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9839271   -1.1130297   -0.8548245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1959594   -1.3165131   -1.0754058
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2206219   -1.3708865   -1.0703573
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1058636   -1.2405023   -0.9712250
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.5235366   -1.6470959   -1.3999774
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.0722717   -1.3238142   -0.8207291
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0603753   -1.1389049   -0.9818458
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.2536894   -1.3461413   -1.1612376
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2259593   -1.3149394   -1.1369793
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9949618   -1.0697162   -0.9202075
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0453655   -1.1173028   -0.9734281
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4617820   -0.5105313   -0.4130326
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8039687   -0.8513487   -0.7565886
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.1778539   -1.2693182   -1.0863895
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1919535   -1.2703928   -1.1135141
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.3216207   -1.4629542   -1.1802872
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1977823   -0.3693430   -0.0262217
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1206028    0.0223563    0.2188494
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7802802   -0.8065015   -0.7540589
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.5964601   -1.6626949   -1.5302253
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8325338   -0.8595322   -0.8055354
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0680691   -1.1098401   -1.0262980
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.0588910   -1.1161267   -1.0016553
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0489625   -1.0722261   -1.0256988
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0085112   -1.0454049   -0.9716175
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8608654   -1.9927686   -1.7289621
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0529217   -0.1247117    0.2305551
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7738806   -1.9006737   -1.6470875
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2036651   -1.3221053   -1.0852248
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6514485   -1.7712165   -1.5316805
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6194029   -1.7611658   -1.4776400
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5490086   -2.6960802   -2.4019369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4697745   -2.5803490   -2.3592001
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7241753   -1.8239358   -1.6244149
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.4145989   -2.5768919   -2.2523060
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.0867913   -2.2166429   -1.9569398
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5280707   -1.6128493   -1.4432920
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3364858   -1.4222256   -1.2507460
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4953892   -1.5462187   -1.4445596
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7925639   -1.8826429   -1.7024850
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.2644225   -2.4070234   -2.1218216
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.6032934   -0.7781948   -0.4283921
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1287710   -0.4306028    0.1730607
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5226766   -1.5827356   -1.4626176
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7552145   -2.8304026   -2.6800265
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.0066271   -2.0401768   -1.9730775
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3645078   -2.4101915   -2.3188241
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.5008019   -1.5860624   -1.4155415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8171337   -1.8457964   -1.7884710
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5586771   -1.5956729   -1.5216813


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3699347   -0.4752700   -0.2645995
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3195365   -0.5219641   -0.1171090
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3989005   -0.6480605   -0.1497405
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1981791   -0.2779769   -0.1183813
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1945797   -0.3260488   -0.0631105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4269315   -0.6088938   -0.2449693
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3673449   -0.5415406   -0.1931491
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3559482   -0.4614955   -0.2504009
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.9310253   -1.1120881   -0.7499624
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.6931796   -1.1132465   -0.2731127
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5250861   -0.5956354   -0.4545367
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3194330   -0.3816031   -0.2572629
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1483359   -0.1897996   -0.1068722
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2517340   -0.3002172   -0.2032507
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1733207   -0.2119345   -0.1347068
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3370887   -0.3974120   -0.2767655
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.8900459   -1.4640735   -0.3160184
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0088986   -0.0134326   -0.0043647
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2634367   -0.2772973   -0.2495761
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1779112   -0.2281587   -0.1276636
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2762116   -0.2953697   -0.2570536
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1606270   -0.1839760   -0.1372781
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6322067   -0.6493307   -0.6150827
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5391647   -0.5787708   -0.4995586
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1917649   -0.2688043   -0.1147255
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0603561   -0.1201818   -0.0005304
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1705725   -0.2427519   -0.0983930
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1338587   -0.1965649   -0.0711526
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1593988   -0.2209667   -0.0978309
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0799902   -0.1364220   -0.0235585
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1727855   -0.2434252   -0.1021458
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2028289   -0.2831890   -0.1224687
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1285426   -0.1871982   -0.0698869
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.5600201   -0.6715857   -0.4484546
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3591370   -0.5325020   -0.1857719
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3414810   -0.3825482   -0.3004137
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.6449948   -0.7495617   -0.5404278
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1814227   -0.2306872   -0.1321583
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0967297   -0.1297258   -0.0637336
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1533129   -0.1907855   -0.1158402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0816569   -0.1000754   -0.0632384
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1001683   -0.1210225   -0.0793141
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3840469   -0.4730317   -0.2950621
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1588858   -0.2041273   -0.1136443
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.4628169   -0.5820067   -0.3436271
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1161394   -0.1906668   -0.0416120
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0136042   -0.0205384   -0.0066701
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0876648   -0.0978656   -0.0774639
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2192735   -0.2606218   -0.1779251
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1643117   -0.1789562   -0.1496672
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0725033   -0.0867976   -0.0582090
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.6012997   -0.6665015   -0.5360979
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2866276   -0.2996147   -0.2736404
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3362828   -0.3609631   -0.3116026
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1180497   -0.1806996   -0.0553998
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0458211   -0.1056485    0.0140063
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1109652   -0.1776043   -0.0443260
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1081990   -0.1681565   -0.0482415
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1030291   -0.1669032   -0.0391550
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0297778   -0.0773194    0.0177638
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0961550   -0.1542753   -0.0380346
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0890934   -0.1412901   -0.0368966
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0746022   -0.1105432   -0.0386611
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.2553911   -0.3801800   -0.1306022
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1322666   -0.2229968   -0.0415363
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0743515   -0.1094255   -0.0392775
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1047788   -0.1453996   -0.0641580
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0820464   -0.1028064   -0.0612864
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0948541   -0.1382980   -0.0514103
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.2465279   -0.3486557   -0.1444001
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0929261   -0.1661145   -0.0197377
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0026338   -0.0136291    0.0083616
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0828935   -0.1093012   -0.0564859
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2371593   -0.2816051   -0.1927134
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1131930   -0.1274173   -0.0989687
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0496068   -0.0624410   -0.0367725
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3853466   -0.4539667   -0.3167265
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2024507   -0.2180460   -0.1868553
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2220447   -0.2434578   -0.2006317
