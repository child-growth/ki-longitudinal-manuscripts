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
![](/tmp/90834d0a-64fa-4cf8-842a-fb8a5d385a10/2b268b86-7337-4a54-bc0d-96dfd8107e71/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/90834d0a-64fa-4cf8-842a-fb8a5d385a10/2b268b86-7337-4a54-bc0d-96dfd8107e71/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/90834d0a-64fa-4cf8-842a-fb8a5d385a10/2b268b86-7337-4a54-bc0d-96dfd8107e71/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7868174   -0.9036344   -0.6700004
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -2.2899557   -2.5094080   -2.0705035
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.6759563   -0.8249950   -0.5269176
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                -2.7050000   -3.4144004   -1.9955996
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8495652   -0.9907146   -0.7084157
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.7920453   -2.1489961   -1.4350944
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.5060867   -0.6412983   -0.3708752
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -2.2205659   -2.6808817   -1.7602500
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.8020128   -0.9025373   -0.7014883
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -3.0202560   -3.4544174   -2.5860947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.6130326   -0.7304034   -0.4956619
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -2.3026228   -2.9248751   -1.6803704
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.8222414   -1.0210226   -0.6234602
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -2.7828571   -3.8363989   -1.7293154
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.8336224   -1.0508465   -0.6163983
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -1.7774701   -2.0928719   -1.4620682
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1856259   -0.3528477   -0.0184041
Birth       ki1000108-IRC              INDIA                          Low birth weight             NA                -0.9802990   -1.4386208   -0.5219772
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.1081813   -1.2208096   -0.9955529
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -2.3984691   -2.7559596   -2.0409787
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2176190   -0.5928042    0.1575661
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -1.4642857   -1.7126577   -1.2159137
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.8426316   -1.2803212   -0.4049419
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -1.7450000   -2.4115287   -1.0784713
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1804898    0.1185355    0.2424442
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -1.3989881   -1.5958027   -1.2021736
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                 0.0700000   -1.1814602    1.3214602
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight             NA                -3.1987500   -4.1117863   -2.2857137
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                 0.1833645   -0.0044014    0.3711304
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight             NA                -1.6237500   -2.5678225   -0.6796774
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.3124229   -0.3323093   -0.2925364
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -1.6822785   -1.7423042   -1.6222528
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2760615    0.1939212    0.3582017
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -1.4714029   -1.7531767   -1.1896292
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3592460   -0.3860075   -0.3324845
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             NA                -1.8686575   -1.9232027   -1.8141122
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0776016   -0.1134355   -0.0417677
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -1.7645361   -1.9043779   -1.6246943
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.9544826   -0.9724171   -0.9365481
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -2.4183086   -2.4416145   -2.3950026
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.0477682   -1.1276649   -0.9678716
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -2.4387541   -2.5483412   -2.3291670
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.0505199   -1.1779974   -0.9230423
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -1.8141909   -2.0738262   -1.5545555
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0883007   -0.0582602    0.2348616
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                -0.7519487   -1.4133471   -0.0905503
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.1199648   -1.2476365   -0.9922932
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.6649210   -1.9630241   -1.3668179
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.4695239   -0.5834102   -0.3556377
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -1.2750535   -1.7015576   -0.8485494
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.2317758   -1.3362662   -1.1272853
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -2.3370697   -2.7143425   -1.9597968
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.0028858   -1.1294845   -0.8762871
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -1.9668277   -2.5856734   -1.3479819
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.1807083   -1.3469400   -1.0144767
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -2.1916667   -2.8381136   -1.5452198
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -1.3061542   -1.4542298   -1.1580787
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -2.2756762   -2.6717218   -1.8796306
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.0863616   -1.2228838   -0.9498395
6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                -1.9474823   -2.3049831   -1.5899816
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -1.8523093   -1.9901848   -1.7144338
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                -2.8551175   -3.0565929   -2.6536421
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.1531142   -1.2543660   -1.0518624
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -2.1717005   -2.2574392   -2.0859617
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.1895988   -1.3608585   -1.0183391
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -1.9157046   -2.1965017   -1.6349074
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.8885046   -0.9708919   -0.8061173
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -1.7318705   -1.8710099   -1.5927311
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.0046017   -1.0814159   -0.9277874
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -1.8263566   -1.9620974   -1.6906158
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.5102302   -0.5597305   -0.4607298
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -1.3934612   -1.6734234   -1.1134990
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.8283513   -0.8794886   -0.7772141
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -1.8485585   -2.0158328   -1.6812843
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.7591566   -0.7856700   -0.7326432
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -1.7993937   -1.8716683   -1.7271190
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -1.6932594   -1.7662271   -1.6202917
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -2.7240765   -3.0095800   -2.4385730
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7928978   -0.8228819   -0.7629137
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                -1.8089894   -1.8733090   -1.7446698
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -1.0402608   -1.0829879   -0.9975337
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -2.0498543   -2.1917751   -1.9079335
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.9836037   -1.0085447   -0.9586627
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -1.8948491   -1.9237823   -1.8659159
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1340155   -1.1790430   -1.0889881
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -1.9825317   -2.0551478   -1.9099155
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.8104157   -1.9426793   -1.6781521
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -2.4209984   -2.7340062   -2.1079905
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0475155   -0.1253760    0.2204070
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                -0.0725000   -0.6768501    0.5318501
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.7996597   -1.9365832   -1.6627361
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -1.9139808   -2.2488139   -1.5791478
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -1.2012462   -1.3232181   -1.0792742
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -1.8769436   -2.2289998   -1.5248874
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.6652554   -1.7800578   -1.5504531
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -2.5654479   -3.0903810   -2.0405148
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.6016615   -1.7401065   -1.4632165
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -1.9897116   -2.6395949   -1.3398283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -2.4135922   -2.6093434   -2.2178410
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -3.2400000   -3.8438628   -2.6361372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -2.5055457   -2.6135463   -2.3975451
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -3.0870594   -3.3249568   -2.8491620
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.6727238   -1.7731519   -1.5722958
24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                -2.3063510   -2.5329219   -2.0797801
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.9378708   -2.1658659   -1.7098758
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -2.7527356   -3.0350008   -2.4704704
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -1.4367191   -1.5295316   -1.3439067
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -2.0542588   -2.2183647   -1.8901529
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.2590419   -1.3477901   -1.1702938
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -1.9866028   -2.1574470   -1.8157586
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -1.5221220   -1.5781712   -1.4660727
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -2.1791750   -2.3840636   -1.9742865
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -2.2901987   -2.4200339   -2.1603635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -2.8272148   -3.0466424   -2.6077872
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -2.7724381   -2.8583380   -2.6865381
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -3.4268433   -3.6689235   -3.1847631
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -1.7547870   -1.7916035   -1.7179706
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                -2.5335632   -2.6086940   -2.4584324
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -2.3197395   -2.3661895   -2.2732895
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -3.0652683   -3.2186479   -2.9118888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.7762644   -1.8082874   -1.7442414
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -2.4140089   -2.4518327   -2.3761851
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.6174887   -1.6606523   -1.5743251
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -2.1284000   -2.1976432   -2.0591568


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3148964   -0.4754546   -0.1543382
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.5292857   -0.8821252   -0.1764462
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.9415385   -3.1064163   -0.7766606
Birth       ki1114097-CMIN             BRAZIL                         NA                   NA                 0.0576522   -0.1471825    0.2624869
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1221939    0.0348987    0.2094890
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698147   -0.6979800   -0.6416494
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2435386   -0.2827491   -0.2043282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5746910   -1.5944136   -1.5549684
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2020000   -1.3213394   -1.0826606
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1997307   -1.3188993   -1.0805621
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5434862   -0.6569704   -0.4300019
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3189691   -1.4274339   -1.2105044
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.2288492   -1.3944872   -1.0632112
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2275514   -1.3590342   -1.0960687
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4032504   -1.4822018   -1.3242989
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4277434   -1.5827644   -1.2727225
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5394360   -0.5886359   -0.4902361
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9244603   -0.9755212   -0.8733993
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8889117   -0.9149009   -0.8629224
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.7858495   -1.8598889   -1.7118102
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9939850   -1.0230017   -0.9649683
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1372543   -1.1796249   -1.0948837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3133943   -1.3365653   -1.2902232
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3509354   -1.3927945   -1.3090764
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9389663   -2.0658782   -1.8120544
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8287045   -1.9551251   -1.7022839
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2431448   -1.3633659   -1.1229237
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7473232   -1.8685873   -1.6260592
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.4518519   -2.6434682   -2.2602356
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7781532   -1.8722784   -1.6840279
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2364903   -2.4267511   -2.0462295
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5813420   -1.6360920   -1.5265921
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.3941758   -2.5091458   -2.2792058
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8428484   -2.9257590   -2.7599378
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9000555   -1.9341618   -1.8659493
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3867789   -2.4319653   -2.3415925
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0136952   -2.0414244   -1.9859661
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7517855   -1.7900153   -1.7135558


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.5031383   -1.7533720   -1.2529046
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -2.0290437   -2.7539309   -1.3041565
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.9424801   -1.3266949   -0.5582653
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -1.7144791   -2.1963268   -1.2326314
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -2.2182433   -2.6645822   -1.7719043
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -1.6895901   -2.3229567   -1.0562236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -1.9606158   -3.0327464   -0.8884851
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.9438476   -1.3277988   -0.5598965
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.7946731   -1.2822848   -0.3070614
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    -1.2902878   -1.5715783   -1.0089974
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -1.2466667   -1.6966139   -0.7967194
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.9023684   -1.6997596   -0.1049772
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -1.5794780   -1.7855125   -1.3734434
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight             Normal or high birthweight    -3.2687500   -4.8178748   -1.7196252
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight             Normal or high birthweight    -1.8071145   -2.7696782   -0.8445507
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -1.3698556   -1.4330750   -1.3066363
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -1.7474644   -2.0403722   -1.4545566
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -1.5094115   -1.5701734   -1.4486495
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -1.6869345   -1.8313267   -1.5425422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.4638260   -1.4914069   -1.4362451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -1.3909859   -1.5265974   -1.2553743
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.7636710   -1.0533017   -0.4740403
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.8402494   -1.5167248   -0.1637741
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.5449561   -0.8700099   -0.2199023
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -0.8055296   -1.2475250   -0.3635341
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -1.1052939   -1.4975503   -0.7130375
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -0.9639419   -1.5958872   -0.3319965
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -1.0109583   -1.6784361   -0.3434806
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.9695219   -1.3937017   -0.5453422
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.8611207   -1.2427933   -0.4794481
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    -1.0028082   -1.2470199   -0.7585965
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    -1.0185863   -1.1231445   -0.9140281
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.7261057   -1.0561292   -0.3960823
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.8433658   -1.0054068   -0.6813248
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.8217549   -0.9777789   -0.6657310
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.8832310   -1.1672013   -0.5992608
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -1.0202072   -1.1949066   -0.8455078
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -1.0402371   -1.1170897   -0.9633844
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -1.0308171   -1.3255051   -0.7361290
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -1.0160916   -1.0868707   -0.9453125
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -1.0095935   -1.1572231   -0.8619639
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.9112455   -0.9452079   -0.8772830
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.8485161   -0.9331743   -0.7638580
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.6105826   -0.9505622   -0.2706030
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.1200155   -0.7486096    0.5085786
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.1143212   -0.4749395    0.2462971
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    -0.6756974   -1.0496542   -0.3017407
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.9001925   -1.4376388   -0.3627461
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -0.3880501   -1.0526359    0.2765357
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.8264078   -1.4612060   -0.1916096
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.5815137   -0.8426386   -0.3203888
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.6336271   -0.8812369   -0.3860174
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.8148648   -1.1785040   -0.4512256
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.6175397   -0.8061711   -0.4289083
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.7275609   -0.9202526   -0.5348691
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.6570531   -0.8686869   -0.4454192
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -0.5370161   -0.7912231   -0.2828092
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -0.6544052   -0.9114431   -0.3973673
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.7787762   -0.8624107   -0.6951416
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -0.7455288   -0.9058789   -0.5851788
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.6377445   -0.6830533   -0.5924357
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.5109113   -0.5908491   -0.4309734


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.2975794   -0.3865514   -0.2086075
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0849861   -0.1502720   -0.0197002
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.1610659   -0.2397177   -0.0824141
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.2028150   -0.3046260   -0.1010040
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.1302172   -0.1944947   -0.0659397
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1135704   -0.1818175   -0.0453233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1115798   -0.2126699   -0.0104896
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1318220   -0.2193807   -0.0442634
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1292705   -0.2155115   -0.0430295
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2864711   -0.3868127   -0.1861295
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3116667   -0.5442903   -0.0790430
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2673684   -0.5518070    0.0170701
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1463432   -0.1763321   -0.1163542
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -2.0115385   -3.3224009   -0.7006761
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                -0.1257123   -0.2334453   -0.0179793
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1885432   -0.2002483   -0.1768380
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1538676   -0.1987008   -0.1090343
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3105687   -0.3298858   -0.2912516
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1659370   -0.1885757   -0.1432983
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.6202084   -0.6370311   -0.6033858
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.4498960   -0.5142957   -0.3854963
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1514801   -0.2222466   -0.0807137
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0372800   -0.0740716   -0.0004884
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0797659   -0.1349611   -0.0245706
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0739623   -0.1221805   -0.0257440
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0871934   -0.1352347   -0.0391521
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0604902   -0.1085810   -0.0123993
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0481409   -0.0974836    0.0012018
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1172965   -0.1735976   -0.0609955
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1411898   -0.2097524   -0.0726272
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.3481611   -0.4450502   -0.2512721
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2501362   -0.3031714   -0.1971010
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2381446   -0.3586535   -0.1176358
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1985994   -0.2467919   -0.1504069
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1940767   -0.2389118   -0.1492415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0292058   -0.0405755   -0.0178361
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0961089   -0.1174533   -0.0747646
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1297551   -0.1418626   -0.1176475
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0925902   -0.1260839   -0.0590964
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.2010872   -0.2183473   -0.1838271
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0969935   -0.1147089   -0.0792781
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3297906   -0.3438211   -0.3157600
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2169199   -0.2416249   -0.1922148
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1285506   -0.2070834   -0.0500178
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0056812   -0.0356857    0.0243233
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0290449   -0.0849488    0.0268590
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0418986   -0.0862366    0.0024394
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0820678   -0.1389863   -0.0251493
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0211746   -0.0585535    0.0162042
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0382596   -0.0823763    0.0058571
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0538226   -0.0878958   -0.0197493
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1054293   -0.1517582   -0.0591005
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2986194   -0.4477223   -0.1495166
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1493987   -0.1997469   -0.0990506
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1704911   -0.2244499   -0.1165324
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0592201   -0.0799421   -0.0384980
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1039771   -0.1588650   -0.0490893
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0704103   -0.1008810   -0.0399397
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1452685   -0.1630691   -0.1274679
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0670394   -0.0834805   -0.0505983
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.2374308   -0.2557614   -0.2191003
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1342969   -0.1560390   -0.1125547
