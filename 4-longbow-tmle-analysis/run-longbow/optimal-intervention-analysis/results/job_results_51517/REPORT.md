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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       202     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  55     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       183     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   8     191
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       172     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                  34     206
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       155     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                  18     173
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       269     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                  18     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       244     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  18     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       116     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   7     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        80      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  10      90
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       320     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                  66     386
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         2       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   0       2
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         6       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   1       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       147     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                  40     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight        19      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   8      27
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1401    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                 140    1541
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   8      13
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight       107     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   8     115
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight        10      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13884   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1901   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       717     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                  67     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5268    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                1370    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2709    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 295    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     11294   19612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                8318   19612
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       551     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                 271     822
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       327     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  42     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       339     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                  66     405
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       243     372
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                 129     372
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        15      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   2      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1003    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                 323    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       118     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  60     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       444     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1944    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                  67    2011
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
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15761   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7235    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1030    8265
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       703     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                  68     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5005    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                1256    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2418    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 248    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10660   16740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                6080   16740
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3004    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1037    4041
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        86     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  51     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       438     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 139     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1304    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                 132    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         3       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      4035    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       362     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                  93     455
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       592     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                  61     653
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3949    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                 912    4861
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2194    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 212    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5361    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                3223    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2955    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1055    4010


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
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
![](/tmp/3de7ba10-a76d-4cce-84a1-be72ce63c1a7/76d7c031-816a-4d90-a5f9-5ee8cdfab48a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7783426   -0.8959091   -0.6607761
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6752581   -0.8242263   -0.5262899
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8504522   -0.9912881   -0.7096162
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5090580   -0.6442612   -0.3738547
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8016562   -0.9021466   -0.7011657
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4869805   -0.6201772   -0.3537838
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8206531   -1.0194742   -0.6218320
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8355031   -1.0533614   -0.6176449
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1778363   -0.3457258   -0.0099468
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1121632   -1.2247524   -0.9995739
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2106053   -0.5942527    0.1730422
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8494377   -1.3024163   -0.3964592
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1806580    0.1186442    0.2426718
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.1816087   -0.0064967    0.3697141
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3124566   -0.3323513   -0.2925619
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2781106    0.1958838    0.3603374
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3590232   -0.3857878   -0.3322587
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0772544   -0.1130815   -0.0414273
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9533084   -0.9714367   -0.9351801
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0500692   -1.1305335   -0.9696049
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0523470   -1.1790081   -0.9256860
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0881008   -0.0585391    0.2347408
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1213585   -1.2492565   -0.9934605
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4703784   -0.5844298   -0.3563270
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2325990   -1.3371453   -1.1280528
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0027866   -1.1295462   -0.8760271
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1815090   -1.3476212   -1.0153967
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3070730   -1.4549559   -1.1591902
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0883041   -1.2247905   -0.9518178
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.8492490   -1.9871265   -1.7113715
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1535381   -1.2546182   -1.0524579
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1871104   -1.3601973   -1.0140234
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8902337   -0.9728024   -0.8076650
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0050653   -1.0818882   -0.9282424
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5103218   -0.5598129   -0.4608308
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8265112   -0.8778054   -0.7752169
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7590248   -0.7855417   -0.7325079
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6592453   -1.7813651   -1.5371254
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7925795   -0.8225644   -0.7625946
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0398672   -1.0825919   -0.9971425
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9844194   -1.0093185   -0.9595202
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1345637   -1.1795860   -1.0895415
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.7982471   -1.9315764   -1.6649177
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2989807   -0.5200057   -0.0779557
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8015951   -1.9385411   -1.6646491
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2032924   -1.3259750   -1.0806098
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5404481   -1.6776857   -1.4032105
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6006181   -1.7390692   -1.4621671
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4107795   -2.6067377   -2.2148214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5044998   -2.6125241   -2.3964755
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6736397   -1.7742208   -1.5730585
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.9238571   -2.1576462   -1.6900680
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4408855   -1.5340327   -1.3477384
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2560768   -1.3449162   -1.1672374
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5221222   -1.5783449   -1.4658994
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2898905   -2.4199745   -2.1598064
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7656139   -2.8679629   -2.6632649
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.7548290   -1.7916282   -1.7180297
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3200380   -2.3664747   -2.2736012
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7774101   -1.8093139   -1.7455063
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6187033   -1.6618566   -1.5755499


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
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3148964   -0.4754546   -0.1543382
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BRAZIL                         observed             observed           0.0576522   -0.1471825    0.2624869
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1221939    0.0348987    0.2094890
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698147   -0.6979800   -0.6416494
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2435386   -0.2827491   -0.2043282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5746910   -1.5944136   -1.5549684
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2020000   -1.3213394   -1.0826606
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1997307   -1.3188993   -1.0805621
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5434862   -0.6569704   -0.4300019
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3189691   -1.4274339   -1.2105044
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.2288492   -1.3944872   -1.0632112
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2275514   -1.3590342   -1.0960687
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4032504   -1.4822018   -1.3242989
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4277434   -1.5827644   -1.2727225
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5394360   -0.5886359   -0.4902361
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9244603   -0.9755212   -0.8733993
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8889117   -0.9149009   -0.8629224
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.7858495   -1.8598889   -1.7118102
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9939850   -1.0230017   -0.9649683
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1372543   -1.1796249   -1.0948837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3133943   -1.3365653   -1.2902232
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3509354   -1.3927945   -1.3090764
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9389663   -2.0658782   -1.8120544
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8287045   -1.9551251   -1.7022839
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2431448   -1.3633659   -1.1229237
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7473232   -1.8685873   -1.6260592
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.4518519   -2.6434682   -2.2602356
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7781532   -1.8722784   -1.6840279
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2364903   -2.4267511   -2.0462295
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5813420   -1.6360920   -1.5265921
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3941758   -2.5091458   -2.2792058
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8428484   -2.9257590   -2.7599378
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9000555   -1.9341618   -1.8659493
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3867789   -2.4319653   -2.3415925
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0136952   -2.0414244   -1.9859661
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7517855   -1.7900153   -1.7135558


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3060543   -0.3958774   -0.2162311
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0856843   -0.1511774   -0.0201912
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1601789   -0.2386316   -0.0817263
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1998438   -0.3001272   -0.0995603
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1305738   -0.1950607   -0.0660870
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2396226   -0.3378781   -0.1413670
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1131680   -0.2150142   -0.0113218
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1299413   -0.2178241   -0.0420585
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1370601   -0.2246223   -0.0494978
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2824892   -0.3824407   -0.1825378
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3186805   -0.5544028   -0.0829581
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2605623   -0.5549421    0.0338176
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1465113   -0.1765986   -0.1164240
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.1239565   -0.2313977   -0.0165153
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1885094   -0.2002280   -0.1767908
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1559167   -0.2008534   -0.1109800
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3107915   -0.3301258   -0.2914571
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1662842   -0.1889398   -0.1436287
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6213826   -0.6385395   -0.6042257
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4475951   -0.5124582   -0.3827319
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1496530   -0.2194345   -0.0798714
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0370801   -0.0735529   -0.0006073
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0783722   -0.1334164   -0.0233280
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0731078   -0.1211405   -0.0250751
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0863701   -0.1336742   -0.0390660
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0605893   -0.1083668   -0.0128119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0473402   -0.0963523    0.0016718
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1163777   -0.1722369   -0.0605185
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1392473   -0.2076296   -0.0708650
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.3512215   -0.4483454   -0.2540975
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2497123   -0.3025112   -0.1969134
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2406331   -0.3609856   -0.1202806
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1968703   -0.2451443   -0.1485964
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1936130   -0.2384761   -0.1487499
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0291142   -0.0405762   -0.0176521
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0979491   -0.1197744   -0.0761237
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1298869   -0.1420083   -0.1177655
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1266043   -0.2325129   -0.0206956
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2014055   -0.2186732   -0.1841377
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0973871   -0.1151259   -0.0796484
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3289749   -0.3430015   -0.3149483
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2163717   -0.2410324   -0.1917109
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1407193   -0.2215773   -0.0598613
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3408150    0.1513620    0.5302681
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0271094   -0.0830582    0.0288393
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0398524   -0.0837557    0.0040509
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2068751   -0.3016707   -0.1120795
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0222180   -0.0596670    0.0152311
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0410723   -0.0859826    0.0038380
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0548685   -0.0878666   -0.0218704
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1045135   -0.1508580   -0.0581690
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3126332   -0.4651037   -0.1601626
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1452323   -0.1957234   -0.0947412
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1734563   -0.2278510   -0.1190615
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0592199   -0.0799956   -0.0384441
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1042854   -0.1588625   -0.0497082
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0772345   -0.1448676   -0.0096013
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1452266   -0.1630116   -0.1274416
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0667409   -0.0831544   -0.0503275
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2362851   -0.2545600   -0.2180102
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1330823   -0.1548458   -0.1113188
