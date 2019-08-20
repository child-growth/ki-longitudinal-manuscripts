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
![](/tmp/cd04441a-22f6-4815-b0bc-3dfb5f523023/3c71fe75-2222-4974-9075-2599c9268bed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5084347   -0.9354731   -0.0813963
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.2115485    0.5541530    1.8689440
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1903616   -1.5693095   -0.8114137
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5360648   -1.0081471   -0.0639825
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0330109   -0.1480121    0.0819903
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1219085   -0.6656944    0.4218774
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7144700   -0.1508634    1.5798034
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0006347   -1.3637333    1.3650027
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2058235   -0.4329698    0.8446169
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3020747   -0.8014229    0.1972736
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7327055    1.6494279    1.8159831
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.5234553    0.4927545    0.5541561
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1667977    0.0297426    0.3038528
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3000757   -0.9441501    0.3439987
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6829702   -0.8219704   -0.5439699
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2683439   -0.5530204    0.0163326
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6245553   -0.6684334   -0.5806772
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5182291   -0.6640967   -0.3723614
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1365805   -0.2846157    0.0114548
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0548561    0.8818678    1.2278445
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8295975   -1.0269868   -0.6322081
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1153777   -0.0616071    0.2923625
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1232038    0.8650753    1.3813323
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9453612    0.3913940    1.4993285
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5136066    0.1879555    0.8392578
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4610679   -0.6310974   -0.2910385
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3404469   -0.8098253    0.1289315
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6822626   -0.8897173   -0.4748079
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0225946   -0.1810298    0.2262189
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6097647   -0.7420587   -0.4774707
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8950150   -1.0515781   -0.7384519
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4315075   -0.5417554   -0.3212595
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1372314   -0.2657185   -0.0087443
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0531107   -0.0311201    0.1373415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0122410   -0.0829991    0.1074812
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1627683   -0.2528938   -0.0726427
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0463839   -0.1710811    0.0783134
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5410039   -0.6302743   -0.4517335
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.6691523   -0.8840512   -0.4542534
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0054042   -0.0883818    0.0775733
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.6938801    0.6026230    0.7851373
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.1422656    0.9269773    1.3575540
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6237788    0.5463742    0.7011835
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2766230    0.2312680    0.3219780
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1696997    0.0786808    0.2607186
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6479969   -0.6768653   -0.6191285
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2704173   -0.3493890   -0.1914456
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5143929    0.4235060    0.6052798
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5485521   -0.5715763   -0.5255280
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3463649   -0.3900611   -0.3026687
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7617039   -0.8993513   -0.6240565
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3882847    0.1662809    0.6102885
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8489196   -1.0071657   -0.6906736
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4176878   -0.5270873   -0.3082883
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2937541    0.1829734    0.4045348
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2353818   -0.0509154    0.5216791
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0767749   -0.0561670    0.2097167
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4503075   -0.5638729   -0.3367420
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7087184   -0.8062470   -0.6111897
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8716652   -0.9771273   -0.7662031
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8532303   -0.9400396   -0.7664210
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5454821   -0.6449655   -0.4459987
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7869924   -0.8365076   -0.7374772
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0219644   -1.1936188   -0.8503099
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7657258   -0.8989300   -0.6325216
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0774110   -0.1751268    0.0203048
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.7333519    0.6451093    0.8215945
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.6087684    0.4650742    0.7524627
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.9386755    0.7066081    1.1707428
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1090733   -1.2921513   -0.9259953
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1899529   -0.2531050   -0.1268008
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5542290   -0.5840025   -0.5244554
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5891987   -0.6267309   -0.5516665
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1040159    0.0035168    0.2045151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2007375   -1.2274147   -1.1740603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1351069   -1.1718997   -1.0983142


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3047138    0.2786437    0.3307839
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           observed             observed           0.6477778    0.5676685    0.7278870
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4546358   -0.8525625   -0.0567091
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.8076687   -1.4423293   -0.1730081
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1212483   -0.2165298    0.4590265
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3683995   -0.8175311    0.0807321
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0405733   -0.0802128   -0.0009338
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0656295   -0.4348418    0.5661008
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0787504   -0.7189690    0.8764698
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6281347   -1.8771474    0.6208779
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.2164066   -1.8371796   -0.5956337
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0323156   -0.4313216    0.4959529
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0290863   -0.0547827   -0.0033900
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.6698022   -1.8821937   -1.4574108
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.6819402   -0.8145109   -0.5493695
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.7620672   -1.3978637   -0.1262706
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3017755   -0.4357742   -0.1677768
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4743812   -0.7542745   -0.1944878
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0995443   -0.1383093   -0.0607793
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1499128    0.0243818    0.2754438
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0032155   -0.0998446    0.0934135
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0831336   -0.1395982   -0.0266691
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1262006   -0.0179787    0.2703799
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0043325   -0.1214676    0.1128025
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0688082   -0.2872270    0.1496107
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4032877   -0.9227365    0.1161611
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0034446   -0.2797298    0.2866190
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0416087   -0.1194542    0.0362368
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2584828   -0.6894208    0.1724552
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0390140   -0.2019275    0.1238995
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1909563   -0.3127220   -0.0691906
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0559437   -0.1029771   -0.0089103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1171429   -0.2265609   -0.0077249
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0074027   -0.0859868    0.0711815
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0711392   -0.1661345    0.0238562
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0233485   -0.0582564    0.0115594
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0686922   -0.0119668    0.1493511
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0218541   -0.0943038    0.0505957
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0376295   -0.1011433    0.0258843
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0637948   -0.1057297   -0.0218599
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.0911070   -0.0568037    0.2390178
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0364038   -0.0666202   -0.0061873
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0217784   -0.0435037   -0.0000532
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0738338   -0.2698876    0.1222199
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0448155   -0.1041903    0.0145592
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0280908   -0.0087874    0.0649691
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0243813   -0.0386381    0.0874008
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0428834   -0.0540579   -0.0317088
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0234260   -0.0907203    0.0438683
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0644644   -0.1252255   -0.0037033
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0449640   -0.0570089   -0.0329192
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0434406   -0.0669261   -0.0199552
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0591216   -0.1066899   -0.0115533
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0583425   -0.0330090    0.1496940
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1033711   -0.2100973    0.0033551
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0412404   -0.0263016    0.1087824
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1738536   -0.2575662   -0.0901410
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1913199   -0.0567656    0.4394054
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0266814   -0.0853194    0.0319566
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1068431   -0.1597373   -0.0539488
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0370966   -0.0700855   -0.0041078
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0399138   -0.0871955    0.0073679
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0347109   -0.0701355    0.0007137
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0648681   -0.1063194   -0.0234168
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0229366   -0.0397634   -0.0061099
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1096220   -0.2608750    0.0416311
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0878133   -0.1759981    0.0003716
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0668328   -0.1087502   -0.0249154
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0855742   -0.1276497   -0.0434986
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0419391   -0.0873864    0.0035081
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2523320   -0.4707950   -0.0338690
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0719196   -0.2184474    0.0746082
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0916275   -0.1292583   -0.0539966
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0530948   -0.0638329   -0.0423567
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0207605   -0.0314037   -0.0101172
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1518667   -0.2152793   -0.0884541
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0970656   -0.1120984   -0.0820327
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0880019   -0.1085906   -0.0674131
