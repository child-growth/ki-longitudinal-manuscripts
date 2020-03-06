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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        sex       swasted   n_cell       n
----------  ---------------  -----------------------------  -------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Female          0       43      86
Birth       CMC-V-BCS-2002   INDIA                          Female          1        0      86
Birth       CMC-V-BCS-2002   INDIA                          Male            0       42      86
Birth       CMC-V-BCS-2002   INDIA                          Male            1        1      86
Birth       CMIN             BANGLADESH                     Female          0        9      19
Birth       CMIN             BANGLADESH                     Female          1        0      19
Birth       CMIN             BANGLADESH                     Male            0        9      19
Birth       CMIN             BANGLADESH                     Male            1        1      19
Birth       COHORTS          GUATEMALA                      Female          0      335     756
Birth       COHORTS          GUATEMALA                      Female          1       25     756
Birth       COHORTS          GUATEMALA                      Male            0      361     756
Birth       COHORTS          GUATEMALA                      Male            1       35     756
Birth       COHORTS          INDIA                          Female          0     2802    6193
Birth       COHORTS          INDIA                          Female          1      150    6193
Birth       COHORTS          INDIA                          Male            0     3071    6193
Birth       COHORTS          INDIA                          Male            1      170    6193
Birth       COHORTS          PHILIPPINES                    Female          0     1306    2899
Birth       COHORTS          PHILIPPINES                    Female          1       54    2899
Birth       COHORTS          PHILIPPINES                    Male            0     1472    2899
Birth       COHORTS          PHILIPPINES                    Male            1       67    2899
Birth       CONTENT          PERU                           Female          0        0       2
Birth       CONTENT          PERU                           Female          1        0       2
Birth       CONTENT          PERU                           Male            0        2       2
Birth       CONTENT          PERU                           Male            1        0       2
Birth       EE               PAKISTAN                       Female          0       87     177
Birth       EE               PAKISTAN                       Female          1        1     177
Birth       EE               PAKISTAN                       Male            0       84     177
Birth       EE               PAKISTAN                       Male            1        5     177
Birth       GMS-Nepal        NEPAL                          Female          0      283     641
Birth       GMS-Nepal        NEPAL                          Female          1       14     641
Birth       GMS-Nepal        NEPAL                          Male            0      331     641
Birth       GMS-Nepal        NEPAL                          Male            1       13     641
Birth       IRC              INDIA                          Female          0      121     343
Birth       IRC              INDIA                          Female          1       27     343
Birth       IRC              INDIA                          Male            0      168     343
Birth       IRC              INDIA                          Male            1       27     343
Birth       Keneba           GAMBIA                         Female          0      654    1466
Birth       Keneba           GAMBIA                         Female          1       49    1466
Birth       Keneba           GAMBIA                         Male            0      709    1466
Birth       Keneba           GAMBIA                         Male            1       54    1466
Birth       MAL-ED           BANGLADESH                     Female          0      103     215
Birth       MAL-ED           BANGLADESH                     Female          1        3     215
Birth       MAL-ED           BANGLADESH                     Male            0      104     215
Birth       MAL-ED           BANGLADESH                     Male            1        5     215
Birth       MAL-ED           BRAZIL                         Female          0       31      62
Birth       MAL-ED           BRAZIL                         Female          1        0      62
Birth       MAL-ED           BRAZIL                         Male            0       31      62
Birth       MAL-ED           BRAZIL                         Male            1        0      62
Birth       MAL-ED           INDIA                          Female          0       22      45
Birth       MAL-ED           INDIA                          Female          1        0      45
Birth       MAL-ED           INDIA                          Male            0       23      45
Birth       MAL-ED           INDIA                          Male            1        0      45
Birth       MAL-ED           NEPAL                          Female          0       15      26
Birth       MAL-ED           NEPAL                          Female          1        1      26
Birth       MAL-ED           NEPAL                          Male            0       10      26
Birth       MAL-ED           NEPAL                          Male            1        0      26
Birth       MAL-ED           PERU                           Female          0      112     228
Birth       MAL-ED           PERU                           Female          1        0     228
Birth       MAL-ED           PERU                           Male            0      116     228
Birth       MAL-ED           PERU                           Male            1        0     228
Birth       MAL-ED           SOUTH AFRICA                   Female          0       56     120
Birth       MAL-ED           SOUTH AFRICA                   Female          1        0     120
Birth       MAL-ED           SOUTH AFRICA                   Male            0       64     120
Birth       MAL-ED           SOUTH AFRICA                   Male            1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female          0       63     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female          1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male            0       52     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male            1        0     115
Birth       NIH-Birth        BANGLADESH                     Female          0      252     575
Birth       NIH-Birth        BANGLADESH                     Female          1       17     575
Birth       NIH-Birth        BANGLADESH                     Male            0      285     575
Birth       NIH-Birth        BANGLADESH                     Male            1       21     575
Birth       NIH-Crypto       BANGLADESH                     Female          0      325     707
Birth       NIH-Crypto       BANGLADESH                     Female          1       25     707
Birth       NIH-Crypto       BANGLADESH                     Male            0      335     707
Birth       NIH-Crypto       BANGLADESH                     Male            1       22     707
Birth       PROBIT           BELARUS                        Female          0     6263   13817
Birth       PROBIT           BELARUS                        Female          1      427   13817
Birth       PROBIT           BELARUS                        Male            0     6635   13817
Birth       PROBIT           BELARUS                        Male            1      492   13817
Birth       PROVIDE          BANGLADESH                     Female          0      245     532
Birth       PROVIDE          BANGLADESH                     Female          1        6     532
Birth       PROVIDE          BANGLADESH                     Male            0      274     532
Birth       PROVIDE          BANGLADESH                     Male            1        7     532
Birth       ResPak           PAKISTAN                       Female          0       16      38
Birth       ResPak           PAKISTAN                       Female          1        0      38
Birth       ResPak           PAKISTAN                       Male            0       22      38
Birth       ResPak           PAKISTAN                       Male            1        0      38
Birth       SAS-CompFeed     INDIA                          Female          0      483    1103
Birth       SAS-CompFeed     INDIA                          Female          1       14    1103
Birth       SAS-CompFeed     INDIA                          Male            0      591    1103
Birth       SAS-CompFeed     INDIA                          Male            1       15    1103
Birth       ZVITAMBO         ZIMBABWE                       Female          0     5835   12917
Birth       ZVITAMBO         ZIMBABWE                       Female          1      387   12917
Birth       ZVITAMBO         ZIMBABWE                       Male            0     6290   12917
Birth       ZVITAMBO         ZIMBABWE                       Male            1      405   12917
6 months    CMC-V-BCS-2002   INDIA                          Female          0      181     368
6 months    CMC-V-BCS-2002   INDIA                          Female          1        5     368
6 months    CMC-V-BCS-2002   INDIA                          Male            0      175     368
6 months    CMC-V-BCS-2002   INDIA                          Male            1        7     368
6 months    CMIN             BANGLADESH                     Female          0      105     243
6 months    CMIN             BANGLADESH                     Female          1        0     243
6 months    CMIN             BANGLADESH                     Male            0      133     243
6 months    CMIN             BANGLADESH                     Male            1        5     243
6 months    COHORTS          GUATEMALA                      Female          0      455     963
6 months    COHORTS          GUATEMALA                      Female          1        1     963
6 months    COHORTS          GUATEMALA                      Male            0      502     963
6 months    COHORTS          GUATEMALA                      Male            1        5     963
6 months    COHORTS          INDIA                          Female          0     3180    6850
6 months    COHORTS          INDIA                          Female          1      104    6850
6 months    COHORTS          INDIA                          Male            0     3453    6850
6 months    COHORTS          INDIA                          Male            1      113    6850
6 months    COHORTS          PHILIPPINES                    Female          0     1264    2706
6 months    COHORTS          PHILIPPINES                    Female          1       11    2706
6 months    COHORTS          PHILIPPINES                    Male            0     1407    2706
6 months    COHORTS          PHILIPPINES                    Male            1       24    2706
6 months    CONTENT          PERU                           Female          0      109     215
6 months    CONTENT          PERU                           Female          1        0     215
6 months    CONTENT          PERU                           Male            0      106     215
6 months    CONTENT          PERU                           Male            1        0     215
6 months    EE               PAKISTAN                       Female          0      177     375
6 months    EE               PAKISTAN                       Female          1        5     375
6 months    EE               PAKISTAN                       Male            0      185     375
6 months    EE               PAKISTAN                       Male            1        8     375
6 months    GMS-Nepal        NEPAL                          Female          0      271     564
6 months    GMS-Nepal        NEPAL                          Female          1        2     564
6 months    GMS-Nepal        NEPAL                          Male            0      286     564
6 months    GMS-Nepal        NEPAL                          Male            1        5     564
6 months    Guatemala BSC    GUATEMALA                      Female          0      153     299
6 months    Guatemala BSC    GUATEMALA                      Female          1        0     299
6 months    Guatemala BSC    GUATEMALA                      Male            0      146     299
6 months    Guatemala BSC    GUATEMALA                      Male            1        0     299
6 months    IRC              INDIA                          Female          0      177     408
6 months    IRC              INDIA                          Female          1        7     408
6 months    IRC              INDIA                          Male            0      209     408
6 months    IRC              INDIA                          Male            1       15     408
6 months    Keneba           GAMBIA                         Female          0     1000    2089
6 months    Keneba           GAMBIA                         Female          1       11    2089
6 months    Keneba           GAMBIA                         Male            0     1055    2089
6 months    Keneba           GAMBIA                         Male            1       23    2089
6 months    LCNI-5           MALAWI                         Female          0      420     839
6 months    LCNI-5           MALAWI                         Female          1        0     839
6 months    LCNI-5           MALAWI                         Male            0      419     839
6 months    LCNI-5           MALAWI                         Male            1        0     839
6 months    MAL-ED           BANGLADESH                     Female          0      122     241
6 months    MAL-ED           BANGLADESH                     Female          1        1     241
6 months    MAL-ED           BANGLADESH                     Male            0      117     241
6 months    MAL-ED           BANGLADESH                     Male            1        1     241
6 months    MAL-ED           BRAZIL                         Female          0      103     209
6 months    MAL-ED           BRAZIL                         Female          1        0     209
6 months    MAL-ED           BRAZIL                         Male            0      106     209
6 months    MAL-ED           BRAZIL                         Male            1        0     209
6 months    MAL-ED           INDIA                          Female          0      127     236
6 months    MAL-ED           INDIA                          Female          1        3     236
6 months    MAL-ED           INDIA                          Male            0      103     236
6 months    MAL-ED           INDIA                          Male            1        3     236
6 months    MAL-ED           NEPAL                          Female          0      110     236
6 months    MAL-ED           NEPAL                          Female          1        0     236
6 months    MAL-ED           NEPAL                          Male            0      126     236
6 months    MAL-ED           NEPAL                          Male            1        0     236
6 months    MAL-ED           PERU                           Female          0      126     273
6 months    MAL-ED           PERU                           Female          1        0     273
6 months    MAL-ED           PERU                           Male            0      147     273
6 months    MAL-ED           PERU                           Male            1        0     273
6 months    MAL-ED           SOUTH AFRICA                   Female          0      126     254
6 months    MAL-ED           SOUTH AFRICA                   Female          1        0     254
6 months    MAL-ED           SOUTH AFRICA                   Male            0      125     254
6 months    MAL-ED           SOUTH AFRICA                   Male            1        3     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female          0      126     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female          1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male            0      121     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male            1        0     247
6 months    NIH-Birth        BANGLADESH                     Female          0      243     537
6 months    NIH-Birth        BANGLADESH                     Female          1        2     537
6 months    NIH-Birth        BANGLADESH                     Male            0      288     537
6 months    NIH-Birth        BANGLADESH                     Male            1        4     537
6 months    NIH-Crypto       BANGLADESH                     Female          0      362     715
6 months    NIH-Crypto       BANGLADESH                     Female          1        0     715
6 months    NIH-Crypto       BANGLADESH                     Male            0      353     715
6 months    NIH-Crypto       BANGLADESH                     Male            1        0     715
6 months    PROBIT           BELARUS                        Female          0     7618   15757
6 months    PROBIT           BELARUS                        Female          1        2   15757
6 months    PROBIT           BELARUS                        Male            0     8130   15757
6 months    PROBIT           BELARUS                        Male            1        7   15757
6 months    PROVIDE          BANGLADESH                     Female          0      286     603
6 months    PROVIDE          BANGLADESH                     Female          1        2     603
6 months    PROVIDE          BANGLADESH                     Male            0      312     603
6 months    PROVIDE          BANGLADESH                     Male            1        3     603
6 months    ResPak           PAKISTAN                       Female          0      110     239
6 months    ResPak           PAKISTAN                       Female          1        5     239
6 months    ResPak           PAKISTAN                       Male            0      120     239
6 months    ResPak           PAKISTAN                       Male            1        4     239
6 months    SAS-CompFeed     INDIA                          Female          0      592    1334
6 months    SAS-CompFeed     INDIA                          Female          1       18    1334
6 months    SAS-CompFeed     INDIA                          Male            0      699    1334
6 months    SAS-CompFeed     INDIA                          Male            1       25    1334
6 months    SAS-FoodSuppl    INDIA                          Female          0      194     380
6 months    SAS-FoodSuppl    INDIA                          Female          1        8     380
6 months    SAS-FoodSuppl    INDIA                          Male            0      167     380
6 months    SAS-FoodSuppl    INDIA                          Male            1       11     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0      999    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1        4    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0     1017    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1        8    2028
6 months    ZVITAMBO         ZIMBABWE                       Female          0     4110    8505
6 months    ZVITAMBO         ZIMBABWE                       Female          1       34    8505
6 months    ZVITAMBO         ZIMBABWE                       Male            0     4316    8505
6 months    ZVITAMBO         ZIMBABWE                       Male            1       45    8505
24 months   CMC-V-BCS-2002   INDIA                          Female          0      186     372
24 months   CMC-V-BCS-2002   INDIA                          Female          1        0     372
24 months   CMC-V-BCS-2002   INDIA                          Male            0      183     372
24 months   CMC-V-BCS-2002   INDIA                          Male            1        3     372
24 months   CMIN             BANGLADESH                     Female          0      103     243
24 months   CMIN             BANGLADESH                     Female          1        1     243
24 months   CMIN             BANGLADESH                     Male            0      138     243
24 months   CMIN             BANGLADESH                     Male            1        1     243
24 months   COHORTS          GUATEMALA                      Female          0      514    1082
24 months   COHORTS          GUATEMALA                      Female          1        2    1082
24 months   COHORTS          GUATEMALA                      Male            0      564    1082
24 months   COHORTS          GUATEMALA                      Male            1        2    1082
24 months   COHORTS          INDIA                          Female          0     2503    5291
24 months   COHORTS          INDIA                          Female          1       18    5291
24 months   COHORTS          INDIA                          Male            0     2732    5291
24 months   COHORTS          INDIA                          Male            1       38    5291
24 months   COHORTS          PHILIPPINES                    Female          0     1151    2449
24 months   COHORTS          PHILIPPINES                    Female          1        7    2449
24 months   COHORTS          PHILIPPINES                    Male            0     1273    2449
24 months   COHORTS          PHILIPPINES                    Male            1       18    2449
24 months   CONTENT          PERU                           Female          0       81     164
24 months   CONTENT          PERU                           Female          1        0     164
24 months   CONTENT          PERU                           Male            0       83     164
24 months   CONTENT          PERU                           Male            1        0     164
24 months   EE               PAKISTAN                       Female          0       79     168
24 months   EE               PAKISTAN                       Female          1        1     168
24 months   EE               PAKISTAN                       Male            0       85     168
24 months   EE               PAKISTAN                       Male            1        3     168
24 months   GMS-Nepal        NEPAL                          Female          0      223     487
24 months   GMS-Nepal        NEPAL                          Female          1        4     487
24 months   GMS-Nepal        NEPAL                          Male            0      249     487
24 months   GMS-Nepal        NEPAL                          Male            1       11     487
24 months   IRC              INDIA                          Female          0      183     409
24 months   IRC              INDIA                          Female          1        2     409
24 months   IRC              INDIA                          Male            0      221     409
24 months   IRC              INDIA                          Male            1        3     409
24 months   Keneba           GAMBIA                         Female          0      808    1726
24 months   Keneba           GAMBIA                         Female          1       15    1726
24 months   Keneba           GAMBIA                         Male            0      888    1726
24 months   Keneba           GAMBIA                         Male            1       15    1726
24 months   LCNI-5           MALAWI                         Female          0      286     563
24 months   LCNI-5           MALAWI                         Female          1        0     563
24 months   LCNI-5           MALAWI                         Male            0      276     563
24 months   LCNI-5           MALAWI                         Male            1        1     563
24 months   MAL-ED           BANGLADESH                     Female          0      104     212
24 months   MAL-ED           BANGLADESH                     Female          1        0     212
24 months   MAL-ED           BANGLADESH                     Male            0      108     212
24 months   MAL-ED           BANGLADESH                     Male            1        0     212
24 months   MAL-ED           BRAZIL                         Female          0       78     169
24 months   MAL-ED           BRAZIL                         Female          1        1     169
24 months   MAL-ED           BRAZIL                         Male            0       90     169
24 months   MAL-ED           BRAZIL                         Male            1        0     169
24 months   MAL-ED           INDIA                          Female          0      121     227
24 months   MAL-ED           INDIA                          Female          1        1     227
24 months   MAL-ED           INDIA                          Male            0      104     227
24 months   MAL-ED           INDIA                          Male            1        1     227
24 months   MAL-ED           NEPAL                          Female          0      106     228
24 months   MAL-ED           NEPAL                          Female          1        0     228
24 months   MAL-ED           NEPAL                          Male            0      122     228
24 months   MAL-ED           NEPAL                          Male            1        0     228
24 months   MAL-ED           PERU                           Female          0       91     201
24 months   MAL-ED           PERU                           Female          1        0     201
24 months   MAL-ED           PERU                           Male            0      108     201
24 months   MAL-ED           PERU                           Male            1        2     201
24 months   MAL-ED           SOUTH AFRICA                   Female          0      118     238
24 months   MAL-ED           SOUTH AFRICA                   Female          1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Male            0      120     238
24 months   MAL-ED           SOUTH AFRICA                   Male            1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female          0      106     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female          1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male            0      108     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male            1        0     214
24 months   NIH-Birth        BANGLADESH                     Female          0      191     428
24 months   NIH-Birth        BANGLADESH                     Female          1        4     428
24 months   NIH-Birth        BANGLADESH                     Male            0      227     428
24 months   NIH-Birth        BANGLADESH                     Male            1        6     428
24 months   NIH-Crypto       BANGLADESH                     Female          0      259     514
24 months   NIH-Crypto       BANGLADESH                     Female          1        1     514
24 months   NIH-Crypto       BANGLADESH                     Male            0      251     514
24 months   NIH-Crypto       BANGLADESH                     Male            1        3     514
24 months   PROBIT           BELARUS                        Female          0     1925    3970
24 months   PROBIT           BELARUS                        Female          1        0    3970
24 months   PROBIT           BELARUS                        Male            0     2038    3970
24 months   PROBIT           BELARUS                        Male            1        7    3970
24 months   PROVIDE          BANGLADESH                     Female          0      275     579
24 months   PROVIDE          BANGLADESH                     Female          1        4     579
24 months   PROVIDE          BANGLADESH                     Male            0      295     579
24 months   PROVIDE          BANGLADESH                     Male            1        5     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Female          0      249     433
24 months   ZVITAMBO         ZIMBABWE                       Female          1       14     433
24 months   ZVITAMBO         ZIMBABWE                       Male            0      153     433
24 months   ZVITAMBO         ZIMBABWE                       Male            1       17     433


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/58b00f3b-d26c-4e93-b6a8-c22ddc2337dc/b9ea438b-1463-4f50-9a5f-0dc7e42f7be5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/58b00f3b-d26c-4e93-b6a8-c22ddc2337dc/b9ea438b-1463-4f50-9a5f-0dc7e42f7be5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/58b00f3b-d26c-4e93-b6a8-c22ddc2337dc/b9ea438b-1463-4f50-9a5f-0dc7e42f7be5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/58b00f3b-d26c-4e93-b6a8-c22ddc2337dc/b9ea438b-1463-4f50-9a5f-0dc7e42f7be5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     Female               NA                0.0694444   0.0431675   0.0957213
Birth       COHORTS          GUATEMALA     Male                 NA                0.0883838   0.0604082   0.1163595
Birth       COHORTS          INDIA         Female               NA                0.0508130   0.0428900   0.0587360
Birth       COHORTS          INDIA         Male                 NA                0.0524529   0.0447771   0.0601288
Birth       COHORTS          PHILIPPINES   Female               NA                0.0397059   0.0293262   0.0500855
Birth       COHORTS          PHILIPPINES   Male                 NA                0.0435348   0.0333381   0.0537314
Birth       GMS-Nepal        NEPAL         Female               NA                0.0471380   0.0230162   0.0712598
Birth       GMS-Nepal        NEPAL         Male                 NA                0.0377907   0.0176240   0.0579574
Birth       IRC              INDIA         Female               NA                0.1824324   0.1201215   0.2447433
Birth       IRC              INDIA         Male                 NA                0.1384615   0.0899141   0.1870090
Birth       Keneba           GAMBIA        Female               NA                0.0697013   0.0508713   0.0885313
Birth       Keneba           GAMBIA        Male                 NA                0.0707733   0.0525708   0.0889757
Birth       NIH-Birth        BANGLADESH    Female               NA                0.0631970   0.0340951   0.0922990
Birth       NIH-Birth        BANGLADESH    Male                 NA                0.0686275   0.0402760   0.0969789
Birth       NIH-Crypto       BANGLADESH    Female               NA                0.0714286   0.0444285   0.0984287
Birth       NIH-Crypto       BANGLADESH    Male                 NA                0.0616246   0.0366622   0.0865871
Birth       PROBIT           BELARUS       Female               NA                0.0638266   0.0298406   0.0978126
Birth       PROBIT           BELARUS       Male                 NA                0.0690333   0.0358948   0.1021717
Birth       PROVIDE          BANGLADESH    Female               NA                0.0239044   0.0049895   0.0428193
Birth       PROVIDE          BANGLADESH    Male                 NA                0.0249110   0.0066712   0.0431509
Birth       SAS-CompFeed     INDIA         Female               NA                0.0281690   0.0109460   0.0453921
Birth       SAS-CompFeed     INDIA         Male                 NA                0.0247525   0.0092283   0.0402767
Birth       ZVITAMBO         ZIMBABWE      Female               NA                0.0621986   0.0561973   0.0682000
Birth       ZVITAMBO         ZIMBABWE      Male                 NA                0.0604929   0.0547822   0.0662036
6 months    CMC-V-BCS-2002   INDIA         Female               NA                0.0268817   0.0036065   0.0501569
6 months    CMC-V-BCS-2002   INDIA         Male                 NA                0.0384615   0.0104846   0.0664385
6 months    COHORTS          INDIA         Female               NA                0.0316687   0.0256790   0.0376584
6 months    COHORTS          INDIA         Male                 NA                0.0316882   0.0259385   0.0374379
6 months    COHORTS          PHILIPPINES   Female               NA                0.0086275   0.0035501   0.0137048
6 months    COHORTS          PHILIPPINES   Male                 NA                0.0167715   0.0101169   0.0234261
6 months    EE               PAKISTAN      Female               NA                0.0274725   0.0036936   0.0512515
6 months    EE               PAKISTAN      Male                 NA                0.0414508   0.0132914   0.0696101
6 months    IRC              INDIA         Female               NA                0.0380435   0.0103683   0.0657186
6 months    IRC              INDIA         Male                 NA                0.0669643   0.0341904   0.0997382
6 months    Keneba           GAMBIA        Female               NA                0.0108803   0.0044841   0.0172765
6 months    Keneba           GAMBIA        Male                 NA                0.0213358   0.0127077   0.0299639
6 months    SAS-CompFeed     INDIA         Female               NA                0.0295082   0.0196810   0.0393354
6 months    SAS-CompFeed     INDIA         Male                 NA                0.0345304   0.0178765   0.0511843
6 months    SAS-FoodSuppl    INDIA         Female               NA                0.0396040   0.0126738   0.0665341
6 months    SAS-FoodSuppl    INDIA         Male                 NA                0.0617978   0.0263781   0.0972175
6 months    ZVITAMBO         ZIMBABWE      Female               NA                0.0082046   0.0054580   0.0109513
6 months    ZVITAMBO         ZIMBABWE      Male                 NA                0.0103187   0.0073193   0.0133182
24 months   COHORTS          INDIA         Female               NA                0.0071400   0.0038530   0.0104270
24 months   COHORTS          INDIA         Male                 NA                0.0137184   0.0093863   0.0180505
24 months   COHORTS          PHILIPPINES   Female               NA                0.0060449   0.0015795   0.0105103
24 months   COHORTS          PHILIPPINES   Male                 NA                0.0139427   0.0075454   0.0203400
24 months   Keneba           GAMBIA        Female               NA                0.0182260   0.0090843   0.0273677
24 months   Keneba           GAMBIA        Male                 NA                0.0166113   0.0082727   0.0249499
24 months   ZVITAMBO         ZIMBABWE      Female               NA                0.0532319   0.0260688   0.0803951
24 months   ZVITAMBO         ZIMBABWE      Male                 NA                0.1000000   0.0548511   0.1451489


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       COHORTS          INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       COHORTS          PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       GMS-Nepal        NEPAL         NA                   NA                0.0421217   0.0265597   0.0576837
Birth       IRC              INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       Keneba           GAMBIA        NA                   NA                0.0702592   0.0571716   0.0833469
Birth       NIH-Birth        BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       NIH-Crypto       BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       PROBIT           BELARUS       NA                   NA                0.0665123   0.0333611   0.0996634
Birth       PROVIDE          BANGLADESH    NA                   NA                0.0244361   0.0113037   0.0375685
Birth       SAS-CompFeed     INDIA         NA                   NA                0.0262919   0.0122874   0.0402964
Birth       ZVITAMBO         ZIMBABWE      NA                   NA                0.0613145   0.0571772   0.0654519
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.0326087   0.0144375   0.0507799
6 months    COHORTS          INDIA         NA                   NA                0.0316788   0.0275309   0.0358267
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    EE               PAKISTAN      NA                   NA                0.0346667   0.0161268   0.0532065
6 months    IRC              INDIA         NA                   NA                0.0539216   0.0319786   0.0758646
6 months    Keneba           GAMBIA        NA                   NA                0.0162757   0.0108484   0.0217031
6 months    SAS-CompFeed     INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    SAS-FoodSuppl    INDIA         NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0092887   0.0072498   0.0113275
24 months   COHORTS          INDIA         NA                   NA                0.0105840   0.0078264   0.0133416
24 months   COHORTS          PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   Keneba           GAMBIA        NA                   NA                0.0173812   0.0112141   0.0235484
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.0715935   0.0472820   0.0959051


