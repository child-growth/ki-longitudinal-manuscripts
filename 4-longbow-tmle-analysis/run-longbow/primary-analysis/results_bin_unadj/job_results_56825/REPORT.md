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

**Outcome Variable:** ever_stunted

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

agecat                       studyid          country                        birthwt                       ever_stunted   n_cell       n
---------------------------  ---------------  -----------------------------  ---------------------------  -------------  -------  ------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0       27     290
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      249     290
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Low birthweight                          0        1     290
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Low birthweight                          1       13     290
0-24 months (no birth st.)   CMIN             BANGLADESH                     Normal or high birthweight               0        7      17
0-24 months (no birth st.)   CMIN             BANGLADESH                     Normal or high birthweight               1        6      17
0-24 months (no birth st.)   CMIN             BANGLADESH                     Low birthweight                          0        3      17
0-24 months (no birth st.)   CMIN             BANGLADESH                     Low birthweight                          1        1      17
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Normal or high birthweight               0      232     833
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Normal or high birthweight               1      555     833
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Low birthweight                          0        6     833
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Low birthweight                          1       40     833
0-24 months (no birth st.)   COHORTS          INDIA                          Normal or high birthweight               0     3828    5963
0-24 months (no birth st.)   COHORTS          INDIA                          Normal or high birthweight               1     1337    5963
0-24 months (no birth st.)   COHORTS          INDIA                          Low birthweight                          0      434    5963
0-24 months (no birth st.)   COHORTS          INDIA                          Low birthweight                          1      364    5963
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight               0      914    2830
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight               1     1735    2830
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Low birthweight                          0       35    2830
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Low birthweight                          1      146    2830
0-24 months (no birth st.)   CONTENT          PERU                           Normal or high birthweight               0        1       2
0-24 months (no birth st.)   CONTENT          PERU                           Normal or high birthweight               1        1       2
0-24 months (no birth st.)   CONTENT          PERU                           Low birthweight                          0        0       2
0-24 months (no birth st.)   CONTENT          PERU                           Low birthweight                          1        0       2
0-24 months (no birth st.)   EE               PAKISTAN                       Normal or high birthweight               0       39     213
0-24 months (no birth st.)   EE               PAKISTAN                       Normal or high birthweight               1      136     213
0-24 months (no birth st.)   EE               PAKISTAN                       Low birthweight                          0        2     213
0-24 months (no birth st.)   EE               PAKISTAN                       Low birthweight                          1       36     213
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight               0      214     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight               1      240     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Low birthweight                          0       38     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Low birthweight                          1       83     575
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight               0      134     355
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight               1      173     355
0-24 months (no birth st.)   IRC              INDIA                          Low birthweight                          0       12     355
0-24 months (no birth st.)   IRC              INDIA                          Low birthweight                          1       36     355
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight               0      644    1455
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight               1      633    1455
0-24 months (no birth st.)   Keneba           GAMBIA                         Low birthweight                          0       39    1455
0-24 months (no birth st.)   Keneba           GAMBIA                         Low birthweight                          1      139    1455
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight               0       92     214
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight               1       97     214
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Low birthweight                          0        9     214
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Low birthweight                          1       16     214
0-24 months (no birth st.)   MAL-ED           BRAZIL                         Normal or high birthweight               0      167     202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         Normal or high birthweight               1       32     202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         Low birthweight                          0        3     202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         Low birthweight                          1        0     202
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight               0       86     206
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight               1       99     206
0-24 months (no birth st.)   MAL-ED           INDIA                          Low birthweight                          0       10     206
0-24 months (no birth st.)   MAL-ED           INDIA                          Low birthweight                          1       11     206
0-24 months (no birth st.)   MAL-ED           NEPAL                          Normal or high birthweight               0      150     207
0-24 months (no birth st.)   MAL-ED           NEPAL                          Normal or high birthweight               1       49     207
0-24 months (no birth st.)   MAL-ED           NEPAL                          Low birthweight                          0        5     207
0-24 months (no birth st.)   MAL-ED           NEPAL                          Low birthweight                          1        3     207
0-24 months (no birth st.)   MAL-ED           PERU                           Normal or high birthweight               0      115     265
0-24 months (no birth st.)   MAL-ED           PERU                           Normal or high birthweight               1      148     265
0-24 months (no birth st.)   MAL-ED           PERU                           Low birthweight                          0        0     265
0-24 months (no birth st.)   MAL-ED           PERU                           Low birthweight                          1        2     265
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight               0      135     275
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   Normal or high birthweight               1      130     275
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   Low birthweight                          0        3     275
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   Low birthweight                          1        7     275
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       33     164
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      130     164
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0        1     164
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     164
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight               0      177     511
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight               1      232     511
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Low birthweight                          0       27     511
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Low birthweight                          1       75     511
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight               0      353     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight               1      186     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Low birthweight                          0       43     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Low birthweight                          1       71     653
0-24 months (no birth st.)   PROBIT           BELARUS                        Normal or high birthweight               0    14744   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        Normal or high birthweight               1     2021   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        Low birthweight                          0        0   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        Low birthweight                          1        0   16765
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight               0      349     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight               1      173     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Low birthweight                          0       46     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Low birthweight                          1       65     633
0-24 months (no birth st.)   ResPak           PAKISTAN                       Normal or high birthweight               0       11      28
0-24 months (no birth st.)   ResPak           PAKISTAN                       Normal or high birthweight               1       17      28
0-24 months (no birth st.)   ResPak           PAKISTAN                       Low birthweight                          0        0      28
0-24 months (no birth st.)   ResPak           PAKISTAN                       Low birthweight                          1        0      28
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight               0      439    1081
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight               1      524    1081
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Low birthweight                          0       30    1081
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Low birthweight                          1       88    1081
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1525    2211
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      637    2211
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       26    2211
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1       23    2211
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     7723   12551
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     3655   12551
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Low birthweight                          0      451   12551
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Low birthweight                          1      722   12551
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      175     287
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       98     287
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Low birthweight                          0        3     287
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Low birthweight                          1       11     287
0-6 months (no birth st.)    CMIN             BANGLADESH                     Normal or high birthweight               0       11      17
0-6 months (no birth st.)    CMIN             BANGLADESH                     Normal or high birthweight               1        2      17
0-6 months (no birth st.)    CMIN             BANGLADESH                     Low birthweight                          0        3      17
0-6 months (no birth st.)    CMIN             BANGLADESH                     Low birthweight                          1        1      17
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight               0      597     814
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight               1      171     814
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Low birthweight                          0       24     814
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Low birthweight                          1       22     814
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight               0     4755    5847
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight               1      305    5847
0-6 months (no birth st.)    COHORTS          INDIA                          Low birthweight                          0      631    5847
0-6 months (no birth st.)    COHORTS          INDIA                          Low birthweight                          1      156    5847
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight               0     2199    2830
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight               1      450    2830
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Low birthweight                          0       97    2830
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Low birthweight                          1       84    2830
0-6 months (no birth st.)    CONTENT          PERU                           Normal or high birthweight               0        1       2
0-6 months (no birth st.)    CONTENT          PERU                           Normal or high birthweight               1        1       2
0-6 months (no birth st.)    CONTENT          PERU                           Low birthweight                          0        0       2
0-6 months (no birth st.)    CONTENT          PERU                           Low birthweight                          1        0       2
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight               0       86     213
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight               1       89     213
0-6 months (no birth st.)    EE               PAKISTAN                       Low birthweight                          0        9     213
0-6 months (no birth st.)    EE               PAKISTAN                       Low birthweight                          1       29     213
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight               0      394     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight               1       60     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Low birthweight                          0       81     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Low birthweight                          1       40     575
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight               0      214     355
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight               1       93     355
0-6 months (no birth st.)    IRC              INDIA                          Low birthweight                          0       21     355
0-6 months (no birth st.)    IRC              INDIA                          Low birthweight                          1       27     355
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight               0     1000    1455
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight               1      277    1455
0-6 months (no birth st.)    Keneba           GAMBIA                         Low birthweight                          0       83    1455
0-6 months (no birth st.)    Keneba           GAMBIA                         Low birthweight                          1       95    1455
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight               0      155     214
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight               1       34     214
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Low birthweight                          0       13     214
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Low birthweight                          1       12     214
0-6 months (no birth st.)    MAL-ED           BRAZIL                         Normal or high birthweight               0      178     202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         Normal or high birthweight               1       21     202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         Low birthweight                          0        3     202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         Low birthweight                          1        0     202
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight               0      146     206
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight               1       39     206
0-6 months (no birth st.)    MAL-ED           INDIA                          Low birthweight                          0       15     206
0-6 months (no birth st.)    MAL-ED           INDIA                          Low birthweight                          1        6     206
0-6 months (no birth st.)    MAL-ED           NEPAL                          Normal or high birthweight               0      187     207
0-6 months (no birth st.)    MAL-ED           NEPAL                          Normal or high birthweight               1       12     207
0-6 months (no birth st.)    MAL-ED           NEPAL                          Low birthweight                          0        6     207
0-6 months (no birth st.)    MAL-ED           NEPAL                          Low birthweight                          1        2     207
0-6 months (no birth st.)    MAL-ED           PERU                           Normal or high birthweight               0      174     265
0-6 months (no birth st.)    MAL-ED           PERU                           Normal or high birthweight               1       89     265
0-6 months (no birth st.)    MAL-ED           PERU                           Low birthweight                          0        0     265
0-6 months (no birth st.)    MAL-ED           PERU                           Low birthweight                          1        2     265
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   Normal or high birthweight               0      194     275
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   Normal or high birthweight               1       71     275
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   Low birthweight                          0        4     275
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   Low birthweight                          1        6     275
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      120     164
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       43     164
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0        1     164
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     164
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight               0      332     511
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight               1       77     511
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Low birthweight                          0       61     511
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Low birthweight                          1       41     511
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight               0      460     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight               1       79     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Low birthweight                          0       69     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Low birthweight                          1       45     653
0-6 months (no birth st.)    PROBIT           BELARUS                        Normal or high birthweight               0    15733   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        Normal or high birthweight               1     1030   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        Low birthweight                          0        0   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        Low birthweight                          1        0   16763
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight               0      461     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight               1       61     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Low birthweight                          0       71     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Low birthweight                          1       40     633
0-6 months (no birth st.)    ResPak           PAKISTAN                       Normal or high birthweight               0       13      28
0-6 months (no birth st.)    ResPak           PAKISTAN                       Normal or high birthweight               1       15      28
0-6 months (no birth st.)    ResPak           PAKISTAN                       Low birthweight                          0        0      28
0-6 months (no birth st.)    ResPak           PAKISTAN                       Low birthweight                          1        0      28
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight               0      801    1080
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight               1      161    1080
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Low birthweight                          0       69    1080
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Low birthweight                          1       49    1080
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1876    2211
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      286    2211
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       35    2211
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1       14    2211
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     9760   12540
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     1608   12540
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Low birthweight                          0      628   12540
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Low birthweight                          1      544   12540
6-24 months                  CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0       27     182
6-24 months                  CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1      152     182
6-24 months                  CMC-V-BCS-2002   INDIA                          Low birthweight                          0        1     182
6-24 months                  CMC-V-BCS-2002   INDIA                          Low birthweight                          1        2     182
6-24 months                  CMIN             BANGLADESH                     Normal or high birthweight               0        2       7
6-24 months                  CMIN             BANGLADESH                     Normal or high birthweight               1        4       7
6-24 months                  CMIN             BANGLADESH                     Low birthweight                          0        1       7
6-24 months                  CMIN             BANGLADESH                     Low birthweight                          1        0       7
6-24 months                  COHORTS          GUATEMALA                      Normal or high birthweight               0      153     569
6-24 months                  COHORTS          GUATEMALA                      Normal or high birthweight               1      393     569
6-24 months                  COHORTS          GUATEMALA                      Low birthweight                          0        2     569
6-24 months                  COHORTS          GUATEMALA                      Low birthweight                          1       21     569
6-24 months                  COHORTS          INDIA                          Normal or high birthweight               0     3503    5147
6-24 months                  COHORTS          INDIA                          Normal or high birthweight               1     1040    5147
6-24 months                  COHORTS          INDIA                          Low birthweight                          0      388    5147
6-24 months                  COHORTS          INDIA                          Low birthweight                          1      216    5147
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight               0      729    2093
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight               1     1285    2093
6-24 months                  COHORTS          PHILIPPINES                    Low birthweight                          0       17    2093
6-24 months                  COHORTS          PHILIPPINES                    Low birthweight                          1       62    2093
6-24 months                  CONTENT          PERU                           Normal or high birthweight               0        1       1
6-24 months                  CONTENT          PERU                           Normal or high birthweight               1        0       1
6-24 months                  CONTENT          PERU                           Low birthweight                          0        0       1
6-24 months                  CONTENT          PERU                           Low birthweight                          1        0       1
6-24 months                  EE               PAKISTAN                       Normal or high birthweight               0       37      93
6-24 months                  EE               PAKISTAN                       Normal or high birthweight               1       47      93
6-24 months                  EE               PAKISTAN                       Low birthweight                          0        2      93
6-24 months                  EE               PAKISTAN                       Low birthweight                          1        7      93
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight               0      152     396
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight               1      180     396
6-24 months                  GMS-Nepal        NEPAL                          Low birthweight                          0       21     396
6-24 months                  GMS-Nepal        NEPAL                          Low birthweight                          1       43     396
6-24 months                  IRC              INDIA                          Normal or high birthweight               0      134     235
6-24 months                  IRC              INDIA                          Normal or high birthweight               1       80     235
6-24 months                  IRC              INDIA                          Low birthweight                          0       12     235
6-24 months                  IRC              INDIA                          Low birthweight                          1        9     235
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight               0      611    1045
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight               1      356    1045
6-24 months                  Keneba           GAMBIA                         Low birthweight                          0       34    1045
6-24 months                  Keneba           GAMBIA                         Low birthweight                          1       44    1045
6-24 months                  MAL-ED           BANGLADESH                     Normal or high birthweight               0       82     157
6-24 months                  MAL-ED           BANGLADESH                     Normal or high birthweight               1       63     157
6-24 months                  MAL-ED           BANGLADESH                     Low birthweight                          0        8     157
6-24 months                  MAL-ED           BANGLADESH                     Low birthweight                          1        4     157
6-24 months                  MAL-ED           BRAZIL                         Normal or high birthweight               0      150     163
6-24 months                  MAL-ED           BRAZIL                         Normal or high birthweight               1       11     163
6-24 months                  MAL-ED           BRAZIL                         Low birthweight                          0        2     163
6-24 months                  MAL-ED           BRAZIL                         Low birthweight                          1        0     163
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight               0       77     152
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight               1       60     152
6-24 months                  MAL-ED           INDIA                          Low birthweight                          0       10     152
6-24 months                  MAL-ED           INDIA                          Low birthweight                          1        5     152
6-24 months                  MAL-ED           NEPAL                          Normal or high birthweight               0      147     190
6-24 months                  MAL-ED           NEPAL                          Normal or high birthweight               1       37     190
6-24 months                  MAL-ED           NEPAL                          Low birthweight                          0        5     190
6-24 months                  MAL-ED           NEPAL                          Low birthweight                          1        1     190
6-24 months                  MAL-ED           PERU                           Normal or high birthweight               0       90     149
6-24 months                  MAL-ED           PERU                           Normal or high birthweight               1       59     149
6-24 months                  MAL-ED           PERU                           Low birthweight                          0        0     149
6-24 months                  MAL-ED           PERU                           Low birthweight                          1        0     149
6-24 months                  MAL-ED           SOUTH AFRICA                   Normal or high birthweight               0       98     158
6-24 months                  MAL-ED           SOUTH AFRICA                   Normal or high birthweight               1       59     158
6-24 months                  MAL-ED           SOUTH AFRICA                   Low birthweight                          0        0     158
6-24 months                  MAL-ED           SOUTH AFRICA                   Low birthweight                          1        1     158
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0       26     113
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       87     113
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0        0     113
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        0     113
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight               0      128     330
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight               1      155     330
6-24 months                  NIH-Birth        BANGLADESH                     Low birthweight                          0       13     330
6-24 months                  NIH-Birth        BANGLADESH                     Low birthweight                          1       34     330
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight               0      334     506
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight               1      107     506
6-24 months                  NIH-Crypto       BANGLADESH                     Low birthweight                          0       39     506
6-24 months                  NIH-Crypto       BANGLADESH                     Low birthweight                          1       26     506
6-24 months                  PROBIT           BELARUS                        Normal or high birthweight               0    14473   15467
6-24 months                  PROBIT           BELARUS                        Normal or high birthweight               1      994   15467
6-24 months                  PROBIT           BELARUS                        Low birthweight                          0        0   15467
6-24 months                  PROBIT           BELARUS                        Low birthweight                          1        0   15467
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight               0      288     456
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight               1      112     456
6-24 months                  PROVIDE          BANGLADESH                     Low birthweight                          0       31     456
6-24 months                  PROVIDE          BANGLADESH                     Low birthweight                          1       25     456
6-24 months                  ResPak           PAKISTAN                       Normal or high birthweight               0        6       8
6-24 months                  ResPak           PAKISTAN                       Normal or high birthweight               1        2       8
6-24 months                  ResPak           PAKISTAN                       Low birthweight                          0        0       8
6-24 months                  ResPak           PAKISTAN                       Low birthweight                          1        0       8
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight               0      376     803
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight               1      363     803
6-24 months                  SAS-CompFeed     INDIA                          Low birthweight                          0       24     803
6-24 months                  SAS-CompFeed     INDIA                          Low birthweight                          1       40     803
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1211    1589
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      351    1589
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          0       18    1589
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                          1        9    1589
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     5986    8471
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1     2050    8471
6-24 months                  ZVITAMBO         ZIMBABWE                       Low birthweight                          0      254    8471
6-24 months                  ZVITAMBO         ZIMBABWE                       Low birthweight                          1      181    8471


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/97c2db7d-0d10-46e3-8128-6b262de7d702/ddf2223f-2f8b-4756-8896-ad2a304ab392/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/97c2db7d-0d10-46e3-8128-6b262de7d702/ddf2223f-2f8b-4756-8896-ad2a304ab392/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/97c2db7d-0d10-46e3-8128-6b262de7d702/ddf2223f-2f8b-4756-8896-ad2a304ab392/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/97c2db7d-0d10-46e3-8128-6b262de7d702/ddf2223f-2f8b-4756-8896-ad2a304ab392/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7052097   0.6733356   0.7370837
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Low birthweight              NA                0.8695652   0.7721834   0.9669470
0-24 months (no birth st.)   COHORTS          INDIA                          Normal or high birthweight   NA                0.2588577   0.2469115   0.2708039
0-24 months (no birth st.)   COHORTS          INDIA                          Low birthweight              NA                0.4561404   0.4215802   0.4907005
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6549641   0.6368580   0.6730702
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Low birthweight              NA                0.8066298   0.7490835   0.8641761
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5286344   0.4826770   0.5745917
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Low birthweight              NA                0.6859504   0.6031793   0.7687215
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight   NA                0.5635179   0.5079622   0.6190736
0-24 months (no birth st.)   IRC              INDIA                          Low birthweight              NA                0.7500000   0.6273294   0.8726706
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight   NA                0.4956930   0.4682611   0.5231249
0-24 months (no birth st.)   Keneba           GAMBIA                         Low birthweight              NA                0.7808989   0.7201124   0.8416854
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.5132275   0.4418022   0.5846528
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Low birthweight              NA                0.6400000   0.4514023   0.8285977
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight   NA                0.5351351   0.4630885   0.6071818
0-24 months (no birth st.)   MAL-ED           INDIA                          Low birthweight              NA                0.5238095   0.3096822   0.7379369
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5672372   0.5191733   0.6153011
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7352941   0.6495932   0.8209951
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.3450835   0.3049191   0.3852479
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.6228070   0.5337666   0.7118474
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.3314176   0.2910046   0.3718307
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Low birthweight              NA                0.5855856   0.4938701   0.6773010
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.5441329   0.4780701   0.6101958
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Low birthweight              NA                0.7457627   0.6452888   0.8462366
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2946346   0.2753580   0.3139112
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.4693878   0.3454881   0.5932874
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3212340   0.3126536   0.3298143
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6155158   0.5876754   0.6433562
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.2226563   0.1932149   0.2520976
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Low birthweight              NA                0.4782609   0.3338183   0.6227034
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight   NA                0.0602767   0.0537185   0.0668349
0-6 months (no birth st.)    COHORTS          INDIA                          Low birthweight              NA                0.1982211   0.1703663   0.2260759
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1698754   0.1555726   0.1841782
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Low birthweight              NA                0.4640884   0.3914222   0.5367546
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight   NA                0.5085714   0.4343282   0.5828147
0-6 months (no birth st.)    EE               PAKISTAN                       Low birthweight              NA                0.7631579   0.6276655   0.8986503
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1321586   0.1009793   0.1633379
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Low birthweight              NA                0.3305785   0.2466865   0.4144705
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight   NA                0.3029316   0.2514560   0.3544072
0-6 months (no birth st.)    IRC              INDIA                          Low birthweight              NA                0.5625000   0.4219631   0.7030369
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight   NA                0.2169146   0.1943020   0.2395273
0-6 months (no birth st.)    Keneba           GAMBIA                         Low birthweight              NA                0.5337079   0.4603970   0.6070187
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1798942   0.1250061   0.2347822
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Low birthweight              NA                0.4800000   0.2837013   0.6762987
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight   NA                0.2108108   0.1518917   0.2697299
0-6 months (no birth st.)    MAL-ED           INDIA                          Low birthweight              NA                0.2857143   0.0920288   0.4793998
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1882641   0.1503410   0.2261871
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4019608   0.3067184   0.4972031
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1465677   0.1166871   0.1764484
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.3947368   0.3049414   0.4845323
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1168582   0.0892778   0.1444387
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Low birthweight              NA                0.3603604   0.2709751   0.4497457
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1673597   0.1416245   0.1930949
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Low birthweight              NA                0.4152542   0.3056705   0.5248380
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1322849   0.1179589   0.1466109
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2857143   0.1735596   0.3978690
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1414497   0.1350434   0.1478560
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.4641638   0.4356107   0.4927169
6-24 months                  COHORTS          INDIA                          Normal or high birthweight   NA                0.2289236   0.2167053   0.2411420
6-24 months                  COHORTS          INDIA                          Low birthweight              NA                0.3576159   0.3193882   0.3958435
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6380338   0.6170406   0.6590269
6-24 months                  COHORTS          PHILIPPINES                    Low birthweight              NA                0.7848101   0.6941677   0.8754526
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5421687   0.4885090   0.5958284
6-24 months                  GMS-Nepal        NEPAL                          Low birthweight              NA                0.6718750   0.5566966   0.7870534
6-24 months                  IRC              INDIA                          Normal or high birthweight   NA                0.3738318   0.3088711   0.4387925
6-24 months                  IRC              INDIA                          Low birthweight              NA                0.4285714   0.2164634   0.6406794
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight   NA                0.3681489   0.3377357   0.3985621
6-24 months                  Keneba           GAMBIA                         Low birthweight              NA                0.5641026   0.4540045   0.6742007
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight   NA                0.4379562   0.3546031   0.5213093
6-24 months                  MAL-ED           INDIA                          Low birthweight              NA                0.3333333   0.0939855   0.5726812
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5477032   0.4896270   0.6057794
6-24 months                  NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7234043   0.5953272   0.8514813
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.2426304   0.2025820   0.2826788
6-24 months                  NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.4000000   0.2807862   0.5192138
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.2800000   0.2359506   0.3240494
6-24 months                  PROVIDE          BANGLADESH                     Low birthweight              NA                0.4464286   0.3160838   0.5767733
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.4912043   0.4389202   0.5434885
6-24 months                  SAS-CompFeed     INDIA                          Low birthweight              NA                0.6250000   0.4963277   0.7536723
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2247119   0.2038362   0.2455876
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.3333333   0.2124416   0.4542250
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2551020   0.2455706   0.2646335
6-24 months                  ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.4160920   0.3697690   0.4624149


