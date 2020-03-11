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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        brthmon    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1               9      92
Birth       CMC-V-BCS-2002   INDIA                          2               1      92
Birth       CMC-V-BCS-2002   INDIA                          3               8      92
Birth       CMC-V-BCS-2002   INDIA                          4               9      92
Birth       CMC-V-BCS-2002   INDIA                          5              12      92
Birth       CMC-V-BCS-2002   INDIA                          6               9      92
Birth       CMC-V-BCS-2002   INDIA                          7               7      92
Birth       CMC-V-BCS-2002   INDIA                          8               4      92
Birth       CMC-V-BCS-2002   INDIA                          9               8      92
Birth       CMC-V-BCS-2002   INDIA                          10             10      92
Birth       CMC-V-BCS-2002   INDIA                          11             11      92
Birth       CMC-V-BCS-2002   INDIA                          12              4      92
Birth       CMIN             BANGLADESH                     1               5      26
Birth       CMIN             BANGLADESH                     2               4      26
Birth       CMIN             BANGLADESH                     3               0      26
Birth       CMIN             BANGLADESH                     4               3      26
Birth       CMIN             BANGLADESH                     5               1      26
Birth       CMIN             BANGLADESH                     6               0      26
Birth       CMIN             BANGLADESH                     7               4      26
Birth       CMIN             BANGLADESH                     8               4      26
Birth       CMIN             BANGLADESH                     9               1      26
Birth       CMIN             BANGLADESH                     10              1      26
Birth       CMIN             BANGLADESH                     11              3      26
Birth       CMIN             BANGLADESH                     12              0      26
Birth       CONTENT          PERU                           1               0       2
Birth       CONTENT          PERU                           2               0       2
Birth       CONTENT          PERU                           3               0       2
Birth       CONTENT          PERU                           4               0       2
Birth       CONTENT          PERU                           5               2       2
Birth       CONTENT          PERU                           6               0       2
Birth       CONTENT          PERU                           7               0       2
Birth       CONTENT          PERU                           8               0       2
Birth       CONTENT          PERU                           9               0       2
Birth       CONTENT          PERU                           10              0       2
Birth       CONTENT          PERU                           11              0       2
Birth       CONTENT          PERU                           12              0       2
Birth       EE               PAKISTAN                       1              61     240
Birth       EE               PAKISTAN                       2              49     240
Birth       EE               PAKISTAN                       3              24     240
Birth       EE               PAKISTAN                       4              10     240
Birth       EE               PAKISTAN                       5               0     240
Birth       EE               PAKISTAN                       6               0     240
Birth       EE               PAKISTAN                       7               0     240
Birth       EE               PAKISTAN                       8               0     240
Birth       EE               PAKISTAN                       9               0     240
Birth       EE               PAKISTAN                       10              0     240
Birth       EE               PAKISTAN                       11             47     240
Birth       EE               PAKISTAN                       12             49     240
Birth       GMS-Nepal        NEPAL                          1               0     696
Birth       GMS-Nepal        NEPAL                          2               0     696
Birth       GMS-Nepal        NEPAL                          3               0     696
Birth       GMS-Nepal        NEPAL                          4               1     696
Birth       GMS-Nepal        NEPAL                          5               0     696
Birth       GMS-Nepal        NEPAL                          6             172     696
Birth       GMS-Nepal        NEPAL                          7             269     696
Birth       GMS-Nepal        NEPAL                          8             254     696
Birth       GMS-Nepal        NEPAL                          9               0     696
Birth       GMS-Nepal        NEPAL                          10              0     696
Birth       GMS-Nepal        NEPAL                          11              0     696
Birth       GMS-Nepal        NEPAL                          12              0     696
Birth       IRC              INDIA                          1              35     388
Birth       IRC              INDIA                          2              26     388
Birth       IRC              INDIA                          3              26     388
Birth       IRC              INDIA                          4              21     388
Birth       IRC              INDIA                          5              22     388
Birth       IRC              INDIA                          6              34     388
Birth       IRC              INDIA                          7              35     388
Birth       IRC              INDIA                          8              38     388
Birth       IRC              INDIA                          9              25     388
Birth       IRC              INDIA                          10             38     388
Birth       IRC              INDIA                          11             39     388
Birth       IRC              INDIA                          12             49     388
Birth       JiVitA-3         BANGLADESH                     1            2109   22455
Birth       JiVitA-3         BANGLADESH                     2            1736   22455
Birth       JiVitA-3         BANGLADESH                     3            2041   22455
Birth       JiVitA-3         BANGLADESH                     4            1475   22455
Birth       JiVitA-3         BANGLADESH                     5            1077   22455
Birth       JiVitA-3         BANGLADESH                     6            1120   22455
Birth       JiVitA-3         BANGLADESH                     7            1262   22455
Birth       JiVitA-3         BANGLADESH                     8            1759   22455
Birth       JiVitA-3         BANGLADESH                     9            2252   22455
Birth       JiVitA-3         BANGLADESH                     10           2439   22455
Birth       JiVitA-3         BANGLADESH                     11           2541   22455
Birth       JiVitA-3         BANGLADESH                     12           2644   22455
Birth       JiVitA-4         BANGLADESH                     1               0    2823
Birth       JiVitA-4         BANGLADESH                     2             359    2823
Birth       JiVitA-4         BANGLADESH                     3             409    2823
Birth       JiVitA-4         BANGLADESH                     4             479    2823
Birth       JiVitA-4         BANGLADESH                     5             434    2823
Birth       JiVitA-4         BANGLADESH                     6             345    2823
Birth       JiVitA-4         BANGLADESH                     7             366    2823
Birth       JiVitA-4         BANGLADESH                     8             235    2823
Birth       JiVitA-4         BANGLADESH                     9             151    2823
Birth       JiVitA-4         BANGLADESH                     10             45    2823
Birth       JiVitA-4         BANGLADESH                     11              0    2823
Birth       JiVitA-4         BANGLADESH                     12              0    2823
Birth       Keneba           GAMBIA                         1             163    1543
Birth       Keneba           GAMBIA                         2             147    1543
Birth       Keneba           GAMBIA                         3             165    1543
Birth       Keneba           GAMBIA                         4             105    1543
Birth       Keneba           GAMBIA                         5             108    1543
Birth       Keneba           GAMBIA                         6              89    1543
Birth       Keneba           GAMBIA                         7              76    1543
Birth       Keneba           GAMBIA                         8             125    1543
Birth       Keneba           GAMBIA                         9             124    1543
Birth       Keneba           GAMBIA                         10            179    1543
Birth       Keneba           GAMBIA                         11            124    1543
Birth       Keneba           GAMBIA                         12            138    1543
Birth       MAL-ED           BANGLADESH                     1              20     231
Birth       MAL-ED           BANGLADESH                     2              23     231
Birth       MAL-ED           BANGLADESH                     3              24     231
Birth       MAL-ED           BANGLADESH                     4              19     231
Birth       MAL-ED           BANGLADESH                     5              18     231
Birth       MAL-ED           BANGLADESH                     6               8     231
Birth       MAL-ED           BANGLADESH                     7              14     231
Birth       MAL-ED           BANGLADESH                     8              26     231
Birth       MAL-ED           BANGLADESH                     9              18     231
Birth       MAL-ED           BANGLADESH                     10             21     231
Birth       MAL-ED           BANGLADESH                     11             15     231
Birth       MAL-ED           BANGLADESH                     12             25     231
Birth       MAL-ED           BRAZIL                         1               5      65
Birth       MAL-ED           BRAZIL                         2              10      65
Birth       MAL-ED           BRAZIL                         3               7      65
Birth       MAL-ED           BRAZIL                         4               4      65
Birth       MAL-ED           BRAZIL                         5               2      65
Birth       MAL-ED           BRAZIL                         6               5      65
Birth       MAL-ED           BRAZIL                         7               6      65
Birth       MAL-ED           BRAZIL                         8               7      65
Birth       MAL-ED           BRAZIL                         9               6      65
Birth       MAL-ED           BRAZIL                         10              5      65
Birth       MAL-ED           BRAZIL                         11              4      65
Birth       MAL-ED           BRAZIL                         12              4      65
Birth       MAL-ED           INDIA                          1               2      47
Birth       MAL-ED           INDIA                          2               6      47
Birth       MAL-ED           INDIA                          3               3      47
Birth       MAL-ED           INDIA                          4               6      47
Birth       MAL-ED           INDIA                          5               4      47
Birth       MAL-ED           INDIA                          6               2      47
Birth       MAL-ED           INDIA                          7               3      47
Birth       MAL-ED           INDIA                          8               8      47
Birth       MAL-ED           INDIA                          9               4      47
Birth       MAL-ED           INDIA                          10              6      47
Birth       MAL-ED           INDIA                          11              3      47
Birth       MAL-ED           INDIA                          12              0      47
Birth       MAL-ED           NEPAL                          1               2      27
Birth       MAL-ED           NEPAL                          2               2      27
Birth       MAL-ED           NEPAL                          3               1      27
Birth       MAL-ED           NEPAL                          4               2      27
Birth       MAL-ED           NEPAL                          5               3      27
Birth       MAL-ED           NEPAL                          6               2      27
Birth       MAL-ED           NEPAL                          7               2      27
Birth       MAL-ED           NEPAL                          8               1      27
Birth       MAL-ED           NEPAL                          9               2      27
Birth       MAL-ED           NEPAL                          10              4      27
Birth       MAL-ED           NEPAL                          11              5      27
Birth       MAL-ED           NEPAL                          12              1      27
Birth       MAL-ED           PERU                           1              30     233
Birth       MAL-ED           PERU                           2              18     233
Birth       MAL-ED           PERU                           3              20     233
Birth       MAL-ED           PERU                           4              15     233
Birth       MAL-ED           PERU                           5              22     233
Birth       MAL-ED           PERU                           6              11     233
Birth       MAL-ED           PERU                           7              19     233
Birth       MAL-ED           PERU                           8              16     233
Birth       MAL-ED           PERU                           9              19     233
Birth       MAL-ED           PERU                           10             21     233
Birth       MAL-ED           PERU                           11             28     233
Birth       MAL-ED           PERU                           12             14     233
Birth       MAL-ED           SOUTH AFRICA                   1              10     123
Birth       MAL-ED           SOUTH AFRICA                   2              13     123
Birth       MAL-ED           SOUTH AFRICA                   3               9     123
Birth       MAL-ED           SOUTH AFRICA                   4               6     123
Birth       MAL-ED           SOUTH AFRICA                   5               6     123
Birth       MAL-ED           SOUTH AFRICA                   6               8     123
Birth       MAL-ED           SOUTH AFRICA                   7              13     123
Birth       MAL-ED           SOUTH AFRICA                   8               3     123
Birth       MAL-ED           SOUTH AFRICA                   9              10     123
Birth       MAL-ED           SOUTH AFRICA                   10             13     123
Birth       MAL-ED           SOUTH AFRICA                   11             14     123
Birth       MAL-ED           SOUTH AFRICA                   12             18     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              16     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              12     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               8     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              11     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              14     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               6     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               5     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             12     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             11     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             10     125
Birth       NIH-Birth        BANGLADESH                     1              70     608
Birth       NIH-Birth        BANGLADESH                     2              56     608
Birth       NIH-Birth        BANGLADESH                     3              59     608
Birth       NIH-Birth        BANGLADESH                     4              51     608
Birth       NIH-Birth        BANGLADESH                     5              47     608
Birth       NIH-Birth        BANGLADESH                     6              46     608
Birth       NIH-Birth        BANGLADESH                     7              40     608
Birth       NIH-Birth        BANGLADESH                     8              40     608
Birth       NIH-Birth        BANGLADESH                     9              47     608
Birth       NIH-Birth        BANGLADESH                     10             48     608
Birth       NIH-Birth        BANGLADESH                     11             52     608
Birth       NIH-Birth        BANGLADESH                     12             52     608
Birth       PROBIT           BELARUS                        1             826   13893
Birth       PROBIT           BELARUS                        2             804   13893
Birth       PROBIT           BELARUS                        3             949   13893
Birth       PROBIT           BELARUS                        4             971   13893
Birth       PROBIT           BELARUS                        5             950   13893
Birth       PROBIT           BELARUS                        6            1021   13893
Birth       PROBIT           BELARUS                        7            1294   13893
Birth       PROBIT           BELARUS                        8            1312   13893
Birth       PROBIT           BELARUS                        9            1326   13893
Birth       PROBIT           BELARUS                        10           1502   13893
Birth       PROBIT           BELARUS                        11           1388   13893
Birth       PROBIT           BELARUS                        12           1550   13893
Birth       PROVIDE          BANGLADESH                     1              30     539
Birth       PROVIDE          BANGLADESH                     2              24     539
Birth       PROVIDE          BANGLADESH                     3              45     539
Birth       PROVIDE          BANGLADESH                     4              28     539
Birth       PROVIDE          BANGLADESH                     5              46     539
Birth       PROVIDE          BANGLADESH                     6              80     539
Birth       PROVIDE          BANGLADESH                     7              75     539
Birth       PROVIDE          BANGLADESH                     8              54     539
Birth       PROVIDE          BANGLADESH                     9              55     539
Birth       PROVIDE          BANGLADESH                     10             54     539
Birth       PROVIDE          BANGLADESH                     11             27     539
Birth       PROVIDE          BANGLADESH                     12             21     539
Birth       ResPak           PAKISTAN                       1               2      42
Birth       ResPak           PAKISTAN                       2               1      42
Birth       ResPak           PAKISTAN                       3               1      42
Birth       ResPak           PAKISTAN                       4               8      42
Birth       ResPak           PAKISTAN                       5               7      42
Birth       ResPak           PAKISTAN                       6               9      42
Birth       ResPak           PAKISTAN                       7               8      42
Birth       ResPak           PAKISTAN                       8               4      42
Birth       ResPak           PAKISTAN                       9               1      42
Birth       ResPak           PAKISTAN                       10              1      42
Birth       ResPak           PAKISTAN                       11              0      42
Birth       ResPak           PAKISTAN                       12              0      42
Birth       SAS-CompFeed     INDIA                          1              86    1252
Birth       SAS-CompFeed     INDIA                          2              77    1252
Birth       SAS-CompFeed     INDIA                          3              69    1252
Birth       SAS-CompFeed     INDIA                          4              62    1252
Birth       SAS-CompFeed     INDIA                          5              88    1252
Birth       SAS-CompFeed     INDIA                          6             104    1252
Birth       SAS-CompFeed     INDIA                          7             100    1252
Birth       SAS-CompFeed     INDIA                          8             144    1252
Birth       SAS-CompFeed     INDIA                          9             147    1252
Birth       SAS-CompFeed     INDIA                          10            142    1252
Birth       SAS-CompFeed     INDIA                          11            119    1252
Birth       SAS-CompFeed     INDIA                          12            114    1252
Birth       ZVITAMBO         ZIMBABWE                       1            1343   13875
Birth       ZVITAMBO         ZIMBABWE                       2            1052   13875
Birth       ZVITAMBO         ZIMBABWE                       3            1163   13875
Birth       ZVITAMBO         ZIMBABWE                       4             992   13875
Birth       ZVITAMBO         ZIMBABWE                       5            1017   13875
Birth       ZVITAMBO         ZIMBABWE                       6            1137   13875
Birth       ZVITAMBO         ZIMBABWE                       7            1176   13875
Birth       ZVITAMBO         ZIMBABWE                       8            1257   13875
Birth       ZVITAMBO         ZIMBABWE                       9            1299   13875
Birth       ZVITAMBO         ZIMBABWE                       10           1041   13875
Birth       ZVITAMBO         ZIMBABWE                       11           1183   13875
Birth       ZVITAMBO         ZIMBABWE                       12           1215   13875
6 months    CMC-V-BCS-2002   INDIA                          1              34     369
6 months    CMC-V-BCS-2002   INDIA                          2              16     369
6 months    CMC-V-BCS-2002   INDIA                          3              31     369
6 months    CMC-V-BCS-2002   INDIA                          4              44     369
6 months    CMC-V-BCS-2002   INDIA                          5              35     369
6 months    CMC-V-BCS-2002   INDIA                          6              37     369
6 months    CMC-V-BCS-2002   INDIA                          7              39     369
6 months    CMC-V-BCS-2002   INDIA                          8              17     369
6 months    CMC-V-BCS-2002   INDIA                          9              20     369
6 months    CMC-V-BCS-2002   INDIA                          10             29     369
6 months    CMC-V-BCS-2002   INDIA                          11             42     369
6 months    CMC-V-BCS-2002   INDIA                          12             25     369
6 months    CMIN             BANGLADESH                     1              26     243
6 months    CMIN             BANGLADESH                     2              23     243
6 months    CMIN             BANGLADESH                     3              17     243
6 months    CMIN             BANGLADESH                     4              22     243
6 months    CMIN             BANGLADESH                     5              17     243
6 months    CMIN             BANGLADESH                     6               8     243
6 months    CMIN             BANGLADESH                     7              15     243
6 months    CMIN             BANGLADESH                     8              17     243
6 months    CMIN             BANGLADESH                     9              20     243
6 months    CMIN             BANGLADESH                     10             24     243
6 months    CMIN             BANGLADESH                     11             27     243
6 months    CMIN             BANGLADESH                     12             27     243
6 months    CONTENT          PERU                           1              10     215
6 months    CONTENT          PERU                           2              18     215
6 months    CONTENT          PERU                           3              30     215
6 months    CONTENT          PERU                           4              19     215
6 months    CONTENT          PERU                           5              14     215
6 months    CONTENT          PERU                           6              13     215
6 months    CONTENT          PERU                           7              28     215
6 months    CONTENT          PERU                           8              23     215
6 months    CONTENT          PERU                           9              26     215
6 months    CONTENT          PERU                           10             14     215
6 months    CONTENT          PERU                           11              9     215
6 months    CONTENT          PERU                           12             11     215
6 months    EE               PAKISTAN                       1              91     373
6 months    EE               PAKISTAN                       2              66     373
6 months    EE               PAKISTAN                       3              42     373
6 months    EE               PAKISTAN                       4              16     373
6 months    EE               PAKISTAN                       5               0     373
6 months    EE               PAKISTAN                       6               0     373
6 months    EE               PAKISTAN                       7               0     373
6 months    EE               PAKISTAN                       8               0     373
6 months    EE               PAKISTAN                       9               0     373
6 months    EE               PAKISTAN                       10              4     373
6 months    EE               PAKISTAN                       11             71     373
6 months    EE               PAKISTAN                       12             83     373
6 months    GMS-Nepal        NEPAL                          1               0     564
6 months    GMS-Nepal        NEPAL                          2               0     564
6 months    GMS-Nepal        NEPAL                          3               0     564
6 months    GMS-Nepal        NEPAL                          4               1     564
6 months    GMS-Nepal        NEPAL                          5               0     564
6 months    GMS-Nepal        NEPAL                          6             121     564
6 months    GMS-Nepal        NEPAL                          7             219     564
6 months    GMS-Nepal        NEPAL                          8             223     564
6 months    GMS-Nepal        NEPAL                          9               0     564
6 months    GMS-Nepal        NEPAL                          10              0     564
6 months    GMS-Nepal        NEPAL                          11              0     564
6 months    GMS-Nepal        NEPAL                          12              0     564
6 months    Guatemala BSC    GUATEMALA                      1              28     299
6 months    Guatemala BSC    GUATEMALA                      2              25     299
6 months    Guatemala BSC    GUATEMALA                      3              27     299
6 months    Guatemala BSC    GUATEMALA                      4              31     299
6 months    Guatemala BSC    GUATEMALA                      5              31     299
6 months    Guatemala BSC    GUATEMALA                      6              22     299
6 months    Guatemala BSC    GUATEMALA                      7              21     299
6 months    Guatemala BSC    GUATEMALA                      8              14     299
6 months    Guatemala BSC    GUATEMALA                      9              16     299
6 months    Guatemala BSC    GUATEMALA                      10             29     299
6 months    Guatemala BSC    GUATEMALA                      11             24     299
6 months    Guatemala BSC    GUATEMALA                      12             31     299
6 months    IRC              INDIA                          1              38     407
6 months    IRC              INDIA                          2              28     407
6 months    IRC              INDIA                          3              27     407
6 months    IRC              INDIA                          4              21     407
6 months    IRC              INDIA                          5              21     407
6 months    IRC              INDIA                          6              37     407
6 months    IRC              INDIA                          7              36     407
6 months    IRC              INDIA                          8              44     407
6 months    IRC              INDIA                          9              27     407
6 months    IRC              INDIA                          10             37     407
6 months    IRC              INDIA                          11             40     407
6 months    IRC              INDIA                          12             51     407
6 months    JiVitA-3         BANGLADESH                     1            1340   16811
6 months    JiVitA-3         BANGLADESH                     2            1159   16811
6 months    JiVitA-3         BANGLADESH                     3            1411   16811
6 months    JiVitA-3         BANGLADESH                     4            1178   16811
6 months    JiVitA-3         BANGLADESH                     5            1113   16811
6 months    JiVitA-3         BANGLADESH                     6            1206   16811
6 months    JiVitA-3         BANGLADESH                     7            1259   16811
6 months    JiVitA-3         BANGLADESH                     8            1520   16811
6 months    JiVitA-3         BANGLADESH                     9            1620   16811
6 months    JiVitA-3         BANGLADESH                     10           1665   16811
6 months    JiVitA-3         BANGLADESH                     11           1759   16811
6 months    JiVitA-3         BANGLADESH                     12           1581   16811
6 months    JiVitA-4         BANGLADESH                     1               0    4831
6 months    JiVitA-4         BANGLADESH                     2             544    4831
6 months    JiVitA-4         BANGLADESH                     3             962    4831
6 months    JiVitA-4         BANGLADESH                     4             733    4831
6 months    JiVitA-4         BANGLADESH                     5             600    4831
6 months    JiVitA-4         BANGLADESH                     6             439    4831
6 months    JiVitA-4         BANGLADESH                     7             518    4831
6 months    JiVitA-4         BANGLADESH                     8             521    4831
6 months    JiVitA-4         BANGLADESH                     9             386    4831
6 months    JiVitA-4         BANGLADESH                     10            128    4831
6 months    JiVitA-4         BANGLADESH                     11              0    4831
6 months    JiVitA-4         BANGLADESH                     12              0    4831
6 months    Keneba           GAMBIA                         1             210    2089
6 months    Keneba           GAMBIA                         2             187    2089
6 months    Keneba           GAMBIA                         3             221    2089
6 months    Keneba           GAMBIA                         4             143    2089
6 months    Keneba           GAMBIA                         5             143    2089
6 months    Keneba           GAMBIA                         6             118    2089
6 months    Keneba           GAMBIA                         7              92    2089
6 months    Keneba           GAMBIA                         8             174    2089
6 months    Keneba           GAMBIA                         9             174    2089
6 months    Keneba           GAMBIA                         10            248    2089
6 months    Keneba           GAMBIA                         11            187    2089
6 months    Keneba           GAMBIA                         12            192    2089
6 months    LCNI-5           MALAWI                         1              68     839
6 months    LCNI-5           MALAWI                         2              46     839
6 months    LCNI-5           MALAWI                         3              26     839
6 months    LCNI-5           MALAWI                         4              39     839
6 months    LCNI-5           MALAWI                         5              44     839
6 months    LCNI-5           MALAWI                         6              34     839
6 months    LCNI-5           MALAWI                         7              61     839
6 months    LCNI-5           MALAWI                         8              93     839
6 months    LCNI-5           MALAWI                         9              93     839
6 months    LCNI-5           MALAWI                         10            135     839
6 months    LCNI-5           MALAWI                         11            105     839
6 months    LCNI-5           MALAWI                         12             95     839
6 months    MAL-ED           BANGLADESH                     1              18     241
6 months    MAL-ED           BANGLADESH                     2              20     241
6 months    MAL-ED           BANGLADESH                     3              23     241
6 months    MAL-ED           BANGLADESH                     4              22     241
6 months    MAL-ED           BANGLADESH                     5              21     241
6 months    MAL-ED           BANGLADESH                     6              10     241
6 months    MAL-ED           BANGLADESH                     7              18     241
6 months    MAL-ED           BANGLADESH                     8              23     241
6 months    MAL-ED           BANGLADESH                     9              22     241
6 months    MAL-ED           BANGLADESH                     10             22     241
6 months    MAL-ED           BANGLADESH                     11             16     241
6 months    MAL-ED           BANGLADESH                     12             26     241
6 months    MAL-ED           BRAZIL                         1              15     209
6 months    MAL-ED           BRAZIL                         2              23     209
6 months    MAL-ED           BRAZIL                         3              16     209
6 months    MAL-ED           BRAZIL                         4              11     209
6 months    MAL-ED           BRAZIL                         5              21     209
6 months    MAL-ED           BRAZIL                         6               8     209
6 months    MAL-ED           BRAZIL                         7              16     209
6 months    MAL-ED           BRAZIL                         8              16     209
6 months    MAL-ED           BRAZIL                         9              30     209
6 months    MAL-ED           BRAZIL                         10             20     209
6 months    MAL-ED           BRAZIL                         11             21     209
6 months    MAL-ED           BRAZIL                         12             12     209
6 months    MAL-ED           INDIA                          1              19     236
6 months    MAL-ED           INDIA                          2              18     236
6 months    MAL-ED           INDIA                          3              22     236
6 months    MAL-ED           INDIA                          4              15     236
6 months    MAL-ED           INDIA                          5               8     236
6 months    MAL-ED           INDIA                          6              19     236
6 months    MAL-ED           INDIA                          7              23     236
6 months    MAL-ED           INDIA                          8              22     236
6 months    MAL-ED           INDIA                          9              20     236
6 months    MAL-ED           INDIA                          10             26     236
6 months    MAL-ED           INDIA                          11             25     236
6 months    MAL-ED           INDIA                          12             19     236
6 months    MAL-ED           NEPAL                          1              20     236
6 months    MAL-ED           NEPAL                          2              19     236
6 months    MAL-ED           NEPAL                          3              17     236
6 months    MAL-ED           NEPAL                          4              22     236
6 months    MAL-ED           NEPAL                          5              20     236
6 months    MAL-ED           NEPAL                          6              18     236
6 months    MAL-ED           NEPAL                          7              18     236
6 months    MAL-ED           NEPAL                          8              24     236
6 months    MAL-ED           NEPAL                          9              16     236
6 months    MAL-ED           NEPAL                          10             21     236
6 months    MAL-ED           NEPAL                          11             24     236
6 months    MAL-ED           NEPAL                          12             17     236
6 months    MAL-ED           PERU                           1              38     273
6 months    MAL-ED           PERU                           2              19     273
6 months    MAL-ED           PERU                           3              22     273
6 months    MAL-ED           PERU                           4              20     273
6 months    MAL-ED           PERU                           5              27     273
6 months    MAL-ED           PERU                           6              15     273
6 months    MAL-ED           PERU                           7              22     273
6 months    MAL-ED           PERU                           8              16     273
6 months    MAL-ED           PERU                           9              23     273
6 months    MAL-ED           PERU                           10             20     273
6 months    MAL-ED           PERU                           11             32     273
6 months    MAL-ED           PERU                           12             19     273
6 months    MAL-ED           SOUTH AFRICA                   1              38     254
6 months    MAL-ED           SOUTH AFRICA                   2              23     254
6 months    MAL-ED           SOUTH AFRICA                   3              15     254
6 months    MAL-ED           SOUTH AFRICA                   4              13     254
6 months    MAL-ED           SOUTH AFRICA                   5              13     254
6 months    MAL-ED           SOUTH AFRICA                   6              18     254
6 months    MAL-ED           SOUTH AFRICA                   7              22     254
6 months    MAL-ED           SOUTH AFRICA                   8               9     254
6 months    MAL-ED           SOUTH AFRICA                   9              18     254
6 months    MAL-ED           SOUTH AFRICA                   10             26     254
6 months    MAL-ED           SOUTH AFRICA                   11             24     254
6 months    MAL-ED           SOUTH AFRICA                   12             35     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              20     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              30     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              18     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               9     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              16     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              19     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              23     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              21     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             22     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             27     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             30     247
6 months    NIH-Birth        BANGLADESH                     1              52     537
6 months    NIH-Birth        BANGLADESH                     2              49     537
6 months    NIH-Birth        BANGLADESH                     3              50     537
6 months    NIH-Birth        BANGLADESH                     4              42     537
6 months    NIH-Birth        BANGLADESH                     5              42     537
6 months    NIH-Birth        BANGLADESH                     6              43     537
6 months    NIH-Birth        BANGLADESH                     7              39     537
6 months    NIH-Birth        BANGLADESH                     8              35     537
6 months    NIH-Birth        BANGLADESH                     9              42     537
6 months    NIH-Birth        BANGLADESH                     10             42     537
6 months    NIH-Birth        BANGLADESH                     11             50     537
6 months    NIH-Birth        BANGLADESH                     12             51     537
6 months    PROBIT           BELARUS                        1             976   15760
6 months    PROBIT           BELARUS                        2             933   15760
6 months    PROBIT           BELARUS                        3            1066   15760
6 months    PROBIT           BELARUS                        4            1097   15760
6 months    PROBIT           BELARUS                        5            1111   15760
6 months    PROBIT           BELARUS                        6            1115   15760
6 months    PROBIT           BELARUS                        7            1463   15760
6 months    PROBIT           BELARUS                        8            1473   15760
6 months    PROBIT           BELARUS                        9            1509   15760
6 months    PROBIT           BELARUS                        10           1689   15760
6 months    PROBIT           BELARUS                        11           1589   15760
6 months    PROBIT           BELARUS                        12           1739   15760
6 months    PROVIDE          BANGLADESH                     1              35     604
6 months    PROVIDE          BANGLADESH                     2              32     604
6 months    PROVIDE          BANGLADESH                     3              43     604
6 months    PROVIDE          BANGLADESH                     4              36     604
6 months    PROVIDE          BANGLADESH                     5              40     604
6 months    PROVIDE          BANGLADESH                     6              77     604
6 months    PROVIDE          BANGLADESH                     7              76     604
6 months    PROVIDE          BANGLADESH                     8              61     604
6 months    PROVIDE          BANGLADESH                     9              67     604
6 months    PROVIDE          BANGLADESH                     10             67     604
6 months    PROVIDE          BANGLADESH                     11             41     604
6 months    PROVIDE          BANGLADESH                     12             29     604
6 months    ResPak           PAKISTAN                       1              11     239
6 months    ResPak           PAKISTAN                       2              10     239
6 months    ResPak           PAKISTAN                       3              25     239
6 months    ResPak           PAKISTAN                       4              24     239
6 months    ResPak           PAKISTAN                       5              45     239
6 months    ResPak           PAKISTAN                       6              41     239
6 months    ResPak           PAKISTAN                       7              24     239
6 months    ResPak           PAKISTAN                       8              34     239
6 months    ResPak           PAKISTAN                       9              16     239
6 months    ResPak           PAKISTAN                       10              4     239
6 months    ResPak           PAKISTAN                       11              2     239
6 months    ResPak           PAKISTAN                       12              3     239
6 months    SAS-CompFeed     INDIA                          1              87    1336
6 months    SAS-CompFeed     INDIA                          2              83    1336
6 months    SAS-CompFeed     INDIA                          3              74    1336
6 months    SAS-CompFeed     INDIA                          4              66    1336
6 months    SAS-CompFeed     INDIA                          5              87    1336
6 months    SAS-CompFeed     INDIA                          6              96    1336
6 months    SAS-CompFeed     INDIA                          7             122    1336
6 months    SAS-CompFeed     INDIA                          8             162    1336
6 months    SAS-CompFeed     INDIA                          9             174    1336
6 months    SAS-CompFeed     INDIA                          10            149    1336
6 months    SAS-CompFeed     INDIA                          11            118    1336
6 months    SAS-CompFeed     INDIA                          12            118    1336
6 months    SAS-FoodSuppl    INDIA                          1              24     380
6 months    SAS-FoodSuppl    INDIA                          2              33     380
6 months    SAS-FoodSuppl    INDIA                          3              20     380
6 months    SAS-FoodSuppl    INDIA                          4               4     380
6 months    SAS-FoodSuppl    INDIA                          5              12     380
6 months    SAS-FoodSuppl    INDIA                          6              21     380
6 months    SAS-FoodSuppl    INDIA                          7              33     380
6 months    SAS-FoodSuppl    INDIA                          8              63     380
6 months    SAS-FoodSuppl    INDIA                          9              62     380
6 months    SAS-FoodSuppl    INDIA                          10             47     380
6 months    SAS-FoodSuppl    INDIA                          11             27     380
6 months    SAS-FoodSuppl    INDIA                          12             34     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             142    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             149    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             140    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             153    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             149    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             143    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             195    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             199    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             184    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            208    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            195    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            172    2029
6 months    ZVITAMBO         ZIMBABWE                       1             824    8669
6 months    ZVITAMBO         ZIMBABWE                       2             620    8669
6 months    ZVITAMBO         ZIMBABWE                       3             767    8669
6 months    ZVITAMBO         ZIMBABWE                       4             657    8669
6 months    ZVITAMBO         ZIMBABWE                       5             642    8669
6 months    ZVITAMBO         ZIMBABWE                       6             672    8669
6 months    ZVITAMBO         ZIMBABWE                       7             674    8669
6 months    ZVITAMBO         ZIMBABWE                       8             784    8669
6 months    ZVITAMBO         ZIMBABWE                       9             780    8669
6 months    ZVITAMBO         ZIMBABWE                       10            626    8669
6 months    ZVITAMBO         ZIMBABWE                       11            795    8669
6 months    ZVITAMBO         ZIMBABWE                       12            828    8669
24 months   CMC-V-BCS-2002   INDIA                          1              34     371
24 months   CMC-V-BCS-2002   INDIA                          2              16     371
24 months   CMC-V-BCS-2002   INDIA                          3              31     371
24 months   CMC-V-BCS-2002   INDIA                          4              44     371
24 months   CMC-V-BCS-2002   INDIA                          5              35     371
24 months   CMC-V-BCS-2002   INDIA                          6              37     371
24 months   CMC-V-BCS-2002   INDIA                          7              39     371
24 months   CMC-V-BCS-2002   INDIA                          8              17     371
24 months   CMC-V-BCS-2002   INDIA                          9              21     371
24 months   CMC-V-BCS-2002   INDIA                          10             29     371
24 months   CMC-V-BCS-2002   INDIA                          11             43     371
24 months   CMC-V-BCS-2002   INDIA                          12             25     371
24 months   CMIN             BANGLADESH                     1              26     242
24 months   CMIN             BANGLADESH                     2              24     242
24 months   CMIN             BANGLADESH                     3              18     242
24 months   CMIN             BANGLADESH                     4              22     242
24 months   CMIN             BANGLADESH                     5              16     242
24 months   CMIN             BANGLADESH                     6               8     242
24 months   CMIN             BANGLADESH                     7              15     242
24 months   CMIN             BANGLADESH                     8              18     242
24 months   CMIN             BANGLADESH                     9              20     242
24 months   CMIN             BANGLADESH                     10             24     242
24 months   CMIN             BANGLADESH                     11             25     242
24 months   CMIN             BANGLADESH                     12             26     242
24 months   CONTENT          PERU                           1               7     164
24 months   CONTENT          PERU                           2              14     164
24 months   CONTENT          PERU                           3              22     164
24 months   CONTENT          PERU                           4              15     164
24 months   CONTENT          PERU                           5              14     164
24 months   CONTENT          PERU                           6              11     164
24 months   CONTENT          PERU                           7              23     164
24 months   CONTENT          PERU                           8              14     164
24 months   CONTENT          PERU                           9              17     164
24 months   CONTENT          PERU                           10             11     164
24 months   CONTENT          PERU                           11              6     164
24 months   CONTENT          PERU                           12             10     164
24 months   EE               PAKISTAN                       1              13     167
24 months   EE               PAKISTAN                       2               4     167
24 months   EE               PAKISTAN                       3               0     167
24 months   EE               PAKISTAN                       4               0     167
24 months   EE               PAKISTAN                       5               0     167
24 months   EE               PAKISTAN                       6               0     167
24 months   EE               PAKISTAN                       7               0     167
24 months   EE               PAKISTAN                       8               0     167
24 months   EE               PAKISTAN                       9               0     167
24 months   EE               PAKISTAN                       10              4     167
24 months   EE               PAKISTAN                       11             66     167
24 months   EE               PAKISTAN                       12             80     167
24 months   GMS-Nepal        NEPAL                          1               0     488
24 months   GMS-Nepal        NEPAL                          2               0     488
24 months   GMS-Nepal        NEPAL                          3               0     488
24 months   GMS-Nepal        NEPAL                          4               0     488
24 months   GMS-Nepal        NEPAL                          5               0     488
24 months   GMS-Nepal        NEPAL                          6              80     488
24 months   GMS-Nepal        NEPAL                          7             206     488
24 months   GMS-Nepal        NEPAL                          8             202     488
24 months   GMS-Nepal        NEPAL                          9               0     488
24 months   GMS-Nepal        NEPAL                          10              0     488
24 months   GMS-Nepal        NEPAL                          11              0     488
24 months   GMS-Nepal        NEPAL                          12              0     488
24 months   IRC              INDIA                          1              38     409
24 months   IRC              INDIA                          2              28     409
24 months   IRC              INDIA                          3              27     409
24 months   IRC              INDIA                          4              21     409
24 months   IRC              INDIA                          5              22     409
24 months   IRC              INDIA                          6              37     409
24 months   IRC              INDIA                          7              36     409
24 months   IRC              INDIA                          8              44     409
24 months   IRC              INDIA                          9              27     409
24 months   IRC              INDIA                          10             37     409
24 months   IRC              INDIA                          11             40     409
24 months   IRC              INDIA                          12             52     409
24 months   JiVitA-3         BANGLADESH                     1             666    8632
24 months   JiVitA-3         BANGLADESH                     2             561    8632
24 months   JiVitA-3         BANGLADESH                     3             718    8632
24 months   JiVitA-3         BANGLADESH                     4             505    8632
24 months   JiVitA-3         BANGLADESH                     5             367    8632
24 months   JiVitA-3         BANGLADESH                     6             613    8632
24 months   JiVitA-3         BANGLADESH                     7             671    8632
24 months   JiVitA-3         BANGLADESH                     8             620    8632
24 months   JiVitA-3         BANGLADESH                     9             801    8632
24 months   JiVitA-3         BANGLADESH                     10            873    8632
24 months   JiVitA-3         BANGLADESH                     11           1041    8632
24 months   JiVitA-3         BANGLADESH                     12           1196    8632
24 months   JiVitA-4         BANGLADESH                     1               0    4752
24 months   JiVitA-4         BANGLADESH                     2             790    4752
24 months   JiVitA-4         BANGLADESH                     3             855    4752
24 months   JiVitA-4         BANGLADESH                     4             653    4752
24 months   JiVitA-4         BANGLADESH                     5             563    4752
24 months   JiVitA-4         BANGLADESH                     6             419    4752
24 months   JiVitA-4         BANGLADESH                     7             484    4752
24 months   JiVitA-4         BANGLADESH                     8             503    4752
24 months   JiVitA-4         BANGLADESH                     9             364    4752
24 months   JiVitA-4         BANGLADESH                     10            121    4752
24 months   JiVitA-4         BANGLADESH                     11              0    4752
24 months   JiVitA-4         BANGLADESH                     12              0    4752
24 months   Keneba           GAMBIA                         1             171    1725
24 months   Keneba           GAMBIA                         2             167    1725
24 months   Keneba           GAMBIA                         3             170    1725
24 months   Keneba           GAMBIA                         4             114    1725
24 months   Keneba           GAMBIA                         5             122    1725
24 months   Keneba           GAMBIA                         6              92    1725
24 months   Keneba           GAMBIA                         7              81    1725
24 months   Keneba           GAMBIA                         8             158    1725
24 months   Keneba           GAMBIA                         9             159    1725
24 months   Keneba           GAMBIA                         10            200    1725
24 months   Keneba           GAMBIA                         11            141    1725
24 months   Keneba           GAMBIA                         12            150    1725
24 months   LCNI-5           MALAWI                         1              41     579
24 months   LCNI-5           MALAWI                         2              30     579
24 months   LCNI-5           MALAWI                         3              19     579
24 months   LCNI-5           MALAWI                         4              28     579
24 months   LCNI-5           MALAWI                         5              31     579
24 months   LCNI-5           MALAWI                         6              24     579
24 months   LCNI-5           MALAWI                         7              47     579
24 months   LCNI-5           MALAWI                         8              71     579
24 months   LCNI-5           MALAWI                         9              67     579
24 months   LCNI-5           MALAWI                         10             93     579
24 months   LCNI-5           MALAWI                         11             64     579
24 months   LCNI-5           MALAWI                         12             64     579
24 months   MAL-ED           BANGLADESH                     1              14     212
24 months   MAL-ED           BANGLADESH                     2              17     212
24 months   MAL-ED           BANGLADESH                     3              19     212
24 months   MAL-ED           BANGLADESH                     4              20     212
24 months   MAL-ED           BANGLADESH                     5              19     212
24 months   MAL-ED           BANGLADESH                     6               7     212
24 months   MAL-ED           BANGLADESH                     7              18     212
24 months   MAL-ED           BANGLADESH                     8              22     212
24 months   MAL-ED           BANGLADESH                     9              18     212
24 months   MAL-ED           BANGLADESH                     10             20     212
24 months   MAL-ED           BANGLADESH                     11             11     212
24 months   MAL-ED           BANGLADESH                     12             27     212
24 months   MAL-ED           BRAZIL                         1              15     169
24 months   MAL-ED           BRAZIL                         2              16     169
24 months   MAL-ED           BRAZIL                         3              14     169
24 months   MAL-ED           BRAZIL                         4              10     169
24 months   MAL-ED           BRAZIL                         5              15     169
24 months   MAL-ED           BRAZIL                         6               6     169
24 months   MAL-ED           BRAZIL                         7              10     169
24 months   MAL-ED           BRAZIL                         8              13     169
24 months   MAL-ED           BRAZIL                         9              27     169
24 months   MAL-ED           BRAZIL                         10             14     169
24 months   MAL-ED           BRAZIL                         11             18     169
24 months   MAL-ED           BRAZIL                         12             11     169
24 months   MAL-ED           INDIA                          1              19     227
24 months   MAL-ED           INDIA                          2              18     227
24 months   MAL-ED           INDIA                          3              19     227
24 months   MAL-ED           INDIA                          4              14     227
24 months   MAL-ED           INDIA                          5               8     227
24 months   MAL-ED           INDIA                          6              18     227
24 months   MAL-ED           INDIA                          7              23     227
24 months   MAL-ED           INDIA                          8              21     227
24 months   MAL-ED           INDIA                          9              18     227
24 months   MAL-ED           INDIA                          10             26     227
24 months   MAL-ED           INDIA                          11             24     227
24 months   MAL-ED           INDIA                          12             19     227
24 months   MAL-ED           NEPAL                          1              19     228
24 months   MAL-ED           NEPAL                          2              17     228
24 months   MAL-ED           NEPAL                          3              17     228
24 months   MAL-ED           NEPAL                          4              22     228
24 months   MAL-ED           NEPAL                          5              19     228
24 months   MAL-ED           NEPAL                          6              18     228
24 months   MAL-ED           NEPAL                          7              17     228
24 months   MAL-ED           NEPAL                          8              24     228
24 months   MAL-ED           NEPAL                          9              15     228
24 months   MAL-ED           NEPAL                          10             20     228
24 months   MAL-ED           NEPAL                          11             24     228
24 months   MAL-ED           NEPAL                          12             16     228
24 months   MAL-ED           PERU                           1              30     201
24 months   MAL-ED           PERU                           2              17     201
24 months   MAL-ED           PERU                           3              15     201
24 months   MAL-ED           PERU                           4              11     201
24 months   MAL-ED           PERU                           5              19     201
24 months   MAL-ED           PERU                           6              11     201
24 months   MAL-ED           PERU                           7              15     201
24 months   MAL-ED           PERU                           8              12     201
24 months   MAL-ED           PERU                           9              21     201
24 months   MAL-ED           PERU                           10             14     201
24 months   MAL-ED           PERU                           11             21     201
24 months   MAL-ED           PERU                           12             15     201
24 months   MAL-ED           SOUTH AFRICA                   1              34     238
24 months   MAL-ED           SOUTH AFRICA                   2              22     238
24 months   MAL-ED           SOUTH AFRICA                   3              14     238
24 months   MAL-ED           SOUTH AFRICA                   4              12     238
24 months   MAL-ED           SOUTH AFRICA                   5              12     238
24 months   MAL-ED           SOUTH AFRICA                   6              16     238
24 months   MAL-ED           SOUTH AFRICA                   7              22     238
24 months   MAL-ED           SOUTH AFRICA                   8               8     238
24 months   MAL-ED           SOUTH AFRICA                   9              19     238
24 months   MAL-ED           SOUTH AFRICA                   10             25     238
24 months   MAL-ED           SOUTH AFRICA                   11             23     238
24 months   MAL-ED           SOUTH AFRICA                   12             31     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              22     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              23     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             24     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             26     214
24 months   NIH-Birth        BANGLADESH                     1              43     429
24 months   NIH-Birth        BANGLADESH                     2              36     429
24 months   NIH-Birth        BANGLADESH                     3              39     429
24 months   NIH-Birth        BANGLADESH                     4              34     429
24 months   NIH-Birth        BANGLADESH                     5              35     429
24 months   NIH-Birth        BANGLADESH                     6              33     429
24 months   NIH-Birth        BANGLADESH                     7              34     429
24 months   NIH-Birth        BANGLADESH                     8              27     429
24 months   NIH-Birth        BANGLADESH                     9              26     429
24 months   NIH-Birth        BANGLADESH                     10             33     429
24 months   NIH-Birth        BANGLADESH                     11             43     429
24 months   NIH-Birth        BANGLADESH                     12             46     429
24 months   PROBIT           BELARUS                        1             252    4035
24 months   PROBIT           BELARUS                        2             214    4035
24 months   PROBIT           BELARUS                        3             317    4035
24 months   PROBIT           BELARUS                        4             335    4035
24 months   PROBIT           BELARUS                        5             302    4035
24 months   PROBIT           BELARUS                        6             269    4035
24 months   PROBIT           BELARUS                        7             379    4035
24 months   PROBIT           BELARUS                        8             344    4035
24 months   PROBIT           BELARUS                        9             387    4035
24 months   PROBIT           BELARUS                        10            395    4035
24 months   PROBIT           BELARUS                        11            379    4035
24 months   PROBIT           BELARUS                        12            462    4035
24 months   PROVIDE          BANGLADESH                     1              32     578
24 months   PROVIDE          BANGLADESH                     2              30     578
24 months   PROVIDE          BANGLADESH                     3              40     578
24 months   PROVIDE          BANGLADESH                     4              33     578
24 months   PROVIDE          BANGLADESH                     5              42     578
24 months   PROVIDE          BANGLADESH                     6              75     578
24 months   PROVIDE          BANGLADESH                     7              70     578
24 months   PROVIDE          BANGLADESH                     8              60     578
24 months   PROVIDE          BANGLADESH                     9              66     578
24 months   PROVIDE          BANGLADESH                     10             64     578
24 months   PROVIDE          BANGLADESH                     11             38     578
24 months   PROVIDE          BANGLADESH                     12             28     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0       6
24 months   ZVITAMBO         ZIMBABWE                       1             190    1640
24 months   ZVITAMBO         ZIMBABWE                       2             197    1640
24 months   ZVITAMBO         ZIMBABWE                       3             228    1640
24 months   ZVITAMBO         ZIMBABWE                       4             170    1640
24 months   ZVITAMBO         ZIMBABWE                       5             168    1640
24 months   ZVITAMBO         ZIMBABWE                       6             196    1640
24 months   ZVITAMBO         ZIMBABWE                       7             120    1640
24 months   ZVITAMBO         ZIMBABWE                       8             127    1640
24 months   ZVITAMBO         ZIMBABWE                       9              13    1640
24 months   ZVITAMBO         ZIMBABWE                       10             24    1640
24 months   ZVITAMBO         ZIMBABWE                       11             72    1640
24 months   ZVITAMBO         ZIMBABWE                       12            135    1640


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
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
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Error in self$observed_likelihood$get_likelihood(tmle_task, node, fold_number) : 
##   cached likelihood value is out of sync with updates
## lf_uuid: 6e1aee66-62a1-11ea-ae89-ac1f6b41467c
## task_uuid: 7bc9f319d8d254043c58cee6f7968fe6
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b96ca4f6-91e3-49ab-bd0d-67b543a91c36/beb49663-cfff-4e6c-8108-b8221185b14b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed           0.4832085   -0.4114724    1.3778895
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.4575210   -1.5160733   -1.3989687
Birth       Keneba           GAMBIA                         optimal              observed           0.1584165   -0.0701687    0.3870017
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.5913041   -0.9867537   -0.1958544
Birth       MAL-ED           PERU                           optimal              observed          -1.0032956   -1.4566957   -0.5498956
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6532497   -2.6378175   -0.6686819
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.5544193   -0.9636177   -0.1452209
Birth       PROBIT           BELARUS                        optimal              observed           1.4360412    1.2425926    1.6294898
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.7104578   -0.9243611   -0.4965545
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.2344355   -1.4632692   -1.0056017
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4076701   -0.4699014   -0.3454388
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4722394   -1.8890918   -1.0553871
6 months    CMIN             BANGLADESH                     optimal              observed          -1.4252622   -1.7905970   -1.0599273
6 months    CONTENT          PERU                           optimal              observed           0.3104789   -0.0716031    0.6925609
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.2846397   -1.7018942   -0.8673852
6 months    IRC              INDIA                          optimal              observed          -0.9917191   -1.4744330   -0.5090052
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.3180440   -1.3864998   -1.2495882
6 months    Keneba           GAMBIA                         optimal              observed          -0.8988343   -1.0526517   -0.7450169
6 months    LCNI-5           MALAWI                         optimal              observed          -1.6933692   -1.9068650   -1.4798733
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.8832230   -1.1803519   -0.5860942
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.2533543   -0.6541348    0.1474262
6 months    MAL-ED           INDIA                          optimal              observed          -1.4266286   -1.7608366   -1.0924205
6 months    MAL-ED           NEPAL                          optimal              observed          -0.7527324   -1.1024966   -0.4029682
6 months    MAL-ED           PERU                           optimal              observed          -1.1357250   -1.7099756   -0.5614745
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.7280787   -1.3884260   -0.0677315
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0074614   -1.3038903   -0.7110324
6 months    PROBIT           BELARUS                        optimal              observed           0.1717870    0.0598182    0.2837558
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.8517488   -1.1633742   -0.5401234
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.4873745   -1.7603492   -1.2143998
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1240974   -0.3240988    0.0759040
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7148057   -0.8011202   -0.6284912
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2536784   -2.5975205   -1.9098363
24 months   CMIN             BANGLADESH                     optimal              observed          -2.5261952   -2.8350270   -2.2173635
24 months   CONTENT          PERU                           optimal              observed          -0.5313121   -1.3858683    0.3232442
24 months   IRC              INDIA                          optimal              observed          -1.4459185   -1.7302791   -1.1615579
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.8680562   -1.9542580   -1.7818544
24 months   Keneba           GAMBIA                         optimal              observed          -1.4108518   -1.5809335   -1.2407700
24 months   LCNI-5           MALAWI                         optimal              observed          -1.8317231   -2.0708207   -1.5926255
24 months   MAL-ED           BANGLADESH                     optimal              observed          -2.2691041   -2.7365449   -1.8016633
24 months   MAL-ED           BRAZIL                         optimal              observed           0.6713097    0.3816029    0.9610165
24 months   MAL-ED           INDIA                          optimal              observed          -2.0077113   -2.3645025   -1.6509201
24 months   MAL-ED           NEPAL                          optimal              observed          -1.5603020   -1.9926366   -1.1279675
24 months   MAL-ED           PERU                           optimal              observed          -2.1325654   -2.5803733   -1.6847575
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.2930986   -2.0628631   -0.5233342
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.0661321   -3.5428189   -2.5894453
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -2.8762736   -3.3668765   -2.3856708
24 months   PROBIT           BELARUS                        optimal              observed           0.1145770   -0.1355445    0.3646985
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.1921433   -1.5678820   -0.8164047
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.8848427   -2.0769541   -1.6927313


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
Birth       Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    CONTENT          PERU                           observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    PROBIT           BELARUS                        observed             observed           0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8679450   -0.8935071   -0.8423828
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   CONTENT          PERU                           observed             observed          -0.6868598   -0.8388476   -0.5348719
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0136481   -2.0413552   -1.9859409
24 months   Keneba           GAMBIA                         observed             observed          -1.5774356   -1.6272400   -1.5276311
24 months   LCNI-5           MALAWI                         observed             observed          -1.8861485   -1.9671802   -1.8051169
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   PROBIT           BELARUS                        observed             observed          -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6055701   -1.6625562   -1.5485840


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed          -0.7912498   -1.6530008    0.0705013
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.1318938   -0.1876845   -0.0761031
Birth       Keneba           GAMBIA                         optimal              observed          -0.1276129   -0.3444376    0.0892118
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.5267912   -0.9145921   -0.1389903
Birth       MAL-ED           PERU                           optimal              observed           0.1205059   -0.3196240    0.5606359
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4976497   -0.4323166    1.4276160
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.3766004   -0.7647986    0.0115978
Birth       PROBIT           BELARUS                        optimal              observed          -0.1245995   -0.2239506   -0.0252483
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.1746442   -0.3805095    0.0312210
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.1969863   -0.3884993   -0.0054732
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0926023   -0.1525010   -0.0327036
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.0487887   -0.3483557    0.4459330
6 months    CMIN             BANGLADESH                     optimal              observed          -0.3591754   -0.7259622    0.0076114
6 months    CONTENT          PERU                           optimal              observed          -0.5890045   -0.9774767   -0.2005323
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.2772611   -0.6775867    0.1230645
6 months    IRC              INDIA                          optimal              observed          -0.2426872   -0.7059144    0.2205401
6 months    JiVitA-3         BANGLADESH                     optimal              observed           0.0049508   -0.0595595    0.0694611
6 months    Keneba           GAMBIA                         optimal              observed          -0.0053027   -0.1522423    0.1416370
6 months    LCNI-5           MALAWI                         optimal              observed           0.0331785   -0.1683461    0.2347030
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.3217701   -0.6162734   -0.0272667
6 months    MAL-ED           BRAZIL                         optimal              observed           0.3009300   -0.1053304    0.7071905
6 months    MAL-ED           INDIA                          optimal              observed           0.2151031   -0.1145602    0.5447665
6 months    MAL-ED           NEPAL                          optimal              observed           0.1911505   -0.1463559    0.5286569
6 months    MAL-ED           PERU                           optimal              observed          -0.1879410   -0.7346781    0.3587961
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.3352415   -0.9747763    0.3042934
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3612836   -0.6617867   -0.0607804
6 months    PROBIT           BELARUS                        optimal              observed          -0.0737796   -0.1613082    0.0137490
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.2399427   -0.5389064    0.0590210
6 months    SAS-CompFeed     INDIA                          optimal              observed           0.0855182   -0.1963117    0.3673480
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4193415   -0.6105421   -0.2281409
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1531393   -0.2348934   -0.0713852
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3051895   -0.6456029    0.0352238
24 months   CMIN             BANGLADESH                     optimal              observed           0.0152448   -0.2998095    0.3302991
24 months   CONTENT          PERU                           optimal              observed          -0.1555477   -0.9837441    0.6726487
24 months   IRC              INDIA                          optimal              observed          -0.3528590   -0.6281580   -0.0775601
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.1455919   -0.2271920   -0.0639918
24 months   Keneba           GAMBIA                         optimal              observed          -0.1665838   -0.3283794   -0.0047882
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0544254   -0.2894895    0.1806387
24 months   MAL-ED           BANGLADESH                     optimal              observed           0.2907079   -0.1496341    0.7310498
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.6651953   -0.9865933   -0.3437974
24 months   MAL-ED           INDIA                          optimal              observed           0.1215219   -0.2287523    0.4717960
24 months   MAL-ED           NEPAL                          optimal              observed           0.2527143   -0.1652362    0.6706648
24 months   MAL-ED           PERU                           optimal              observed           0.3800944   -0.0574332    0.8176221
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.3519609   -1.1065468    0.4026250
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4205713   -0.0442042    0.8853469
24 months   NIH-Birth        BANGLADESH                     optimal              observed           0.6572158    0.1917204    1.1227111
24 months   PROBIT           BELARUS                        optimal              observed          -0.2588662   -0.5771387    0.0594064
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.4102788   -0.7698367   -0.0507209
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed           0.2792726    0.0880957    0.4704495