### Parameter: RR


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          GUATEMALA     Female               Female            1.0000000   1.0000000   1.000000
Birth       COHORTS          GUATEMALA     Male                 Female            1.2727273   0.7771218   2.084403
Birth       COHORTS          INDIA         Female               Female            1.0000000   1.0000000   1.000000
Birth       COHORTS          INDIA         Male                 Female            1.0322740   0.8335385   1.278393
Birth       COHORTS          PHILIPPINES   Female               Female            1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES   Male                 Female            1.0964311   0.7718761   1.557454
Birth       GMS-Nepal        NEPAL         Female               Female            1.0000000   1.0000000   1.000000
Birth       GMS-Nepal        NEPAL         Male                 Female            0.8017027   0.3827522   1.679225
Birth       IRC              INDIA         Female               Female            1.0000000   1.0000000   1.000000
Birth       IRC              INDIA         Male                 Female            0.7589744   0.4652073   1.238248
Birth       Keneba           GAMBIA        Female               Female            1.0000000   1.0000000   1.000000
Birth       Keneba           GAMBIA        Male                 Female            1.0153797   0.6992547   1.474421
Birth       NIH-Birth        BANGLADESH    Female               Female            1.0000000   1.0000000   1.000000
Birth       NIH-Birth        BANGLADESH    Male                 Female            1.0859285   0.5849592   2.015937
Birth       NIH-Crypto       BANGLADESH    Female               Female            1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH    Male                 Female            0.8627451   0.4957501   1.501420
Birth       PROBIT           BELARUS       Female               Female            1.0000000   1.0000000   1.000000
Birth       PROBIT           BELARUS       Male                 Female            1.0815749   0.9213102   1.269718
Birth       PROVIDE          BANGLADESH    Female               Female            1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH    Male                 Female            1.0421115   0.3545805   3.062764
Birth       SAS-CompFeed     INDIA         Female               Female            1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA         Male                 Female            0.8787129   0.4648178   1.661159
Birth       ZVITAMBO         ZIMBABWE      Female               Female            1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE      Male                 Female            0.9725759   0.8497658   1.113135
6 months    CMC-V-BCS-2002   INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA         Male                 Female            1.4307692   0.4618005   4.432868
6 months    COHORTS          INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    COHORTS          INDIA         Male                 Female            1.0006148   0.7699087   1.300453
6 months    COHORTS          PHILIPPINES   Female               Female            1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES   Male                 Female            1.9439680   0.9559607   3.953104
6 months    EE               PAKISTAN      Female               Female            1.0000000   1.0000000   1.000000
6 months    EE               PAKISTAN      Male                 Female            1.5088083   0.5020808   4.534136
6 months    IRC              INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    IRC              INDIA         Male                 Female            1.7602041   0.7324610   4.230012
6 months    Keneba           GAMBIA        Female               Female            1.0000000   1.0000000   1.000000
6 months    Keneba           GAMBIA        Male                 Female            1.9609546   0.9606954   4.002666
6 months    SAS-CompFeed     INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA         Male                 Female            1.1701964   0.6021138   2.274254
6 months    SAS-FoodSuppl    INDIA         Female               Female            1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl    INDIA         Male                 Female            1.5603933   0.6412208   3.797174
6 months    ZVITAMBO         ZIMBABWE      Female               Female            1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE      Male                 Female            1.2576716   0.8072721   1.959362
24 months   COHORTS          INDIA         Female               Female            1.0000000   1.0000000   1.000000
24 months   COHORTS          INDIA         Male                 Female            1.9213398   1.0993985   3.357788
24 months   COHORTS          PHILIPPINES   Female               Female            1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES   Male                 Female            2.3065176   0.9667024   5.503269
24 months   Keneba           GAMBIA        Female               Female            1.0000000   1.0000000   1.000000
24 months   Keneba           GAMBIA        Male                 Female            0.9114064   0.4482567   1.853094
24 months   ZVITAMBO         ZIMBABWE      Female               Female            1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE      Male                 Female            1.8785714   0.9504398   3.713050


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA     Female               NA                 0.0099206   -0.0101951   0.0300364
Birth       COHORTS          INDIA         Female               NA                 0.0008582   -0.0049149   0.0066314
Birth       COHORTS          PHILIPPINES   Female               NA                 0.0020326   -0.0056920   0.0097573
Birth       GMS-Nepal        NEPAL         Female               NA                -0.0050164   -0.0218936   0.0118609
Birth       IRC              INDIA         Female               NA                -0.0249980   -0.0699645   0.0199684
Birth       Keneba           GAMBIA        Female               NA                 0.0005579   -0.0130729   0.0141887
Birth       NIH-Birth        BANGLADESH    Female               NA                 0.0028899   -0.0187330   0.0245129
Birth       NIH-Crypto       BANGLADESH    Female               NA                -0.0049505   -0.0235217   0.0136207
Birth       PROBIT           BELARUS       Female               NA                 0.0026857   -0.0025233   0.0078946
Birth       PROVIDE          BANGLADESH    Female               NA                 0.0005317   -0.0133476   0.0144110
Birth       SAS-CompFeed     INDIA         Female               NA                -0.0018771   -0.0111600   0.0074058
Birth       ZVITAMBO         ZIMBABWE      Female               NA                -0.0008841   -0.0051779   0.0034097
6 months    CMC-V-BCS-2002   INDIA         Female               NA                 0.0057270   -0.0122814   0.0237354
6 months    COHORTS          INDIA         Female               NA                 0.0000101   -0.0043121   0.0043324
6 months    COHORTS          PHILIPPINES   Female               NA                 0.0043068   -0.0001223   0.0087359
6 months    EE               PAKISTAN      Female               NA                 0.0071941   -0.0117878   0.0261761
6 months    IRC              INDIA         Female               NA                 0.0158781   -0.0077139   0.0394701
6 months    Keneba           GAMBIA        Female               NA                 0.0053954   -0.0001515   0.0109424
6 months    SAS-CompFeed     INDIA         Female               NA                 0.0027257   -0.0090250   0.0144763
6 months    SAS-FoodSuppl    INDIA         Female               NA                 0.0103960   -0.0104761   0.0312682
6 months    ZVITAMBO         ZIMBABWE      Female               NA                 0.0010840   -0.0010015   0.0031695
24 months   COHORTS          INDIA         Female               NA                 0.0034440    0.0005957   0.0062923
24 months   COHORTS          PHILIPPINES   Female               NA                 0.0041633    0.0000477   0.0082790
24 months   Keneba           GAMBIA        Female               NA                -0.0008448   -0.0073184   0.0056288
24 months   ZVITAMBO         ZIMBABWE      Female               NA                 0.0183616   -0.0024369   0.0391601


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA     Female               NA                 0.1250000   -0.1669159   0.3438902
Birth       COHORTS          INDIA         Female               NA                 0.0166095   -0.1016995   0.1222135
Birth       COHORTS          PHILIPPINES   Female               NA                 0.0486996   -0.1553838   0.2167343
Birth       GMS-Nepal        NEPAL         Female               NA                -0.1190922   -0.5977626   0.2161744
Birth       IRC              INDIA         Female               NA                -0.1587838   -0.4807551   0.0931790
Birth       Keneba           GAMBIA        Female               NA                 0.0079410   -0.2063298   0.1841526
Birth       NIH-Birth        BANGLADESH    Female               NA                 0.0437292   -0.3460671   0.3206476
Birth       NIH-Crypto       BANGLADESH    Female               NA                -0.0744681   -0.3926717   0.1710310
Birth       PROBIT           BELARUS       Female               NA                 0.0403784   -0.0457458   0.1194098
Birth       PROVIDE          BANGLADESH    Female               NA                 0.0217591   -0.7480517   0.4525590
Birth       SAS-CompFeed     INDIA         Female               NA                -0.0713939   -0.4895273   0.2293630
Birth       ZVITAMBO         ZIMBABWE      Female               NA                -0.0144191   -0.0869158   0.0532421
6 months    CMC-V-BCS-2002   INDIA         Female               NA                 0.1756272   -0.5948362   0.5738807
6 months    COHORTS          INDIA         Female               NA                 0.0003199   -0.1458700   0.1278590
6 months    COHORTS          PHILIPPINES   Female               NA                 0.3329748   -0.0853646   0.5900708
6 months    EE               PAKISTAN      Female               NA                 0.2075232   -0.5602287   0.5974825
6 months    IRC              INDIA         Female               NA                 0.2944664   -0.2834635   0.6121606
6 months    Keneba           GAMBIA        Female               NA                 0.3315006   -0.0834585   0.5875324
6 months    SAS-CompFeed     INDIA         Female               NA                 0.0845597   -0.3445988   0.3767427
6 months    SAS-FoodSuppl    INDIA         Female               NA                 0.2079208   -0.3261206   0.5268986
6 months    ZVITAMBO         ZIMBABWE      Female               NA                 0.1167037   -0.1370781   0.3138446
24 months   COHORTS          INDIA         Female               NA                 0.3253953    0.0146092   0.5381613
24 months   COHORTS          PHILIPPINES   Female               NA                 0.4078411   -0.1077391   0.6834524
24 months   Keneba           GAMBIA        Female               NA                -0.0486027   -0.4952249   0.2646139
24 months   ZVITAMBO         ZIMBABWE      Female               NA                 0.2564700   -0.0816655   0.4889022