### Parameter: E(Y)


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      NA                   NA                0.7142857   0.6835892   0.7449822
0-24 months (no birth st.)   COHORTS          INDIA                          NA                   NA                0.2852591   0.2737975   0.2967207
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    NA                   NA                0.6646643   0.6472674   0.6820612
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          NA                   NA                0.5617391   0.5211485   0.6023298
0-24 months (no birth st.)   IRC              INDIA                          NA                   NA                0.5887324   0.5374737   0.6399911
0-24 months (no birth st.)   Keneba           GAMBIA                         NA                   NA                0.5305842   0.5049322   0.5562362
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     NA                   NA                0.5280374   0.4609958   0.5950790
0-24 months (no birth st.)   MAL-ED           INDIA                          NA                   NA                0.5339806   0.4656939   0.6022672
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     NA                   NA                0.6007828   0.5582791   0.6432864
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          NA                   NA                0.5661425   0.5076572   0.6246278
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2985075   0.2794291   0.3175858
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3487372   0.3403993   0.3570750
0-6 months (no birth st.)    COHORTS          GUATEMALA                      NA                   NA                0.2371007   0.2078658   0.2663357
0-6 months (no birth st.)    COHORTS          INDIA                          NA                   NA                0.0788439   0.0719356   0.0857521
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    NA                   NA                0.1886926   0.1742747   0.2031105
0-6 months (no birth st.)    EE               PAKISTAN                       NA                   NA                0.5539906   0.4870787   0.6209025
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          NA                   NA                0.1739130   0.1429052   0.2049209
0-6 months (no birth st.)    IRC              INDIA                          NA                   NA                0.3380282   0.2887514   0.3873050
0-6 months (no birth st.)    Keneba           GAMBIA                         NA                   NA                0.2556701   0.2332474   0.2780928
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     NA                   NA                0.2149533   0.1597864   0.2701201
0-6 months (no birth st.)    MAL-ED           INDIA                          NA                   NA                0.2184466   0.1618848   0.2750084
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     NA                   NA                0.2309198   0.1943452   0.2674943
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          NA                   NA                0.1944444   0.1700545   0.2188344
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1356852   0.1214076   0.1499628
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1716108   0.1650114   0.1782103
6-24 months                  COHORTS          INDIA                          NA                   NA                0.2440256   0.2322906   0.2557607
6-24 months                  COHORTS          PHILIPPINES                    NA                   NA                0.6435738   0.6230503   0.6640973
6-24 months                  GMS-Nepal        NEPAL                          NA                   NA                0.5631313   0.5142177   0.6120449
6-24 months                  IRC              INDIA                          NA                   NA                0.3787234   0.3165730   0.4408738
6-24 months                  Keneba           GAMBIA                         NA                   NA                0.3827751   0.3532908   0.4122595
6-24 months                  MAL-ED           INDIA                          NA                   NA                0.4276316   0.3487215   0.5065416
6-24 months                  NIH-Birth        BANGLADESH                     NA                   NA                0.5727273   0.5192737   0.6261808
6-24 months                  NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  SAS-CompFeed     INDIA                          NA                   NA                0.5018680   0.4570583   0.5466777
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2265576   0.2059690   0.2471462
6-24 months                  ZVITAMBO         ZIMBABWE                       NA                   NA                0.2633691   0.2539889   0.2727494


