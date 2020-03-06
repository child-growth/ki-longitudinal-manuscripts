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

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        birthwt                       swasted   n_cell       n
----------  ---------------  -----------------------------  ---------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       76      86
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1        0      86
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                     0        9      86
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                     1        1      86
Birth       CMIN             BANGLADESH                     Normal or high birthweight          0       14      19
Birth       CMIN             BANGLADESH                     Normal or high birthweight          1        0      19
Birth       CMIN             BANGLADESH                     Low birthweight                     0        4      19
Birth       CMIN             BANGLADESH                     Low birthweight                     1        1      19
Birth       COHORTS          GUATEMALA                      Normal or high birthweight          0      660     756
Birth       COHORTS          GUATEMALA                      Normal or high birthweight          1       42     756
Birth       COHORTS          GUATEMALA                      Low birthweight                     0       36     756
Birth       COHORTS          GUATEMALA                      Low birthweight                     1       18     756
Birth       COHORTS          INDIA                          Normal or high birthweight          0     5079    6193
Birth       COHORTS          INDIA                          Normal or high birthweight          1       99    6193
Birth       COHORTS          INDIA                          Low birthweight                     0      794    6193
Birth       COHORTS          INDIA                          Low birthweight                     1      221    6193
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight          0     2623    2899
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight          1       65    2899
Birth       COHORTS          PHILIPPINES                    Low birthweight                     0      155    2899
Birth       COHORTS          PHILIPPINES                    Low birthweight                     1       56    2899
Birth       CONTENT          PERU                           Normal or high birthweight          0        2       2
Birth       CONTENT          PERU                           Normal or high birthweight          1        0       2
Birth       CONTENT          PERU                           Low birthweight                     0        0       2
Birth       CONTENT          PERU                           Low birthweight                     1        0       2
Birth       EE               PAKISTAN                       Normal or high birthweight          0      135     177
Birth       EE               PAKISTAN                       Normal or high birthweight          1        3     177
Birth       EE               PAKISTAN                       Low birthweight                     0       36     177
Birth       EE               PAKISTAN                       Low birthweight                     1        3     177
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight          0      467     641
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight          1        5     641
Birth       GMS-Nepal        NEPAL                          Low birthweight                     0      147     641
Birth       GMS-Nepal        NEPAL                          Low birthweight                     1       22     641
Birth       IRC              INDIA                          Normal or high birthweight          0      264     343
Birth       IRC              INDIA                          Normal or high birthweight          1       32     343
Birth       IRC              INDIA                          Low birthweight                     0       25     343
Birth       IRC              INDIA                          Low birthweight                     1       22     343
Birth       Keneba           GAMBIA                         Normal or high birthweight          0     1212    1465
Birth       Keneba           GAMBIA                         Normal or high birthweight          1       61    1465
Birth       Keneba           GAMBIA                         Low birthweight                     0      150    1465
Birth       Keneba           GAMBIA                         Low birthweight                     1       42    1465
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight          0      172     215
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight          1        5     215
Birth       MAL-ED           BANGLADESH                     Low birthweight                     0       35     215
Birth       MAL-ED           BANGLADESH                     Low birthweight                     1        3     215
Birth       MAL-ED           BRAZIL                         Normal or high birthweight          0       60      62
Birth       MAL-ED           BRAZIL                         Normal or high birthweight          1        0      62
Birth       MAL-ED           BRAZIL                         Low birthweight                     0        2      62
Birth       MAL-ED           BRAZIL                         Low birthweight                     1        0      62
Birth       MAL-ED           INDIA                          Normal or high birthweight          0       38      45
Birth       MAL-ED           INDIA                          Normal or high birthweight          1        0      45
Birth       MAL-ED           INDIA                          Low birthweight                     0        7      45
Birth       MAL-ED           INDIA                          Low birthweight                     1        0      45
Birth       MAL-ED           NEPAL                          Normal or high birthweight          0       24      26
Birth       MAL-ED           NEPAL                          Normal or high birthweight          1        0      26
Birth       MAL-ED           NEPAL                          Low birthweight                     0        1      26
Birth       MAL-ED           NEPAL                          Low birthweight                     1        1      26
Birth       MAL-ED           PERU                           Normal or high birthweight          0      218     228
Birth       MAL-ED           PERU                           Normal or high birthweight          1        0     228
Birth       MAL-ED           PERU                           Low birthweight                     0       10     228
Birth       MAL-ED           PERU                           Low birthweight                     1        0     228
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      115     120
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1        0     120
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                     0        5     120
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                     1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      113     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        2     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     115
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight          0      412     575
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight          1        9     575
Birth       NIH-Birth        BANGLADESH                     Low birthweight                     0      125     575
Birth       NIH-Birth        BANGLADESH                     Low birthweight                     1       29     575
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      536     707
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight          1       18     707
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                     0      124     707
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                     1       29     707
Birth       PROBIT           BELARUS                        Normal or high birthweight          0    12898   13817
Birth       PROBIT           BELARUS                        Normal or high birthweight          1      919   13817
Birth       PROBIT           BELARUS                        Low birthweight                     0        0   13817
Birth       PROBIT           BELARUS                        Low birthweight                     1        0   13817
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight          0      397     532
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight          1        4     532
Birth       PROVIDE          BANGLADESH                     Low birthweight                     0      122     532
Birth       PROVIDE          BANGLADESH                     Low birthweight                     1        9     532
Birth       ResPak           PAKISTAN                       Normal or high birthweight          0       34      38
Birth       ResPak           PAKISTAN                       Normal or high birthweight          1        0      38
Birth       ResPak           PAKISTAN                       Low birthweight                     0        4      38
Birth       ResPak           PAKISTAN                       Low birthweight                     1        0      38
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight          0      890    1103
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight          1        4    1103
Birth       SAS-CompFeed     INDIA                          Low birthweight                     0      184    1103
Birth       SAS-CompFeed     INDIA                          Low birthweight                     1       25    1103
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11254   12917
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      360   12917
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                     0      871   12917
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                     1      432   12917
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      308     360
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1        9     360
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                     0       41     360
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                     1        2     360
6 months    CMIN             BANGLADESH                     Normal or high birthweight          0        9      12
6 months    CMIN             BANGLADESH                     Normal or high birthweight          1        0      12
6 months    CMIN             BANGLADESH                     Low birthweight                     0        3      12
6 months    CMIN             BANGLADESH                     Low birthweight                     1        0      12
6 months    COHORTS          GUATEMALA                      Normal or high birthweight          0      701     774
6 months    COHORTS          GUATEMALA                      Normal or high birthweight          1        3     774
6 months    COHORTS          GUATEMALA                      Low birthweight                     0       70     774
6 months    COHORTS          GUATEMALA                      Low birthweight                     1        0     774
6 months    COHORTS          INDIA                          Normal or high birthweight          0     4893    6252
6 months    COHORTS          INDIA                          Normal or high birthweight          1      107    6252
6 months    COHORTS          INDIA                          Low birthweight                     0     1156    6252
6 months    COHORTS          INDIA                          Low birthweight                     1       96    6252
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight          0     2387    2664
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight          1       29    2664
6 months    COHORTS          PHILIPPINES                    Low birthweight                     0      242    2664
6 months    COHORTS          PHILIPPINES                    Low birthweight                     1        6    2664
6 months    CONTENT          PERU                           Normal or high birthweight          0        2       2
6 months    CONTENT          PERU                           Normal or high birthweight          1        0       2
6 months    CONTENT          PERU                           Low birthweight                     0        0       2
6 months    CONTENT          PERU                           Low birthweight                     1        0       2
6 months    EE               PAKISTAN                       Normal or high birthweight          0      236     374
6 months    EE               PAKISTAN                       Normal or high birthweight          1        7     374
6 months    EE               PAKISTAN                       Low birthweight                     0      125     374
6 months    EE               PAKISTAN                       Low birthweight                     1        6     374
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight          0      394     563
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight          1        3     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                     0      162     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                     1        4     563
6 months    IRC              INDIA                          Normal or high birthweight          0      318     402
6 months    IRC              INDIA                          Normal or high birthweight          1       16     402
6 months    IRC              INDIA                          Low birthweight                     0       63     402
6 months    IRC              INDIA                          Low birthweight                     1        5     402
6 months    Keneba           GAMBIA                         Normal or high birthweight          0     1132    1334
6 months    Keneba           GAMBIA                         Normal or high birthweight          1       14    1334
6 months    Keneba           GAMBIA                         Low birthweight                     0      183    1334
6 months    Keneba           GAMBIA                         Low birthweight                     1        5    1334
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight          0      186     238
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight          1        2     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                     0       50     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                     1        0     238
6 months    MAL-ED           BRAZIL                         Normal or high birthweight          0      199     209
6 months    MAL-ED           BRAZIL                         Normal or high birthweight          1        0     209
6 months    MAL-ED           BRAZIL                         Low birthweight                     0       10     209
6 months    MAL-ED           BRAZIL                         Low birthweight                     1        0     209
6 months    MAL-ED           INDIA                          Normal or high birthweight          0      187     227
6 months    MAL-ED           INDIA                          Normal or high birthweight          1        6     227
6 months    MAL-ED           INDIA                          Low birthweight                     0       34     227
6 months    MAL-ED           INDIA                          Low birthweight                     1        0     227
6 months    MAL-ED           NEPAL                          Normal or high birthweight          0      210     229
6 months    MAL-ED           NEPAL                          Normal or high birthweight          1        0     229
6 months    MAL-ED           NEPAL                          Low birthweight                     0       19     229
6 months    MAL-ED           NEPAL                          Low birthweight                     1        0     229
6 months    MAL-ED           PERU                           Normal or high birthweight          0      254     270
6 months    MAL-ED           PERU                           Normal or high birthweight          1        0     270
6 months    MAL-ED           PERU                           Low birthweight                     0       16     270
6 months    MAL-ED           PERU                           Low birthweight                     1        0     270
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      235     253
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1        3     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                     0       15     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                     1        0     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      177     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        9     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     186
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight          0      364     518
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight          1        3     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                     0      148     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                     1        3     518
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      545     715
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight          1        0     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                     0      170     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                     1        0     715
6 months    PROBIT           BELARUS                        Normal or high birthweight          0    15748   15757
6 months    PROBIT           BELARUS                        Normal or high birthweight          1        9   15757
6 months    PROBIT           BELARUS                        Low birthweight                     0        0   15757
6 months    PROBIT           BELARUS                        Low birthweight                     1        0   15757
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight          0      458     603
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight          1        2     603
6 months    PROVIDE          BANGLADESH                     Low birthweight                     0      140     603
6 months    PROVIDE          BANGLADESH                     Low birthweight                     1        3     603
6 months    ResPak           PAKISTAN                       Normal or high birthweight          0       28      34
6 months    ResPak           PAKISTAN                       Normal or high birthweight          1        1      34
6 months    ResPak           PAKISTAN                       Low birthweight                     0        5      34
6 months    ResPak           PAKISTAN                       Low birthweight                     1        0      34
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight          0      978    1324
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight          1       23    1324
6 months    SAS-CompFeed     INDIA                          Low birthweight                     0      304    1324
6 months    SAS-CompFeed     INDIA                          Low birthweight                     1       19    1324
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1932    2010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       11    2010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       66    2010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        1    2010
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     7337    8473
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       68    8473
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1057    8473
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                     1       11    8473
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      319     364
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1        2     364
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     0       42     364
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     1        1     364
24 months   CMIN             BANGLADESH                     Normal or high birthweight          0        8      11
24 months   CMIN             BANGLADESH                     Normal or high birthweight          1        0      11
24 months   CMIN             BANGLADESH                     Low birthweight                     0        3      11
24 months   CMIN             BANGLADESH                     Low birthweight                     1        0      11
24 months   COHORTS          GUATEMALA                      Normal or high birthweight          0      593     657
24 months   COHORTS          GUATEMALA                      Normal or high birthweight          1        2     657
24 months   COHORTS          GUATEMALA                      Low birthweight                     0       62     657
24 months   COHORTS          GUATEMALA                      Low birthweight                     1        0     657
24 months   COHORTS          INDIA                          Normal or high birthweight          0     3880    4821
24 months   COHORTS          INDIA                          Normal or high birthweight          1       31    4821
24 months   COHORTS          INDIA                          Low birthweight                     0      890    4821
24 months   COHORTS          INDIA                          Low birthweight                     1       20    4821
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          0     2174    2410
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          1       21    2410
24 months   COHORTS          PHILIPPINES                    Low birthweight                     0      212    2410
24 months   COHORTS          PHILIPPINES                    Low birthweight                     1        3    2410
24 months   CONTENT          PERU                           Normal or high birthweight          0        2       2
24 months   CONTENT          PERU                           Normal or high birthweight          1        0       2
24 months   CONTENT          PERU                           Low birthweight                     0        0       2
24 months   CONTENT          PERU                           Low birthweight                     1        0       2
24 months   EE               PAKISTAN                       Normal or high birthweight          0       98     168
24 months   EE               PAKISTAN                       Normal or high birthweight          1        3     168
24 months   EE               PAKISTAN                       Low birthweight                     0       66     168
24 months   EE               PAKISTAN                       Low birthweight                     1        1     168
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          0      344     486
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          1       11     486
24 months   GMS-Nepal        NEPAL                          Low birthweight                     0      127     486
24 months   GMS-Nepal        NEPAL                          Low birthweight                     1        4     486
24 months   IRC              INDIA                          Normal or high birthweight          0      332     403
24 months   IRC              INDIA                          Normal or high birthweight          1        3     403
24 months   IRC              INDIA                          Low birthweight                     0       66     403
24 months   IRC              INDIA                          Low birthweight                     1        2     403
24 months   Keneba           GAMBIA                         Normal or high birthweight          0      890    1057
24 months   Keneba           GAMBIA                         Normal or high birthweight          1       15    1057
24 months   Keneba           GAMBIA                         Low birthweight                     0      146    1057
24 months   Keneba           GAMBIA                         Low birthweight                     1        6    1057
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          0      165     210
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          1        0     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                     0       45     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                     1        0     210
24 months   MAL-ED           BRAZIL                         Normal or high birthweight          0      160     169
24 months   MAL-ED           BRAZIL                         Normal or high birthweight          1        1     169
24 months   MAL-ED           BRAZIL                         Low birthweight                     0        8     169
24 months   MAL-ED           BRAZIL                         Low birthweight                     1        0     169
24 months   MAL-ED           INDIA                          Normal or high birthweight          0      184     218
24 months   MAL-ED           INDIA                          Normal or high birthweight          1        1     218
24 months   MAL-ED           INDIA                          Low birthweight                     0       32     218
24 months   MAL-ED           INDIA                          Low birthweight                     1        1     218
24 months   MAL-ED           NEPAL                          Normal or high birthweight          0      203     221
24 months   MAL-ED           NEPAL                          Normal or high birthweight          1        0     221
24 months   MAL-ED           NEPAL                          Low birthweight                     0       18     221
24 months   MAL-ED           NEPAL                          Low birthweight                     1        0     221
24 months   MAL-ED           PERU                           Normal or high birthweight          0      186     199
24 months   MAL-ED           PERU                           Normal or high birthweight          1        1     199
24 months   MAL-ED           PERU                           Low birthweight                     0       11     199
24 months   MAL-ED           PERU                           Low birthweight                     1        1     199
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      224     237
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1        0     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     0       13     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     1        0     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      154     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        8     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     162
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          0      284     413
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          1        2     413
24 months   NIH-Birth        BANGLADESH                     Low birthweight                     0      119     413
24 months   NIH-Birth        BANGLADESH                     Low birthweight                     1        8     413
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      387     514
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          1        1     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     0      123     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     1        3     514
24 months   PROBIT           BELARUS                        Normal or high birthweight          0     3963    3970
24 months   PROBIT           BELARUS                        Normal or high birthweight          1        7    3970
24 months   PROBIT           BELARUS                        Low birthweight                     0        0    3970
24 months   PROBIT           BELARUS                        Low birthweight                     1        0    3970
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          0      437     579
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          1        3     579
24 months   PROVIDE          BANGLADESH                     Low birthweight                     0      133     579
24 months   PROVIDE          BANGLADESH                     Low birthweight                     1        6     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0        6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0      312     431
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       25     431
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     0       88     431
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     1        6     431


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
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/bdb4d4ae-369f-4de6-af06-016ea75f21e6/7dc249af-aaa2-443d-a7aa-f9a8950c699f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bdb4d4ae-369f-4de6-af06-016ea75f21e6/7dc249af-aaa2-443d-a7aa-f9a8950c699f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bdb4d4ae-369f-4de6-af06-016ea75f21e6/7dc249af-aaa2-443d-a7aa-f9a8950c699f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bdb4d4ae-369f-4de6-af06-016ea75f21e6/7dc249af-aaa2-443d-a7aa-f9a8950c699f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     Normal or high birthweight   NA                0.0598291   0.0422730   0.0773851
Birth       COHORTS        GUATEMALA     Low birthweight              NA                0.3333333   0.2075183   0.4591483
Birth       COHORTS        INDIA         Normal or high birthweight   NA                0.0191194   0.0153890   0.0228497
Birth       COHORTS        INDIA         Low birthweight              NA                0.2177340   0.1923424   0.2431256
Birth       COHORTS        PHILIPPINES   Normal or high birthweight   NA                0.0241815   0.0183734   0.0299897
Birth       COHORTS        PHILIPPINES   Low birthweight              NA                0.2654028   0.2058148   0.3249909
Birth       GMS-Nepal      NEPAL         Normal or high birthweight   NA                0.0105932   0.0013501   0.0198363
Birth       GMS-Nepal      NEPAL         Low birthweight              NA                0.1301775   0.0794052   0.1809498
Birth       IRC            INDIA         Normal or high birthweight   NA                0.1081081   0.0726822   0.1435341
Birth       IRC            INDIA         Low birthweight              NA                0.4680851   0.3252231   0.6109471
Birth       Keneba         GAMBIA        Normal or high birthweight   NA                0.0479183   0.0361810   0.0596557
Birth       Keneba         GAMBIA        Low birthweight              NA                0.2187500   0.1602555   0.2772445
Birth       NIH-Birth      BANGLADESH    Normal or high birthweight   NA                0.0213777   0.0075492   0.0352061
Birth       NIH-Birth      BANGLADESH    Low birthweight              NA                0.1883117   0.1265102   0.2501132
Birth       NIH-Crypto     BANGLADESH    Normal or high birthweight   NA                0.0324910   0.0177166   0.0472654
Birth       NIH-Crypto     BANGLADESH    Low birthweight              NA                0.1895425   0.1273943   0.2516906
Birth       ZVITAMBO       ZIMBABWE      Normal or high birthweight   NA                0.0309971   0.0278450   0.0341491
Birth       ZVITAMBO       ZIMBABWE      Low birthweight              NA                0.3315426   0.3059803   0.3571049
6 months    COHORTS        INDIA         Normal or high birthweight   NA                0.0214000   0.0173885   0.0254115
6 months    COHORTS        INDIA         Low birthweight              NA                0.0766773   0.0619375   0.0914171
6 months    COHORTS        PHILIPPINES   Normal or high birthweight   NA                0.0120033   0.0076601   0.0163465
6 months    COHORTS        PHILIPPINES   Low birthweight              NA                0.0241935   0.0050671   0.0433200
6 months    EE             PAKISTAN      Normal or high birthweight   NA                0.0288066   0.0077482   0.0498650
6 months    EE             PAKISTAN      Low birthweight              NA                0.0458015   0.0099545   0.0816486
6 months    IRC            INDIA         Normal or high birthweight   NA                0.0479042   0.0249721   0.0708362
6 months    IRC            INDIA         Low birthweight              NA                0.0735294   0.0114167   0.1356422
6 months    Keneba         GAMBIA        Normal or high birthweight   NA                0.0122164   0.0058540   0.0185788
6 months    Keneba         GAMBIA        Low birthweight              NA                0.0265957   0.0035874   0.0496041
6 months    SAS-CompFeed   INDIA         Normal or high birthweight   NA                0.0229770   0.0136003   0.0323538
6 months    SAS-CompFeed   INDIA         Low birthweight              NA                0.0588235   0.0395168   0.0781303
6 months    ZVITAMBO       ZIMBABWE      Normal or high birthweight   NA                0.0091830   0.0070103   0.0113557
6 months    ZVITAMBO       ZIMBABWE      Low birthweight              NA                0.0102996   0.0042441   0.0163551
24 months   COHORTS        INDIA         Normal or high birthweight   NA                0.0079264   0.0051469   0.0107058
24 months   COHORTS        INDIA         Low birthweight              NA                0.0219780   0.0124514   0.0315047
24 months   Keneba         GAMBIA        Normal or high birthweight   NA                0.0165746   0.0082527   0.0248965
24 months   Keneba         GAMBIA        Low birthweight              NA                0.0394737   0.0085037   0.0704436
24 months   ZVITAMBO       ZIMBABWE      Normal or high birthweight   NA                0.0741840   0.0461713   0.1021967
24 months   ZVITAMBO       ZIMBABWE      Low birthweight              NA                0.0638298   0.0143557   0.1133039


