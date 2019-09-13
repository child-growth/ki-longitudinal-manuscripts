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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/01a7effc-f31f-4337-817d-68578c46d7bd/5b4f537b-b62c-4870-9be6-1a90b0cfb092/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/01a7effc-f31f-4337-817d-68578c46d7bd/5b4f537b-b62c-4870-9be6-1a90b0cfb092/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/01a7effc-f31f-4337-817d-68578c46d7bd/5b4f537b-b62c-4870-9be6-1a90b0cfb092/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.8003556   -0.9452274   -0.6554839
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -1.7823967   -2.0449445   -1.5198490
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.9298291   -1.0743922   -0.7852659
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.7425915   -2.1388133   -1.3463697
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.8297550   -0.9696821   -0.6898279
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -2.0249569   -2.5407457   -1.5091680
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0187512   -0.1294485    0.0919462
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -1.4833636   -1.7105585   -1.2561687
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0288072   -0.1151150    0.1727294
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -1.5391371   -1.8804572   -1.1978171
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.8404425    0.6470245    1.0338605
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.2740000   -1.5330936    0.9850936
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4705063   -0.8322728   -0.1087398
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -2.0055556   -2.7288456   -1.2822655
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.7620139   -0.9549892   -0.5690387
Birth       ki1000108-IRC              INDIA                          Low birth weight             NA                -2.5149275   -2.9207658   -2.1090892
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0139995   -0.2111053    0.2391043
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -2.1419809   -2.4471249   -1.8368369
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.2619048   -1.6527705   -0.8710391
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -1.9100000   -2.5005485   -1.3194515
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2911111   -0.6427608    0.0605386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -2.4060000   -3.1567453   -1.6552547
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 1.7543822    1.6696099    1.8391545
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             NA                 1.1756791    0.8501742    1.5011840
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                -0.0406604   -0.2425352    0.1612144
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight             NA                -2.0960000   -2.7810612   -1.4109388
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2970150   -0.3219101   -0.2721198
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -2.4684021   -2.5318044   -2.4049999
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.9566062   -1.0580607   -0.8551517
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -2.4308081   -2.7699635   -2.0916528
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7517146   -0.7812736   -0.7221556
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             NA                -2.1735206   -2.2360725   -2.1109688
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.6152312   -0.6606909   -0.5697715
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -2.3824805   -2.5152570   -2.2497039
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3922720   -0.4121120   -0.3724319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -1.5098738   -1.5370547   -1.4826929
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1131475   -0.1955889   -0.0307061
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -1.2828938   -1.4169006   -1.1488870
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0671589   -0.2197069    0.0853891
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -0.3831051   -0.6013043   -0.1649059
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.9971729    0.8291865    1.1651593
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.3752049   -0.5577742    1.3081840
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.6441893   -0.7821383   -0.5062404
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -0.9646379   -1.2979989   -0.6312768
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.1805018    0.0435664    0.3174372
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -0.0556666   -0.5263266    0.4149934
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 1.0842739    0.9589686    1.2095793
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                 0.9345522    0.3198718    1.5492326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.5373150    0.3813674    0.6932625
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.6193156   -0.0407409    1.2793721
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.5727639    0.3710590    0.7744687
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                 0.2300000   -0.6020097    1.0620097
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4393090   -0.5992535   -0.2793645
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -0.8077441   -1.2337891   -0.3816990
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.5522414   -0.6950143   -0.4094686
6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                -0.7643151   -1.1702157   -0.3584144
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.7197175   -0.8589702   -0.5804649
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                -0.6826450   -0.8805680   -0.4847220
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.5669220   -0.7265622   -0.4072817
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -0.9804730   -1.1082440   -0.8527020
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3525026   -0.5264918   -0.1785134
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.7371705   -1.0329912   -0.4413497
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0950708   -0.1901415   -0.0000001
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -0.5807721   -0.7604577   -0.4010865
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1181322    0.0295596    0.2067048
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -0.2590397   -0.4284698   -0.0896095
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1009826    0.0471808    0.1547843
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.4011934   -0.6785291   -0.1238577
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1689383   -0.2273544   -0.1105222
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -0.3844176   -0.5707741   -0.1980611
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.3361321    0.3084229    0.3638414
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                 0.0755871    0.0002646    0.1509096
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2392952    0.1570421    0.3215484
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.1428715   -0.3896468    0.1039037
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.5675932   -0.5985955   -0.5365908
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                -1.1954276   -1.2628097   -1.1280456
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.2599760   -0.3036903   -0.2162618
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -0.5767351   -0.7184903   -0.4349799
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.4634818   -0.4870772   -0.4398864
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -0.8238280   -0.8539595   -0.7936965
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2933055   -0.3434717   -0.2431394
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -0.6240200   -0.6971097   -0.5509302
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7119250   -0.8534105   -0.5704394
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -1.1101409   -1.3966675   -0.8236143
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.4451553    0.2345841    0.6557265
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.4762500   -0.4169100    1.3694100
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8787001   -0.9982142   -0.7591861
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.4484359   -1.8103193   -1.0865525
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.3101914   -0.4258165   -0.1945663
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -0.8560711   -1.3268570   -0.3852853
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.1719646    0.0509856    0.2929436
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -0.4782125   -1.0607444    0.1043195
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.4485405    0.3256866    0.5713943
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.3386101   -0.0742187    0.7514388
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1561165   -0.0210244    0.3332574
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0130000   -0.6302158    0.6042158
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4621602   -0.5681338   -0.3561866
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -1.3132691   -1.5592919   -1.0672464
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.6372286   -0.7347014   -0.5397558
24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                -1.2523606   -1.4731402   -1.0315809
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.7213252   -0.9329918   -0.5096585
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -1.0325149   -1.3467075   -0.7183224
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.7474379   -0.8419009   -0.6529750
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -1.3392483   -1.4958442   -1.1826524
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.4836089   -0.5929618   -0.3742561
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -0.9959654   -1.1675392   -0.8243915
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7709026   -0.8246600   -0.7171451
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -1.1379940   -1.3194489   -0.9565391
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.1743894   -1.2866797   -1.0620992
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -1.1716223   -1.3893495   -0.9538950
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1565224   -0.2249505   -0.0880943
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.9043693   -1.1527880   -0.6559506
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.4982577   -0.5305571   -0.4659583
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                -1.0202899   -1.0855982   -0.9549816
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.5633225   -0.6016925   -0.5249526
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -1.0825994   -1.2077696   -0.9574292
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.1472682   -1.1755960   -1.1189405
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -1.5533687   -1.5892668   -1.5174707
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1439533   -1.1834186   -1.1044881
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -1.5249416   -1.5934034   -1.4564798


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         NA                   NA                -0.1332432   -0.3441055    0.0776190
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611470
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1338121   -0.2652080   -0.0024161
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6932460   -0.8209323   -0.5655596
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1508588    0.0202182    0.2814994
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0582407    0.9356446    1.1808369
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5564418    0.3598819    0.7530017
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5969910   -0.7330855   -0.4608964
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6671261   -0.8034351   -0.5308171
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4834785   -0.6351316   -0.3318253
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0834996    0.0305909    0.1364083
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1860451   -0.2417939   -0.1302962
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3026397    0.2765488    0.3287305
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2009690    0.1225187    0.2794193
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6934213   -0.7223635   -0.6644791
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2923874   -0.3342162   -0.2505585
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5938700   -0.6133922   -0.5743478
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3785933   -0.4212191   -0.3359676
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8049038   -0.9274507   -0.6823570
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9412727   -1.0590315   -0.8235140
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3551131   -0.4698546   -0.2403717
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1236364    0.0020411    0.2452316
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1482870   -0.0231847    0.3197588
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7438165   -0.8351658   -0.6524673
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.8657047   -1.0392127   -0.6921966
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7993901   -0.8507049   -0.7480753
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1812827   -1.2816565   -1.0809088
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2281431   -0.2964243   -0.1598619
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5945219   -0.6240625   -0.5649813
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6076846   -0.6447204   -0.5706489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2994962   -1.3226572   -1.2763352
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2443883   -1.2783802   -1.2103964


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.9820411   -1.2823056   -0.6817766
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.8127624   -1.2332865   -0.3922383
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -1.1952019   -1.7306806   -0.6597232
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -1.4646124   -1.7201676   -1.2090572
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -1.5679443   -1.9382162   -1.1976724
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -1.1144425   -2.3883056    0.1594207
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -1.5350492   -2.3437665   -0.7263320
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -1.7529135   -2.2039658   -1.3018612
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    -2.1559804   -2.5580322   -1.7539286
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.6480952   -1.3562785    0.0600880
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -2.1148889   -2.9439100   -1.2858677
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.5787031   -0.9151466   -0.2422595
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight             Normal or high birthweight    -2.0553396   -2.7695260   -1.3411532
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -2.1713872   -2.2395315   -2.1032429
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -1.4742019   -1.8284727   -1.1199312
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -1.4218060   -1.4910040   -1.3526080
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -1.7672493   -1.9075737   -1.6269248
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.1176018   -1.1498173   -1.0853864
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.1697463   -1.3277083   -1.0117843
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3159462   -0.5833318   -0.0485606
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.6219680   -1.5725147    0.3285787
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.3204485   -0.6818975    0.0410004
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -0.2361684   -0.7264312    0.2540944
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.1497217   -0.7771686    0.4777251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0820006   -0.5973132    0.7613144
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.3427639   -1.1988742    0.5133465
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.3684351   -0.8238320    0.0869619
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.2120737   -0.6437799    0.2196326
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     0.0370725   -0.2043911    0.2785361
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    -0.4135510   -0.5975079   -0.2295941
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3846678   -0.7290164   -0.0403193
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.4857013   -0.6889362   -0.2824664
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3771719   -0.5689654   -0.1853784
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.5021760   -0.7846114   -0.2197405
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.2154793   -0.4106253   -0.0203333
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -0.2605450   -0.3407904   -0.1802997
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -0.3821668   -0.6421526   -0.1221810
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.6278345   -0.7018849   -0.5537840
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -0.3167591   -0.4650824   -0.1684357
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3603462   -0.3970819   -0.3236105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3307144   -0.4173608   -0.2440681
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3982159   -0.7175703   -0.0788615
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.0310947   -0.8865517    0.9487411
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.5697358   -0.9521484   -0.1873232
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -0.5458797   -1.0304474   -0.0613120
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.6501771   -1.2438606   -0.0564936
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -0.1099304   -0.5402132    0.3203524
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.1691165   -0.8112491    0.4730160
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.8511089   -1.1192448   -0.5829731
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.6151320   -0.8571898   -0.3730741
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3111898   -0.6913751    0.0689955
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.5918103   -0.7747844   -0.4088362
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.5123564   -0.7151033   -0.3096096
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.3670915   -0.5564702   -0.1777127
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0027672   -0.2417490    0.2472834
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -0.7478469   -1.0056535   -0.4900402
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.5220323   -0.5946068   -0.4494577
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -0.5192769   -0.6501647   -0.3883890
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.4061005   -0.4509144   -0.3612866
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.3809883   -0.4606825   -0.3012942


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1627149   -0.2293857   -0.0960442
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.1392842   -0.2109879   -0.0675806
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0747093   -0.1285165   -0.0209021
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0548331   -0.0879073   -0.0217588
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0850863   -0.1331956   -0.0369769
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0472221   -0.1148107    0.0203664
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1569937   -0.2850311   -0.0289562
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.2485691   -0.3380252   -0.1591131
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2837585   -0.3611598   -0.2063573
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1620238   -0.3683008    0.0442532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.4597585   -0.8663941   -0.0531228
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0507631   -0.0815055   -0.0200207
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                -0.0925829   -0.1784953   -0.0066704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2181275   -0.2313150   -0.2049399
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1055366   -0.1422953   -0.0687780
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.2330310   -0.2503814   -0.2156807
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1274939   -0.1470691   -0.1079186
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3318276   -0.3447792   -0.3188760
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2551688   -0.3098426   -0.2004949
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0666531   -0.1264999   -0.0068063
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0254504   -0.0661688    0.0152680
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0490567   -0.1068937    0.0087803
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0296430   -0.0717873    0.0125014
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0260332   -0.0625601    0.0104937
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0047585   -0.0401517    0.0496688
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0163221   -0.0590504    0.0264062
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0633677   -0.1207203   -0.0060150
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0447496   -0.1152697    0.0257706
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0015591   -0.0878427    0.0847246
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.1002042   -0.1516412   -0.0487671
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1309759   -0.2483236   -0.0136281
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1132997   -0.1641505   -0.0624490
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0883700   -0.1353410   -0.0413989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0174830   -0.0273773   -0.0075887
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0171068   -0.0346361    0.0004226
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0334925   -0.0437659   -0.0232190
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0383262   -0.0632045   -0.0134480
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1258281   -0.1419156   -0.1097406
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0324113   -0.0467044   -0.0181183
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1303882   -0.1437320   -0.1170443
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0852878   -0.1079182   -0.0626573
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0929789   -0.1579954   -0.0279624
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0014719   -0.0419784    0.0449223
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0625726   -0.1277353    0.0025901
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0449217   -0.0934070    0.0035636
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0483282   -0.0915997   -0.0050567
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0218388   -0.0529103    0.0092327
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0078295   -0.0383108    0.0226519
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0949903   -0.1357621   -0.0542185
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1065880   -0.1531945   -0.0599815
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1443795   -0.2971329    0.0083739
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1405032   -0.1895347   -0.0914717
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1267413   -0.1798693   -0.0736132
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0284875   -0.0465486   -0.0104264
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0068932   -0.0595095    0.0457230
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0716207   -0.1010481   -0.0421933
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0962642   -0.1110322   -0.0814962
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0443621   -0.0572769   -0.0314473
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1522280   -0.1694296   -0.1350264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1004350   -0.1220699   -0.0788001
