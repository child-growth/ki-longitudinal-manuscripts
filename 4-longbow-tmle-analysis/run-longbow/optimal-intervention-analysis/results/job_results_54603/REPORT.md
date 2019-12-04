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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0          16041   18062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           2021   18062
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0          12724   14244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           1520   14244
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           6422    7242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            820    7242
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/96c0be8f-b0d1-43b1-83ab-2433680b4713/2ce3b02c-b9c7-421c-b0dc-bbd69a848f62/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7181344   -0.9998534   -0.4364155
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3938662   -2.1617991   -0.6259333
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1632913   -1.5524459   -0.7741366
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0745603   -0.6391964    0.7883169
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7504070   -1.1713944   -0.3294197
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.9361840    0.6448020    1.2275661
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.6831808   -1.4065309    0.0401694
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1318491   -1.2536504   -1.0100479
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6495659   -0.8325770   -0.4665548
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8554121   -0.9800266   -0.7307976
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7449310   -0.8815518   -0.6083102
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.7049695    0.5781106    0.8318285
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7668043   -0.9337940   -0.5998147
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           2.1684215    1.9897109    2.3471321
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2358162    0.1791817    0.2924507
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.7130065    0.5641032    0.8619099
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3062793   -0.3716787   -0.2408799
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.2389571    0.1344125    0.3435017
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0975262   -1.1452008   -1.0498516
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1948500   -1.3321482   -1.0575517
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1441650   -1.3126140   -0.9757160
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0895928   -0.0624633    0.2416489
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0468745   -1.2921045   -0.8016445
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4945389   -0.6124918   -0.3765859
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4766036   -1.5829146   -1.3702926
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.3889941   -1.7825252   -0.9954630
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3835888   -1.5433963   -1.2237813
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2680469   -1.4119608   -1.1241330
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.8860199   -2.1112620   -1.6607777
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.5350511   -1.8578288   -1.2122734
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2490416   -1.3410554   -1.1570278
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.7390922   -1.8980645   -1.5801200
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3808240   -1.5153342   -1.2463139
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0507116   -1.1604561   -0.9409671
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1178404   -1.2284540   -1.0072268
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3971568   -0.5580277   -0.2362858
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8752885   -0.9620069   -0.7885701
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5321040   -1.6425193   -1.4216888
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2186976   -1.3661683   -1.0712268
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.6967432   -1.8337333   -1.5597531
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1241978    0.0008967    0.2474990
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7463973   -0.7740392   -0.7187554
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6254915   -1.7736779   -1.4773052
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9524610   -0.9970473   -0.9078747
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0617430   -1.1648857   -0.9586003
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6375279   -1.8417383   -1.4333174
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1059450   -1.1599663   -1.0519237
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2409678   -1.2792075   -1.2027281
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8662167   -2.1640179   -1.5684156
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0353660   -0.1407251    0.2114571
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7368164   -2.0405287   -1.4331040
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.4307852   -1.8097740   -1.0517964
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4098102   -2.3276762   -0.4919443
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.6508808   -2.8341699   -2.4675918
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7184142   -1.8333455   -1.6034830
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.7390119   -2.9805542   -2.4974695
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.1183894   -2.3138932   -1.9228857
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6453484   -1.7564220   -1.5342748
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3241750   -1.4412160   -1.2071341
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5397396   -1.6043076   -1.4751717
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8007837   -1.9629799   -1.6385875
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.6627721   -3.0739599   -2.2515842
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0661375   -0.4022256    0.2699507
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5055460   -1.6139764   -1.3971156
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7934403   -2.9507005   -2.6361802
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.1070914   -2.1814506   -2.0327321
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.2730704   -2.3874166   -2.1587241
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8167604   -1.8953465   -1.7381743
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8669235   -1.9271001   -1.8067470
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7403911   -1.8132732   -1.6675090


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1782283   -1.1929469   -1.1635098
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2196123   -1.2608853   -1.1783394
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1545706   -1.2720635   -1.0370777
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0820017   -0.0652646    0.2292679
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1907471   -1.3084496   -1.0730447
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5356897   -0.6466309   -0.4247484
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3000971   -1.4087542   -1.1914400
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0492424   -1.1743146   -0.9241702
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1254416   -1.1482406   -1.1026426
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2464966   -1.2832103   -1.2097829
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9287562   -2.0568859   -1.8006265
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0113750   -0.1608859    0.1836359
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8697758   -1.9956076   -1.7439440
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2990889   -1.4193577   -1.1788201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6435830   -1.7787856   -1.5083803
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.8772038   -1.9062064   -1.8482013
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7182341   -1.7544244   -1.6820437


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2444237   -0.4978351    0.0089877
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3076440   -0.4268758    1.0421637
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.3280720   -0.0662008    0.7223448
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6339818   -1.3095170    0.0415535
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0690182   -0.4045199    0.2664834
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.0492884   -1.2798215   -0.8187553
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.5551526   -1.1994374    0.0891322
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0322685   -0.1048505    0.0403135
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1660375   -0.3085503   -0.0235247
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0025766   -0.0943323    0.0891791
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1038067   -0.2157669    0.0081534
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5711187   -0.6765606   -0.4656768
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1449166   -0.2916836    0.0018505
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.8391490   -0.9706367   -0.7076612
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5770307   -0.6267533   -0.5273081
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4909724   -0.6227707   -0.3591742
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2008576   -0.2587157   -0.1429995
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3880533   -0.4815972   -0.2945094
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0807021   -0.1238276   -0.0375767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0247624   -0.1508216    0.1012969
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0104056   -0.1459818    0.1251706
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0075911   -0.0224167    0.0072345
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1438726   -0.3517908    0.0640455
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0411508   -0.0863540    0.0040524
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1765065    0.0368230    0.3161900
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3397517   -0.0347242    0.7142276
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0387620   -0.1271381    0.0496141
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0973096   -0.0075610    0.2021802
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0986569   -0.0999021    0.2972159
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.1076315   -0.1170429    0.3323059
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0290705   -0.0621521    0.0040110
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1595920   -0.2838571   -0.0353269
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0361240   -0.0607885    0.1330364
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0221555   -0.0997143    0.0554033
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0381610   -0.1176170    0.0412950
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1452652   -0.2992185    0.0086880
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0165132   -0.0855596    0.0525333
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0297967   -0.0565375   -0.0030560
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0566118   -0.1782920    0.0650684
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0122798   -0.0535341    0.0289745
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0165563   -0.1062572    0.0731446
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0693386   -0.0810694   -0.0576077
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1695362   -0.3046195   -0.0344529
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.0282723   -0.0064285    0.0629731
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0311301   -0.1228007    0.0605405
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0226628   -0.2127640    0.1674383
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0194966   -0.0679511    0.0289580
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0055288   -0.0167394    0.0056818
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0625395   -0.3338621    0.2087832
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0239910   -0.0560667    0.0080847
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1329594   -0.3982747    0.1323558
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1316963   -0.2173679    0.4807606
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2337728   -1.1180669    0.6505214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0949559   -0.0603254    0.2502372
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0455457   -0.1087093    0.0176178
24 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.1448391   -0.0437246    0.3334028
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0396933   -0.2044821    0.1250955
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0576379   -0.0107870    0.1260627
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0879450   -0.1763229    0.0004330
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0333490   -0.0755753    0.0088772
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0427401   -0.1810747    0.0955945
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed           0.1750566   -0.2017395    0.5518526
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0650526   -0.1465912    0.0164860
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0404673   -0.1325287    0.0515942
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2012432   -0.3463603   -0.0561261
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.0329434   -0.0321497    0.0980366
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1111052   -0.2155926   -0.0066178
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0693881   -0.1070984   -0.0316779
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0102803   -0.0638608    0.0433002
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0221570   -0.0451519    0.0894660
