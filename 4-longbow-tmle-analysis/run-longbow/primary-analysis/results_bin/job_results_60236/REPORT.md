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

* arm
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
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Normal or high birthweight               0     9258   15275
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Normal or high birthweight               1     2613   15275
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Low birthweight                          0     1968   15275
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Low birthweight                          1     1436   15275
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Normal or high birthweight               0     1671    3199
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Normal or high birthweight               1     1150    3199
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Low birthweight                          0      158    3199
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Low birthweight                          1      220    3199
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
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Normal or high birthweight               0    10716   15273
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Normal or high birthweight               1     1154   15273
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Low birthweight                          0     2431   15273
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Low birthweight                          1      972   15273
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Normal or high birthweight               0     2576    3194
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Normal or high birthweight               1      241    3194
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Low birthweight                          0      305    3194
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Low birthweight                          1       72    3194
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
6-24 months                  JiVitA-3         BANGLADESH                     Normal or high birthweight               0     5658    8640
6-24 months                  JiVitA-3         BANGLADESH                     Normal or high birthweight               1     1459    8640
6-24 months                  JiVitA-3         BANGLADESH                     Low birthweight                          0     1051    8640
6-24 months                  JiVitA-3         BANGLADESH                     Low birthweight                          1      472    8640
6-24 months                  JiVitA-4         BANGLADESH                     Normal or high birthweight               0     1664    2884
6-24 months                  JiVitA-4         BANGLADESH                     Normal or high birthweight               1      910    2884
6-24 months                  JiVitA-4         BANGLADESH                     Low birthweight                          0      158    2884
6-24 months                  JiVitA-4         BANGLADESH                     Low birthweight                          1      152    2884
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
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/f0789bb3-a129-4b7d-ab6a-91464436f700/8ef6d811-8213-48c5-8a64-76bd2a52d69a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f0789bb3-a129-4b7d-ab6a-91464436f700/8ef6d811-8213-48c5-8a64-76bd2a52d69a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f0789bb3-a129-4b7d-ab6a-91464436f700/8ef6d811-8213-48c5-8a64-76bd2a52d69a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f0789bb3-a129-4b7d-ab6a-91464436f700/8ef6d811-8213-48c5-8a64-76bd2a52d69a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7052097   0.6733356   0.7370837
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Low birthweight              NA                0.8695652   0.7721834   0.9669470
0-24 months (no birth st.)   COHORTS          INDIA                          Normal or high birthweight   NA                0.2604046   0.2484929   0.2723163
0-24 months (no birth st.)   COHORTS          INDIA                          Low birthweight              NA                0.4449008   0.4106779   0.4791238
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6550397   0.6369734   0.6731060
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Low birthweight              NA                0.8067580   0.7500490   0.8634669
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5291746   0.4830762   0.5752729
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Low birthweight              NA                0.6809867   0.5947938   0.7671795
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight   NA                0.5674969   0.5119385   0.6230553
0-24 months (no birth st.)   IRC              INDIA                          Low birthweight              NA                0.8043708   0.6834065   0.9253351
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.2214798   0.2129546   0.2300051
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Low birthweight              NA                0.4173809   0.3988333   0.4359284
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.4089788   0.3873289   0.4306286
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.5729250   0.5069724   0.6388776
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight   NA                0.4937118   0.4663100   0.5211137
0-24 months (no birth st.)   Keneba           GAMBIA                         Low birthweight              NA                0.7832204   0.7216559   0.8447848
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.5132275   0.4418022   0.5846528
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Low birthweight              NA                0.6400000   0.4514023   0.8285977
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight   NA                0.5341869   0.4620712   0.6063027
0-24 months (no birth st.)   MAL-ED           INDIA                          Low birthweight              NA                0.4479446   0.2323990   0.6634903
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5666461   0.5185042   0.6147879
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7335616   0.6468892   0.8202339
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.3467021   0.3065815   0.3868227
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.6095539   0.5208383   0.6982695
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.3321166   0.2917151   0.3725181
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Low birthweight              NA                0.5910398   0.4978449   0.6842346
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.5451656   0.4797301   0.6106011
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Low birthweight              NA                0.7411289   0.6344593   0.8477985
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2945584   0.2752814   0.3138353
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.4784998   0.3512718   0.6057277
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3213531   0.3127747   0.3299314
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6151347   0.5874282   0.6428412
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.2222641   0.1928175   0.2517107
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Low birthweight              NA                0.4109132   0.2697218   0.5521046
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight   NA                0.0605989   0.0540292   0.0671687
0-6 months (no birth st.)    COHORTS          INDIA                          Low birthweight              NA                0.1931110   0.1652942   0.2209277
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1702130   0.1559032   0.1845229
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Low birthweight              NA                0.4589990   0.3856581   0.5323400
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight   NA                0.5085714   0.4343282   0.5828147
0-6 months (no birth st.)    EE               PAKISTAN                       Low birthweight              NA                0.7631579   0.6276655   0.8986503
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1323989   0.1009238   0.1638740
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Low birthweight              NA                0.3298637   0.2447370   0.4149904
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight   NA                0.3016000   0.2500655   0.3531345
0-6 months (no birth st.)    IRC              INDIA                          Low birthweight              NA                0.5351126   0.3971978   0.6730273
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.0991985   0.0931317   0.1052654
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Low birthweight              NA                0.2728445   0.2563897   0.2892992
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.0857714   0.0735878   0.0979551
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Low birthweight              NA                0.1873171   0.1330522   0.2415821
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight   NA                0.2158705   0.1932971   0.2384440
0-6 months (no birth st.)    Keneba           GAMBIA                         Low birthweight              NA                0.5227255   0.4492581   0.5961928
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1786876   0.1237600   0.2336152
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Low birthweight              NA                0.4642334   0.2593382   0.6691286
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight   NA                0.2108108   0.1518917   0.2697299
0-6 months (no birth st.)    MAL-ED           INDIA                          Low birthweight              NA                0.2857143   0.0920288   0.4793998
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1896323   0.1518305   0.2274341
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4062923   0.3088144   0.5037702
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1469940   0.1171034   0.1768846
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.3950126   0.3047314   0.4852938
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1163082   0.0888150   0.1438015
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Low birthweight              NA                0.3549007   0.2649158   0.4448857
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1673214   0.1411224   0.1935203
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Low birthweight              NA                0.4129493   0.3109046   0.5149941
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1322661   0.1179223   0.1466098
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2927659   0.1822560   0.4032759
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1414529   0.1350468   0.1478589
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.4645425   0.4361527   0.4929323
6-24 months                  COHORTS          INDIA                          Normal or high birthweight   NA                0.2296750   0.2174922   0.2418578
6-24 months                  COHORTS          INDIA                          Low birthweight              NA                0.3503208   0.3122866   0.3883549
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6381142   0.6171189   0.6591096
6-24 months                  COHORTS          PHILIPPINES                    Low birthweight              NA                0.7847346   0.6943853   0.8750839
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5406797   0.4867562   0.5946032
6-24 months                  GMS-Nepal        NEPAL                          Low birthweight              NA                0.6514623   0.5238206   0.7791040
6-24 months                  IRC              INDIA                          Normal or high birthweight   NA                0.3738318   0.3088711   0.4387925
6-24 months                  IRC              INDIA                          Low birthweight              NA                0.4285714   0.2164634   0.6406794
6-24 months                  JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                0.2047847   0.1943579   0.2152114
6-24 months                  JiVitA-3         BANGLADESH                     Low birthweight              NA                0.3135097   0.2878821   0.3391373
6-24 months                  JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.3546242   0.3328147   0.3764337
6-24 months                  JiVitA-4         BANGLADESH                     Low birthweight              NA                0.4805303   0.4124585   0.5486020
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight   NA                0.3659197   0.3355387   0.3963007
6-24 months                  Keneba           GAMBIA                         Low birthweight              NA                0.5851710   0.4736373   0.6967047
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight   NA                0.4379562   0.3546031   0.5213093
6-24 months                  MAL-ED           INDIA                          Low birthweight              NA                0.3333333   0.0939855   0.5726812
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5463818   0.4883060   0.6044575
6-24 months                  NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7053635   0.5738463   0.8368807
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.2421430   0.2021846   0.2821015
6-24 months                  NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.4209909   0.3035052   0.5384767
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.2799608   0.2359110   0.3240106
6-24 months                  PROVIDE          BANGLADESH                     Low birthweight              NA                0.4500911   0.3164836   0.5836986
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.4914403   0.4390843   0.5437964
6-24 months                  SAS-CompFeed     INDIA                          Low birthweight              NA                0.6254302   0.4961116   0.7547488
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2247119   0.2038362   0.2455876
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.3333333   0.2124416   0.4542250
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2550160   0.2454855   0.2645465
6-24 months                  ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.4191986   0.3728160   0.4655811