### Parameter: RR


agecat                       studyid          country                        intervention_level           baseline_level                 estimate    ci_lower   ci_upper
---------------------------  ---------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ---------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.2330591   1.0927880   1.391336
0-24 months (no birth st.)   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.7621278   1.6125342   1.925599
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.2315634   1.1408504   1.329489
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.2975895   1.1182739   1.505658
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   IRC              INDIA                          Low birthweight              Normal or high birthweight    1.3309249   1.0995474   1.610991
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.5753679   1.4318684   1.733249
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    1.2470103   0.9001943   1.727443
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    0.9788360   0.6364945   1.505307
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.2962728   1.1223160   1.497193
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    1.8048010   1.5009484   2.170166
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.7669114   1.4488055   2.154862
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.3705525   1.1416607   1.645335
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.5931183   1.2137877   2.090997
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.9160981   1.8180453   2.019439
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    2.1479786   1.5447055   2.986856
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    3.2885204   2.7530702   3.928111
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    2.7319337   2.2869744   3.263465
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.5005914   1.1924456   1.888367
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.5013774   1.7688752   3.537213
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    IRC              INDIA                          Low birthweight              Normal or high birthweight    1.8568548   1.3726341   2.511893
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    2.4604511   2.0707375   2.923509
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    2.6682353   1.6018887   4.444428
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    1.3553114   0.6510151   2.821546
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    2.1350904   1.5644159   2.913938
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    2.6932045   1.9842952   3.655379
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    3.0837395   2.1896790   4.342851
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    2.4812085   1.8140556   3.393720
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.1598402   1.4373885   3.245406
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    3.2814766   3.0401419   3.541969
6-24 months                  COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.5621625   1.3862349   1.760417
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.2300448   1.0908523   1.386998
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.2392361   1.0166854   1.510503
6-24 months                  IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  IRC              INDIA                          Low birthweight              Normal or high birthweight    1.1464286   0.6784891   1.937096
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.5322674   1.2396278   1.893990
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    0.7611111   0.3621073   1.599775
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.3207962   1.0745075   1.623537
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    1.6485981   1.1726148   2.317791
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.5943878   1.1443440   2.221423
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.2723829   0.9753861   1.659813
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.4833808   1.0201396   2.156978
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.6310805   1.4503596   1.834320


