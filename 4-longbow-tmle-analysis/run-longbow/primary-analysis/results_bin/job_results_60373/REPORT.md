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

**Intervention Variable:** enstunt

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

agecat        studyid          country                        enstunt    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  --------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          0                    0       88    324
0-24 months   CMC-V-BCS-2002   INDIA                          0                    1      159    324
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0       32    324
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1       45    324
0-24 months   CMIN             BANGLADESH                     0                    0       40    190
0-24 months   CMIN             BANGLADESH                     0                    1       68    190
0-24 months   CMIN             BANGLADESH                     1                    0       40    190
0-24 months   CMIN             BANGLADESH                     1                    1       42    190
0-24 months   COHORTS          GUATEMALA                      0                    0      141    381
0-24 months   COHORTS          GUATEMALA                      0                    1      167    381
0-24 months   COHORTS          GUATEMALA                      1                    0       72    381
0-24 months   COHORTS          GUATEMALA                      1                    1        1    381
0-24 months   COHORTS          INDIA                          0                    0     1674   2663
0-24 months   COHORTS          INDIA                          0                    1      622   2663
0-24 months   COHORTS          INDIA                          1                    0      345   2663
0-24 months   COHORTS          INDIA                          1                    1       22   2663
0-24 months   COHORTS          PHILIPPINES                    0                    0      604   1689
0-24 months   COHORTS          PHILIPPINES                    0                    1      964   1689
0-24 months   COHORTS          PHILIPPINES                    1                    0       60   1689
0-24 months   COHORTS          PHILIPPINES                    1                    1       61   1689
0-24 months   CONTENT          PERU                           0                    0        1      7
0-24 months   CONTENT          PERU                           0                    1        5      7
0-24 months   CONTENT          PERU                           1                    0        0      7
0-24 months   CONTENT          PERU                           1                    1        1      7
0-24 months   EE               PAKISTAN                       0                    0       77    323
0-24 months   EE               PAKISTAN                       0                    1       95    323
0-24 months   EE               PAKISTAN                       1                    0       83    323
0-24 months   EE               PAKISTAN                       1                    1       68    323
0-24 months   GMS-Nepal        NEPAL                          0                    0      249    643
0-24 months   GMS-Nepal        NEPAL                          0                    1      300    643
0-24 months   GMS-Nepal        NEPAL                          1                    0       47    643
0-24 months   GMS-Nepal        NEPAL                          1                    1       47    643
0-24 months   Guatemala BSC    GUATEMALA                      0                    0        7     38
0-24 months   Guatemala BSC    GUATEMALA                      0                    1       12     38
0-24 months   Guatemala BSC    GUATEMALA                      1                    0       14     38
0-24 months   Guatemala BSC    GUATEMALA                      1                    1        5     38
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    0      457    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    1       24    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0      327    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1       12    820
0-24 months   IRC              INDIA                          0                    0      139    395
0-24 months   IRC              INDIA                          0                    1      203    395
0-24 months   IRC              INDIA                          1                    0       23    395
0-24 months   IRC              INDIA                          1                    1       30    395
0-24 months   JiVitA-3         BANGLADESH                     0                    0     2793   7571
0-24 months   JiVitA-3         BANGLADESH                     0                    1     2380   7571
0-24 months   JiVitA-3         BANGLADESH                     1                    0     1582   7571
0-24 months   JiVitA-3         BANGLADESH                     1                    1      816   7571
0-24 months   JiVitA-4         BANGLADESH                     0                    0      944   2069
0-24 months   JiVitA-4         BANGLADESH                     0                    1      386   2069
0-24 months   JiVitA-4         BANGLADESH                     1                    0      590   2069
0-24 months   JiVitA-4         BANGLADESH                     1                    1      149   2069
0-24 months   Keneba           GAMBIA                         0                    0      600   1828
0-24 months   Keneba           GAMBIA                         0                    1     1027   1828
0-24 months   Keneba           GAMBIA                         1                    0      112   1828
0-24 months   Keneba           GAMBIA                         1                    1       89   1828
0-24 months   LCNI-5           MALAWI                         0                    0       25     79
0-24 months   LCNI-5           MALAWI                         0                    1        5     79
0-24 months   LCNI-5           MALAWI                         1                    0       41     79
0-24 months   LCNI-5           MALAWI                         1                    1        8     79
0-24 months   MAL-ED           BANGLADESH                     0                    0       34    124
0-24 months   MAL-ED           BANGLADESH                     0                    1       61    124
0-24 months   MAL-ED           BANGLADESH                     1                    0       10    124
0-24 months   MAL-ED           BANGLADESH                     1                    1       19    124
0-24 months   MAL-ED           BRAZIL                         0                    0        5     24
0-24 months   MAL-ED           BRAZIL                         0                    1       15     24
0-24 months   MAL-ED           BRAZIL                         1                    0        1     24
0-24 months   MAL-ED           BRAZIL                         1                    1        3     24
0-24 months   MAL-ED           INDIA                          0                    0       51    181
0-24 months   MAL-ED           INDIA                          0                    1       92    181
0-24 months   MAL-ED           INDIA                          1                    0       20    181
0-24 months   MAL-ED           INDIA                          1                    1       18    181
0-24 months   MAL-ED           NEPAL                          0                    0       16     98
0-24 months   MAL-ED           NEPAL                          0                    1       63     98
0-24 months   MAL-ED           NEPAL                          1                    0        4     98
0-24 months   MAL-ED           NEPAL                          1                    1       15     98
0-24 months   MAL-ED           PERU                           0                    0        3     35
0-24 months   MAL-ED           PERU                           0                    1       21     35
0-24 months   MAL-ED           PERU                           1                    0        3     35
0-24 months   MAL-ED           PERU                           1                    1        8     35
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0       17     87
0-24 months   MAL-ED           SOUTH AFRICA                   0                    1       57     87
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0        1     87
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1       12     87
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0        8     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       31     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1       11     51
0-24 months   NIH-Birth        BANGLADESH                     0                    0      162    421
0-24 months   NIH-Birth        BANGLADESH                     0                    1      187    421
0-24 months   NIH-Birth        BANGLADESH                     1                    0       40    421
0-24 months   NIH-Birth        BANGLADESH                     1                    1       32    421
0-24 months   NIH-Crypto       BANGLADESH                     0                    0       88    310
0-24 months   NIH-Crypto       BANGLADESH                     0                    1      177    310
0-24 months   NIH-Crypto       BANGLADESH                     1                    0       29    310
0-24 months   NIH-Crypto       BANGLADESH                     1                    1       16    310
0-24 months   PROBIT           BELARUS                        0                    0      523   4408
0-24 months   PROBIT           BELARUS                        0                    1     3875   4408
0-24 months   PROBIT           BELARUS                        1                    0        3   4408
0-24 months   PROBIT           BELARUS                        1                    1        7   4408
0-24 months   PROVIDE          BANGLADESH                     0                    0      106    308
0-24 months   PROVIDE          BANGLADESH                     0                    1      153    308
0-24 months   PROVIDE          BANGLADESH                     1                    0       23    308
0-24 months   PROVIDE          BANGLADESH                     1                    1       26    308
0-24 months   ResPak           PAKISTAN                       0                    0       74    204
0-24 months   ResPak           PAKISTAN                       0                    1       68    204
0-24 months   ResPak           PAKISTAN                       1                    0       38    204
0-24 months   ResPak           PAKISTAN                       1                    1       24    204
0-24 months   SAS-CompFeed     INDIA                          0                    0      320    814
0-24 months   SAS-CompFeed     INDIA                          0                    1      236    814
0-24 months   SAS-CompFeed     INDIA                          1                    0      184    814
0-24 months   SAS-CompFeed     INDIA                          1                    1       74    814
0-24 months   SAS-FoodSuppl    INDIA                          0                    0      117    234
0-24 months   SAS-FoodSuppl    INDIA                          0                    1        9    234
0-24 months   SAS-FoodSuppl    INDIA                          1                    0      104    234
0-24 months   SAS-FoodSuppl    INDIA                          1                    1        4    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      243    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      409    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       23    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       38    713
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0     1443   3615
0-24 months   ZVITAMBO         ZIMBABWE                       0                    1     1860   3615
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0      208   3615
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1      104   3615
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0       51    201
0-6 months    CMC-V-BCS-2002   INDIA                          0                    1      111    201
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0       15    201
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1       24    201
0-6 months    CMIN             BANGLADESH                     0                    0       13     52
0-6 months    CMIN             BANGLADESH                     0                    1       19     52
0-6 months    CMIN             BANGLADESH                     1                    0       12     52
0-6 months    CMIN             BANGLADESH                     1                    1        8     52
0-6 months    COHORTS          GUATEMALA                      0                    0       51    215
0-6 months    COHORTS          GUATEMALA                      0                    1      160    215
0-6 months    COHORTS          GUATEMALA                      1                    0        4    215
0-6 months    COHORTS          GUATEMALA                      1                    1        0    215
0-6 months    COHORTS          INDIA                          0                    0      993   1796
0-6 months    COHORTS          INDIA                          0                    1      622   1796
0-6 months    COHORTS          INDIA                          1                    0      159   1796
0-6 months    COHORTS          INDIA                          1                    1       22   1796
0-6 months    COHORTS          PHILIPPINES                    0                    0      187    752
0-6 months    COHORTS          PHILIPPINES                    0                    1      534    752
0-6 months    COHORTS          PHILIPPINES                    1                    0       11    752
0-6 months    COHORTS          PHILIPPINES                    1                    1       20    752
0-6 months    CONTENT          PERU                           0                    0        0      4
0-6 months    CONTENT          PERU                           0                    1        4      4
0-6 months    CONTENT          PERU                           1                    0        0      4
0-6 months    CONTENT          PERU                           1                    1        0      4
0-6 months    EE               PAKISTAN                       0                    0       31    127
0-6 months    EE               PAKISTAN                       0                    1       47    127
0-6 months    EE               PAKISTAN                       1                    0       24    127
0-6 months    EE               PAKISTAN                       1                    1       25    127
0-6 months    GMS-Nepal        NEPAL                          0                    0       92    263
0-6 months    GMS-Nepal        NEPAL                          0                    1      142    263
0-6 months    GMS-Nepal        NEPAL                          1                    0       12    263
0-6 months    GMS-Nepal        NEPAL                          1                    1       17    263
0-6 months    Guatemala BSC    GUATEMALA                      0                    0        0     10
0-6 months    Guatemala BSC    GUATEMALA                      0                    1        4     10
0-6 months    Guatemala BSC    GUATEMALA                      1                    0        6     10
0-6 months    Guatemala BSC    GUATEMALA                      1                    1        0     10
0-6 months    IRC              INDIA                          0                    0       77    240
0-6 months    IRC              INDIA                          0                    1      138    240
0-6 months    IRC              INDIA                          1                    0       10    240
0-6 months    IRC              INDIA                          1                    1       15    240
0-6 months    JiVitA-3         BANGLADESH                     0                    0     1077   4734
0-6 months    JiVitA-3         BANGLADESH                     0                    1     2380   4734
0-6 months    JiVitA-3         BANGLADESH                     1                    0      461   4734
0-6 months    JiVitA-3         BANGLADESH                     1                    1      816   4734
0-6 months    JiVitA-4         BANGLADESH                     0                    0      173    553
0-6 months    JiVitA-4         BANGLADESH                     0                    1      235    553
0-6 months    JiVitA-4         BANGLADESH                     1                    0       71    553
0-6 months    JiVitA-4         BANGLADESH                     1                    1       74    553
0-6 months    Keneba           GAMBIA                         0                    0      143    724
0-6 months    Keneba           GAMBIA                         0                    1      529    724
0-6 months    Keneba           GAMBIA                         1                    0       22    724
0-6 months    Keneba           GAMBIA                         1                    1       30    724
0-6 months    LCNI-5           MALAWI                         0                    0        4      4
0-6 months    LCNI-5           MALAWI                         0                    1        0      4
0-6 months    LCNI-5           MALAWI                         1                    0        0      4
0-6 months    LCNI-5           MALAWI                         1                    1        0      4
0-6 months    MAL-ED           BANGLADESH                     0                    0        9     63
0-6 months    MAL-ED           BANGLADESH                     0                    1       43     63
0-6 months    MAL-ED           BANGLADESH                     1                    0        4     63
0-6 months    MAL-ED           BANGLADESH                     1                    1        7     63
0-6 months    MAL-ED           BRAZIL                         0                    0        1     15
0-6 months    MAL-ED           BRAZIL                         0                    1       13     15
0-6 months    MAL-ED           BRAZIL                         1                    0        0     15
0-6 months    MAL-ED           BRAZIL                         1                    1        1     15
0-6 months    MAL-ED           INDIA                          0                    0       23     86
0-6 months    MAL-ED           INDIA                          0                    1       47     86
0-6 months    MAL-ED           INDIA                          1                    0        4     86
0-6 months    MAL-ED           INDIA                          1                    1       12     86
0-6 months    MAL-ED           NEPAL                          0                    0        8     48
0-6 months    MAL-ED           NEPAL                          0                    1       30     48
0-6 months    MAL-ED           NEPAL                          1                    0        1     48
0-6 months    MAL-ED           NEPAL                          1                    1        9     48
0-6 months    MAL-ED           PERU                           0                    0        0     11
0-6 months    MAL-ED           PERU                           0                    1        8     11
0-6 months    MAL-ED           PERU                           1                    0        0     11
0-6 months    MAL-ED           PERU                           1                    1        3     11
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0        9     36
0-6 months    MAL-ED           SOUTH AFRICA                   0                    1       21     36
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1        6     36
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       10     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        3     14
0-6 months    NIH-Birth        BANGLADESH                     0                    0       52    223
0-6 months    NIH-Birth        BANGLADESH                     0                    1      135    223
0-6 months    NIH-Birth        BANGLADESH                     1                    0       12    223
0-6 months    NIH-Birth        BANGLADESH                     1                    1       24    223
0-6 months    NIH-Crypto       BANGLADESH                     0                    0       18    197
0-6 months    NIH-Crypto       BANGLADESH                     0                    1      162    197
0-6 months    NIH-Crypto       BANGLADESH                     1                    0        3    197
0-6 months    NIH-Crypto       BANGLADESH                     1                    1       14    197
0-6 months    PROBIT           BELARUS                        0                    0      421   4267
0-6 months    PROBIT           BELARUS                        0                    1     3837   4267
0-6 months    PROBIT           BELARUS                        1                    0        2   4267
0-6 months    PROBIT           BELARUS                        1                    1        7   4267
0-6 months    PROVIDE          BANGLADESH                     0                    0       35    185
0-6 months    PROVIDE          BANGLADESH                     0                    1      127    185
0-6 months    PROVIDE          BANGLADESH                     1                    0        5    185
0-6 months    PROVIDE          BANGLADESH                     1                    1       18    185
0-6 months    ResPak           PAKISTAN                       0                    0       26    113
0-6 months    ResPak           PAKISTAN                       0                    1       52    113
0-6 months    ResPak           PAKISTAN                       1                    0       17    113
0-6 months    ResPak           PAKISTAN                       1                    1       18    113
0-6 months    SAS-CompFeed     INDIA                          0                    0      107    341
0-6 months    SAS-CompFeed     INDIA                          0                    1      142    341
0-6 months    SAS-CompFeed     INDIA                          1                    0       59    341
0-6 months    SAS-CompFeed     INDIA                          1                    1       33    341
0-6 months    SAS-FoodSuppl    INDIA                          0                    0       46     78
0-6 months    SAS-FoodSuppl    INDIA                          0                    1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          1                    0       32     78
0-6 months    SAS-FoodSuppl    INDIA                          1                    1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       97    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      222    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0        4    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       17    340
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0      584   2519
0-6 months    ZVITAMBO         ZIMBABWE                       0                    1     1788   2519
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0       52   2519
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1       95   2519
6-24 months   CMC-V-BCS-2002   INDIA                          0                    0       37    123
6-24 months   CMC-V-BCS-2002   INDIA                          0                    1       48    123
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0       17    123
6-24 months   CMC-V-BCS-2002   INDIA                          1                    1       21    123
6-24 months   CMIN             BANGLADESH                     0                    0       27    138
6-24 months   CMIN             BANGLADESH                     0                    1       49    138
6-24 months   CMIN             BANGLADESH                     1                    0       28    138
6-24 months   CMIN             BANGLADESH                     1                    1       34    138
6-24 months   COHORTS          GUATEMALA                      0                    0       90    166
6-24 months   COHORTS          GUATEMALA                      0                    1        7    166
6-24 months   COHORTS          GUATEMALA                      1                    0       68    166
6-24 months   COHORTS          GUATEMALA                      1                    1        1    166
6-24 months   COHORTS          INDIA                          0                    0      681    867
6-24 months   COHORTS          INDIA                          0                    1        0    867
6-24 months   COHORTS          INDIA                          1                    0      186    867
6-24 months   COHORTS          INDIA                          1                    1        0    867
6-24 months   COHORTS          PHILIPPINES                    0                    0      417    937
6-24 months   COHORTS          PHILIPPINES                    0                    1      430    937
6-24 months   COHORTS          PHILIPPINES                    1                    0       49    937
6-24 months   COHORTS          PHILIPPINES                    1                    1       41    937
6-24 months   CONTENT          PERU                           0                    0        1      3
6-24 months   CONTENT          PERU                           0                    1        1      3
6-24 months   CONTENT          PERU                           1                    0        0      3
6-24 months   CONTENT          PERU                           1                    1        1      3
6-24 months   EE               PAKISTAN                       0                    0       46    196
6-24 months   EE               PAKISTAN                       0                    1       48    196
6-24 months   EE               PAKISTAN                       1                    0       59    196
6-24 months   EE               PAKISTAN                       1                    1       43    196
6-24 months   GMS-Nepal        NEPAL                          0                    0      157    380
6-24 months   GMS-Nepal        NEPAL                          0                    1      158    380
6-24 months   GMS-Nepal        NEPAL                          1                    0       35    380
6-24 months   GMS-Nepal        NEPAL                          1                    1       30    380
6-24 months   Guatemala BSC    GUATEMALA                      0                    0        7     28
6-24 months   Guatemala BSC    GUATEMALA                      0                    1        8     28
6-24 months   Guatemala BSC    GUATEMALA                      1                    0        8     28
6-24 months   Guatemala BSC    GUATEMALA                      1                    1        5     28
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    0      457    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    1       24    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0      327    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1       12    820
6-24 months   IRC              INDIA                          0                    0       62    155
6-24 months   IRC              INDIA                          0                    1       65    155
6-24 months   IRC              INDIA                          1                    0       13    155
6-24 months   IRC              INDIA                          1                    1       15    155
6-24 months   JiVitA-3         BANGLADESH                     0                    0     1716   2837
6-24 months   JiVitA-3         BANGLADESH                     0                    1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     1                    0     1121   2837
6-24 months   JiVitA-3         BANGLADESH                     1                    1        0   2837
6-24 months   JiVitA-4         BANGLADESH                     0                    0      771   1516
6-24 months   JiVitA-4         BANGLADESH                     0                    1      151   1516
6-24 months   JiVitA-4         BANGLADESH                     1                    0      519   1516
6-24 months   JiVitA-4         BANGLADESH                     1                    1       75   1516
6-24 months   Keneba           GAMBIA                         0                    0      457   1104
6-24 months   Keneba           GAMBIA                         0                    1      498   1104
6-24 months   Keneba           GAMBIA                         1                    0       90   1104
6-24 months   Keneba           GAMBIA                         1                    1       59   1104
6-24 months   LCNI-5           MALAWI                         0                    0       21     75
6-24 months   LCNI-5           MALAWI                         0                    1        5     75
6-24 months   LCNI-5           MALAWI                         1                    0       41     75
6-24 months   LCNI-5           MALAWI                         1                    1        8     75
6-24 months   MAL-ED           BANGLADESH                     0                    0       25     61
6-24 months   MAL-ED           BANGLADESH                     0                    1       18     61
6-24 months   MAL-ED           BANGLADESH                     1                    0        6     61
6-24 months   MAL-ED           BANGLADESH                     1                    1       12     61
6-24 months   MAL-ED           BRAZIL                         0                    0        4      9
6-24 months   MAL-ED           BRAZIL                         0                    1        2      9
6-24 months   MAL-ED           BRAZIL                         1                    0        1      9
6-24 months   MAL-ED           BRAZIL                         1                    1        2      9
6-24 months   MAL-ED           INDIA                          0                    0       28     95
6-24 months   MAL-ED           INDIA                          0                    1       45     95
6-24 months   MAL-ED           INDIA                          1                    0       16     95
6-24 months   MAL-ED           INDIA                          1                    1        6     95
6-24 months   MAL-ED           NEPAL                          0                    0        8     50
6-24 months   MAL-ED           NEPAL                          0                    1       33     50
6-24 months   MAL-ED           NEPAL                          1                    0        3     50
6-24 months   MAL-ED           NEPAL                          1                    1        6     50
6-24 months   MAL-ED           PERU                           0                    0        3     24
6-24 months   MAL-ED           PERU                           0                    1       13     24
6-24 months   MAL-ED           PERU                           1                    0        3     24
6-24 months   MAL-ED           PERU                           1                    1        5     24
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0        8     51
6-24 months   MAL-ED           SOUTH AFRICA                   0                    1       36     51
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0        1     51
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1        6     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0        7     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       21     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        8     37
6-24 months   NIH-Birth        BANGLADESH                     0                    0      110    198
6-24 months   NIH-Birth        BANGLADESH                     0                    1       52    198
6-24 months   NIH-Birth        BANGLADESH                     1                    0       28    198
6-24 months   NIH-Birth        BANGLADESH                     1                    1        8    198
6-24 months   NIH-Crypto       BANGLADESH                     0                    0       70    113
6-24 months   NIH-Crypto       BANGLADESH                     0                    1       15    113
6-24 months   NIH-Crypto       BANGLADESH                     1                    0       26    113
6-24 months   NIH-Crypto       BANGLADESH                     1                    1        2    113
6-24 months   PROBIT           BELARUS                        0                    0      102    141
6-24 months   PROBIT           BELARUS                        0                    1       38    141
6-24 months   PROBIT           BELARUS                        1                    0        1    141
6-24 months   PROBIT           BELARUS                        1                    1        0    141
6-24 months   PROVIDE          BANGLADESH                     0                    0       71    123
6-24 months   PROVIDE          BANGLADESH                     0                    1       26    123
6-24 months   PROVIDE          BANGLADESH                     1                    0       18    123
6-24 months   PROVIDE          BANGLADESH                     1                    1        8    123
6-24 months   ResPak           PAKISTAN                       0                    0       48     91
6-24 months   ResPak           PAKISTAN                       0                    1       16     91
6-24 months   ResPak           PAKISTAN                       1                    0       21     91
6-24 months   ResPak           PAKISTAN                       1                    1        6     91
6-24 months   SAS-CompFeed     INDIA                          0                    0      213    473
6-24 months   SAS-CompFeed     INDIA                          0                    1       94    473
6-24 months   SAS-CompFeed     INDIA                          1                    0      125    473
6-24 months   SAS-CompFeed     INDIA                          1                    1       41    473
6-24 months   SAS-FoodSuppl    INDIA                          0                    0       71    156
6-24 months   SAS-FoodSuppl    INDIA                          0                    1        9    156
6-24 months   SAS-FoodSuppl    INDIA                          1                    0       72    156
6-24 months   SAS-FoodSuppl    INDIA                          1                    1        4    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      146    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      187    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       19    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    373
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0      859   1096
6-24 months   ZVITAMBO         ZIMBABWE                       0                    1       72   1096
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0      156   1096
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1        9   1096


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

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/15c8b549-1c52-4004-9bc1-697f205f5c7b/057d7a40-8926-4491-9dd4-5529631dcacf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15c8b549-1c52-4004-9bc1-697f205f5c7b/057d7a40-8926-4491-9dd4-5529631dcacf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15c8b549-1c52-4004-9bc1-697f205f5c7b/057d7a40-8926-4491-9dd4-5529631dcacf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15c8b549-1c52-4004-9bc1-697f205f5c7b/057d7a40-8926-4491-9dd4-5529631dcacf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6473184   0.5824814   0.7121554
0-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.5662002   0.4525008   0.6798995
0-24 months   CMIN             BANGLADESH                     0                    NA                0.6302250   0.5299060   0.7305441
0-24 months   CMIN             BANGLADESH                     1                    NA                0.5160567   0.3904994   0.6416141
0-24 months   COHORTS          INDIA                          0                    NA                0.2717720   0.2534784   0.2900655
0-24 months   COHORTS          INDIA                          1                    NA                0.0574878   0.0348019   0.0801738
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.6142334   0.5888902   0.6395767
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.5111921   0.4193106   0.6030737
0-24 months   EE               PAKISTAN                       0                    NA                0.5563336   0.4780157   0.6346515
0-24 months   EE               PAKISTAN                       1                    NA                0.4633193   0.3751138   0.5515248
0-24 months   GMS-Nepal        NEPAL                          0                    NA                0.5462474   0.5007763   0.5917186
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.5020388   0.3832952   0.6207825
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.6315789   0.4004047   0.8627532
0-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.2631579   0.0627483   0.4635675
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0492838   0.0298906   0.0686769
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0343251   0.0143389   0.0543113
0-24 months   IRC              INDIA                          0                    NA                0.5947508   0.5385811   0.6509205
0-24 months   IRC              INDIA                          1                    NA                0.5995270   0.4663717   0.7326822
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.4593376   0.4456909   0.4729843
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.3400899   0.3210127   0.3591672
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.2871905   0.2622598   0.3121211
0-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.2055508   0.1760423   0.2350593
0-24 months   Keneba           GAMBIA                         0                    NA                0.6310190   0.6060526   0.6559854
0-24 months   Keneba           GAMBIA                         1                    NA                0.4454865   0.3664407   0.5245323
0-24 months   LCNI-5           MALAWI                         0                    NA                0.1666667   0.0503410   0.2829923
0-24 months   LCNI-5           MALAWI                         1                    NA                0.1632653   0.0532454   0.2732852
0-24 months   MAL-ED           BANGLADESH                     0                    NA                0.6337090   0.5324959   0.7349221
0-24 months   MAL-ED           BANGLADESH                     1                    NA                0.6158688   0.4566713   0.7750663
0-24 months   MAL-ED           INDIA                          0                    NA                0.6472802   0.5552291   0.7393313
0-24 months   MAL-ED           INDIA                          1                    NA                0.4964153   0.3437908   0.6490398
0-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.5368727   0.4804596   0.5932858
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.4424541   0.3276661   0.5572421
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.6641587   0.6059035   0.7224139
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.3654224   0.2308988   0.4999460
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.5899728   0.5270175   0.6529280
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.5167140   0.3811802   0.6522477
0-24 months   ResPak           PAKISTAN                       0                    NA                0.4723508   0.3845430   0.5601586
0-24 months   ResPak           PAKISTAN                       1                    NA                0.3615850   0.2285180   0.4946521
0-24 months   SAS-CompFeed     INDIA                          0                    NA                0.4210087   0.3776448   0.4643725
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.2943102   0.2363669   0.3522534
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6275071   0.5882688   0.6667453
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6221140   0.4863708   0.7578571
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.5624074   0.5453746   0.5794402
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.3435891   0.2894097   0.3977685
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.6884375   0.6166431   0.7602320
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.6118126   0.4470612   0.7765641
0-6 months    CMIN             BANGLADESH                     0                    NA                0.5937500   0.4209755   0.7665245
0-6 months    CMIN             BANGLADESH                     1                    NA                0.4000000   0.1832408   0.6167592
0-6 months    COHORTS          INDIA                          0                    NA                0.3852188   0.3614703   0.4089674
0-6 months    COHORTS          INDIA                          1                    NA                0.1169562   0.0700349   0.1638775
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.7406357   0.7086043   0.7726671
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.6444936   0.4566716   0.8323156
0-6 months    EE               PAKISTAN                       0                    NA                0.5862981   0.4788163   0.6937800
0-6 months    EE               PAKISTAN                       1                    NA                0.4705096   0.3255828   0.6154364
0-6 months    GMS-Nepal        NEPAL                          0                    NA                0.6083097   0.5451615   0.6714579
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.6662288   0.4803489   0.8521088
0-6 months    IRC              INDIA                          0                    NA                0.6409987   0.5750124   0.7069850
0-6 months    IRC              INDIA                          1                    NA                0.5925751   0.3866086   0.7985415
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.6862083   0.6707255   0.7016911
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.6449998   0.6186318   0.6713678
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.5727430   0.5248223   0.6206637
0-6 months    JiVitA-4         BANGLADESH                     1                    NA                0.5210582   0.4383359   0.6037806
0-6 months    Keneba           GAMBIA                         0                    NA                0.7876116   0.7571733   0.8180498
0-6 months    Keneba           GAMBIA                         1                    NA                0.5604611   0.4203391   0.7005832
0-6 months    NIH-Birth        BANGLADESH                     0                    NA                0.7235631   0.6591999   0.7879263
0-6 months    NIH-Birth        BANGLADESH                     1                    NA                0.7263953   0.5705927   0.8821979
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.7839506   0.7210968   0.8468044
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.7826087   0.6231615   0.9420559
0-6 months    ResPak           PAKISTAN                       0                    NA                0.6744749   0.5705231   0.7784267
0-6 months    ResPak           PAKISTAN                       1                    NA                0.4843867   0.3153310   0.6534424
0-6 months    SAS-CompFeed     INDIA                          0                    NA                0.5697846   0.5075264   0.6320429
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.3616519   0.2625826   0.4607211
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.7536870   0.7363665   0.7710076
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.6439662   0.5666256   0.7213069
6-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.5613662   0.4469672   0.6757651
6-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.5747420   0.4082918   0.7411922
6-24 months   CMIN             BANGLADESH                     0                    NA                0.6433043   0.5255695   0.7610391
6-24 months   CMIN             BANGLADESH                     1                    NA                0.5389012   0.4036515   0.6741509
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.5079114   0.4722250   0.5435979
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.4533138   0.3470704   0.5595571
6-24 months   EE               PAKISTAN                       0                    NA                0.4946105   0.3842137   0.6050072
6-24 months   EE               PAKISTAN                       1                    NA                0.4159574   0.3186249   0.5132900
6-24 months   GMS-Nepal        NEPAL                          0                    NA                0.5012613   0.4415103   0.5610123
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.4733375   0.3363159   0.6103591
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.5333333   0.2503122   0.8163545
6-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.3846154   0.1100525   0.6591783
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0496108   0.0302095   0.0690122
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0349641   0.0149742   0.0549541
6-24 months   IRC              INDIA                          0                    NA                0.5148899   0.4194027   0.6103770
6-24 months   IRC              INDIA                          1                    NA                0.4954947   0.3009981   0.6899913
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.1640108   0.1403745   0.1876471
6-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.1258893   0.0996933   0.1520853
6-24 months   Keneba           GAMBIA                         0                    NA                0.5229682   0.4892332   0.5567032
6-24 months   Keneba           GAMBIA                         1                    NA                0.3772519   0.2919292   0.4625747
6-24 months   LCNI-5           MALAWI                         0                    NA                0.1923077   0.0609669   0.3236484
6-24 months   LCNI-5           MALAWI                         1                    NA                0.1632653   0.0538812   0.2726495
6-24 months   MAL-ED           BANGLADESH                     0                    NA                0.4186047   0.2525200   0.5846893
6-24 months   MAL-ED           BANGLADESH                     1                    NA                0.6666667   0.5297459   0.8035874
6-24 months   MAL-ED           INDIA                          0                    NA                0.6164384   0.4887155   0.7441613
6-24 months   MAL-ED           INDIA                          1                    NA                0.2727273   0.0467074   0.4987472
6-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.3209877   0.2478343   0.3941410
6-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.2222222   0.0817786   0.3626658
6-24 months   PROVIDE          BANGLADESH                     0                    NA                0.2680412   0.1773529   0.3587296
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.3076923   0.1243422   0.4910424
6-24 months   ResPak           PAKISTAN                       0                    NA                0.2500000   0.1425681   0.3574319
6-24 months   ResPak           PAKISTAN                       1                    NA                0.2222222   0.0900359   0.3544086
6-24 months   SAS-CompFeed     INDIA                          0                    NA                0.3000975   0.2475229   0.3526721
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.2554598   0.1874792   0.3234404
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5614905   0.5066394   0.6163417
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4984220   0.3230554   0.6737885
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0773362   0.0601772   0.0944952
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0545455   0.0213981   0.0876928


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   CMIN             BANGLADESH                     NA                   NA                0.5789474   0.5004470   0.6574477
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
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.1645570   0.0832789   0.2458350
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6451613   0.5593015   0.7310211
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6077348   0.5286689   0.6868008
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ResPak           PAKISTAN                       NA                   NA                0.4509804   0.3794254   0.5225353
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5432918   0.5268968   0.5596869
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    CMIN             BANGLADESH                     NA                   NA                0.5192308   0.3806687   0.6577929
0-6 months    COHORTS          INDIA                          NA                   NA                0.3585746   0.3363886   0.3807606
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    EE               PAKISTAN                       NA                   NA                0.5669291   0.4800274   0.6538309
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6751162   0.6617750   0.6884574
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.5587703   0.5173487   0.6001920
0-6 months    Keneba           GAMBIA                         NA                   NA                0.7720994   0.7419223   0.8022766
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ResPak           PAKISTAN                       NA                   NA                0.6194690   0.5292383   0.7096997
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475189   0.7305656   0.7644721
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   CMIN             BANGLADESH                     NA                   NA                0.6014493   0.5131344   0.6897641
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   EE               PAKISTAN                       NA                   NA                0.4642857   0.3910729   0.5374985
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.4642857   0.2621560   0.6664155
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
6-24 months   IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1490765   0.1314900   0.1666630
6-24 months   Keneba           GAMBIA                         NA                   NA                0.5045290   0.4730969   0.5359611
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.1733333   0.0886479   0.2580188
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   MAL-ED           INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ResPak           PAKISTAN                       NA                   NA                0.2417582   0.1565924   0.3269241
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0739051   0.0584895   0.0893208


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 0.8746857   0.6996615   1.0934933
0-24 months   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   CMIN             BANGLADESH                     1                    0                 0.8188452   0.6118874   1.0958019
0-24 months   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          1                    0                 0.2115297   0.1417510   0.3156576
0-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                 0.8322441   0.6921215   1.0007350
0-24 months   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   EE               PAKISTAN                       1                    0                 0.8328084   0.6571506   1.0554199
0-24 months   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          1                    0                 0.9190686   0.7150735   1.1812591
0-24 months   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      1                    0                 0.4166667   0.1790304   0.9697297
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 0.6964796   0.3447818   1.4069301
0-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          1                    0                 1.0080306   0.7916099   1.2836191
0-24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     1                    0                 0.7403921   0.6949191   0.7888408
0-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     1                    0                 0.7157299   0.6054472   0.8461007
0-24 months   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         1                    0                 0.7059795   0.5888972   0.8463398
0-24 months   LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         1                    0                 0.9795918   0.3712732   2.5846201
0-24 months   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     1                    0                 0.9718481   0.7161369   1.3188661
0-24 months   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          1                    0                 0.7669249   0.5469070   1.0754549
0-24 months   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     1                    0                 0.8241323   0.6228399   1.0904794
0-24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     1                    0                 0.5502034   0.3767041   0.8036117
0-24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     1                    0                 0.8758268   0.6597112   1.1627400
0-24 months   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ResPak           PAKISTAN                       1                    0                 0.7655011   0.5072605   1.1552091
0-24 months   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          1                    0                 0.6990596   0.5599298   0.8727601
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9914055   0.7900666   1.2440533
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 0.6109257   0.5203915   0.7172104
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0                 0.8886973   0.6665776   1.1848327
0-6 months    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    CMIN             BANGLADESH                     1                    0                 0.6736842   0.3642094   1.2461249
0-6 months    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          1                    0                 0.3036097   0.2022922   0.4556717
0-6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                 0.8701898   0.6481119   1.1683634
0-6 months    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    EE               PAKISTAN                       1                    0                 0.8025091   0.5583624   1.1534103
0-6 months    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          1                    0                 1.0952132   0.8125418   1.4762220
0-6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          1                    0                 0.9244560   0.6430654   1.3289766
0-6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     1                    0                 0.9399476   0.8971259   0.9848133
0-6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     1                    0                 0.9097593   0.7603986   1.0884581
0-6 months    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         1                    0                 0.7115958   0.5525578   0.9164084
0-6 months    NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     1                    0                 1.0039142   0.7953128   1.2672295
0-6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     1                    0                 0.9982883   0.8019814   1.2426466
0-6 months    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ResPak           PAKISTAN                       1                    0                 0.7181686   0.4907763   1.0509190
0-6 months    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          1                    0                 0.6347168   0.4727913   0.8520999
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 0.8544213   0.7560916   0.9655388
6-24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 1.0238273   0.7182120   1.4594887
6-24 months   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   CMIN             BANGLADESH                     1                    0                 0.8377081   0.6136645   1.1435480
6-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    1                    0                 0.8925055   0.6987580   1.1399743
6-24 months   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   EE               PAKISTAN                       1                    0                 0.8409799   0.6082209   1.1628130
6-24 months   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          1                    0                 0.9442931   0.6900976   1.2921207
6-24 months   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   Guatemala BSC    GUATEMALA                      1                    0                 0.7211538   0.2958093   1.7581017
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 0.7047680   0.3524036   1.4094579
6-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          1                    0                 0.9623314   0.6231651   1.4860937
6-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     1                    0                 0.7675669   0.5958318   0.9888007
6-24 months   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         1                    0                 0.7213668   0.5703485   0.9123722
6-24 months   LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         1                    0                 0.8489796   0.3261270   2.2100785
6-24 months   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     1                    0                 1.5925926   1.0196130   2.4875627
6-24 months   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          1                    0                 0.4424242   0.1883842   1.0390426
6-24 months   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     1                    0                 0.6923077   0.3535289   1.3557305
6-24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     1                    0                 1.1479290   0.5784746   2.2779584
6-24 months   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ResPak           PAKISTAN                       1                    0                 0.8888889   0.4264731   1.8526924
6-24 months   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          1                    0                 0.8512559   0.6197648   1.1692122
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8876765   0.6160158   1.2791386
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 0.7053030   0.3693268   1.3469166


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0176888   -0.0479830    0.0126055
0-24 months   CMIN             BANGLADESH                     0                    NA                -0.0512777   -0.1214531    0.0188978
0-24 months   COHORTS          INDIA                          0                    NA                -0.0299394   -0.0350393   -0.0248395
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0073655   -0.0143060   -0.0004249
0-24 months   EE               PAKISTAN                       0                    NA                -0.0516896   -0.1074614    0.0040821
0-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0065896   -0.0251220    0.0119429
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.1842105   -0.3548689   -0.0135521
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0053813   -0.0169211    0.0061584
0-24 months   IRC              INDIA                          0                    NA                -0.0048774   -0.0259504    0.0161957
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0372005   -0.0447548   -0.0296462
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0286115   -0.0425082   -0.0147147
0-24 months   Keneba           GAMBIA                         0                    NA                -0.0205157   -0.0302157   -0.0108158
0-24 months   LCNI-5           MALAWI                         0                    NA                -0.0021097   -0.1014388    0.0972194
0-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0114523   -0.0349082    0.0578129
0-24 months   MAL-ED           INDIA                          0                    NA                -0.0395454   -0.0776043   -0.0014864
0-24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0166826   -0.0382572    0.0048919
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0415781   -0.0646195   -0.0185366
0-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0088039   -0.0320834    0.0144756
0-24 months   ResPak           PAKISTAN                       0                    NA                -0.0213704   -0.0714343    0.0286936
0-24 months   SAS-CompFeed     INDIA                          0                    NA                -0.0401733   -0.0636754   -0.0166712
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0005786   -0.0124908    0.0113336
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0191156   -0.0243153   -0.0139158
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0167958   -0.0508895    0.0172980
0-6 months    CMIN             BANGLADESH                     0                    NA                -0.0745192   -0.1852886    0.0362501
0-6 months    COHORTS          INDIA                          0                    NA                -0.0266442   -0.0331945   -0.0200939
0-6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0039335   -0.0114839    0.0036168
0-6 months    EE               PAKISTAN                       0                    NA                -0.0193690   -0.0897092    0.0509712
0-6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0037469   -0.0256859    0.0181920
0-6 months    IRC              INDIA                          0                    NA                -0.0034987   -0.0250972    0.0180997
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0110921   -0.0193748   -0.0028094
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0139726   -0.0389662    0.0110210
0-6 months    Keneba           GAMBIA                         0                    NA                -0.0155121   -0.0263054   -0.0047189
0-6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0105586   -0.0383443    0.0172272
0-6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0001668   -0.0214738    0.0211401
0-6 months    ResPak           PAKISTAN                       0                    NA                -0.0550058   -0.1194099    0.0093982
0-6 months    SAS-CompFeed     INDIA                          0                    NA                -0.0565882   -0.0896247   -0.0235516
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0061682   -0.0108932   -0.0014432
6-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0003906   -0.0595213    0.0587402
6-24 months   CMIN             BANGLADESH                     0                    NA                -0.0418550   -0.1231301    0.0394201
6-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0052433   -0.0160911    0.0056044
6-24 months   EE               PAKISTAN                       0                    NA                -0.0303247   -0.1086231    0.0479736
6-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0065244   -0.0319524    0.0189036
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.0690476   -0.2585251    0.1204298
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0057084   -0.0172606    0.0058438
6-24 months   IRC              INDIA                          0                    NA                 0.0012392   -0.0369537    0.0394321
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0149343   -0.0288562   -0.0010124
6-24 months   Keneba           GAMBIA                         0                    NA                -0.0184392   -0.0312610   -0.0056175
6-24 months   LCNI-5           MALAWI                         0                    NA                -0.0189744   -0.1308691    0.0929204
6-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0731986   -0.0009247    0.1473219
6-24 months   MAL-ED           INDIA                          0                    NA                -0.0795963   -0.1465625   -0.0126300
6-24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0179574   -0.0476357    0.0117210
6-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0083815   -0.0348405    0.0516035
6-24 months   ResPak           PAKISTAN                       0                    NA                -0.0082418   -0.0590999    0.0426164
6-24 months   SAS-CompFeed     INDIA                          0                    NA                -0.0146853   -0.0442034    0.0148329
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0038498   -0.0229862    0.0152866
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0034311   -0.0090795    0.0022173


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0280939   -0.0773162    0.0188795
0-24 months   CMIN             BANGLADESH                     0                    NA                -0.0885705   -0.2186883    0.0276548
0-24 months   COHORTS          INDIA                          0                    NA                -0.1238024   -0.1446664   -0.1033186
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0121368   -0.0236582   -0.0007451
0-24 months   EE               PAKISTAN                       0                    NA                -0.1024279   -0.2203139    0.0040699
0-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0122106   -0.0471962    0.0216061
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.4117647   -0.9077869   -0.0447077
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.1225748   -0.4154106    0.1096759
0-24 months   IRC              INDIA                          0                    NA                -0.0082685   -0.0446453    0.0268416
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0881242   -0.1062429   -0.0703023
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.1106488   -0.1654947   -0.0583838
0-24 months   Keneba           GAMBIA                         0                    NA                -0.0336046   -0.0498248   -0.0176350
0-24 months   LCNI-5           MALAWI                         0                    NA                -0.0128205   -0.8402175    0.4425630
0-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0177511   -0.0570737    0.0872794
0-24 months   MAL-ED           INDIA                          0                    NA                -0.0650701   -0.1290229   -0.0047399
0-24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0320703   -0.0742791    0.0084801
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0667834   -0.1050697   -0.0298236
0-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0151487   -0.0559087    0.0240380
0-24 months   ResPak           PAKISTAN                       0                    NA                -0.0473865   -0.1646796    0.0580942
0-24 months   SAS-CompFeed     INDIA                          0                    NA                -0.1054873   -0.1691513   -0.0452900
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0009229   -0.0201065    0.0179000
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0351847   -0.0448948   -0.0255649
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0250070   -0.0773106    0.0247572
0-6 months    CMIN             BANGLADESH                     0                    NA                -0.1435185   -0.3845587    0.0555586
0-6 months    COHORTS          INDIA                          0                    NA                -0.0743059   -0.0928533   -0.0560733
0-6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0053394   -0.0156567    0.0048731
0-6 months    EE               PAKISTAN                       0                    NA                -0.0341647   -0.1665676    0.0832107
0-6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0061978   -0.0431664    0.0294607
0-6 months    IRC              INDIA                          0                    NA                -0.0054882   -0.0399499    0.0278315
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0164299   -0.0287874   -0.0042210
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0250060   -0.0708072    0.0188362
0-6 months    Keneba           GAMBIA                         0                    NA                -0.0200908   -0.0343108   -0.0060663
0-6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0148086   -0.0546187    0.0234987
0-6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0002129   -0.0277699    0.0266053
0-6 months    ResPak           PAKISTAN                       0                    NA                -0.0887952   -0.2005605    0.0125655
0-6 months    SAS-CompFeed     INDIA                          0                    NA                -0.1102661   -0.1778988   -0.0465167
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0082515   -0.0146065   -0.0019364
6-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0006962   -0.1118432    0.0993398
6-24 months   CMIN             BANGLADESH                     0                    NA                -0.0695903   -0.2145051    0.0580333
6-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0104310   -0.0322441    0.0109211
6-24 months   EE               PAKISTAN                       0                    NA                -0.0653148   -0.2476739    0.0903908
6-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0131876   -0.0659628    0.0369747
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.1487179   -0.6420119    0.1963804
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.1300246   -0.4230211    0.1026446
6-24 months   IRC              INDIA                          0                    NA                 0.0024009   -0.0744536    0.0737580
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.1001787   -0.1969968   -0.0111917
6-24 months   Keneba           GAMBIA                         0                    NA                -0.0365474   -0.0624204   -0.0113045
6-24 months   LCNI-5           MALAWI                         0                    NA                -0.1094675   -1.0014729    0.3849939
6-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.1488372   -0.0337380    0.2991666
6-24 months   MAL-ED           INDIA                          0                    NA                -0.1482675   -0.2872539   -0.0242877
6-24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0592593   -0.1620039    0.0344007
6-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0303214   -0.1392634    0.1746627
6-24 months   ResPak           PAKISTAN                       0                    NA                -0.0340909   -0.2649033    0.1546041
6-24 months   SAS-CompFeed     INDIA                          0                    NA                -0.0514528   -0.1599405    0.0468882
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0069037   -0.0418457    0.0268664
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0464256   -0.1248808    0.0265577