### Parameter: E(Y)


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      NA                   NA                0.7142857   0.6835892   0.7449822
0-24 months (no birth st.)   COHORTS          INDIA                          NA                   NA                0.2852591   0.2737975   0.2967207
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    NA                   NA                0.6646643   0.6472674   0.6820612
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          NA                   NA                0.5617391   0.5211485   0.6023298
0-24 months (no birth st.)   IRC              INDIA                          NA                   NA                0.5887324   0.5374737   0.6399911
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     NA                   NA                0.2650737   0.2569178   0.2732295
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     NA                   NA                0.4282588   0.4077731   0.4487445
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
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     NA                   NA                0.1391999   0.1330990   0.1453008
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     NA                   NA                0.0979962   0.0852560   0.1107365
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
6-24 months                  JiVitA-3         BANGLADESH                     NA                   NA                0.2234954   0.2132931   0.2336976
6-24 months                  JiVitA-4         BANGLADESH                     NA                   NA                0.3682386   0.3473666   0.3891105
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
0-24 months (no birth st.)   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.7084982   1.5631810   1.867325
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.2316168   1.1425270   1.327654
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.2868848   1.1036871   1.500491
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   IRC              INDIA                          Low birthweight              Normal or high birthweight    1.4174011   1.1844679   1.696142
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    1.8845096   1.7797526   1.995433
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    1.4008674   1.2334981   1.590946
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.5863917   1.4415121   1.745832
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    1.2470103   0.9001943   1.727443
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    0.8385541   0.5082836   1.383426
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.2945674   1.1190484   1.497616
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    1.7581487   1.4609910   2.115747
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.7796153   1.4606897   2.168175
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.3594564   1.1269558   1.639924
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.6244651   1.2353883   2.136079
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.9142020   1.8166765   2.016963
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.8487607   1.2793656   2.671571
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    3.1867050   2.6618906   3.814991
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    2.6966149   2.2515977   3.229588
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.5005914   1.1924456   1.888367
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.4914387   1.7540222   3.538876
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    IRC              INDIA                          Low birthweight              Normal or high birthweight    1.7742462   1.3024019   2.417034
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    2.7504886   2.5223396   2.999274
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    2.1839113   1.5812390   3.016286
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    2.4214769   2.0327889   2.884485
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    2.5980171   1.5129704   4.461219
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    1.3553114   0.6510151   2.821546
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    2.1425266   1.5686688   2.926316
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    2.6872694   1.9801431   3.646917
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    3.0513811   2.1615513   4.307521
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    2.4680012   1.8277346   3.332557
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.2134623   1.4945179   3.278258
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    3.2840798   3.0438644   3.543253
6-24 months                  COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.5252891   1.3524962   1.720158
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.2297713   1.0909582   1.386247
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    1.2048950   0.9667232   1.501745
6-24 months                  IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  IRC              INDIA                          Low birthweight              Normal or high birthweight    1.1464286   0.6784891   1.937096
6-24 months                  JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    1.5309238   1.3969136   1.677790
6-24 months                  JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    1.3550409   1.1626936   1.579209
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    1.5991787   1.2998549   1.967429
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    0.7611111   0.3621073   1.599775
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    1.2909719   1.0417008   1.599892
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    1.7386043   1.2610136   2.397076
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    1.6076934   1.1496221   2.248285
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    1.2726473   0.9728651   1.664805
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    1.4833808   1.0201396   2.156978
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.000000
6-24 months                  ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.6438130   1.4627360   1.847306