### Parameter: PAR


agecat                       studyid          country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0090761    0.0028693   0.0152828
0-24 months (no birth st.)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0264014    0.0212194   0.0315834
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0097002    0.0056066   0.0137937
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0331048    0.0125030   0.0537065
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight   NA                 0.0252145    0.0058325   0.0445965
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0348912    0.0254235   0.0443589
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0148099   -0.0093760   0.0389958
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0011546   -0.0241903   0.0218812
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0335456    0.0130842   0.0540070
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0484847    0.0296092   0.0673602
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0445697    0.0254475   0.0636919
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0220095    0.0059832   0.0380359
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0038729    0.0005597   0.0071860
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0275032    0.0243953   0.0306111
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0144445    0.0051787   0.0237103
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight   NA                 0.0185672    0.0145308   0.0226036
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0188172    0.0133882   0.0242461
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight   NA                 0.0454192    0.0148924   0.0759460
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0417545    0.0217924   0.0617165
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight   NA                 0.0350966    0.0128476   0.0573455
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0387555    0.0279593   0.0495516
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0350591    0.0079559   0.0621623
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0076358   -0.0132341   0.0285057
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0426557    0.0208915   0.0644199
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0433251    0.0252904   0.0613598
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0426994    0.0247777   0.0606211
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0270848    0.0120515   0.0421181
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0034003    0.0004209   0.0063797
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0301612    0.0269701   0.0333523
6-24 months                  COHORTS          INDIA                          Normal or high birthweight   NA                 0.0151020    0.0102584   0.0199457
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0055401    0.0018293   0.0092508
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0209626   -0.0001059   0.0420312
6-24 months                  IRC              INDIA                          Normal or high birthweight   NA                 0.0048916   -0.0150324   0.0248157
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0146262    0.0055463   0.0237061
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0103246   -0.0358261   0.0151769
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0250241    0.0039246   0.0461235
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0202155    0.0034203   0.0370106
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0204386    0.0028123   0.0380649
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0106637   -0.0018039   0.0231312
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0018457   -0.0012981   0.0049895
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0082671    0.0057233   0.0108109


