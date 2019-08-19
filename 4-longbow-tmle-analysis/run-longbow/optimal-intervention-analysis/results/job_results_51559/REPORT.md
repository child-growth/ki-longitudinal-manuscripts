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

**Intervention Variable:** birthwt

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

agecat      studyid                    country                        birthwt                       n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       202     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  39     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       179     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   4     183
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       171     203
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                  32     203
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       155     168
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                  13     168
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       265     279
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                  14     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       244     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  14     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       113     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   5     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        79      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   9      88
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       296     343
Birth       ki1000108-IRC              INDIA                          Low birth weight                  47     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       1
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   0       1
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         6       6
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       143     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                  23     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight        18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   5      23
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1297    1423
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                 126    1423
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5       8
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   3       8
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight       106     111
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   5     111
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight        10      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13824   13824
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   0   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1302   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       702     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                  54     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5178    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                1015    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 211    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     11038   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                4671   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       534     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                 149     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       187     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  48     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                  10     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       193     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                  36     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       208     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                  21     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       253     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                  17     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       238     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  16     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       120     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   6     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       325     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  43     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       338     406
6 months    ki1000108-IRC              INDIA                          Low birth weight                  68     406
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       244     376
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                 132     376
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        15      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   2      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1001    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                 323    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       118     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  60     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       443     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1943    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                  67    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1571    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                 154    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight       100     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                   4     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight         1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                   1       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight        13      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                   1      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                   0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15757   15757
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7202    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1032    8234
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       704     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                  70     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5000    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                1252    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 248    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10636   16712
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                6076   16712
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3005    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1040    4045
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       165     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  43     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   8     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                  35     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       201     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                  20     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       186     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                  12     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       224     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  14     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       103     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   5     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       329     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  43     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       339     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                  68     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        85     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  51     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       439     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1303    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                 133    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         3       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      3971    3971
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       330     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                  91     421
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       595     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                  62     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3911    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                 910    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 215    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5340    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                3215    8555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2944    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1053    3997


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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/f58de932-2862-4ac4-8e4b-fd067c4cf561/4e269204-6ff6-4d4e-ae1c-0527396c001b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8015869   -0.9462019   -0.6569719
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9273004   -1.0718062   -0.7827947
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8836899   -1.0465502   -0.7208297
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0176294   -0.1284294    0.0931707
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0283090   -0.1155933    0.1722114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8417547    0.6485396    1.0349697
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4665908   -0.8276921   -0.1054895
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7613897   -0.9542197   -0.5685597
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0178830   -0.2106023    0.2463683
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2714602   -1.6702139   -0.8727066
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2830530   -0.6402776    0.0741716
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7537701    1.6689979    1.8385424
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0419586   -0.2438103    0.1598931
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2971366   -0.3220424   -0.2722308
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0121317   -1.1760953   -0.8481682
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7519717   -0.7815412   -0.7224023
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6158442   -0.6613025   -0.5703859
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3921103   -0.4119472   -0.3722733
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1126388   -0.1950227   -0.0302548
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0499205   -0.1156362    0.2154771
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0708051    0.8972186    1.2443916
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6452323   -0.7832241   -0.5072405
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1783086    0.0411800    0.3154372
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0830335    0.9577407    1.2083262
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4989290   -0.3039745    1.3018325
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4602260   -0.0018440    0.9222960
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3814539   -0.5428128   -0.2200949
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5285074   -0.8010872   -0.2559276
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.8149899   -0.9778860   -0.6520937
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5671349   -0.7269102   -0.4073595
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3919675   -0.5612410   -0.2226940
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0975623   -0.1927596   -0.0023649
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1108758    0.0220836    0.1996680
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1008415    0.0470380    0.1546449
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1815339   -0.2519483   -0.1111196
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3364616    0.3087497    0.3641735
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2385292    0.1563058    0.3207526
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5676778   -0.5986820   -0.5366735
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2604045   -0.3040930   -0.2167161
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4639532   -0.4876663   -0.4402402
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2954084   -0.3456365   -0.2451802
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7141170   -0.8541698   -0.5740641
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0080199   -0.3564486    0.3724884
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8729321   -0.9924682   -0.7533960
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3560034   -0.5147663   -0.1972404
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1347333    0.0133706    0.2560959
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4476879    0.3244543    0.5709215
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0239553   -0.1659622    0.2138728
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4628853   -0.5689569   -0.3568137
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5947394   -0.6941010   -0.4953778
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7053683   -0.9116963   -0.4990403
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7487455   -0.8425648   -0.6549261
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4818972   -0.5912048   -0.3725895
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7711664   -0.8248792   -0.7174535
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0533437   -1.2014817   -0.9052057
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1557819   -0.2242993   -0.0872645
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4981931   -0.5304999   -0.4658863
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5637917   -0.6021311   -0.5254523
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1477013   -1.1761085   -1.1192940
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1442541   -1.1836724   -1.1048358


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1338121   -0.2652080   -0.0024161
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6932460   -0.8209323   -0.5655596
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1508588    0.0202182    0.2814994
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0582407    0.9356446    1.1808369
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5564418    0.3598819    0.7530017
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5969910   -0.7330855   -0.4608964
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6671261   -0.8034351   -0.5308171
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4834785   -0.6351316   -0.3318253
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0834996    0.0305909    0.1364083
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1860451   -0.2417939   -0.1302962
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3026397    0.2765488    0.3287305
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.2009690    0.1225187    0.2794193
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6934213   -0.7223635   -0.6644791
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2923874   -0.3342162   -0.2505585
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5938700   -0.6133922   -0.5743478
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3785933   -0.4212191   -0.3359676
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8049038   -0.9274507   -0.6823570
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9412727   -1.0590315   -0.8235140
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3551131   -0.4698546   -0.2403717
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1236364    0.0020411    0.2452316
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1482870   -0.0231847    0.3197588
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7438165   -0.8351658   -0.6524673
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.8657047   -1.0392127   -0.6921966
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7993901   -0.8507049   -0.7480753
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1812827   -1.2816565   -1.0809088
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2281431   -0.2964243   -0.1598619
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5945219   -0.6240625   -0.5649813
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6076846   -0.6447204   -0.5706489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2994962   -1.3226572   -1.2763352
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2443883   -1.2783802   -1.2103964


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1614837   -0.2281427   -0.0948246
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1418129   -0.2150383   -0.0685874
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0207744   -0.1257884    0.0842397
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0559549   -0.0891545   -0.0227553
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0845881   -0.1327491   -0.0364271
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0485343   -0.1168316    0.0197630
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1609092   -0.2913983   -0.0304200
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2491934   -0.3382360   -0.1601507
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2876420   -0.3624923   -0.2127918
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1524684   -0.3642263    0.0592896
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4678166   -0.8771544   -0.0584788
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0501510   -0.0809204   -0.0193816
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0912846   -0.1765846   -0.0059847
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2180059   -0.2312022   -0.2048095
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0500111   -0.1842151    0.0841928
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2327739   -0.2501313   -0.2154166
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1268809   -0.1464935   -0.1072683
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3319893   -0.3449645   -0.3190141
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2556775   -0.3105449   -0.2008101
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1837325   -0.3070030   -0.0604620
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0990826   -0.1834981   -0.0146671
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0480137   -0.1056294    0.0096020
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0274498   -0.0710529    0.0161533
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0247927   -0.0612436    0.0116581
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0431445   -0.7266065    0.8128954
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0962158   -0.3199303    0.5123619
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1212227   -0.2148178   -0.0276277
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0684836   -0.2825940    0.1456268
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0937133   -0.0340333    0.2214598
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0999913   -0.1514419   -0.0485406
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0915110   -0.2099019    0.0268800
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1108083   -0.1617306   -0.0598860
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0811135   -0.1289319   -0.0332952
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0173419   -0.0272644   -0.0074193
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0045111   -0.0456327    0.0366104
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0338219   -0.0440955   -0.0235483
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0375602   -0.0623682   -0.0127522
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1257435   -0.1418384   -0.1096487
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0319828   -0.0462868   -0.0176789
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1299167   -0.1433960   -0.1164375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0831850   -0.1061092   -0.0602607
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0907869   -0.1536453   -0.0279285
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4386073    0.0651890    0.8120257
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0683406   -0.1330239   -0.0036574
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0008903   -0.1078958    0.1096763
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0110969   -0.0824752    0.0602814
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0209862   -0.0513243    0.0093520
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1243317    0.0403034    0.2083600
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0942652   -0.1349293   -0.0536012
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1490771   -0.2071508   -0.0910034
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1603364   -0.3029860   -0.0176867
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1391957   -0.1879718   -0.0904196
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1284530   -0.1816782   -0.0752278
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0282237   -0.0462514   -0.0101961
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1279389   -0.2597721    0.0038942
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0723612   -0.1018511   -0.0428712
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0963288   -0.1110861   -0.0815715
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0438929   -0.0567305   -0.0310554
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1517949   -0.1689101   -0.1346798
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1001342   -0.1217323   -0.0785361