### Parameter: PAR


agecat                       studyid          country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0090761    0.0028693   0.0152828
0-24 months (no birth st.)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0248545    0.0197835   0.0299255
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0096246    0.0056377   0.0136115
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0325646    0.0115500   0.0535791
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight   NA                 0.0212355    0.0018670   0.0406040
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0435938    0.0389896   0.0481981
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0192801    0.0113609   0.0271992
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0368724    0.0273504   0.0463944
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0148099   -0.0093760   0.0389958
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0002064   -0.0234892   0.0230764
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0341367    0.0135763   0.0546970
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0468660    0.0283230   0.0654091
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0438708    0.0250752   0.0626664
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0209768    0.0051172   0.0368365
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0039491    0.0006370   0.0072612
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0273841    0.0242946   0.0304736
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0148366    0.0055008   0.0241724
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight   NA                 0.0182449    0.0142263   0.0222635
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0184795    0.0130851   0.0238739
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight   NA                 0.0454192    0.0148924   0.0759460
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0415141    0.0214028   0.0616255
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight   NA                 0.0364282    0.0140849   0.0587714
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0400014    0.0358484   0.0441543
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0122248    0.0054157   0.0190340
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0397996    0.0289932   0.0506060
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0362657    0.0083560   0.0641754
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0076358   -0.0132341   0.0285057
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0412874    0.0194640   0.0631108
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0428988    0.0250250   0.0607725
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0432494    0.0255391   0.0609598
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0271231    0.0125029   0.0417432
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0034192    0.0004368   0.0064015
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0301580    0.0269824   0.0333336
6-24 months                  COHORTS          INDIA                          Normal or high birthweight   NA                 0.0143506    0.0095880   0.0191133
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0054596    0.0017403   0.0091789
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0224516    0.0004321   0.0444711
6-24 months                  IRC              INDIA                          Normal or high birthweight   NA                 0.0048916   -0.0150324   0.0248157
6-24 months                  JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0187107    0.0139737   0.0234477
6-24 months                  JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0136144    0.0063326   0.0208962
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0168554    0.0077255   0.0259853
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0103246   -0.0358261   0.0151769
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0263455    0.0051190   0.0475720
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0207028    0.0043628   0.0370428
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0204778    0.0028505   0.0381051
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0104277   -0.0021845   0.0230398
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0018457   -0.0012981   0.0049895
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0083532    0.0058195   0.0108868


