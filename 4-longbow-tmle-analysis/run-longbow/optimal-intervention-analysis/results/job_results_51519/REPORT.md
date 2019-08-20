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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              47     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0             170     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1              21     191
Birth       ki0047075b-MAL-ED          INDIA                          0             173     206
Birth       ki0047075b-MAL-ED          INDIA                          1              33     206
Birth       ki0047075b-MAL-ED          NEPAL                          0             155     173
Birth       ki0047075b-MAL-ED          NEPAL                          1              18     173
Birth       ki0047075b-MAL-ED          PERU                           0             253     287
Birth       ki0047075b-MAL-ED          PERU                           1              34     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             234     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              28     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             105     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              18     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              74      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              16      90
Birth       ki1000108-IRC              INDIA                          0             343     388
Birth       ki1000108-IRC              INDIA                          1              45     388
Birth       ki1000109-EE               PAKISTAN                       0               1       2
Birth       ki1000109-EE               PAKISTAN                       1               1       2
Birth       ki1000109-ResPak           PAKISTAN                       0               5       7
Birth       ki1000109-ResPak           PAKISTAN                       1               2       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             141     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              46     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     0              27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               5      27
Birth       ki1101329-Keneba           GAMBIA                         0            1459    1541
Birth       ki1101329-Keneba           GAMBIA                         1              82    1541
Birth       ki1114097-CMIN             BANGLADESH                     0               7      13
Birth       ki1114097-CMIN             BANGLADESH                     1               6      13
Birth       ki1114097-CMIN             BRAZIL                         0             110     115
Birth       ki1114097-CMIN             BRAZIL                         1               5     115
Birth       ki1114097-CMIN             PERU                           0              10      10
Birth       ki1114097-CMIN             PERU                           1               0      10
Birth       ki1114097-CONTENT          PERU                           0               2       2
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1119695-PROBIT           BELARUS                        0           13851   13884
Birth       ki1119695-PROBIT           BELARUS                        1              33   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12398   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1432   13830
Birth       ki1135781-COHORTS          GUATEMALA                      0             802     852
Birth       ki1135781-COHORTS          GUATEMALA                      1              50     852
Birth       ki1135781-COHORTS          INDIA                          0            5848    6640
Birth       ki1135781-COHORTS          INDIA                          1             792    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1             187    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           13275   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            6338   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             575     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             247     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             202     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              39     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0             188     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              21     209
6 months    ki0047075b-MAL-ED          INDIA                          0             197     236
6 months    ki0047075b-MAL-ED          INDIA                          1              39     236
6 months    ki0047075b-MAL-ED          NEPAL                          0             209     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              27     236
6 months    ki0047075b-MAL-ED          PERU                           0             239     273
6 months    ki0047075b-MAL-ED          PERU                           1              34     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             229     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             296     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              73     369
6 months    ki1000108-IRC              INDIA                          0             361     407
6 months    ki1000108-IRC              INDIA                          1              46     407
6 months    ki1000109-EE               PAKISTAN                       0             246     372
6 months    ki1000109-EE               PAKISTAN                       1             126     372
6 months    ki1000109-ResPak           PAKISTAN                       0             173     235
6 months    ki1000109-ResPak           PAKISTAN                       1              62     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             972    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             364    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             452     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             523     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              60     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             139    2029
6 months    ki1101329-Keneba           GAMBIA                         0            1892    2089
6 months    ki1101329-Keneba           GAMBIA                         1             197    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0             504     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1              59     563
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243
6 months    ki1114097-CMIN             BRAZIL                         0             104     108
6 months    ki1114097-CMIN             BRAZIL                         1               4     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0             748     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             100     848
6 months    ki1114097-CMIN             PERU                           0             605     637
6 months    ki1114097-CMIN             PERU                           1              32     637
6 months    ki1114097-CONTENT          PERU                           0             197     215
6 months    ki1114097-CONTENT          PERU                           1              18     215
6 months    ki1119695-PROBIT           BELARUS                        0           15632   15761
6 months    ki1119695-PROBIT           BELARUS                        1             129   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7446    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             849    8295
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     961
6 months    ki1135781-COHORTS          GUATEMALA                      1             152     961
6 months    ki1135781-COHORTS          INDIA                          0            6048    6860
6 months    ki1135781-COHORTS          INDIA                          1             812    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2552    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1             156    2708
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11751   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5060   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3475    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0             153     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              16     169
24 months   ki0047075b-MAL-ED          INDIA                          0             190     227
24 months   ki0047075b-MAL-ED          INDIA                          1              37     227
24 months   ki0047075b-MAL-ED          NEPAL                          0             202     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              26     228
24 months   ki0047075b-MAL-ED          PERU                           0             174     201
24 months   ki0047075b-MAL-ED          PERU                           1              27     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             216     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              22     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             297     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              75     372
24 months   ki1000108-IRC              INDIA                          0             362     409
24 months   ki1000108-IRC              INDIA                          1              47     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             355     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             518     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              59     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1101329-Keneba           GAMBIA                         0            1549    1725
24 months   ki1101329-Keneba           GAMBIA                         1             176    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0             448     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1              51     499
24 months   ki1114097-CMIN             BANGLADESH                     0             153     242
24 months   ki1114097-CMIN             BANGLADESH                     1              89     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0             450     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             101     551
24 months   ki1114097-CMIN             PERU                           0             343     429
24 months   ki1114097-CMIN             PERU                           1              86     429
24 months   ki1114097-CONTENT          PERU                           0             147     164
24 months   ki1114097-CONTENT          PERU                           1              17     164
24 months   ki1119695-PROBIT           BELARUS                        0            4024    4035
24 months   ki1119695-PROBIT           BELARUS                        1              11    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             356     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             101     457
24 months   ki1135781-COHORTS          GUATEMALA                      0             742    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1             331    1073
24 months   ki1135781-COHORTS          INDIA                          0            4699    5340
24 months   ki1135781-COHORTS          INDIA                          1             641    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2310    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1             135    2445
24 months   ki1148112-LCNI-5           MALAWI                         0             377     579
24 months   ki1148112-LCNI-5           MALAWI                         1             202     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5961    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2671    8632
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
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
![](/tmp/18bcd4d0-777e-4288-b173-52ebe6f43c86/fb38d38b-de22-42e1-a9d3-5ef9fc17091d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7336704   -0.8340194   -0.6333215
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5011559   -0.6274281   -0.3748837
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6945872   -0.8056007   -0.5835737
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4671696   -0.5906772   -0.3436621
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6956953   -0.7873587   -0.6040320
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5002899   -0.6088272   -0.3917525
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5953233   -0.7546464   -0.4360003
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6183155   -0.7729698   -0.4636611
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0652595   -0.0756757    0.2061947
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.9630214   -1.0707817   -0.8552611
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7339920   -1.0481254   -0.4198587
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2056534    0.1521971    0.2591097
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.1975439    0.0268015    0.3682863
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3341240    1.1733616    1.4948865
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2352498   -0.2523547   -0.2181449
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3073546    0.2356457    0.3790635
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3926463   -0.4162570   -0.3690356
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0876814   -0.1210803   -0.0542825
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9679456   -0.9822065   -0.9536847
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9836408   -1.0536047   -0.9136769
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0112080   -1.1190176   -0.9033984
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1210633   -0.0270053    0.2691319
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0419330   -1.1561728   -0.9276933
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5224745   -0.7383887   -0.3065603
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1659089   -1.2686686   -1.0631493
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9817360   -1.1114215   -0.8520505
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1789955   -1.2991856   -1.0588054
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2255846   -1.3753610   -1.0758083
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1189589   -1.2531158   -0.9848020
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.7240251   -1.8454221   -1.6026282
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.1957083   -1.4359992   -0.9554173
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0563825   -1.1330244   -0.9797407
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.2517299   -1.3445029   -1.1589569
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2260317   -1.3150242   -1.1370391
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9873573   -1.0643908   -0.9103237
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0451413   -1.1171099   -0.9731728
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4625676   -0.5114695   -0.4136657
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8053355   -0.8524419   -0.7582291
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.1788178   -1.2702719   -1.0873636
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1804752   -1.2529145   -1.1080359
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.3197516   -1.4607539   -1.1787494
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.4101785   -0.4799131   -0.3404440
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4361227   -0.5136378   -0.3586076
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.2002920   -0.3720784   -0.0285057
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1204737    0.0222943    0.2186531
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8002330   -0.8267970   -0.7736690
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.5934975   -1.6594973   -1.5274977
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8312501   -0.8582513   -0.8042489
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0653134   -1.1070942   -1.0235326
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.0548385   -1.1122428   -0.9974342
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9601438   -0.9836121   -0.9366755
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0073716   -1.0442555   -0.9704876
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8117195   -1.9438090   -1.6796301
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0954181   -0.0792040    0.2700401
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7299779   -1.8600117   -1.5999441
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1672320   -1.2855672   -1.0488968
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6474693   -1.7667706   -1.5281681
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5753367   -1.7170701   -1.4336034
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5101072   -2.6563098   -2.3639046
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4699876   -2.6013194   -2.3386558
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7171236   -1.8166326   -1.6176146
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.0088232   -2.1142380   -1.9034084
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5108323   -1.5956252   -1.4260394
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3235326   -1.4087875   -1.2382777
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4802113   -1.5309726   -1.4294499
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7999090   -1.8862661   -1.7135519
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.2703765   -2.4122458   -2.1285072
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.3064108   -1.4046265   -1.2081951
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.3136281   -1.4092415   -1.2180147
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.5946796   -0.7695093   -0.4198498
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1287328   -0.4305867    0.1731212
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2558492   -2.3852144   -2.1264840
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.6227939   -2.6981454   -2.5474424
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.7891340   -1.8226880   -1.7555801
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3392870   -2.3848643   -2.2937096
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4878081   -1.5725313   -1.4030850
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7614039   -1.7912205   -1.7315874
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5292874   -1.5661473   -1.4924274


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3507264   -0.4479233   -0.2535296
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2597865   -0.3705433   -0.1490297
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3160439   -0.4216974   -0.2103904
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2417321   -0.3532875   -0.1301767
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2365346   -0.3177819   -0.1552874
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2263132   -0.3121359   -0.1404905
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3384978   -0.5125858   -0.1644098
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3471290   -0.5164335   -0.1778245
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3733008   -0.4816586   -0.2649429
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4316310   -0.6050297   -0.2582324
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3760080   -0.6884313   -0.0635846
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1715068   -0.2101754   -0.1328381
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.1398918   -0.2631760   -0.0166075
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0086465   -0.0132011   -0.0040919
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2657162   -0.2795651   -0.2518674
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1776246   -0.2280104   -0.1272388
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2772498   -0.2964366   -0.2580630
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1613678   -0.1847324   -0.1380032
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6067952   -0.6230753   -0.5905150
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5140234   -0.5819471   -0.4460998
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1944698   -0.2715775   -0.1173621
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0700426   -0.1277054   -0.0123798
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1784342   -0.2521580   -0.1047103
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0385848   -0.2233593    0.1461897
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1608920   -0.2228564   -0.0989277
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0816400   -0.1363923   -0.0268877
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1811260   -0.2525295   -0.1097225
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1978662   -0.2779662   -0.1177662
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1154473   -0.1739624   -0.0569323
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.4764453   -0.5786804   -0.3742102
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.2072137   -0.3297580   -0.0846694
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3454737   -0.3868625   -0.3040850
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.6469543   -0.7519397   -0.5419689
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1813504   -0.2308188   -0.1318820
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0997468   -0.1340150   -0.0654785
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1535370   -0.1910112   -0.1160628
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0808713   -0.0991925   -0.0625501
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0988014   -0.1194860   -0.0781169
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3830830   -0.4723056   -0.2938604
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1516770   -0.1963671   -0.1069868
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.4646859   -0.5838603   -0.3455116
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1974158   -0.2424888   -0.1523428
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0771321   -0.1072614   -0.0470029
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1136297   -0.1877490   -0.0395103
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0134751   -0.0203289   -0.0066212
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0905151   -0.1011018   -0.0799283
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2222361   -0.2631990   -0.1812732
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1655954   -0.1802472   -0.1509436
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0752590   -0.0898487   -0.0606693
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.6053522   -0.6699116   -0.5407928
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3529494   -0.3666033   -0.3392955
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3374225   -0.3618813   -0.3129637
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1313937   -0.1950889   -0.0676985
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0535838   -0.1091787    0.0020112
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1158371   -0.1830836   -0.0485905
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1079873   -0.1688912   -0.0470835
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1026302   -0.1667370   -0.0385233
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0474994   -0.1007475    0.0057487
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0957807   -0.1537761   -0.0377852
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0893807   -0.1806165    0.0018551
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0653540   -0.1008978   -0.0298102
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1719713   -0.2296975   -0.1142451
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0752856   -0.1101943   -0.0403769
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1060005   -0.1465858   -0.0654152
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0824540   -0.1031401   -0.0617679
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0836815   -0.1183070   -0.0490561
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.2405739   -0.3421808   -0.1389670
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2681537   -0.3296835   -0.2066238
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.2670945   -0.3292978   -0.2048912
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.1015399   -0.1742254   -0.0288545
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0026720   -0.0137089    0.0083649
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1436037   -0.2065606   -0.0806469
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2384363   -0.2827786   -0.1940940
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1176225   -0.1320387   -0.1032064
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0505781   -0.0634028   -0.0377534
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3876323   -0.4548184   -0.3204461
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2512420   -0.2678073   -0.2346767
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2289807   -0.2506726   -0.2072888