### Parameter: E(Y)


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       COHORTS        INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       COHORTS        PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       GMS-Nepal      NEPAL         NA                   NA                0.0421217   0.0265597   0.0576837
Birth       IRC            INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       Keneba         GAMBIA        NA                   NA                0.0703072   0.0572109   0.0834034
Birth       NIH-Birth      BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       NIH-Crypto     BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ZVITAMBO       ZIMBABWE      NA                   NA                0.0613145   0.0571772   0.0654519
6 months    COHORTS        INDIA         NA                   NA                0.0324696   0.0280758   0.0368634
6 months    COHORTS        PHILIPPINES   NA                   NA                0.0131381   0.0088134   0.0174629
6 months    EE             PAKISTAN      NA                   NA                0.0347594   0.0161707   0.0533480
6 months    IRC            INDIA         NA                   NA                0.0522388   0.0304606   0.0740170
6 months    Keneba         GAMBIA        NA                   NA                0.0142429   0.0078820   0.0206038
6 months    SAS-CompFeed   INDIA         NA                   NA                0.0317221   0.0237601   0.0396840
6 months    ZVITAMBO       ZIMBABWE      NA                   NA                0.0093237   0.0072772   0.0113703
24 months   COHORTS        INDIA         NA                   NA                0.0105787   0.0076905   0.0134669
24 months   Keneba         GAMBIA        NA                   NA                0.0198675   0.0114511   0.0282840
24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.0719258   0.0475057   0.0963459


