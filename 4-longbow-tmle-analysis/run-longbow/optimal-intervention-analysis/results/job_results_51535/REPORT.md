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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            75     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             68     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          64     207
Birth       ki0047075b-MAL-ED          BRAZIL                         High            65     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Low             52     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium          73     190
Birth       ki0047075b-MAL-ED          INDIA                          High            51     183
Birth       ki0047075b-MAL-ED          INDIA                          Low             61     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium          71     183
Birth       ki0047075b-MAL-ED          NEPAL                          High            37     160
Birth       ki0047075b-MAL-ED          NEPAL                          Low             68     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          55     160
Birth       ki0047075b-MAL-ED          PERU                           High            87     286
Birth       ki0047075b-MAL-ED          PERU                           Low             99     286
Birth       ki0047075b-MAL-ED          PERU                           Medium         100     286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            72     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low            133     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             4     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             35     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          68     107
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High            50      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low             15      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium          25      90
Birth       ki1000108-IRC              INDIA                          High           113     388
Birth       ki1000108-IRC              INDIA                          Low            142     388
Birth       ki1000108-IRC              INDIA                          Medium         133     388
Birth       ki1000109-EE               PAKISTAN                       High             0       2
Birth       ki1000109-EE               PAKISTAN                       Low              2       2
Birth       ki1000109-EE               PAKISTAN                       Medium           0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            31     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             86     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          70     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low             14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium          10      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           8      27
Birth       ki1119695-PROBIT           BELARUS                        High          2248   13884
Birth       ki1119695-PROBIT           BELARUS                        Low           4962   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium        6674   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High          7487   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2904   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3419   13810
Birth       ki1135781-COHORTS          GUATEMALA                      High           178     842
Birth       ki1135781-COHORTS          GUATEMALA                      Low            391     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         273     842
Birth       ki1135781-COHORTS          INDIA                          High           678    5216
Birth       ki1135781-COHORTS          INDIA                          Low           1756    5216
Birth       ki1135781-COHORTS          INDIA                          Medium        2782    5216
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1169    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            900    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         981    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          5552   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           7897   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        6138   19587
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             8     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            354     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           5     367
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            73     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             64     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          59     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High            71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low             56     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium          81     208
6 months    ki0047075b-MAL-ED          INDIA                          High            59     208
6 months    ki0047075b-MAL-ED          INDIA                          Low             72     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium          77     208
6 months    ki0047075b-MAL-ED          NEPAL                          High            53     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low             93     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          75     221
6 months    ki0047075b-MAL-ED          PERU                           High            81     272
6 months    ki0047075b-MAL-ED          PERU                           Low             94     272
6 months    ki0047075b-MAL-ED          PERU                           Medium          97     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low            127     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         132     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           157     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium         107     369
6 months    ki1000108-IRC              INDIA                          High           123     407
6 months    ki1000108-IRC              INDIA                          Low            146     407
6 months    ki1000108-IRC              INDIA                          Medium         138     407
6 months    ki1000109-EE               PAKISTAN                       High            15     369
6 months    ki1000109-EE               PAKISTAN                       Low            321     369
6 months    ki1000109-EE               PAKISTAN                       Medium          33     369
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           290    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            597    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            195     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            180     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         200     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1435    2021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High            67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     560
6 months    ki1119695-PROBIT           BELARUS                        High          2657   15761
6 months    ki1119695-PROBIT           BELARUS                        Low           5644   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium        7460   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4483    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1719    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2080    8282
6 months    ki1135781-COHORTS          GUATEMALA                      High           185     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low            449     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         318     952
6 months    ki1135781-COHORTS          INDIA                          High           736    5413
6 months    ki1135781-COHORTS          INDIA                          Low           1777    5413
6 months    ki1135781-COHORTS          INDIA                          Medium        2900    5413
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1014    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            826    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         868    2708
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5922   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5622   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5250   16794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High            68    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1899    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium          69    2036
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            64     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             59     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          48     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High            62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low             42     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium          64     168
24 months   ki0047075b-MAL-ED          INDIA                          High            55     199
24 months   ki0047075b-MAL-ED          INDIA                          Low             69     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium          75     199
24 months   ki0047075b-MAL-ED          NEPAL                          High            48     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low             91     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          74     213
24 months   ki0047075b-MAL-ED          PERU                           High            59     200
24 months   ki0047075b-MAL-ED          PERU                           Low             74     200
24 months   ki0047075b-MAL-ED          PERU                           Medium          67     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          51     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             54     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         114     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           158     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium         109     372
24 months   ki1000108-IRC              INDIA                          High           124     409
24 months   ki1000108-IRC              INDIA                          Low            146     409
24 months   ki1000108-IRC              INDIA                          Medium         139     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            153     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            173     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         203     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High            58     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            350     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          88     496
24 months   ki1119695-PROBIT           BELARUS                        High           664    4035
24 months   ki1119695-PROBIT           BELARUS                        Low           1408    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium        1963    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           205     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            116     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         136     457
24 months   ki1135781-COHORTS          GUATEMALA                      High           209    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Low            508    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         343    1060
24 months   ki1135781-COHORTS          INDIA                          High           608    4201
24 months   ki1135781-COHORTS          INDIA                          Low           1274    4201
24 months   ki1135781-COHORTS          INDIA                          Medium        2319    4201
24 months   ki1135781-COHORTS          PHILIPPINES                    High           914    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            744    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         787    2445
24 months   ki1148112-LCNI-5           MALAWI                         High           220     572
24 months   ki1148112-LCNI-5           MALAWI                         Low            177     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium         175     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2927    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3004    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2690    8621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High            71    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1861    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium          74    2006


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
![](/tmp/f9291231-582e-4a10-aea8-2efcf462c05f/f64e6a70-ba8c-41a5-a306-97c8ccff6eba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0340369   -1.2733910   -0.7946828
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6224517   -0.8911527   -0.3537508
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9428778   -1.1282808   -0.7574748
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7349126   -1.0793681   -0.3904571
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8513987   -1.0364761   -0.6663212
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6552773   -0.8604789   -0.4500758
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8913337   -1.1792078   -0.6034596
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2233799   -0.4800842    0.0333244
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1217787   -1.4478018   -0.7957556
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8123754   -1.4565750   -0.1681758
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3822358    1.2060707    1.5584010
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4877460   -0.5166423   -0.4588496
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1875502    0.0284894    0.3466110
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5749778   -0.6597393   -0.4902163
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2088060   -0.2738141   -0.1437980
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5654447   -1.5986420   -1.5322473
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6832310   -1.8252022   -1.5412599
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0282192   -1.2639515   -0.7924868
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1011794   -0.3421755    0.1398167
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1516717   -1.3283001   -0.9750433
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4474192   -0.6978088   -0.1970295
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4069051   -1.5739423   -1.2398680
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9628555   -1.2282806   -0.6974305
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5510857   -1.9810037   -1.1211677
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1819117   -1.4478190   -0.9160044
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2053588   -1.4310255   -0.9796920
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.7610002   -2.1102975   -1.4117028
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.9999461   -1.1635773   -0.8363150
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.6205055   -1.9850145   -1.2559965
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1379631   -1.2881002   -0.9878260
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9779740   -1.0981111   -0.8578369
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0095775   -1.1293184   -0.8898366
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5350058   -0.6708660   -0.3991456
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.6910780   -1.8617454   -1.5204106
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1201733   -1.3505616   -0.8897850
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.2032254    0.1160042    0.2904467
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8557694   -0.8920530   -0.8194857
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7320283   -1.8848015   -1.5792550
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5150602   -0.6165618   -0.4135585
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9797995   -1.0485242   -0.9110747
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4727287   -1.5878670   -1.3575904
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2277141   -1.2660746   -1.1893537
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3661785   -1.5189561   -1.2134010
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6550823   -1.8923056   -1.4178591
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2182530   -0.0528158    0.4893217
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5571779   -1.7799429   -1.3344129
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9833872   -1.2628852   -0.7038892
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6290342   -1.8931334   -1.3649350
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4606601   -1.7226658   -1.1986544
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.0861355   -2.7278588   -1.4444122
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4826587   -2.6625693   -2.3027482
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6619200   -1.8411452   -1.4826948
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.8137316   -2.0005703   -1.6268929
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3067468   -1.4401870   -1.1733066
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1393997   -1.2727523   -1.0060471
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.5839608   -1.8662597   -1.3016620
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0460612   -0.2529124    0.1607900
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.1466889   -2.3352427   -1.9581350
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.6486526   -2.7773607   -2.5199445
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.1129756   -1.2370524   -0.9888988
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0520704   -2.1323718   -1.9717689
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7680914   -1.8973530   -1.6388297
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8673821   -1.9073185   -1.8274457
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.9149774   -2.1177937   -1.7121612


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0563768   -1.1943724   -0.9183812
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7620526   -0.9197540   -0.6043512
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9731694   -1.1192409   -0.8270979
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7187500   -0.8829096   -0.5545904
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9346853   -1.0488784   -0.8204922
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5013671   -0.5219633   -0.4807709
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1288717    0.0445170    0.2132265
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6688842   -0.7003528   -0.6374156
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5750447   -1.5948316   -1.5552578
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4750409   -1.5891321   -1.3609496
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1935544   -1.3251572   -1.0619516
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0529327   -0.0917526    0.1976180
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1704327   -1.2921639   -1.0487015
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5483560   -0.6619002   -0.4348118
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3312377   -1.4396065   -1.2228689
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.2832512   -1.4141440   -1.1523584
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.1956098   -2.3191627   -2.0720568
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5440108   -0.5930025   -0.4950192
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5624368   -1.6783540   -1.4465196
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3322083   -1.4107364   -1.2536803
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8916958   -0.9176814   -0.8657103
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8103361   -1.8786415   -1.7420307
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0183078   -1.0495042   -0.9871113
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6431488   -1.7125598   -1.5737379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3131339   -1.3362896   -1.2899781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3385142   -1.3948471   -1.2821814
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.8744152   -2.0076626   -1.7411678
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0434524   -0.1247334    0.2116382
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.7845980   -1.9142624   -1.6549336
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2366901   -1.3594733   -1.1139070
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7521250   -1.8731109   -1.6311391
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5264286   -2.6690955   -2.3837616
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8849429   -1.9699639   -1.7999219
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3994530   -2.5144490   -2.2844569
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8575660   -2.9223159   -2.7928162
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9615163   -1.9983763   -1.9246563
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8686713   -1.9502344   -1.7871083
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0124336   -2.0401325   -1.9847347
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7686889   -1.8213457   -1.7160321


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0223399   -0.2221714    0.1774917
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1396009   -0.3439613    0.0647595
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0302916   -0.1905237    0.1299405
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0161626   -0.2699903    0.3023156
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0832867   -0.2400075    0.0734342
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0713257   -0.2347576    0.0921062
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0741107   -0.3158295    0.1676081
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0846613   -0.2840370    0.1147143
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2728737   -0.6156233    0.0698759
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2976246   -0.7924779    0.1972287
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0567583   -0.1543916    0.0408750
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0136211   -0.0339392    0.0066969
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0586785   -0.1946346    0.0772777
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0939064   -0.1736543   -0.0141585
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0402431   -0.0921651    0.0116789
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0096000   -0.0366417    0.0174416
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.2081902    0.1024566    0.3139237
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1653352   -0.3628676    0.0321971
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1541121   -0.0521816    0.3604057
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0187610   -0.1804983    0.1429763
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1009368   -0.3172783    0.1154047
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0756674   -0.0663401    0.2176749
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1005204   -0.3180975    0.1170567
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2678345   -0.1488969    0.6845658
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2415390   -0.4499880   -0.0330901
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0290475   -0.2162225    0.1581276
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.4346096   -0.7819369   -0.0872823
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4019102   -0.5369655   -0.2668548
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2781787   -0.6273443    0.0709870
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2694190   -0.4007720   -0.1380660
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1091301   -0.2080493   -0.0102108
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1891008   -0.2888166   -0.0893850
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0090050   -0.1375652    0.1195552
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.1286412   -0.0121875    0.2694699
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2120350   -0.4300940    0.0060240
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0962268   -0.1587964   -0.0336573
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0359265   -0.0618381   -0.0100148
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0783079   -0.2108203    0.0542046
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5032476   -0.6014101   -0.4050850
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1607729   -0.2190976   -0.1024483
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1704202   -0.2638034   -0.0770369
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0854197   -0.1156070   -0.0552324
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0276643   -0.1087927    0.1641212
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2193329   -0.4153758   -0.0232900
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1748006   -0.3928217    0.0432205
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2274201   -0.4243456   -0.0304945
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2533029   -0.4934377   -0.0131682
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1230908   -0.3230774    0.0768959
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1621760   -0.3896289    0.0652769
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4402931   -1.0750484    0.1944622
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0767095   -0.2181370    0.0647179
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1205576   -0.2678757    0.0267606
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3670629   -0.5249047   -0.2092211
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2793711   -0.3900619   -0.1686803
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2901334   -0.3983236   -0.1819432
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3009820   -0.5681854   -0.0337786
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0853436   -0.2978989    0.1272117
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2527641   -0.4005345   -0.1049936
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2089135   -0.3224771   -0.0953498
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.8485407   -0.9713149   -0.7257665
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3377947   -0.4054645   -0.2701248
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1005799   -0.2067803    0.0056204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1450515   -0.1772760   -0.1128270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1462885   -0.0500229    0.3425999