### Parameter: PAF


agecat                       studyid          country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0127065    0.0039108   0.0214245
0-24 months (no birth st.)   COHORTS          INDIA                          Normal or high birthweight   NA                 0.0871295    0.0692940   0.1046232
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0144804    0.0084302   0.0204936
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0579710    0.0194742   0.0949563
0-24 months (no birth st.)   IRC              INDIA                          Normal or high birthweight   NA                 0.0360698    0.0023117   0.0686857
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.1644593    0.1471919   0.1813770
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0450196    0.0263125   0.0633673
0-24 months (no birth st.)   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0694939    0.0510406   0.0875883
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0280470   -0.0190229   0.0729427
0-24 months (no birth st.)   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0003865   -0.0449530   0.0422794
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0568204    0.0215166   0.0908504
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1190799    0.0704496   0.1651660
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1166815    0.0650814   0.1654337
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0370522    0.0071018   0.0660992
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0132295    0.0020614   0.0242726
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0785235    0.0696223   0.0873396
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0625751    0.0226760   0.1008452
0-6 months (no birth st.)    COHORTS          INDIA                          Normal or high birthweight   NA                 0.2314055    0.1826124   0.2772860
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0979346    0.0694825   0.1255167
0-6 months (no birth st.)    EE               PAKISTAN                       Normal or high birthweight   NA                 0.0819855    0.0239964   0.1365292
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.2387064    0.1197211   0.3416087
0-6 months (no birth st.)    IRC              INDIA                          Normal or high birthweight   NA                 0.1077667    0.0392344   0.1714106
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.2873663    0.2587568   0.3148715
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.1247480    0.0565849   0.1879862
0-6 months (no birth st.)    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1556677    0.1132744   0.1960342
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1687143    0.0330475   0.2853465
0-6 months (no birth st.)    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0349550   -0.0652535   0.1257368
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1787956    0.0815747   0.2657251
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.2259104    0.1307195   0.3106774
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.2710583    0.1599035   0.3675061
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.1394901    0.0619753   0.2105995
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0251992    0.0030291   0.0468762
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1757347    0.1578542   0.1932356
6-24 months                  COHORTS          INDIA                          Normal or high birthweight   NA                 0.0588079    0.0391876   0.0780276
6-24 months                  COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0084832    0.0026707   0.0142619
6-24 months                  GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0398693   -0.0002498   0.0783791
6-24 months                  IRC              INDIA                          Normal or high birthweight   NA                 0.0129161   -0.0411287   0.0641554
6-24 months                  JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0837185    0.0626475   0.1043158
6-24 months                  JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0369716    0.0169706   0.0565656
6-24 months                  Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0440348    0.0198274   0.0676444
6-24 months                  MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0241437   -0.0856419   0.0338708
6-24 months                  NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0460001    0.0078243   0.0827070
6-24 months                  NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0787641    0.0147293   0.1386371
6-24 months                  PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0681597    0.0077651   0.1248782
6-24 months                  SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0207777   -0.0056956   0.0465541
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0081466   -0.0058589   0.0219571
6-24 months                  ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0317166    0.0220674   0.0412705
