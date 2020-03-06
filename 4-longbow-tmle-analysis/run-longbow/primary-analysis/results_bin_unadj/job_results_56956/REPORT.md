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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        sex       wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          Female              0       52    324
0-24 months   CMC-V-BCS-2002   INDIA                          Female              1      110    324
0-24 months   CMC-V-BCS-2002   INDIA                          Male                0       68    324
0-24 months   CMC-V-BCS-2002   INDIA                          Male                1       94    324
0-24 months   CMIN             BANGLADESH                     Female              0       35    190
0-24 months   CMIN             BANGLADESH                     Female              1       49    190
0-24 months   CMIN             BANGLADESH                     Male                0       45    190
0-24 months   CMIN             BANGLADESH                     Male                1       61    190
0-24 months   COHORTS          GUATEMALA                      Female              0       73    381
0-24 months   COHORTS          GUATEMALA                      Female              1       68    381
0-24 months   COHORTS          GUATEMALA                      Male                0      140    381
0-24 months   COHORTS          GUATEMALA                      Male                1      100    381
0-24 months   COHORTS          INDIA                          Female              0      948   2663
0-24 months   COHORTS          INDIA                          Female              1      315   2663
0-24 months   COHORTS          INDIA                          Male                0     1071   2663
0-24 months   COHORTS          INDIA                          Male                1      329   2663
0-24 months   COHORTS          PHILIPPINES                    Female              0      279   1689
0-24 months   COHORTS          PHILIPPINES                    Female              1      454   1689
0-24 months   COHORTS          PHILIPPINES                    Male                0      385   1689
0-24 months   COHORTS          PHILIPPINES                    Male                1      571   1689
0-24 months   CONTENT          PERU                           Female              0        0      7
0-24 months   CONTENT          PERU                           Female              1        2      7
0-24 months   CONTENT          PERU                           Male                0        1      7
0-24 months   CONTENT          PERU                           Male                1        4      7
0-24 months   EE               PAKISTAN                       Female              0       66    323
0-24 months   EE               PAKISTAN                       Female              1       85    323
0-24 months   EE               PAKISTAN                       Male                0       94    323
0-24 months   EE               PAKISTAN                       Male                1       78    323
0-24 months   GMS-Nepal        NEPAL                          Female              0      134    643
0-24 months   GMS-Nepal        NEPAL                          Female              1      177    643
0-24 months   GMS-Nepal        NEPAL                          Male                0      162    643
0-24 months   GMS-Nepal        NEPAL                          Male                1      170    643
0-24 months   Guatemala BSC    GUATEMALA                      Female              0        5     38
0-24 months   Guatemala BSC    GUATEMALA                      Female              1        6     38
0-24 months   Guatemala BSC    GUATEMALA                      Male                0       16     38
0-24 months   Guatemala BSC    GUATEMALA                      Male                1       11     38
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female              0      339    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female              1       15    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                0      445    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                1       21    820
0-24 months   IRC              INDIA                          Female              0       68    395
0-24 months   IRC              INDIA                          Female              1      112    395
0-24 months   IRC              INDIA                          Male                0       94    395
0-24 months   IRC              INDIA                          Male                1      121    395
0-24 months   JiVitA-3         BANGLADESH                     Female              0     2037   7571
0-24 months   JiVitA-3         BANGLADESH                     Female              1     1616   7571
0-24 months   JiVitA-3         BANGLADESH                     Male                0     2338   7571
0-24 months   JiVitA-3         BANGLADESH                     Male                1     1580   7571
0-24 months   JiVitA-4         BANGLADESH                     Female              0      701   2069
0-24 months   JiVitA-4         BANGLADESH                     Female              1      255   2069
0-24 months   JiVitA-4         BANGLADESH                     Male                0      833   2069
0-24 months   JiVitA-4         BANGLADESH                     Male                1      280   2069
0-24 months   Keneba           GAMBIA                         Female              0      301   1828
0-24 months   Keneba           GAMBIA                         Female              1      515   1828
0-24 months   Keneba           GAMBIA                         Male                0      411   1828
0-24 months   Keneba           GAMBIA                         Male                1      601   1828
0-24 months   LCNI-5           MALAWI                         Female              0       22     79
0-24 months   LCNI-5           MALAWI                         Female              1        3     79
0-24 months   LCNI-5           MALAWI                         Male                0       44     79
0-24 months   LCNI-5           MALAWI                         Male                1       10     79
0-24 months   MAL-ED           BANGLADESH                     Female              0       28    124
0-24 months   MAL-ED           BANGLADESH                     Female              1       43    124
0-24 months   MAL-ED           BANGLADESH                     Male                0       16    124
0-24 months   MAL-ED           BANGLADESH                     Male                1       37    124
0-24 months   MAL-ED           BRAZIL                         Female              0        4     24
0-24 months   MAL-ED           BRAZIL                         Female              1        5     24
0-24 months   MAL-ED           BRAZIL                         Male                0        2     24
0-24 months   MAL-ED           BRAZIL                         Male                1       13     24
0-24 months   MAL-ED           INDIA                          Female              0       32    181
0-24 months   MAL-ED           INDIA                          Female              1       66    181
0-24 months   MAL-ED           INDIA                          Male                0       39    181
0-24 months   MAL-ED           INDIA                          Male                1       44    181
0-24 months   MAL-ED           NEPAL                          Female              0        6     98
0-24 months   MAL-ED           NEPAL                          Female              1       41     98
0-24 months   MAL-ED           NEPAL                          Male                0       14     98
0-24 months   MAL-ED           NEPAL                          Male                1       37     98
0-24 months   MAL-ED           PERU                           Female              0        1     35
0-24 months   MAL-ED           PERU                           Female              1       10     35
0-24 months   MAL-ED           PERU                           Male                0        5     35
0-24 months   MAL-ED           PERU                           Male                1       19     35
0-24 months   MAL-ED           SOUTH AFRICA                   Female              0        8     87
0-24 months   MAL-ED           SOUTH AFRICA                   Female              1       29     87
0-24 months   MAL-ED           SOUTH AFRICA                   Male                0       10     87
0-24 months   MAL-ED           SOUTH AFRICA                   Male                1       40     87
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              0        4     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              1       25     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                0        5     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                1       17     51
0-24 months   NIH-Birth        BANGLADESH                     Female              0       86    421
0-24 months   NIH-Birth        BANGLADESH                     Female              1       97    421
0-24 months   NIH-Birth        BANGLADESH                     Male                0      116    421
0-24 months   NIH-Birth        BANGLADESH                     Male                1      122    421
0-24 months   NIH-Crypto       BANGLADESH                     Female              0       46    310
0-24 months   NIH-Crypto       BANGLADESH                     Female              1       96    310
0-24 months   NIH-Crypto       BANGLADESH                     Male                0       71    310
0-24 months   NIH-Crypto       BANGLADESH                     Male                1       97    310
0-24 months   PROBIT           BELARUS                        Female              0      210   4408
0-24 months   PROBIT           BELARUS                        Female              1     1807   4408
0-24 months   PROBIT           BELARUS                        Male                0      316   4408
0-24 months   PROBIT           BELARUS                        Male                1     2075   4408
0-24 months   PROVIDE          BANGLADESH                     Female              0       53    308
0-24 months   PROVIDE          BANGLADESH                     Female              1       89    308
0-24 months   PROVIDE          BANGLADESH                     Male                0       76    308
0-24 months   PROVIDE          BANGLADESH                     Male                1       90    308
0-24 months   ResPak           PAKISTAN                       Female              0       46    204
0-24 months   ResPak           PAKISTAN                       Female              1       56    204
0-24 months   ResPak           PAKISTAN                       Male                0       66    204
0-24 months   ResPak           PAKISTAN                       Male                1       36    204
0-24 months   SAS-CompFeed     INDIA                          Female              0      229    814
0-24 months   SAS-CompFeed     INDIA                          Female              1      150    814
0-24 months   SAS-CompFeed     INDIA                          Male                0      275    814
0-24 months   SAS-CompFeed     INDIA                          Male                1      160    814
0-24 months   SAS-FoodSuppl    INDIA                          Female              0      118    234
0-24 months   SAS-FoodSuppl    INDIA                          Female              1        3    234
0-24 months   SAS-FoodSuppl    INDIA                          Male                0      103    234
0-24 months   SAS-FoodSuppl    INDIA                          Male                1       10    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0       94    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      202    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      172    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      245    713
0-24 months   ZVITAMBO         ZIMBABWE                       Female              0      747   3615
0-24 months   ZVITAMBO         ZIMBABWE                       Female              1     1022   3615
0-24 months   ZVITAMBO         ZIMBABWE                       Male                0      904   3615
0-24 months   ZVITAMBO         ZIMBABWE                       Male                1      942   3615
0-6 months    CMC-V-BCS-2002   INDIA                          Female              0       30    201
0-6 months    CMC-V-BCS-2002   INDIA                          Female              1       77    201
0-6 months    CMC-V-BCS-2002   INDIA                          Male                0       36    201
0-6 months    CMC-V-BCS-2002   INDIA                          Male                1       58    201
0-6 months    CMIN             BANGLADESH                     Female              0       12     52
0-6 months    CMIN             BANGLADESH                     Female              1       15     52
0-6 months    CMIN             BANGLADESH                     Male                0       13     52
0-6 months    CMIN             BANGLADESH                     Male                1       12     52
0-6 months    COHORTS          GUATEMALA                      Female              0       16    215
0-6 months    COHORTS          GUATEMALA                      Female              1       64    215
0-6 months    COHORTS          GUATEMALA                      Male                0       39    215
0-6 months    COHORTS          GUATEMALA                      Male                1       96    215
0-6 months    COHORTS          INDIA                          Female              0      576   1796
0-6 months    COHORTS          INDIA                          Female              1      315   1796
0-6 months    COHORTS          INDIA                          Male                0      576   1796
0-6 months    COHORTS          INDIA                          Male                1      329   1796
0-6 months    COHORTS          PHILIPPINES                    Female              0       76    752
0-6 months    COHORTS          PHILIPPINES                    Female              1      247    752
0-6 months    COHORTS          PHILIPPINES                    Male                0      122    752
0-6 months    COHORTS          PHILIPPINES                    Male                1      307    752
0-6 months    CONTENT          PERU                           Female              0        0      4
0-6 months    CONTENT          PERU                           Female              1        1      4
0-6 months    CONTENT          PERU                           Male                0        0      4
0-6 months    CONTENT          PERU                           Male                1        3      4
0-6 months    EE               PAKISTAN                       Female              0       22    127
0-6 months    EE               PAKISTAN                       Female              1       38    127
0-6 months    EE               PAKISTAN                       Male                0       33    127
0-6 months    EE               PAKISTAN                       Male                1       34    127
0-6 months    GMS-Nepal        NEPAL                          Female              0       46    263
0-6 months    GMS-Nepal        NEPAL                          Female              1       78    263
0-6 months    GMS-Nepal        NEPAL                          Male                0       58    263
0-6 months    GMS-Nepal        NEPAL                          Male                1       81    263
0-6 months    Guatemala BSC    GUATEMALA                      Female              0        1     10
0-6 months    Guatemala BSC    GUATEMALA                      Female              1        2     10
0-6 months    Guatemala BSC    GUATEMALA                      Male                0        5     10
0-6 months    Guatemala BSC    GUATEMALA                      Male                1        2     10
0-6 months    IRC              INDIA                          Female              0       34    240
0-6 months    IRC              INDIA                          Female              1       76    240
0-6 months    IRC              INDIA                          Male                0       53    240
0-6 months    IRC              INDIA                          Male                1       77    240
0-6 months    JiVitA-3         BANGLADESH                     Female              0      742   4734
0-6 months    JiVitA-3         BANGLADESH                     Female              1     1616   4734
0-6 months    JiVitA-3         BANGLADESH                     Male                0      796   4734
0-6 months    JiVitA-3         BANGLADESH                     Male                1     1580   4734
0-6 months    JiVitA-4         BANGLADESH                     Female              0      100    553
0-6 months    JiVitA-4         BANGLADESH                     Female              1      147    553
0-6 months    JiVitA-4         BANGLADESH                     Male                0      144    553
0-6 months    JiVitA-4         BANGLADESH                     Male                1      162    553
0-6 months    Keneba           GAMBIA                         Female              0       72    724
0-6 months    Keneba           GAMBIA                         Female              1      261    724
0-6 months    Keneba           GAMBIA                         Male                0       93    724
0-6 months    Keneba           GAMBIA                         Male                1      298    724
0-6 months    LCNI-5           MALAWI                         Female              0        2      4
0-6 months    LCNI-5           MALAWI                         Female              1        0      4
0-6 months    LCNI-5           MALAWI                         Male                0        2      4
0-6 months    LCNI-5           MALAWI                         Male                1        0      4
0-6 months    MAL-ED           BANGLADESH                     Female              0        8     63
0-6 months    MAL-ED           BANGLADESH                     Female              1       26     63
0-6 months    MAL-ED           BANGLADESH                     Male                0        5     63
0-6 months    MAL-ED           BANGLADESH                     Male                1       24     63
0-6 months    MAL-ED           BRAZIL                         Female              0        1     15
0-6 months    MAL-ED           BRAZIL                         Female              1        4     15
0-6 months    MAL-ED           BRAZIL                         Male                0        0     15
0-6 months    MAL-ED           BRAZIL                         Male                1       10     15
0-6 months    MAL-ED           INDIA                          Female              0       12     86
0-6 months    MAL-ED           INDIA                          Female              1       35     86
0-6 months    MAL-ED           INDIA                          Male                0       15     86
0-6 months    MAL-ED           INDIA                          Male                1       24     86
0-6 months    MAL-ED           NEPAL                          Female              0        2     48
0-6 months    MAL-ED           NEPAL                          Female              1       19     48
0-6 months    MAL-ED           NEPAL                          Male                0        7     48
0-6 months    MAL-ED           NEPAL                          Male                1       20     48
0-6 months    MAL-ED           PERU                           Female              0        0     11
0-6 months    MAL-ED           PERU                           Female              1        4     11
0-6 months    MAL-ED           PERU                           Male                0        0     11
0-6 months    MAL-ED           PERU                           Male                1        7     11
0-6 months    MAL-ED           SOUTH AFRICA                   Female              0        3     36
0-6 months    MAL-ED           SOUTH AFRICA                   Female              1       14     36
0-6 months    MAL-ED           SOUTH AFRICA                   Male                0        6     36
0-6 months    MAL-ED           SOUTH AFRICA                   Male                1       13     36
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              1       10     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                1        3     14
0-6 months    NIH-Birth        BANGLADESH                     Female              0       34    223
0-6 months    NIH-Birth        BANGLADESH                     Female              1       70    223
0-6 months    NIH-Birth        BANGLADESH                     Male                0       30    223
0-6 months    NIH-Birth        BANGLADESH                     Male                1       89    223
0-6 months    NIH-Crypto       BANGLADESH                     Female              0        9    197
0-6 months    NIH-Crypto       BANGLADESH                     Female              1       87    197
0-6 months    NIH-Crypto       BANGLADESH                     Male                0       12    197
0-6 months    NIH-Crypto       BANGLADESH                     Male                1       89    197
0-6 months    PROBIT           BELARUS                        Female              0      177   4267
0-6 months    PROBIT           BELARUS                        Female              1     1791   4267
0-6 months    PROBIT           BELARUS                        Male                0      246   4267
0-6 months    PROBIT           BELARUS                        Male                1     2053   4267
0-6 months    PROVIDE          BANGLADESH                     Female              0       18    185
0-6 months    PROVIDE          BANGLADESH                     Female              1       71    185
0-6 months    PROVIDE          BANGLADESH                     Male                0       22    185
0-6 months    PROVIDE          BANGLADESH                     Male                1       74    185
0-6 months    ResPak           PAKISTAN                       Female              0       13    113
0-6 months    ResPak           PAKISTAN                       Female              1       42    113
0-6 months    ResPak           PAKISTAN                       Male                0       30    113
0-6 months    ResPak           PAKISTAN                       Male                1       28    113
0-6 months    SAS-CompFeed     INDIA                          Female              0       82    341
0-6 months    SAS-CompFeed     INDIA                          Female              1       88    341
0-6 months    SAS-CompFeed     INDIA                          Male                0       84    341
0-6 months    SAS-CompFeed     INDIA                          Male                1       87    341
0-6 months    SAS-FoodSuppl    INDIA                          Female              0       44     78
0-6 months    SAS-FoodSuppl    INDIA                          Female              1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          Male                0       34     78
0-6 months    SAS-FoodSuppl    INDIA                          Male                1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0       35    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      109    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0       66    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      130    340
0-6 months    ZVITAMBO         ZIMBABWE                       Female              0      314   2519
0-6 months    ZVITAMBO         ZIMBABWE                       Female              1      982   2519
0-6 months    ZVITAMBO         ZIMBABWE                       Male                0      322   2519
0-6 months    ZVITAMBO         ZIMBABWE                       Male                1      901   2519
6-24 months   CMC-V-BCS-2002   INDIA                          Female              0       22    123
6-24 months   CMC-V-BCS-2002   INDIA                          Female              1       33    123
6-24 months   CMC-V-BCS-2002   INDIA                          Male                0       32    123
6-24 months   CMC-V-BCS-2002   INDIA                          Male                1       36    123
6-24 months   CMIN             BANGLADESH                     Female              0       23    138
6-24 months   CMIN             BANGLADESH                     Female              1       34    138
6-24 months   CMIN             BANGLADESH                     Male                0       32    138
6-24 months   CMIN             BANGLADESH                     Male                1       49    138
6-24 months   COHORTS          GUATEMALA                      Female              0       57    166
6-24 months   COHORTS          GUATEMALA                      Female              1        4    166
6-24 months   COHORTS          GUATEMALA                      Male                0      101    166
6-24 months   COHORTS          GUATEMALA                      Male                1        4    166
6-24 months   COHORTS          INDIA                          Female              0      372    867
6-24 months   COHORTS          INDIA                          Female              1        0    867
6-24 months   COHORTS          INDIA                          Male                0      495    867
6-24 months   COHORTS          INDIA                          Male                1        0    867
6-24 months   COHORTS          PHILIPPINES                    Female              0      203    937
6-24 months   COHORTS          PHILIPPINES                    Female              1      207    937
6-24 months   COHORTS          PHILIPPINES                    Male                0      263    937
6-24 months   COHORTS          PHILIPPINES                    Male                1      264    937
6-24 months   CONTENT          PERU                           Female              0        0      3
6-24 months   CONTENT          PERU                           Female              1        1      3
6-24 months   CONTENT          PERU                           Male                0        1      3
6-24 months   CONTENT          PERU                           Male                1        1      3
6-24 months   EE               PAKISTAN                       Female              0       44    196
6-24 months   EE               PAKISTAN                       Female              1       47    196
6-24 months   EE               PAKISTAN                       Male                0       61    196
6-24 months   EE               PAKISTAN                       Male                1       44    196
6-24 months   GMS-Nepal        NEPAL                          Female              0       88    380
6-24 months   GMS-Nepal        NEPAL                          Female              1       99    380
6-24 months   GMS-Nepal        NEPAL                          Male                0      104    380
6-24 months   GMS-Nepal        NEPAL                          Male                1       89    380
6-24 months   Guatemala BSC    GUATEMALA                      Female              0        4     28
6-24 months   Guatemala BSC    GUATEMALA                      Female              1        4     28
6-24 months   Guatemala BSC    GUATEMALA                      Male                0       11     28
6-24 months   Guatemala BSC    GUATEMALA                      Male                1        9     28
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female              0      339    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female              1       15    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                0      445    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                1       21    820
6-24 months   IRC              INDIA                          Female              0       34    155
6-24 months   IRC              INDIA                          Female              1       36    155
6-24 months   IRC              INDIA                          Male                0       41    155
6-24 months   IRC              INDIA                          Male                1       44    155
6-24 months   JiVitA-3         BANGLADESH                     Female              0     1295   2837
6-24 months   JiVitA-3         BANGLADESH                     Female              1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     Male                0     1542   2837
6-24 months   JiVitA-3         BANGLADESH                     Male                1        0   2837
6-24 months   JiVitA-4         BANGLADESH                     Female              0      601   1516
6-24 months   JiVitA-4         BANGLADESH                     Female              1      108   1516
6-24 months   JiVitA-4         BANGLADESH                     Male                0      689   1516
6-24 months   JiVitA-4         BANGLADESH                     Male                1      118   1516
6-24 months   Keneba           GAMBIA                         Female              0      229   1104
6-24 months   Keneba           GAMBIA                         Female              1      254   1104
6-24 months   Keneba           GAMBIA                         Male                0      318   1104
6-24 months   Keneba           GAMBIA                         Male                1      303   1104
6-24 months   LCNI-5           MALAWI                         Female              0       20     75
6-24 months   LCNI-5           MALAWI                         Female              1        3     75
6-24 months   LCNI-5           MALAWI                         Male                0       42     75
6-24 months   LCNI-5           MALAWI                         Male                1       10     75
6-24 months   MAL-ED           BANGLADESH                     Female              0       20     61
6-24 months   MAL-ED           BANGLADESH                     Female              1       17     61
6-24 months   MAL-ED           BANGLADESH                     Male                0       11     61
6-24 months   MAL-ED           BANGLADESH                     Male                1       13     61
6-24 months   MAL-ED           BRAZIL                         Female              0        3      9
6-24 months   MAL-ED           BRAZIL                         Female              1        1      9
6-24 months   MAL-ED           BRAZIL                         Male                0        2      9
6-24 months   MAL-ED           BRAZIL                         Male                1        3      9
6-24 months   MAL-ED           INDIA                          Female              0       20     95
6-24 months   MAL-ED           INDIA                          Female              1       31     95
6-24 months   MAL-ED           INDIA                          Male                0       24     95
6-24 months   MAL-ED           INDIA                          Male                1       20     95
6-24 months   MAL-ED           NEPAL                          Female              0        4     50
6-24 months   MAL-ED           NEPAL                          Female              1       22     50
6-24 months   MAL-ED           NEPAL                          Male                0        7     50
6-24 months   MAL-ED           NEPAL                          Male                1       17     50
6-24 months   MAL-ED           PERU                           Female              0        1     24
6-24 months   MAL-ED           PERU                           Female              1        6     24
6-24 months   MAL-ED           PERU                           Male                0        5     24
6-24 months   MAL-ED           PERU                           Male                1       12     24
6-24 months   MAL-ED           SOUTH AFRICA                   Female              0        5     51
6-24 months   MAL-ED           SOUTH AFRICA                   Female              1       15     51
6-24 months   MAL-ED           SOUTH AFRICA                   Male                0        4     51
6-24 months   MAL-ED           SOUTH AFRICA                   Male                1       27     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              0        3     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              1       15     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                0        5     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                1       14     37
6-24 months   NIH-Birth        BANGLADESH                     Female              0       52    198
6-24 months   NIH-Birth        BANGLADESH                     Female              1       27    198
6-24 months   NIH-Birth        BANGLADESH                     Male                0       86    198
6-24 months   NIH-Birth        BANGLADESH                     Male                1       33    198
6-24 months   NIH-Crypto       BANGLADESH                     Female              0       37    113
6-24 months   NIH-Crypto       BANGLADESH                     Female              1        9    113
6-24 months   NIH-Crypto       BANGLADESH                     Male                0       59    113
6-24 months   NIH-Crypto       BANGLADESH                     Male                1        8    113
6-24 months   PROBIT           BELARUS                        Female              0       33    141
6-24 months   PROBIT           BELARUS                        Female              1       16    141
6-24 months   PROBIT           BELARUS                        Male                0       70    141
6-24 months   PROBIT           BELARUS                        Male                1       22    141
6-24 months   PROVIDE          BANGLADESH                     Female              0       35    123
6-24 months   PROVIDE          BANGLADESH                     Female              1       18    123
6-24 months   PROVIDE          BANGLADESH                     Male                0       54    123
6-24 months   PROVIDE          BANGLADESH                     Male                1       16    123
6-24 months   ResPak           PAKISTAN                       Female              0       33     91
6-24 months   ResPak           PAKISTAN                       Female              1       14     91
6-24 months   ResPak           PAKISTAN                       Male                0       36     91
6-24 months   ResPak           PAKISTAN                       Male                1        8     91
6-24 months   SAS-CompFeed     INDIA                          Female              0      147    473
6-24 months   SAS-CompFeed     INDIA                          Female              1       62    473
6-24 months   SAS-CompFeed     INDIA                          Male                0      191    473
6-24 months   SAS-CompFeed     INDIA                          Male                1       73    473
6-24 months   SAS-FoodSuppl    INDIA                          Female              0       74    156
6-24 months   SAS-FoodSuppl    INDIA                          Female              1        3    156
6-24 months   SAS-FoodSuppl    INDIA                          Male                0       69    156
6-24 months   SAS-FoodSuppl    INDIA                          Male                1       10    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0       59    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1       93    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      106    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      115    373
6-24 months   ZVITAMBO         ZIMBABWE                       Female              0      433   1096
6-24 months   ZVITAMBO         ZIMBABWE                       Female              1       40   1096
6-24 months   ZVITAMBO         ZIMBABWE                       Male                0      582   1096
6-24 months   ZVITAMBO         ZIMBABWE                       Male                1       41   1096


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/c484ed2d-b255-41e8-9377-124018667046/5962b694-9f2d-49d0-97cd-a483d506d97e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c484ed2d-b255-41e8-9377-124018667046/5962b694-9f2d-49d0-97cd-a483d506d97e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c484ed2d-b255-41e8-9377-124018667046/5962b694-9f2d-49d0-97cd-a483d506d97e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c484ed2d-b255-41e8-9377-124018667046/5962b694-9f2d-49d0-97cd-a483d506d97e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                0.6790123   0.5991874   0.7588373
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                0.5802469   0.5020417   0.6584521
0-24 months   CMIN             BANGLADESH                     Female               NA                0.5833333   0.4610861   0.7055806
0-24 months   CMIN             BANGLADESH                     Male                 NA                0.5754717   0.4734178   0.6775256
0-24 months   COHORTS          GUATEMALA                      Female               NA                0.4822695   0.3958100   0.5687290
0-24 months   COHORTS          GUATEMALA                      Male                 NA                0.4166667   0.3525835   0.4807498
0-24 months   COHORTS          INDIA                          Female               NA                0.2494062   0.2254052   0.2734071
0-24 months   COHORTS          INDIA                          Male                 NA                0.2350000   0.2126792   0.2573208
0-24 months   COHORTS          PHILIPPINES                    Female               NA                0.6193724   0.5816890   0.6570559
0-24 months   COHORTS          PHILIPPINES                    Male                 NA                0.5972803   0.5650607   0.6295000
0-24 months   EE               PAKISTAN                       Female               NA                0.5629139   0.4763987   0.6494291
0-24 months   EE               PAKISTAN                       Male                 NA                0.4534884   0.3741281   0.5328486
0-24 months   GMS-Nepal        NEPAL                          Female               NA                0.5691318   0.5087931   0.6294706
0-24 months   GMS-Nepal        NEPAL                          Male                 NA                0.5120482   0.4530852   0.5710112
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                0.5454545   0.1787960   0.9121131
0-24 months   Guatemala BSC    GUATEMALA                      Male                 NA                0.4074074   0.2232840   0.5915308
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0423729   0.0208130   0.0639328
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.0450644   0.0265744   0.0635544
0-24 months   IRC              INDIA                          Female               NA                0.6222222   0.5459703   0.6984741
0-24 months   IRC              INDIA                          Male                 NA                0.5627907   0.4915511   0.6340303
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                0.4423761   0.4261966   0.4585557
0-24 months   JiVitA-3         BANGLADESH                     Male                 NA                0.4032670   0.3879953   0.4185386
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                0.2667364   0.2378310   0.2956418
0-24 months   JiVitA-4         BANGLADESH                     Male                 NA                0.2515723   0.2256228   0.2775219
0-24 months   Keneba           GAMBIA                         Female               NA                0.6311275   0.5954476   0.6668073
0-24 months   Keneba           GAMBIA                         Male                 NA                0.5938735   0.5612088   0.6265383
0-24 months   MAL-ED           BANGLADESH                     Female               NA                0.6056338   0.4924847   0.7187829
0-24 months   MAL-ED           BANGLADESH                     Male                 NA                0.6981132   0.5678868   0.8283396
0-24 months   MAL-ED           INDIA                          Female               NA                0.6734694   0.5725923   0.7743465
0-24 months   MAL-ED           INDIA                          Male                 NA                0.5301205   0.4108727   0.6493683
0-24 months   MAL-ED           NEPAL                          Female               NA                0.8723404   0.7752792   0.9694016
0-24 months   MAL-ED           NEPAL                          Male                 NA                0.7254902   0.6122021   0.8387783
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                0.7837838   0.6465498   0.9210178
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 NA                0.8000000   0.6771747   0.9228253
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                0.5300546   0.4507893   0.6093200
0-24 months   NIH-Birth        BANGLADESH                     Male                 NA                0.5126050   0.4470001   0.5782100
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                0.6760563   0.5985746   0.7535381
0-24 months   NIH-Crypto       BANGLADESH                     Male                 NA                0.5773810   0.5024193   0.6523426
0-24 months   PROBIT           BELARUS                        Female               NA                0.8958850   0.8826391   0.9091308
0-24 months   PROBIT           BELARUS                        Male                 NA                0.8678377   0.8543912   0.8812842
0-24 months   PROVIDE          BANGLADESH                     Female               NA                0.6267606   0.5442282   0.7092930
0-24 months   PROVIDE          BANGLADESH                     Male                 NA                0.5421687   0.4645723   0.6197651
0-24 months   ResPak           PAKISTAN                       Female               NA                0.5490196   0.4513658   0.6466735
0-24 months   ResPak           PAKISTAN                       Male                 NA                0.3529412   0.2523570   0.4535254
0-24 months   SAS-CompFeed     INDIA                          Female               NA                0.3957784   0.3451643   0.4463924
0-24 months   SAS-CompFeed     INDIA                          Male                 NA                0.3678161   0.3192002   0.4164320
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6824324   0.6259632   0.7389017
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.5875300   0.5378588   0.6372012
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                0.5777275   0.5542383   0.6012168
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                0.5102925   0.4874910   0.5330940
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                0.7196262   0.6313570   0.8078953
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 NA                0.6170213   0.5190030   0.7150395
0-6 months    CMIN             BANGLADESH                     Female               NA                0.5555556   0.3616478   0.7494633
0-6 months    CMIN             BANGLADESH                     Male                 NA                0.4800000   0.2826810   0.6773190
0-6 months    COHORTS          GUATEMALA                      Female               NA                0.8000000   0.7117317   0.8882683
0-6 months    COHORTS          GUATEMALA                      Male                 NA                0.7111111   0.6348770   0.7873452
0-6 months    COHORTS          INDIA                          Female               NA                0.3535354   0.3221361   0.3849346
0-6 months    COHORTS          INDIA                          Male                 NA                0.3635359   0.3321882   0.3948836
0-6 months    COHORTS          PHILIPPINES                    Female               NA                0.7647059   0.7181957   0.8112161
0-6 months    COHORTS          PHILIPPINES                    Male                 NA                0.7156177   0.6728928   0.7583427
0-6 months    EE               PAKISTAN                       Female               NA                0.6333333   0.5102954   0.7563713
0-6 months    EE               PAKISTAN                       Male                 NA                0.5074627   0.3871263   0.6277991
0-6 months    GMS-Nepal        NEPAL                          Female               NA                0.6290323   0.5433907   0.7146738
0-6 months    GMS-Nepal        NEPAL                          Male                 NA                0.5827338   0.4998558   0.6656118
0-6 months    IRC              INDIA                          Female               NA                0.6909091   0.6035350   0.7782831
0-6 months    IRC              INDIA                          Male                 NA                0.5923077   0.5046939   0.6799215
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                0.6853265   0.6665828   0.7040703
0-6 months    JiVitA-3         BANGLADESH                     Male                 NA                0.6649832   0.6460040   0.6839623
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                0.5951417   0.5338708   0.6564126
0-6 months    JiVitA-4         BANGLADESH                     Male                 NA                0.5294118   0.4734363   0.5853872
0-6 months    Keneba           GAMBIA                         Female               NA                0.7837838   0.7405191   0.8270485
0-6 months    Keneba           GAMBIA                         Male                 NA                0.7621483   0.7201679   0.8041288
0-6 months    MAL-ED           BANGLADESH                     Female               NA                0.7647059   0.6137325   0.9156792
0-6 months    MAL-ED           BANGLADESH                     Male                 NA                0.8275862   0.7059354   0.9492370
0-6 months    MAL-ED           INDIA                          Female               NA                0.7446809   0.6183247   0.8710370
0-6 months    MAL-ED           INDIA                          Male                 NA                0.6153846   0.4555760   0.7751932
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                0.6730769   0.5823118   0.7638420
0-6 months    NIH-Birth        BANGLADESH                     Male                 NA                0.7478992   0.6703442   0.8254542
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                0.9062500   0.8472575   0.9652425
0-6 months    NIH-Crypto       BANGLADESH                     Male                 NA                0.8811881   0.8172736   0.9451027
0-6 months    PROBIT           BELARUS                        Female               NA                0.9100610   0.8973215   0.9228004
0-6 months    PROBIT           BELARUS                        Male                 NA                0.8929970   0.8802969   0.9056970
0-6 months    PROVIDE          BANGLADESH                     Female               NA                0.7977528   0.7176675   0.8778381
0-6 months    PROVIDE          BANGLADESH                     Male                 NA                0.7708333   0.6861319   0.8555347
0-6 months    ResPak           PAKISTAN                       Female               NA                0.7636364   0.6470314   0.8802413
0-6 months    ResPak           PAKISTAN                       Male                 NA                0.4827586   0.3559521   0.6095651
0-6 months    SAS-CompFeed     INDIA                          Female               NA                0.5176471   0.4414987   0.5937954
0-6 months    SAS-CompFeed     INDIA                          Male                 NA                0.5087719   0.4335062   0.5840376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.7569444   0.6863201   0.8275688
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.6632653   0.5958768   0.7306538
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                0.7577160   0.7343809   0.7810512
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 NA                0.7367130   0.7120723   0.7613537
6-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                0.6000000   0.4593885   0.7406115
6-24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                0.5294118   0.4063947   0.6524288
6-24 months   CMIN             BANGLADESH                     Female               NA                0.5964912   0.4505713   0.7424112
6-24 months   CMIN             BANGLADESH                     Male                 NA                0.6049383   0.4951674   0.7147092
6-24 months   COHORTS          PHILIPPINES                    Female               NA                0.5048780   0.4529491   0.5568070
6-24 months   COHORTS          PHILIPPINES                    Male                 NA                0.5009488   0.4563973   0.5455003
6-24 months   EE               PAKISTAN                       Female               NA                0.5164835   0.4072412   0.6257259
6-24 months   EE               PAKISTAN                       Male                 NA                0.4190476   0.3214845   0.5166107
6-24 months   GMS-Nepal        NEPAL                          Female               NA                0.5294118   0.4501680   0.6086555
6-24 months   GMS-Nepal        NEPAL                          Male                 NA                0.4611399   0.3863882   0.5358916
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0423729   0.0208130   0.0639328
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.0450644   0.0265744   0.0635544
6-24 months   IRC              INDIA                          Female               NA                0.5142857   0.3858447   0.6427267
6-24 months   IRC              INDIA                          Male                 NA                0.5176471   0.4071503   0.6281439
6-24 months   JiVitA-4         BANGLADESH                     Female               NA                0.1523272   0.1263992   0.1782552
6-24 months   JiVitA-4         BANGLADESH                     Male                 NA                0.1462206   0.1222889   0.1701523
6-24 months   Keneba           GAMBIA                         Female               NA                0.5258799   0.4781025   0.5736573
6-24 months   Keneba           GAMBIA                         Male                 NA                0.4879227   0.4462416   0.5296039
6-24 months   MAL-ED           BANGLADESH                     Female               NA                0.4594595   0.3129207   0.6059982
6-24 months   MAL-ED           BANGLADESH                     Male                 NA                0.5416667   0.3002791   0.7830542
6-24 months   MAL-ED           INDIA                          Female               NA                0.6078431   0.4596945   0.7559918
6-24 months   MAL-ED           INDIA                          Male                 NA                0.4545455   0.2823318   0.6267591
6-24 months   NIH-Birth        BANGLADESH                     Female               NA                0.3417722   0.2333916   0.4501527
6-24 months   NIH-Birth        BANGLADESH                     Male                 NA                0.2773109   0.1965276   0.3580942
6-24 months   NIH-Crypto       BANGLADESH                     Female               NA                0.1956522   0.0861949   0.3051094
6-24 months   NIH-Crypto       BANGLADESH                     Male                 NA                0.1194030   0.0418271   0.1969789
6-24 months   PROBIT           BELARUS                        Female               NA                0.3265306   0.1961886   0.4568726
6-24 months   PROBIT           BELARUS                        Male                 NA                0.2391304   0.1505474   0.3277134
6-24 months   PROVIDE          BANGLADESH                     Female               NA                0.3396226   0.2030252   0.4762201
6-24 months   PROVIDE          BANGLADESH                     Male                 NA                0.2285714   0.1309576   0.3261853
6-24 months   ResPak           PAKISTAN                       Female               NA                0.2978723   0.1747553   0.4209894
6-24 months   ResPak           PAKISTAN                       Male                 NA                0.1818182   0.0662383   0.2973981
6-24 months   SAS-CompFeed     INDIA                          Female               NA                0.2966507   0.2342618   0.3590396
6-24 months   SAS-CompFeed     INDIA                          Male                 NA                0.2765152   0.2202742   0.3327561
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6118421   0.5301461   0.6935381
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.5203620   0.4530770   0.5876470
6-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                0.0845666   0.0595929   0.1095403
6-24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                0.0658106   0.0464401   0.0851811


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   CMIN             BANGLADESH                     NA                   NA                0.5789474   0.5004470   0.6574477
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4409449   0.3893635   0.4925263
0-24 months   COHORTS          INDIA                          NA                   NA                0.2418325   0.2254819   0.2581831
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   EE               PAKISTAN                       NA                   NA                0.5046440   0.4456009   0.5636870
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.4473684   0.2760904   0.6186464
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
0-24 months   IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4221371   0.4110175   0.4332567
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2585790   0.2392503   0.2779077
0-24 months   Keneba           GAMBIA                         NA                   NA                0.6105033   0.5863646   0.6346419
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6451613   0.5593015   0.7310211
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6077348   0.5286689   0.6868008
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.7959184   0.7207268   0.8711100
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7931034   0.7014938   0.8847131
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ResPak           PAKISTAN                       NA                   NA                0.4509804   0.3794254   0.5225353
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5432918   0.5268968   0.5596869
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    CMIN             BANGLADESH                     NA                   NA                0.5192308   0.3806687   0.6577929
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7441860   0.6858573   0.8025148
0-6 months    COHORTS          INDIA                          NA                   NA                0.3585746   0.3363886   0.3807606
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    EE               PAKISTAN                       NA                   NA                0.5669291   0.4800274   0.6538309
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6751162   0.6617750   0.6884574
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.5587703   0.5173487   0.6001920
0-6 months    Keneba           GAMBIA                         NA                   NA                0.7720994   0.7419223   0.8022766
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.7936508   0.6942781   0.8930235
0-6 months    MAL-ED           INDIA                          NA                   NA                0.6860465   0.5849088   0.7871842
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9008671   0.8918443   0.9098900
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ResPak           PAKISTAN                       NA                   NA                0.6194690   0.5292383   0.7096997
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7029412   0.6536517   0.7522307
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475189   0.7305656   0.7644721
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   CMIN             BANGLADESH                     NA                   NA                0.6014493   0.5131344   0.6897641
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   EE               PAKISTAN                       NA                   NA                0.4642857   0.3910729   0.5374985
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
6-24 months   IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1490765   0.1314900   0.1666630
6-24 months   Keneba           GAMBIA                         NA                   NA                0.5045290   0.4730969   0.5359611
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   MAL-ED           INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1504425   0.0860251   0.2148599
6-24 months   PROBIT           BELARUS                        NA                   NA                0.2695035   0.1957894   0.3432177
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ResPak           PAKISTAN                       NA                   NA                0.2417582   0.1565924   0.3269241
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0739051   0.0584895   0.0893208


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            0.8545455   0.7145954   1.0219040
0-24 months   CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   CMIN             BANGLADESH                     Male                 Female            0.9865229   0.7497249   1.2981128
0-24 months   COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Male                 Female            0.8639706   0.6821579   1.0942410
0-24 months   COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Male                 Female            0.9422381   0.8230729   1.0786562
0-24 months   COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Male                 Female            0.9643315   0.8890062   1.0460390
0-24 months   EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   EE               PAKISTAN                       Male                 Female            0.8056088   0.6382301   1.0168832
0-24 months   GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Male                 Female            0.8997005   0.7692992   1.0522057
0-24 months   Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      Male                 Female            0.7469136   0.3322681   1.6790053
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.0635193   0.5531912   2.0446337
0-24 months   IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Male                 Female            0.9044850   0.7583690   1.0787535
0-24 months   JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Male                 Female            0.9115930   0.8648410   0.9608723
0-24 months   JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Male                 Female            0.9431496   0.8120943   1.0953544
0-24 months   Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         Male                 Female            0.9409724   0.8696096   1.0181915
0-24 months   MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Male                 Female            1.1526986   0.8850408   1.5013025
0-24 months   MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Male                 Female            0.7871486   0.6008307   1.0312438
0-24 months   MAL-ED           NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL                          Male                 Female            0.8316595   0.6864168   1.0076349
0-24 months   MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 Female            1.0206897   0.8090669   1.2876653
0-24 months   NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Male                 Female            0.9670796   0.7942192   1.1775628
0-24 months   NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Male                 Female            0.8540427   0.7179611   1.0159170
0-24 months   PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Male                 Female            0.9686932   0.9481674   0.9896635
0-24 months   PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Male                 Female            0.8650332   0.7120302   1.0509138
0-24 months   ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ResPak           PAKISTAN                       Male                 Female            0.6428571   0.4593702   0.8996345
0-24 months   SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Male                 Female            0.9293487   0.7732151   1.1170100
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.8609350   0.7648976   0.9690305
0-24 months   ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            0.8832754   0.8314852   0.9382915
0-6 months    CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 Female            0.8574192   0.7015156   1.0479704
0-6 months    CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    CMIN             BANGLADESH                     Male                 Female            0.8640000   0.5038581   1.4815599
0-6 months    COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Male                 Female            0.8888889   0.7621418   1.0367145
0-6 months    COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Male                 Female            1.0282873   0.9085600   1.1637919
0-6 months    COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Male                 Female            0.9358078   0.8593555   1.0190616
0-6 months    EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    EE               PAKISTAN                       Male                 Female            0.8012569   0.5897132   1.0886862
0-6 months    GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Male                 Female            0.9263973   0.7608346   1.1279877
0-6 months    IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Male                 Female            0.8572874   0.7056735   1.0414756
0-6 months    JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Male                 Female            0.9703158   0.9327076   1.0094403
0-6 months    JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Male                 Female            0.8895558   0.7675072   1.0310126
0-6 months    Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         Male                 Female            0.9723962   0.8994427   1.0512668
0-6 months    MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Male                 Female            1.0822281   0.8461000   1.3842544
0-6 months    MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Male                 Female            0.8263736   0.6059627   1.1269561
0-6 months    NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Male                 Female            1.1111645   0.9373460   1.3172153
0-6 months    NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Male                 Female            0.9723455   0.8820528   1.0718812
0-6 months    PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Male                 Female            0.9812496   0.9618625   1.0010275
0-6 months    PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Male                 Female            0.9662559   0.8326271   1.1213308
0-6 months    ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ResPak           PAKISTAN                       Male                 Female            0.6321839   0.4665428   0.8566341
0-6 months    SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Male                 Female            0.9828549   0.7977736   1.2108744
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.8762404   0.7633337   1.0058474
0-6 months    ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 Female            0.9722811   0.9290656   1.0175068
6-24 months   CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            0.8823529   0.6343788   1.2272583
6-24 months   CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   CMIN             BANGLADESH                     Male                 Female            1.0141612   0.7479871   1.3750545
6-24 months   COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Male                 Female            0.9922174   0.8660816   1.1367235
6-24 months   EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   EE               PAKISTAN                       Male                 Female            0.8113475   0.5923570   1.1112974
6-24 months   GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Male                 Female            0.8710420   0.6984277   1.0863174
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.0635193   0.5531912   2.0446337
6-24 months   IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Male                 Female            1.0065359   0.7246809   1.3980148
6-24 months   JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Male                 Female            0.9599110   0.7579866   1.2156272
6-24 months   Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         Male                 Female            0.9278215   0.8190028   1.0510986
6-24 months   MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Male                 Female            1.1789216   0.6813377   2.0398930
6-24 months   MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Male                 Female            0.7478006   0.4765883   1.1733517
6-24 months   NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     Male                 Female            0.8113912   0.5272937   1.2485561
6-24 months   NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     Male                 Female            0.6102819   0.2588838   1.4386530
6-24 months   PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        Male                 Female            0.7323370   0.4248223   1.2624512
6-24 months   PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Male                 Female            0.6730159   0.3743246   1.2100469
6-24 months   ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ResPak           PAKISTAN                       Male                 Female            0.6103896   0.2858891   1.3032166
6-24 months   SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Male                 Female            0.9321237   0.6956812   1.2489263
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.8504841   0.7062181   1.0242208
6-24 months   ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            0.7782103   0.5128818   1.1808007


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -0.0493827   -0.1054959    0.0067305
0-24 months   CMIN             BANGLADESH                     Female               NA                -0.0043860   -0.0932229    0.0844510
0-24 months   COHORTS          GUATEMALA                      Female               NA                -0.0413246   -0.1091054    0.0264562
0-24 months   COHORTS          INDIA                          Female               NA                -0.0075737   -0.0248091    0.0096618
0-24 months   COHORTS          PHILIPPINES                    Female               NA                -0.0125045   -0.0405600    0.0155510
0-24 months   EE               PAKISTAN                       Female               NA                -0.0582699   -0.1212556    0.0047157
0-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0294740   -0.0732576    0.0143096
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                -0.0980861   -0.3912445    0.1950722
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0015296   -0.0146114    0.0176705
0-24 months   IRC              INDIA                          Female               NA                -0.0323488   -0.0892066    0.0245090
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                -0.0202390   -0.0317640   -0.0087141
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                -0.0081574   -0.0290609    0.0127462
0-24 months   Keneba           GAMBIA                         Female               NA                -0.0206242   -0.0474176    0.0061693
0-24 months   MAL-ED           BANGLADESH                     Female               NA                 0.0395275   -0.0354608    0.1145158
0-24 months   MAL-ED           INDIA                          Female               NA                -0.0657346   -0.1387981    0.0073289
0-24 months   MAL-ED           NEPAL                          Female               NA                -0.0764221   -0.1539679    0.0011237
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.0093197   -0.0964298    0.1150691
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                -0.0098646   -0.0680249    0.0482957
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                -0.0534757   -0.1117721    0.0048207
0-24 months   PROBIT           BELARUS                        Female               NA                -0.0152135   -0.0254573   -0.0049697
0-24 months   PROVIDE          BANGLADESH                     Female               NA                -0.0455917   -0.1066063    0.0154229
0-24 months   ResPak           PAKISTAN                       Female               NA                -0.0980392   -0.1704790   -0.0255994
0-24 months   SAS-CompFeed     INDIA                          Female               NA                -0.0149430   -0.0524931    0.0226071
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0555040   -0.0996610   -0.0113469
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                -0.0344357   -0.0511636   -0.0177078
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                -0.0479844   -0.1101273    0.0141586
0-6 months    CMIN             BANGLADESH                     Female               NA                -0.0363248   -0.1699351    0.0972855
0-6 months    COHORTS          GUATEMALA                      Female               NA                -0.0558140   -0.1292671    0.0176392
0-6 months    COHORTS          INDIA                          Female               NA                 0.0050393   -0.0173193    0.0273978
0-6 months    COHORTS          PHILIPPINES                    Female               NA                -0.0280038   -0.0640678    0.0080603
0-6 months    EE               PAKISTAN                       Female               NA                -0.0664042   -0.1579267    0.0251183
0-6 months    GMS-Nepal        NEPAL                          Female               NA                -0.0244695   -0.0875431    0.0386040
0-6 months    IRC              INDIA                          Female               NA                -0.0534091   -0.1208722    0.0140540
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                -0.0102104   -0.0236015    0.0031807
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                -0.0363714   -0.0823745    0.0096317
0-6 months    Keneba           GAMBIA                         Female               NA                -0.0116843   -0.0442383    0.0208696
0-6 months    MAL-ED           BANGLADESH                     Female               NA                 0.0289449   -0.0608658    0.1187557
0-6 months    MAL-ED           INDIA                          Female               NA                -0.0586343   -0.1523361    0.0350674
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0399276   -0.0239813    0.1038365
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                -0.0128490   -0.0574824    0.0317845
0-6 months    PROBIT           BELARUS                        Female               NA                -0.0091939   -0.0188896    0.0005019
0-6 months    PROVIDE          BANGLADESH                     Female               NA                -0.0139690   -0.0744595    0.0465215
0-6 months    ResPak           PAKISTAN                       Female               NA                -0.1441673   -0.2366207   -0.0517140
0-6 months    SAS-CompFeed     INDIA                          Female               NA                -0.0044506   -0.0581532    0.0492520
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0540033   -0.1105430    0.0025364
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                -0.0101972   -0.0266783    0.0062839
6-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -0.0390244   -0.1425519    0.0645031
6-24 months   CMIN             BANGLADESH                     Female               NA                 0.0049580   -0.1021649    0.1120810
6-24 months   COHORTS          PHILIPPINES                    Female               NA                -0.0022100   -0.0406903    0.0362703
6-24 months   EE               PAKISTAN                       Female               NA                -0.0521978   -0.1311896    0.0267940
6-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0346749   -0.0904617    0.0211119
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0015296   -0.0146114    0.0176705
6-24 months   IRC              INDIA                          Female               NA                 0.0018433   -0.0910601    0.0947468
6-24 months   JiVitA-4         BANGLADESH                     Female               NA                -0.0032507   -0.0220415    0.0155401
6-24 months   Keneba           GAMBIA                         Female               NA                -0.0213509   -0.0570980    0.0143961
6-24 months   MAL-ED           BANGLADESH                     Female               NA                 0.0323438   -0.0789551    0.1436427
6-24 months   MAL-ED           INDIA                          Female               NA                -0.0710010   -0.1778074    0.0358054
6-24 months   NIH-Birth        BANGLADESH                     Female               NA                -0.0387418   -0.1204938    0.0430101
6-24 months   NIH-Crypto       BANGLADESH                     Female               NA                -0.0452097   -0.1253444    0.0349250
6-24 months   PROBIT           BELARUS                        Female               NA                -0.0570271   -0.1601092    0.0460551
6-24 months   PROVIDE          BANGLADESH                     Female               NA                -0.0631999   -0.1597422    0.0333424
6-24 months   ResPak           PAKISTAN                       Female               NA                -0.0561141   -0.1392879    0.0270597
6-24 months   SAS-CompFeed     INDIA                          Female               NA                -0.0112385   -0.0581254    0.0356485
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0542014   -0.1171768    0.0087741
6-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                -0.0106615   -0.0286408    0.0073178


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -0.0784314   -0.1715493    0.0072853
0-24 months   CMIN             BANGLADESH                     Female               NA                -0.0075758   -0.1732498    0.1347035
0-24 months   COHORTS          GUATEMALA                      Female               NA                -0.0937183   -0.2588142    0.0497249
0-24 months   COHORTS          INDIA                          Female               NA                -0.0313178   -0.1050949    0.0375340
0-24 months   COHORTS          PHILIPPINES                    Female               NA                -0.0206049   -0.0678852    0.0245820
0-24 months   EE               PAKISTAN                       Female               NA                -0.1154674   -0.2482818    0.0032158
0-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0546160   -0.1391547    0.0236488
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                -0.2192513   -1.0686490    0.2813794
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0348399   -0.4131544    0.3408123
0-24 months   IRC              INDIA                          Female               NA                -0.0548402   -0.1560309    0.0374929
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                -0.0479442   -0.0756075   -0.0209924
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                -0.0315469   -0.1155974    0.0461711
0-24 months   Keneba           GAMBIA                         Female               NA                -0.0337822   -0.0786654    0.0092334
0-24 months   MAL-ED           BANGLADESH                     Female               NA                 0.0612676   -0.0626521    0.1707366
0-24 months   MAL-ED           INDIA                          Female               NA                -0.1081633   -0.2379603    0.0080249
0-24 months   MAL-ED           NEPAL                          Female               NA                -0.0960175   -0.2002561   -0.0008316
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.0117509   -0.1309474    0.1364441
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                -0.0189635   -0.1370321    0.0868450
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                -0.0858936   -0.1844267    0.0044424
0-24 months   PROBIT           BELARUS                        Female               NA                -0.0172749   -0.0289939   -0.0056893
0-24 months   PROVIDE          BANGLADESH                     Female               NA                -0.0784483   -0.1891636    0.0219589
0-24 months   ResPak           PAKISTAN                       Female               NA                -0.2173913   -0.3963554   -0.0613642
0-24 months   SAS-CompFeed     INDIA                          Female               NA                -0.0392374   -0.1428561    0.0549866
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0885332   -0.1618118   -0.0198765
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                -0.0633834   -0.0946733   -0.0329879
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                -0.0714434   -0.1687542    0.0177652
0-6 months    CMIN             BANGLADESH                     Female               NA                -0.0699588   -0.3613715    0.1590746
0-6 months    COHORTS          GUATEMALA                      Female               NA                -0.0750000   -0.1793207    0.0200927
0-6 months    COHORTS          INDIA                          Female               NA                 0.0140536   -0.0503149    0.0744772
0-6 months    COHORTS          PHILIPPINES                    Female               NA                -0.0380123   -0.0882674    0.0099220
0-6 months    EE               PAKISTAN                       Female               NA                -0.1171296   -0.2929855    0.0348085
0-6 months    GMS-Nepal        NEPAL                          Female               NA                -0.0404747   -0.1504154    0.0589593
0-6 months    IRC              INDIA                          Female               NA                -0.0837790   -0.1961512    0.0180364
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                -0.0151239   -0.0351616    0.0045260
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                -0.0650918   -0.1509455    0.0143577
0-6 months    Keneba           GAMBIA                         Female               NA                -0.0151332   -0.0582192    0.0261985
0-6 months    MAL-ED           BANGLADESH                     Female               NA                 0.0364706   -0.0850960    0.1444177
0-6 months    MAL-ED           INDIA                          Female               NA                -0.0854670   -0.2339432    0.0451435
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0559990   -0.0385811    0.1419661
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                -0.0143821   -0.0656755    0.0344425
0-6 months    PROBIT           BELARUS                        Female               NA                -0.0102056   -0.0210341    0.0005081
0-6 months    PROVIDE          BANGLADESH                     Female               NA                -0.0178225   -0.0981491    0.0566283
0-6 months    ResPak           PAKISTAN                       Female               NA                -0.2327273   -0.4025012   -0.0835046
0-6 months    SAS-CompFeed     INDIA                          Female               NA                -0.0086723   -0.1189321    0.0907226
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0768247   -0.1611932    0.0014138
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                -0.0136414   -0.0359411    0.0081783
6-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -0.0695652   -0.2710891    0.1000082
6-24 months   CMIN             BANGLADESH                     Female               NA                 0.0082435   -0.1870189    0.1713856
6-24 months   COHORTS          PHILIPPINES                    Female               NA                -0.0043965   -0.0839333    0.0693041
6-24 months   EE               PAKISTAN                       Female               NA                -0.1124260   -0.2967413    0.0456912
6-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0700876   -0.1890324    0.0369585
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0348399   -0.4131544    0.3408123
6-24 months   IRC              INDIA                          Female               NA                 0.0035714   -0.1937502    0.1682767
6-24 months   JiVitA-4         BANGLADESH                     Female               NA                -0.0218056   -0.1559442    0.0967672
6-24 months   Keneba           GAMBIA                         Female               NA                -0.0423185   -0.1156658    0.0262066
6-24 months   MAL-ED           BANGLADESH                     Female               NA                 0.0657658   -0.1850068    0.2634695
6-24 months   MAL-ED           INDIA                          Female               NA                -0.1322568   -0.3555995    0.0542889
6-24 months   NIH-Birth        BANGLADESH                     Female               NA                -0.1278481   -0.4317672    0.1115586
6-24 months   NIH-Crypto       BANGLADESH                     Female               NA                -0.3005115   -0.9557483    0.1352005
6-24 months   PROBIT           BELARUS                        Female               NA                -0.2116004   -0.6625014    0.1170079
6-24 months   PROVIDE          BANGLADESH                     Female               NA                -0.2286349   -0.6256733    0.0714348
6-24 months   ResPak           PAKISTAN                       Female               NA                -0.2321083   -0.6342734    0.0710912
6-24 months   SAS-CompFeed     INDIA                          Female               NA                -0.0393762   -0.2175562    0.1127285
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0971976   -0.2165771    0.0104674
6-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                -0.1442591   -0.4134115    0.0736392