### Parameter: RR


agecat      studyid        country       intervention_level           baseline_level                  estimate    ci_lower    ci_upper
----------  -------------  ------------  ---------------------------  ---------------------------  -----------  ----------  ----------
Birth       COHORTS        GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       COHORTS        GUATEMALA     Low birthweight              Normal or high birthweight     5.5714286   3.4540996    8.986659
Birth       COHORTS        INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       COHORTS        INDIA         Low birthweight              Normal or high birthweight    11.3881475   9.0727039   14.294515
Birth       COHORTS        PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       COHORTS        PHILIPPINES   Low birthweight              Normal or high birthweight    10.9754284   7.9000950   15.247921
Birth       GMS-Nepal      NEPAL         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       GMS-Nepal      NEPAL         Low birthweight              Normal or high birthweight    12.2887574   4.7253145   31.958414
Birth       IRC            INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       IRC            INDIA         Low birthweight              Normal or high birthweight     4.3297872   2.7668559    6.775582
Birth       Keneba         GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       Keneba         GAMBIA        Low birthweight              Normal or high birthweight     4.5650615   3.1765610    6.560487
Birth       NIH-Birth      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       NIH-Birth      BANGLADESH    Low birthweight              Normal or high birthweight     8.8088023   4.2648085   18.194252
Birth       NIH-Crypto     BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       NIH-Crypto     BANGLADESH    Low birthweight              Normal or high birthweight     5.8336964   3.3302347   10.219104
Birth       ZVITAMBO       ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ZVITAMBO       ZIMBABWE      Low birthweight              Normal or high birthweight    10.6959325   9.4144861   12.151802
6 months    COHORTS        INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    COHORTS        INDIA         Low birthweight              Normal or high birthweight     3.5830522   2.7393375    4.686631
6 months    COHORTS        PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    COHORTS        PHILIPPINES   Low birthweight              Normal or high birthweight     2.0155729   0.8449075    4.808259
6 months    EE             PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    EE             PAKISTAN      Low birthweight              Normal or high birthweight     1.5899673   0.5448486    4.639814
6 months    IRC            INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    IRC            INDIA         Low birthweight              Normal or high birthweight     1.5349265   0.5813149    4.052880
6 months    Keneba         GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    Keneba         GAMBIA        Low birthweight              Normal or high birthweight     2.1770517   0.7930960    5.976015
6 months    SAS-CompFeed   INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    SAS-CompFeed   INDIA         Low birthweight              Normal or high birthweight     2.5601023   1.4720113    4.452496
6 months    ZVITAMBO       ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ZVITAMBO       ZIMBABWE      Low birthweight              Normal or high birthweight     1.1215989   0.5951146    2.113852
24 months   COHORTS        INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   COHORTS        INDIA         Low birthweight              Normal or high birthweight     2.7727756   1.5877342    4.842300
24 months   Keneba         GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   Keneba         GAMBIA        Low birthweight              Normal or high birthweight     2.3815789   0.9382768    6.045037
24 months   ZVITAMBO       ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ZVITAMBO       ZIMBABWE      Low birthweight              Normal or high birthweight     0.8604255   0.3633053    2.037769


