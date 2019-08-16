---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             210     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              31     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0             169     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              14     183
Birth       ki0047075b-MAL-ED          INDIA                          0             173     203
Birth       ki0047075b-MAL-ED          INDIA                          1              30     203
Birth       ki0047075b-MAL-ED          NEPAL                          0             154     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              14     168
Birth       ki0047075b-MAL-ED          PERU                           0             253     279
Birth       ki0047075b-MAL-ED          PERU                           1              26     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             232     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              26     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             105     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              13     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              77      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              11      88
Birth       ki1000108-IRC              INDIA                          0             318     343
Birth       ki1000108-IRC              INDIA                          1              25     343
Birth       ki1000109-EE               PAKISTAN                       0               0       1
Birth       ki1000109-EE               PAKISTAN                       1               1       1
Birth       ki1000109-ResPak           PAKISTAN                       0               5       6
Birth       ki1000109-ResPak           PAKISTAN                       1               1       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             141     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              25     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0              27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              22      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1      23
Birth       ki1101329-Keneba           GAMBIA                         0            1347    1423
Birth       ki1101329-Keneba           GAMBIA                         1              76    1423
Birth       ki1114097-CMIN             BANGLADESH                     0               7       8
Birth       ki1114097-CMIN             BANGLADESH                     1               1       8
Birth       ki1114097-CMIN             BRAZIL                         0             110     111
Birth       ki1114097-CMIN             BRAZIL                         1               1     111
Birth       ki1114097-CMIN             PERU                           0              10      10
Birth       ki1114097-CMIN             PERU                           1               0      10
Birth       ki1114097-CONTENT          PERU                           0               2       2
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1119695-PROBIT           BELARUS                        0           13798   13824
Birth       ki1119695-PROBIT           BELARUS                        1              26   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12226   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             690   12916
Birth       ki1135781-COHORTS          GUATEMALA                      0             732     756
Birth       ki1135781-COHORTS          GUATEMALA                      1              24     756
Birth       ki1135781-COHORTS          INDIA                          0            5813    6193
Birth       ki1135781-COHORTS          INDIA                          1             380    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2813    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1              86    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           13242   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            2467   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             575     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             108     683
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             294     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              74     368
6 months    ki1000108-IRC              INDIA                          0             360     408
6 months    ki1000108-IRC              INDIA                          1              48     408
6 months    ki1000109-EE               PAKISTAN                       0             246     376
6 months    ki1000109-EE               PAKISTAN                       1             130     376
6 months    ki1000109-ResPak           PAKISTAN                       0             173     235
6 months    ki1000109-ResPak           PAKISTAN                       1              62     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             969    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             365    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             451     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             522     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              60     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028
6 months    ki1101329-Keneba           GAMBIA                         0            1893    2089
6 months    ki1101329-Keneba           GAMBIA                         1             196    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0             504     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1              59     563
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243
6 months    ki1114097-CMIN             BRAZIL                         0             104     108
6 months    ki1114097-CMIN             BRAZIL                         1               4     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0             747     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             102     849
6 months    ki1114097-CMIN             PERU                           0             604     636
6 months    ki1114097-CMIN             PERU                           1              32     636
6 months    ki1114097-CONTENT          PERU                           0             197     215
6 months    ki1114097-CONTENT          PERU                           1              18     215
6 months    ki1119695-PROBIT           BELARUS                        0           15627   15757
6 months    ki1119695-PROBIT           BELARUS                        1             130   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7414    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             850    8264
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     963
6 months    ki1135781-COHORTS          GUATEMALA                      1             154     963
6 months    ki1135781-COHORTS          INDIA                          0            6034    6850
6 months    ki1135781-COHORTS          INDIA                          1             816    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2549    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1             157    2706
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11717   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5067   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3473    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1360    4833
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             354     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             519     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              59     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1101329-Keneba           GAMBIA                         0            1550    1726
24 months   ki1101329-Keneba           GAMBIA                         1             176    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          0             447     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1              51     498
24 months   ki1114097-CMIN             BANGLADESH                     0             153     243
24 months   ki1114097-CMIN             BANGLADESH                     1              90     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0             450     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             101     551
24 months   ki1114097-CMIN             PERU                           0             343     429
24 months   ki1114097-CMIN             PERU                           1              86     429
24 months   ki1114097-CONTENT          PERU                           0             147     164
24 months   ki1114097-CONTENT          PERU                           1              17     164
24 months   ki1119695-PROBIT           BELARUS                        0            3960    3971
24 months   ki1119695-PROBIT           BELARUS                        1              11    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             324     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              99     423
24 months   ki1135781-COHORTS          GUATEMALA                      0             744    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1             338    1082
24 months   ki1135781-COHORTS          INDIA                          0            4656    5291
24 months   ki1135781-COHORTS          INDIA                          1             635    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2311    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1             138    2449
24 months   ki1148112-LCNI-5           MALAWI                         0             365     563
24 months   ki1148112-LCNI-5           MALAWI                         1             198     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5933    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2670    8603
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c90e733d-9c1c-4f6f-ba0f-78106217bd99/d8888d7c-605c-4cc0-816f-16ddc8fdfa84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c90e733d-9c1c-4f6f-ba0f-78106217bd99/d8888d7c-605c-4cc0-816f-16ddc8fdfa84/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c90e733d-9c1c-4f6f-ba0f-78106217bd99/d8888d7c-605c-4cc0-816f-16ddc8fdfa84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0229706   -1.1653840   -0.8805572
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.5505782   -0.9652368   -0.1359197
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.3304291    0.1519246    0.5089336
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 1.0379117    0.4474618    1.6283617
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0783586   -1.2250272   -0.9316900
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0168036   -1.4198263   -0.6137808
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.9256768   -1.0672550   -0.7840987
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.6279585   -1.2926288    0.0367118
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0321618   -0.1470648    0.0827412
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.5100686   -0.9504158   -0.0697213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0662254   -0.2123553    0.0799045
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1853198   -0.4332437    0.8038833
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7794148    0.5776580    0.9811717
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7622712   -0.3346936    1.8592360
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.6895414   -1.0420790   -0.3370038
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.5328261   -0.8483094    1.9139616
Birth       ki1000108-IRC              INDIA                          0                    NA                -1.1101006   -1.3013532   -0.9188480
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.2607578   -0.3621230    0.8836386
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.3261433   -0.5222985   -0.1299882
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1908975   -0.9393667    0.5575716
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 1.7331091    1.6498664    1.8163518
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 1.2281302    0.7686520    1.6876084
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.1496350   -1.3640407   -0.9352294
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.5768859    0.5466418    0.6071300
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.5541758   -0.5802742   -0.5280774
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1752286    0.0371593    0.3132978
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.0867050   -1.1889490   -0.9844609
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3181643   -0.8965806    0.2602520
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -1.0020604   -1.0325082   -0.9716126
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7007607   -0.8381027   -0.5634187
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.7577730   -0.8045941   -0.7109520
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2706681   -0.5661142    0.0247780
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.7442815   -0.7653832   -0.7231798
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6140673   -0.6597830   -0.5683517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3700149   -0.4584434   -0.2815864
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.3766547   -0.5792758   -0.1740336
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1188993   -0.2636208    0.0258223
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1845321   -0.4762296    0.1071654
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 1.0555838    0.8826316    1.2285359
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.2912905   -0.1423728    0.7249539
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.6911470   -0.8283892   -0.5539048
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.6260750   -0.9314465   -0.3207035
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1457663    0.0058373    0.2856952
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1284473   -0.5083523    0.2514578
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 1.0679117    0.9403132    1.1955102
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.9654738    0.5441717    1.3867759
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4932224    0.3379885    0.6484564
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 1.0203723    0.4674372    1.5733073
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5082174    0.3671482    0.6492865
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5494212    0.2174057    0.8814367
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.4630501   -0.6331969   -0.2929034
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5471611   -0.9290418   -0.1652804
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.6291859   -0.7682581   -0.4901138
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2533901   -0.7446100    0.2378299
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.7651858   -0.8977645   -0.6326070
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.6640602   -0.8750421   -0.4530782
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0150037   -0.1888706    0.2188780
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.6638502   -1.0521787   -0.2755217
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6082811   -0.7403123   -0.4762499
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.8164872   -1.0427338   -0.5902407
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.9305026   -1.0775900   -0.7834153
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.0803180   -1.2663086   -0.8943274
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.4192359   -0.5138669   -0.3246049
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.5067558   -0.7532252   -0.2602864
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1798937   -0.2683261   -0.0914614
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.5092955   -0.7865381   -0.2320529
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0536203   -0.0305889    0.1378295
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0806973   -0.3202072    0.1588125
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0816980    0.0271740    0.1362219
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0597731   -0.1535880    0.2731341
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.1784684   -0.2316400   -0.1252969
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.2486935   -0.4261472   -0.0712398
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0488595   -0.1737724    0.0760534
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2194089   -0.4590948    0.0202770
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.5840441   -0.6731741   -0.4949140
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.7893905   -1.1056670   -0.4731140
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.5750970   -0.7511925   -0.3990016
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.6071369   -0.8610468   -0.3532270
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0057647   -0.0887283    0.0771988
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.3085923   -0.5306523   -0.0865322
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.6935323    0.6022359    0.7848288
6 months    ki1114097-CMIN             PERU                           1                    NA                 0.1611924   -0.2455355    0.5679203
6 months    ki1114097-CONTENT          PERU                           0                    NA                 1.0681572    0.9428317    1.1934826
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9710609    0.6832166    1.2589052
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.5786657    0.5178732    0.6394581
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.6400093    0.5668360    0.7131825
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3113515    0.2839351    0.3387680
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2429904    0.1588924    0.3270883
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.2310326    0.1540200    0.3080452
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0016219   -0.1864274    0.1896712
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.6477809   -0.6766527   -0.6189091
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.0134140   -1.1001191   -0.9267090
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2826845   -0.3249402   -0.2404288
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4709298   -0.6658601   -0.2759994
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.5282281    0.4405116    0.6159446
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.3291458    0.2049198    0.4533718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5495536   -0.5721434   -0.5269638
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6966573   -0.7292340   -0.6640806
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3456212   -0.3893225   -0.3019199
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.5031371   -0.5746289   -0.4316453
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.7665634   -0.9046119   -0.6285149
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1310749   -1.3865302   -0.8756196
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.4765185    0.2586633    0.6943737
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.5547414   -0.0645535    1.1740362
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.9298323   -1.0579788   -0.8016858
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0696860   -1.3507558   -0.7886161
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.3499522   -0.4652715   -0.2346329
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.4098150   -0.8910539    0.0714238
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1663873    0.0435557    0.2892188
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1479830   -0.5928256    0.2968597
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4349646    0.3109179    0.5590114
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4164739   -0.1017265    0.9346744
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0796531   -0.0536662    0.2129724
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0767951   -0.4675503    0.3139602
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.4455089   -0.5585529   -0.3324649
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9877639   -1.2158364   -0.7596914
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.7099947   -0.8076678   -0.6123216
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.9202379   -1.1829371   -0.6575388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.8743903   -0.9802883   -0.7684924
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.1049401   -1.3625556   -0.8473246
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8502290   -0.9379149   -0.7625432
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1195335   -1.3557820   -0.8832849
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.5469862   -0.6465245   -0.4474480
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.0097744   -1.2865891   -0.7329597
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.7875347   -0.8371050   -0.7379643
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.0445430   -1.1968737   -0.8922122
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1183789   -1.2110180   -1.0257398
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2598485   -1.5445252   -0.9751718
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.7690547   -0.9024239   -0.6356855
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -1.0203740   -1.2145874   -0.8261607
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0768286   -0.1745410    0.0208839
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.4440640   -0.6414649   -0.2466632
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.7334930    0.6453572    0.8216289
24 months   ki1114097-CMIN             PERU                           1                    NA                 0.2731472    0.0980302    0.4482641
24 months   ki1114097-CONTENT          PERU                           0                    NA                 0.6085721    0.4646394    0.7525047
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.1667549   -0.1527727    0.4862824
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.6853844    0.5724013    0.7983674
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.8791231    0.6617496    1.0964965
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.1850454   -1.2993992   -1.0706915
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.1447365   -1.3535938   -0.9358792
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1900913   -0.2531443   -0.1270383
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4898285   -0.5892110   -0.3904461
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.5541568   -0.5839379   -0.5243756
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.0009147   -1.0793506   -0.9224788
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.5912108   -0.6287163   -0.5537053
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9590398   -1.1414990   -0.7765806
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.1004519    0.0001777    0.2007261
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.3433321   -0.4837780   -0.2028863
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1993359   -1.2260056   -1.1726662
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.5192830   -1.5601842   -1.4783818
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1356371   -1.1723312   -1.0989430
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4436063   -1.5037143   -1.3834982


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1683617   -0.3528233    0.0160999
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           NA                   NA                 0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3047138    0.2786437    0.3307839
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           NA                   NA                 0.6477778    0.5676685    0.7278870
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.4723924    0.0337773    0.9110075
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.7074827    0.0927234    1.3222420
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.0615550   -0.3673226    0.4904326
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0                  0.2977183   -0.3800508    0.9754874
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.4779067   -0.9334495   -0.0223639
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2515452   -0.3846118    0.8877022
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0171436   -1.1337445    1.0994573
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.2223675   -0.2131085    2.6578435
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  1.3708584    0.7189662    2.0227506
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1352458   -0.5652330    0.8357245
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 -0.5049789   -0.9716530   -0.0383047
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  1.7265209    1.5047208    1.9483211
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.7294044    0.5889200    0.8698887
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.7685407    0.1808873    1.3561941
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.3012997    0.1607031    0.4418963
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.4871049    0.1881897    0.7860201
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1302142    0.0818404    0.1785879
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0066398   -0.2272221    0.2139425
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0656329   -0.3918152    0.2605495
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.7642932   -1.2312332   -0.2973533
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0650720   -0.2716008    0.4017449
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2742135   -0.6781524    0.1297253
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.1024379   -0.5434111    0.3385353
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.5271498   -0.0475558    1.1018554
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0412038   -0.3192518    0.4016595
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0841109   -0.5025719    0.3343500
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.3757959   -0.1353983    0.8869900
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  0.1011256   -0.1486826    0.3509337
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.6788540   -1.1179508   -0.2397572
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2082061   -0.3824643   -0.0339479
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.1498153   -0.3869998    0.0873691
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0875198   -0.3521836    0.1771439
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.3294017   -0.6210366   -0.0377669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1343177   -0.3886096    0.1199743
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0219249   -0.2425015    0.1986517
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0702251   -0.2554329    0.1149828
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.1705494   -0.4396751    0.0985763
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.2053464   -0.5340828    0.1233899
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0320399   -0.3415761    0.2774963
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 -0.3028275   -0.5399433   -0.0657118
6 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 -0.5323400   -0.9492283   -0.1154516
6 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 -0.0970963   -0.4126120    0.2184194
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0613436   -0.0129452    0.1356324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0683612   -0.1568291    0.0201068
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.2294108   -0.4328956   -0.0259259
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3656331   -0.4569978   -0.2742685
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.1882453   -0.3878153    0.0113248
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.1990823   -0.3526071   -0.0455576
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1471037   -0.1841934   -0.1100140
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1575159   -0.2409424   -0.0740894
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.3645115   -0.6598202   -0.0692028
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0782229   -0.5819144    0.7383601
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1398537   -0.4481042    0.1683968
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0598628   -0.5557006    0.4359749
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.3143702   -0.7718436    0.1431032
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0184907   -0.5500493    0.5130678
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1564481   -0.5716585    0.2587623
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.5422550   -0.7968375   -0.2876725
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.2102432   -0.4904400    0.0699535
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.2305498   -0.5091029    0.0480034
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2693044   -0.5218373   -0.0167715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.4627881   -0.7567352   -0.1688410
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.2570083   -0.4174982   -0.0965184
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1414696   -0.4412543    0.1583150
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2513193   -0.4878858   -0.0147528
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 -0.3672355   -0.5878363   -0.1466347
24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 -0.4603458   -0.6565541   -0.2641375
24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 -0.4418172   -0.7917386   -0.0918957
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.1937387   -0.0320120    0.4194894
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0403089   -0.1980664    0.2786841
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.2997373   -0.4175737   -0.1819008
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.4467579   -0.5305183   -0.3629975
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.3678290   -0.5540969   -0.1815610
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.4437840   -0.6153821   -0.2721860
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3199471   -0.3672129   -0.2726813
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.3079692   -0.3777779   -0.2381605


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0599001    0.0014796    0.1183206
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0734507    0.0144486    0.1324528
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0092453   -0.0571340    0.0756245
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0212125   -0.0324064    0.0748315
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0414224   -0.0813680   -0.0014768
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0099463   -0.0514390    0.0713317
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0138055   -0.0799997    0.1076107
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0620414   -0.1112404    0.2353232
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0995175    0.0389124    0.1601226
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0563843   -0.0811166    0.1938851
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.0294900   -0.0550521   -0.0039278
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0032881   -0.0017332    0.0083094
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0390333    0.0313031    0.0467635
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0245621    0.0041286    0.0449957
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0173147    0.0087365    0.0258930
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0150480    0.0056171    0.0244788
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0201819    0.0126804    0.0276835
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0016986   -0.0323739    0.0357712
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0208967   -0.0722843    0.0304909
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0838613   -0.1402385   -0.0274841
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0122499   -0.0688267    0.0443270
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0347211   -0.0826549    0.0132128
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0135161   -0.0658036    0.0387714
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0488510   -0.0130596    0.1107617
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0088339   -0.0502727    0.0679405
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0396265   -0.1187544    0.0395015
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0302562   -0.0305876    0.0911000
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0439092   -0.0432421    0.1310604
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1833654   -0.3048927   -0.0618381
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0574273   -0.1025194   -0.0123351
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0816553   -0.1751396    0.0118290
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0196742   -0.0626405    0.0232920
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0284768   -0.0596117    0.0026581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0238581   -0.0587130    0.0109968
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007648   -0.0155052    0.0139756
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0061539   -0.0233699    0.0110621
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0351539   -0.0986148    0.0283070
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0207546   -0.0551456    0.0136363
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0029482   -0.1198662    0.1139697
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0360433   -0.0662555   -0.0058311
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.0214307   -0.0431312    0.0002699
6 months    ki1114097-CONTENT          PERU                           0                    NA                 0.0002746   -0.0251433    0.0256926
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002977   -0.0016253    0.0022206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0066377   -0.0157739    0.0024985
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0369516   -0.0697644   -0.0041388
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0430994   -0.0542796   -0.0319192
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0111588   -0.0228470    0.0005294
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0782996   -0.1358779   -0.0207214
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0439625   -0.0551639   -0.0327611
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0441843   -0.0677290   -0.0206396
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0542621   -0.1038270   -0.0046971
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0298913   -0.0942429    0.0344603
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0224585   -0.0718677    0.0269508
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0264952   -0.0800435    0.0270532
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0464868   -0.1031112    0.0101377
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0082630   -0.0492975    0.0327715
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0295596   -0.0896760    0.0305568
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1116416   -0.1644822   -0.0588011
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0358203   -0.0686537   -0.0029869
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0371887   -0.0850513    0.0106739
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0377121   -0.0655003   -0.0099240
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0633640   -0.1051301   -0.0215978
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0223943   -0.0392572   -0.0055315
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0132075   -0.0434594    0.0170444
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0844844   -0.1732034    0.0042346
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0674152   -0.1095147   -0.0253158
24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0857152   -0.1279296   -0.0435008
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0417428   -0.0876966    0.0042110
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0009591   -0.0038340    0.0057523
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0040524   -0.0514638    0.0595687
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0914891   -0.1290780   -0.0539002
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0531670   -0.0639126   -0.0424214
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0187483   -0.0290865   -0.0084102
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.1483027   -0.2113528   -0.0852526
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0984672   -0.1133708   -0.0835636
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0874717   -0.1079574   -0.0669860