### Parameter: PAF


agecat                       studyid          country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0127065    0.0039108   0.0214245
0-24 months (no birth st.)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0925524    0.0743106   0.1104347
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0145941    0.0083814   0.0207678
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0589326    0.0211723   0.0952363
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight   NA                 0.0428284    0.0089557   0.0755434
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0657599    0.0474262   0.0837407
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0280470   -0.0190229   0.0729427
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0021622   -0.0462451   0.0400633
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0558365    0.0207220   0.0896919
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1231925    0.0736876   0.1700518
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1185405    0.0660943   0.1680415
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0388763    0.0083897   0.0684257
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0129741    0.0018034   0.0240198
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0788651    0.0699127   0.0877313
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0609213    0.0213315   0.0989096
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight   NA                 0.2354930    0.1865467   0.2814940
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0997239    0.0710995   0.1274662
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight   NA                 0.0819855    0.0239964   0.1365292
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.2400881    0.1226304   0.3418212
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight   NA                 0.1038274    0.0356891   0.1671510
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1515839    0.1092151   0.1919374
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1631010    0.0314513   0.2768562
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0349550   -0.0652535   0.1257368
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1847209    0.0874377   0.2716333
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.2281555    0.1321694   0.3135251
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.2676112    0.1550649   0.3651663
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.1392931    0.0603951   0.2115662
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0250601    0.0029287   0.0467004
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1757532    0.1577926   0.1933309
6-24 months                  COHORTS          INDIA                          Normal or high birthweight   NA                 0.0618870    0.0419168   0.0814410
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0086083    0.0028086   0.0143742
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0372251   -0.0011392   0.0741194
6-24 months                  IRC              INDIA                          Normal or high birthweight   NA                 0.0129161   -0.0411287   0.0641554
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0382110    0.0141586   0.0616765
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0241437   -0.0856419   0.0338708
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0436929    0.0057686   0.0801705
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0769100    0.0111117   0.1383302
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0680292    0.0076395   0.1247439
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0212479   -0.0049588   0.0467713
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0081466   -0.0058589   0.0219571
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0313898    0.0217031   0.0409806