### Parameter: PAR


agecat      studyid        country       intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------  -------------  ------------  ---------------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS        GUATEMALA     Normal or high birthweight   NA                 0.0195360    0.0091640   0.0299081
Birth       COHORTS        INDIA         Normal or high birthweight   NA                 0.0325519    0.0279643   0.0371395
Birth       COHORTS        PHILIPPINES   Normal or high birthweight   NA                 0.0175570    0.0126383   0.0224757
Birth       GMS-Nepal      NEPAL         Normal or high birthweight   NA                 0.0315285    0.0173231   0.0457338
Birth       IRC            INDIA         Normal or high birthweight   NA                 0.0493263    0.0252661   0.0733865
Birth       Keneba         GAMBIA        Normal or high birthweight   NA                 0.0223889    0.0140308   0.0307469
Birth       NIH-Birth      BANGLADESH    Normal or high birthweight   NA                 0.0447093    0.0267021   0.0627165
Birth       NIH-Crypto     BANGLADESH    Normal or high birthweight   NA                 0.0339871    0.0193630   0.0486112
Birth       ZVITAMBO       ZIMBABWE      Normal or high birthweight   NA                 0.0303175    0.0272865   0.0333485
6 months    COHORTS        INDIA         Normal or high birthweight   NA                 0.0110696    0.0079618   0.0141775
6 months    COHORTS        PHILIPPINES   Normal or high birthweight   NA                 0.0011348   -0.0006960   0.0029656
6 months    EE             PAKISTAN      Normal or high birthweight   NA                 0.0059528   -0.0086328   0.0205383
6 months    IRC            INDIA         Normal or high birthweight   NA                 0.0043346   -0.0069046   0.0155739
6 months    Keneba         GAMBIA        Normal or high birthweight   NA                 0.0020265   -0.0013485   0.0054014
6 months    SAS-CompFeed   INDIA         Normal or high birthweight   NA                 0.0087450    0.0022125   0.0152775
6 months    ZVITAMBO       ZIMBABWE      Normal or high birthweight   NA                 0.0001407   -0.0006702   0.0009517
24 months   COHORTS        INDIA         Normal or high birthweight   NA                 0.0026524    0.0007727   0.0045320
24 months   Keneba         GAMBIA        Normal or high birthweight   NA                 0.0032930   -0.0013440   0.0079299
24 months   ZVITAMBO       ZIMBABWE      Normal or high birthweight   NA                -0.0022582   -0.0146646   0.0101481


