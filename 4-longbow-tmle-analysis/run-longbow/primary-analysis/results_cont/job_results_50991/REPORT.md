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




# Results Detail

## Results Plots
![](/tmp/e11ca5be-4b64-4ee5-ad63-60ace219caa0/d8f02b93-a7ef-499e-a14a-2f1c1a8f1665/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e11ca5be-4b64-4ee5-ad63-60ace219caa0/d8f02b93-a7ef-499e-a14a-2f1c1a8f1665/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e11ca5be-4b64-4ee5-ad63-60ace219caa0/d8f02b93-a7ef-499e-a14a-2f1c1a8f1665/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.9727610   -1.2045569   -0.7409651
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.1099592   -1.3738816   -0.8460369
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0985894   -1.3512431   -0.8459358
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.8489748   -1.1008911   -0.5970584
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.8699540   -1.1835062   -0.5564018
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                -0.6101288   -0.8816350   -0.3386226
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0506527   -1.3264447   -0.7748608
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9319147   -1.1380801   -0.7257492
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.9908051   -1.2233017   -0.7583084
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5924923   -0.9158920   -0.2690926
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.7709053   -1.0309194   -0.5108912
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.6491718   -0.9484347   -0.3499088
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -1.0552465   -1.2828146   -0.8276783
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.8533104   -1.0259906   -0.6806302
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.9056460   -1.0890014   -0.7222905
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.7772108   -1.0213380   -0.5330837
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.6402378   -0.8291102   -0.4513654
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.8733883   -1.1417464   -0.6050302
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.8225438   -1.0685742   -0.5765133
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.9991698   -1.4440446   -0.5542950
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.1033159   -1.6269090   -0.5797228
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.3397187   -0.5977896   -0.0816478
Birth       ki1000108-IRC              INDIA                          Low                  NA                -0.3336636   -0.5785058   -0.0888214
Birth       ki1000108-IRC              INDIA                          Medium               NA                -0.2495963   -0.5186986    0.0195060
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.6053763   -2.1028680   -1.1078846
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.5144440   -1.7875890   -1.2412990
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.1221740   -1.4481361   -0.7962118
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0857143   -1.8365987   -0.3348299
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8208333   -1.4017622   -0.2399044
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.5650000   -2.2384504   -0.8915496
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 1.3449838    1.1746093    1.5153584
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 1.3180657    1.1265755    1.5095560
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                 1.3416462    1.1797398    1.5035526
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4904363   -0.5193451   -0.4615275
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5208907   -0.5686739   -0.4731074
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5047937   -0.5475448   -0.4620425
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1002600   -0.1110210    0.3115410
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1290706   -0.0000925    0.2582337
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1534157   -0.0146493    0.3214806
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.5549380   -0.6466849   -0.4631910
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.7067707   -0.7682938   -0.6452476
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.6611989   -0.7049032   -0.6174947
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2034582   -0.2697219   -0.1371944
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3003674   -0.3692358   -0.2314991
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2356422   -0.3100481   -0.1612363
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.5562859   -1.5901641   -1.5224076
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.5795634   -1.6067681   -1.5523588
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.5873936   -1.6190895   -1.5556976
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -2.1400000   -2.7913001   -1.4886999
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.4574294   -1.5720448   -1.3428139
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.6580000   -2.2205629   -1.0954371
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0472688   -1.2457676   -0.8487701
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.2956856   -1.5878867   -1.0034844
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.3205495   -1.5281693   -1.1129296
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0325599   -0.2098775    0.2749974
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0549815   -0.2419936    0.3519565
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0379880   -0.1874806    0.2634566
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.1189151   -1.3363239   -0.9015063
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.1838466   -1.3965864   -0.9711068
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1532370   -1.3611060   -0.9453680
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3716289   -0.6187516   -0.1245062
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6266869   -0.8047946   -0.4485792
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5450140   -0.7367020   -0.3533260
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3601236   -1.5515880   -1.1686591
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.3478101   -1.5371174   -1.1585028
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2917249   -1.4743623   -1.1090875
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.9657683   -1.2006965   -0.7308401
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.1678030   -1.3646568   -0.9709491
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.0220430   -1.2784417   -0.7656444
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2557407   -1.6831816   -0.8282999
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2635215   -1.5158232   -1.0112198
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2943939   -1.4544477   -1.1343401
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -1.3310253   -1.5531770   -1.1088736
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -1.6288635   -1.8892611   -1.3684658
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.3598759   -1.6360282   -1.0837235
6 months    ki1000108-IRC              INDIA                          High                 NA                -1.1309776   -1.3508985   -0.9110567
6 months    ki1000108-IRC              INDIA                          Low                  NA                -1.2359253   -1.4670327   -1.0048178
6 months    ki1000108-IRC              INDIA                          Medium               NA                -1.2961885   -1.5240520   -1.0683250
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -1.8846307   -2.3698855   -1.3993760
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -2.2553714   -2.3889392   -2.1218037
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -1.8408253   -2.2709143   -1.4107363
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.0184336   -1.1867540   -0.8501133
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.5913297   -1.6932270   -1.4894323
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3676113   -1.5033613   -1.2318613
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.5761050   -1.9278287   -1.2243813
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9366448   -2.0664436   -1.8068460
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.7136116   -2.0003747   -1.4268486
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.1469574   -1.2934767   -1.0004380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.5904655   -1.7400990   -1.4408321
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -1.4359198   -1.5844726   -1.2873670
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.9837385   -1.1063500   -0.8611270
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.1701556   -1.3083970   -1.0319142
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1255683   -1.2682108   -0.9829258
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0154688   -1.1372253   -0.8937123
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2635487   -1.3869418   -1.1401556
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.3154622   -1.4402106   -1.1907138
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4854768   -0.5857221   -0.3852315
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5701349   -0.8274155   -0.3128542
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5638874   -0.6196253   -0.5081495
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -1.5395032   -1.7133308   -1.3656756
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -1.6651316   -1.8948079   -1.4354553
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -1.5714046   -1.7835521   -1.3592572
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1194909   -1.3697230   -0.8692588
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4133350   -1.5100168   -1.3166532
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.0495068   -1.2563273   -0.8426864
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2304717    0.1355654    0.3253781
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0071819   -0.0967933    0.1111571
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1589271    0.0551389    0.2627152
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.8441489   -0.8787256   -0.8095723
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.9108818   -0.9685579   -0.8532057
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.9552962   -1.0082415   -0.9023510
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.8109906   -1.9696515   -1.6523298
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.8729094   -1.9746793   -1.7711396
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.7362415   -1.8643238   -1.6081593
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.5159575   -0.6097124   -0.4222027
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.3218787   -1.3837152   -1.2600421
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9637433   -1.0067884   -0.9206982
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9718168   -1.0402556   -0.9033779
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.2749841   -1.3569310   -1.1930371
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.1984029   -1.2784406   -1.1183651
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.4751245   -1.5902601   -1.3599888
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.8002467   -1.9289017   -1.6715917
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6885262   -1.8098875   -1.5671650
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2393915   -1.2778498   -1.2009332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3790964   -1.4140637   -1.3441291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3453485   -1.3840381   -1.3066589
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.5702333   -1.8887198   -1.2517469
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.3278776   -1.3863596   -1.2693955
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3952109   -1.6276811   -1.1627407
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.8135609   -2.0512599   -1.5758619
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.9951953   -2.2049250   -1.7854656
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.8375398   -2.0758902   -1.5991895
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.2640967    0.0052518    0.5229417
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.2344331   -0.5925356    0.1236694
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0250705   -0.2494906    0.2996317
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.6149126   -1.8493734   -1.3804518
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.8631456   -2.0820554   -1.6442358
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.9050726   -2.1207960   -1.6893492
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.0527171   -1.3405758   -0.7648583
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.3501308   -1.5413550   -1.1589065
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.2190054   -1.4163877   -1.0216231
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.5339420   -1.7720956   -1.2957884
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.8366859   -2.0320697   -1.6413022
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.8357346   -2.0043019   -1.6671674
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.4202488   -1.6758530   -1.1646445
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.7310203   -1.9206175   -1.5414230
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.7422252   -2.0367095   -1.4477409
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.0800000   -2.6467745   -1.5132255
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.8063889   -3.1015653   -2.5112125
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4212281   -2.5798306   -2.2626255
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -2.4591081   -2.6270585   -2.2911577
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -2.6946662   -2.8721916   -2.5171408
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -2.5489392   -2.7455581   -2.3523203
24 months   ki1000108-IRC              INDIA                          High                 NA                -1.6411606   -1.8152749   -1.4670464
24 months   ki1000108-IRC              INDIA                          Low                  NA                -1.8670958   -2.0274354   -1.7067561
24 months   ki1000108-IRC              INDIA                          Medium               NA                -1.8483182   -1.9989795   -1.6976570
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.8019746   -1.9793986   -1.6245506
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -2.4547869   -2.6089616   -2.3006122
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -2.2773276   -2.4449485   -2.1097067
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.2902258   -1.4243936   -1.1560581
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.8287276   -1.9725048   -1.6849504
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.6702023   -1.8142622   -1.5261424
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.1372550   -1.2690691   -1.0054409
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.5960396   -1.7473039   -1.4447752
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.6099185   -1.7475765   -1.4722605
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.5636846   -1.8302223   -1.2971470
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9494775   -2.0473302   -1.8516247
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.7970815   -2.0368365   -1.5573265
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0499265   -0.1639405    0.2637934
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2906204   -0.6032588    0.0220179
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0708794   -0.3840392    0.2422803
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -2.2218206   -2.4033555   -2.0402857
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -2.5009048   -2.7069541   -2.2948555
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -2.5637711   -2.7593284   -2.3682138
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -2.9869212   -3.1329956   -2.8408468
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -2.9398573   -3.0342072   -2.8455074
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.7060524   -2.8302375   -2.5818672
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.1359820   -1.2577595   -1.0142044
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.5035054   -2.5832716   -2.4237391
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -1.8670134   -1.9151034   -1.8189235
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0408391   -2.1182316   -1.9634466
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.6569720   -2.7387669   -2.5751771
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5344797   -2.6178384   -2.4511210
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.7689707   -1.8967100   -1.6412314
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.9362026   -2.0839255   -1.7884796
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9365874   -2.0953211   -1.7778538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.8830196   -1.9261201   -1.8399192
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1258922   -2.1679983   -2.0837862
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0246907   -2.0677378   -1.9816436
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.9116424   -2.1772477   -1.6460370
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.7645575   -1.8190720   -1.7100429
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.7649842   -2.0545456   -1.4754228


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0563768   -1.1943724   -0.9183812
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7620526   -0.9197540   -0.6043512
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9731694   -1.1192409   -0.8270979
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7187500   -0.8829096   -0.5545904
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9346853   -1.0488784   -0.8204922
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7266031   -0.8549719   -0.5982342
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5013671   -0.5219633   -0.4807709
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1288717    0.0445170    0.2132265
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6688842   -0.7003528   -0.6374156
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5750447   -1.5948316   -1.5552578
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4750409   -1.5891321   -1.3609496
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1935544   -1.3251572   -1.0619516
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0529327   -0.0917526    0.1976180
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1704327   -1.2921639   -1.0487015
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5483560   -0.6619002   -0.4348118
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3312377   -1.4396065   -1.2228689
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.2832512   -1.4141440   -1.1523584
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.1956098   -2.3191627   -2.0720568
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440108   -0.5930025   -0.4950192
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3322083   -1.4107364   -1.2536803
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8916958   -0.9176814   -0.8657103
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8103361   -1.8786415   -1.7420307
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0183078   -1.0495042   -0.9871113
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6431488   -1.7125598   -1.5737379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3131339   -1.3362896   -1.2899781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3385142   -1.3948471   -1.2821814
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.8744152   -2.0076626   -1.7411678
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0434524   -0.1247334    0.2116382
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.7845980   -1.9142624   -1.6549336
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2366901   -1.3594733   -1.1139070
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7521250   -1.8731109   -1.6311391
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5264286   -2.6690955   -2.3837616
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8849429   -1.9699639   -1.7999219
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.3994530   -2.5144490   -2.2844569
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8575660   -2.9223159   -2.7928162
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9615163   -1.9983763   -1.9246563
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8686713   -1.9502344   -1.7871083
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0124336   -2.0401325   -1.9847347
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7686889   -1.8213457   -1.7160321


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1371983   -0.4895009    0.2151043
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1258284   -0.4700180    0.2183611
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.0209792   -0.4237168    0.3817585
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               High               0.2388460   -0.1322890    0.6099810
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.1187381   -0.2100012    0.4474774
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High               0.0598477   -0.2872789    0.4069742
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.1784130   -0.5956227    0.2387967
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.0566794   -0.4978324    0.3844736
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.2019361   -0.0831951    0.4870672
Birth       ki0047075b-MAL-ED          PERU                           Medium               High               0.1496005   -0.1435226    0.4427236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.1369730   -0.1730171    0.4469631
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0961775   -0.4595957    0.2672407
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.1766261   -0.6871094    0.3338573
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.2807721   -0.8631952    0.3016509
Birth       ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low                  High               0.0060551   -0.3317167    0.3438270
Birth       ki1000108-IRC              INDIA                          Medium               High               0.0901225   -0.2648227    0.4450676
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High               0.0909323   -0.3377062    0.5195708
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.4832023   -0.2625204    1.2289251
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.2648810   -0.6844903    1.2142522
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.4792857   -1.4879298    0.5293583
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0269181   -0.1554995    0.1016633
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0033376   -0.0841999    0.0775247
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0304544   -0.0853171    0.0244083
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0143574   -0.0648473    0.0361326
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0288106   -0.2188368    0.2764580
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0531556   -0.2169003    0.3232116
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.1518327   -0.2607745   -0.0428910
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.1062610   -0.2062875   -0.0062345
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0969092   -0.1902250   -0.0035935
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0321840   -0.1294555    0.0650874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0232776   -0.0623367    0.0157816
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0311077   -0.0732118    0.0109964
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.6825706    0.0206733    1.3444680
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.4820000   -0.3788641    1.3428641
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2484167   -0.6024416    0.1056082
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.2732806   -0.5620557    0.0154945
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High               0.0224215   -0.3574805    0.4023235
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High               0.0054281   -0.3231439    0.3340000
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0649315   -0.3690657    0.2392028
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0343219   -0.3356019    0.2669581
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2550580   -0.5590297    0.0489137
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1733851   -0.4870007    0.1402305
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.0123135   -0.2560059    0.2806329
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0683986   -0.1952470    0.3320443
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2020347   -0.5065780    0.1025086
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0562748   -0.4052998    0.2927503
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0077808   -0.5041292    0.4885677
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0386532   -0.4950772    0.4177708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.2978382   -0.6391330    0.0434566
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0288506   -0.3799501    0.3222490
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.1049477   -0.4236577    0.2137624
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.1652109   -0.4821866    0.1517648
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.3707407   -0.8738855    0.1324041
6 months    ki1000109-EE               PAKISTAN                       Medium               High               0.0438054   -0.6081603    0.6957712
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.5728960   -0.8050621   -0.3407300
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.3491776   -0.4762074   -0.2221479
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.3605398   -0.7353005    0.0142208
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1375066   -0.5911491    0.3161358
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.4435082   -0.6511202   -0.2358961
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.2889624   -0.4961504   -0.0817744
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1864171   -0.3713369   -0.0014973
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1418298   -0.3301761    0.0465165
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.2480800   -0.4214292   -0.0747308
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2999935   -0.4743793   -0.1256076
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0846581   -0.3594149    0.1900988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0784106   -0.1901219    0.0333007
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              -0.1256284   -0.4146507    0.1633939
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              -0.0319014   -0.3073142    0.2435113
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.2938441   -0.5625397   -0.0251485
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0699841   -0.2549044    0.3948725
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2232898   -0.3176994   -0.1288802
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0715447   -0.1641768    0.0210874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0667329   -0.1321787   -0.0012871
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1111473   -0.1725711   -0.0497235
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0619188   -0.2504164    0.1265788
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0747491   -0.1291751    0.2786732
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.8059211   -0.9188473   -0.6929950
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.4477857   -0.5512837   -0.3442878
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.3031673   -0.4101341   -0.1962005
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2265861   -0.3320622   -0.1211100
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.3251222   -0.4979129   -0.1523316
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.2134018   -0.3808288   -0.0459747
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1397049   -0.1876797   -0.0917301
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1059570   -0.1561276   -0.0557865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.2423557   -0.0816348    0.5663463
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.1750224   -0.2192640    0.5693088
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1816344   -0.4975485    0.1342796
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0239789   -0.3598489    0.3118911
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4985298   -0.9394482   -0.0576115
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.2390262   -0.6148929    0.1368405
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.2482329   -0.5656260    0.0691601
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2901600   -0.6078132    0.0274932
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2974137   -0.6424954    0.0476681
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1662883   -0.5158973    0.1833207
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.3027440   -0.6065436    0.0010557
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.3017927   -0.5874618   -0.0161236
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3107715   -0.6293215    0.0077785
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.3219765   -0.7105738    0.0666209
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.7263889   -1.3654213   -0.0873565
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3412281   -0.9297755    0.2473194
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.2355581   -0.4809621    0.0098459
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0898311   -0.3484576    0.1687954
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.2259351   -0.4617846    0.0099144
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.2071576   -0.4365646    0.0222494
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.6528123   -0.8869531   -0.4186715
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.4753530   -0.7178883   -0.2328177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.5385017   -0.7338455   -0.3431580
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.3799765   -0.5755546   -0.1843983
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4587846   -0.6585298   -0.2590393
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.4726635   -0.6623968   -0.2829302
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3857928   -0.6700231   -0.1015626
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.2333968   -0.5909993    0.1242057
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.3405469   -0.5982056   -0.0828883
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1208059   -0.3620826    0.1204709
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.2790842   -0.5531147   -0.0050537
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.3419504   -0.6071391   -0.0767618
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0470639   -0.1258028    0.2199306
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.2808689    0.0900190    0.4717187
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -1.3675234   -1.5140185   -1.2210283
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.7310314   -0.8625303   -0.5995325
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.6161330   -0.7294441   -0.5028218
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.4936406   -0.6078571   -0.3794241
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.1672319   -0.3628309    0.0283672
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.1676167   -0.3713013    0.0360679
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2428726   -0.2990247   -0.1867206
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1416710   -0.1969611   -0.0863810
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.1470849   -0.1229924    0.4171622
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.1466582   -0.2456341    0.5389505


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0836158   -0.2774962    0.1102645
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0869221   -0.1280507    0.3018950
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0774833   -0.1442653    0.2992319
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1262577   -0.4195859    0.1670705
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.1205611   -0.0611517    0.3022740
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0506078   -0.1597504    0.2609660
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1429007   -0.3415362    0.0557348
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.0316775   -0.1817911    0.2451461
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2107239   -0.2219277    0.6433755
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0242857   -0.6803540    0.6317826
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0195063   -0.0985192    0.0595066
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0109308   -0.0312775    0.0094158
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0286117   -0.1672823    0.2245057
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.1139462   -0.2010635   -0.0268290
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0455910   -0.0988882    0.0077063
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0187588   -0.0456724    0.0081548
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.6649591    0.0228143    1.3071039
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1462856   -0.3179117    0.0253405
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0203727   -0.1787215    0.2194670
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0515176   -0.2420259    0.1389907
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1767271   -0.3934168    0.0399627
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0288858   -0.1338574    0.1916290
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0976077   -0.3019811    0.1067657
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0275105   -0.4560406    0.4010196
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0924255   -0.2625913    0.0777403
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1034286   -0.2942883    0.0874311
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.3109790   -0.7937524    0.1717943
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.3834226   -0.5254988   -0.2413465
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.3225792   -0.6596670    0.0145086
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.2604247   -0.3875375   -0.1333119
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1033655   -0.2052669   -0.0014642
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1832096   -0.2833153   -0.0831038
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0585340   -0.1421936    0.0251255
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0229336   -0.1592062    0.1133390
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2127174   -0.4529237    0.0274889
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1234731   -0.1966122   -0.0503340
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0475469   -0.0711830   -0.0239109
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0006545   -0.1455684    0.1468774
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.5023502   -0.5926617   -0.4120388
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1687556   -0.2263285   -0.1111827
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1680244   -0.2618477   -0.0742010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0737424   -0.1037907   -0.0436940
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2317191   -0.0819823    0.5454204
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0608543   -0.2355552    0.1138466
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.2206444   -0.4350374   -0.0062513
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1696854   -0.3744446    0.0350739
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1839730   -0.4329172    0.0649711
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.2181830   -0.4076629   -0.0287032
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2025874   -0.4243811    0.0192064
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4464286   -1.0084682    0.1156110
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1002602   -0.2247636    0.0242432
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.1413169   -0.2848992    0.0022653
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.3788199   -0.5276554   -0.2299844
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.2958920   -0.4062126   -0.1855714
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2922781   -0.3985944   -0.1859617
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3212582   -0.5723071   -0.0702094
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1813313   -0.3754495    0.0127870
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1776323   -0.3043246   -0.0509400
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1293552   -0.0027153    0.2614256
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.8255343   -0.9457803   -0.7052884
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3490259   -0.4136219   -0.2844299
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0997006   -0.2041845    0.0047833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1294140   -0.1633135   -0.0955144
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1429534   -0.1176968    0.4036036