### Parameter: PAF


agecat      studyid        country       intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------  -------------  ------------  ---------------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS        GUATEMALA     Normal or high birthweight   NA                 0.2461538    0.1181998   0.3555410
Birth       COHORTS        INDIA         Normal or high birthweight   NA                 0.6299808    0.5653736   0.6849842
Birth       COHORTS        PHILIPPINES   Normal or high birthweight   NA                 0.4206421    0.3189707   0.5071349
Birth       GMS-Nepal      NEPAL         Normal or high birthweight   NA                 0.7485091    0.4487581   0.8852633
Birth       IRC            INDIA         Normal or high birthweight   NA                 0.3133133    0.1608005   0.4381091
Birth       Keneba         GAMBIA        Normal or high birthweight   NA                 0.3184436    0.2051937   0.4155567
Birth       NIH-Birth      BANGLADESH    Normal or high birthweight   NA                 0.6765221    0.4330886   0.8154245
Birth       NIH-Crypto     BANGLADESH    Normal or high birthweight   NA                 0.5112528    0.3041613   0.6567109
Birth       ZVITAMBO       ZIMBABWE      Normal or high birthweight   NA                 0.4944581    0.4555653   0.5305725
6 months    COHORTS        INDIA         Normal or high birthweight   NA                 0.3409222    0.2508533   0.4201622
6 months    COHORTS        PHILIPPINES   Normal or high birthweight   NA                 0.0863765   -0.0608389   0.2131625
6 months    EE             PAKISTAN      Normal or high birthweight   NA                 0.1712567   -0.3593562   0.4947495
6 months    IRC            INDIA         Normal or high birthweight   NA                 0.0829769   -0.1563338   0.2727607
6 months    Keneba         GAMBIA        Normal or high birthweight   NA                 0.1422798   -0.1195459   0.3428729
6 months    SAS-CompFeed   INDIA         Normal or high birthweight   NA                 0.2756767    0.0380805   0.4545861
6 months    ZVITAMBO       ZIMBABWE      Normal or high birthweight   NA                 0.0150959   -0.0757711   0.0982875
24 months   COHORTS        INDIA         Normal or high birthweight   NA                 0.2507257    0.0671537   0.3981731
24 months   Keneba         GAMBIA        Normal or high birthweight   NA                 0.1657459   -0.0898431   0.3613943
24 months   ZVITAMBO       ZIMBABWE      Normal or high birthweight   NA                -0.0313966   -0.2188193   0.1272054
