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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ec153003-6df0-40b7-89bd-c73849c9d6c2/4dd93028-62fc-4b44-b6b8-7ed1442a209e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ec153003-6df0-40b7-89bd-c73849c9d6c2/4dd93028-62fc-4b44-b6b8-7ed1442a209e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ec153003-6df0-40b7-89bd-c73849c9d6c2/4dd93028-62fc-4b44-b6b8-7ed1442a209e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.7685714   -1.2073155   -0.3298273
Birth       IRC              INDIA                          2                    NA                -0.3334615   -1.0314327    0.3645096
Birth       IRC              INDIA                          3                    NA                -0.0276923   -0.6276724    0.5722878
Birth       IRC              INDIA                          4                    NA                -0.0933333   -0.7295115    0.5428448
Birth       IRC              INDIA                          5                    NA                 0.5545455   -0.2742674    1.3833583
Birth       IRC              INDIA                          6                    NA                -0.0935294   -0.7447207    0.5576619
Birth       IRC              INDIA                          7                    NA                -0.1402857   -0.6755232    0.3949518
Birth       IRC              INDIA                          8                    NA                -0.0405263   -0.5173421    0.4362895
Birth       IRC              INDIA                          9                    NA                -0.5456000   -1.1368551    0.0456551
Birth       IRC              INDIA                          10                   NA                -0.7465789   -1.1805916   -0.3125663
Birth       IRC              INDIA                          11                   NA                -0.4523077   -0.8407487   -0.0638667
Birth       IRC              INDIA                          12                   NA                -0.4936735   -0.9566175   -0.0307294
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.7146373   -1.7660163   -1.6632583
Birth       JiVitA-3         BANGLADESH                     2                    NA                -1.5733583   -1.6339172   -1.5127994
Birth       JiVitA-3         BANGLADESH                     3                    NA                -1.4550171   -1.5091993   -1.4008350
Birth       JiVitA-3         BANGLADESH                     4                    NA                -1.4259797   -1.4846871   -1.3672722
Birth       JiVitA-3         BANGLADESH                     5                    NA                -1.4723584   -1.5519704   -1.3927464
Birth       JiVitA-3         BANGLADESH                     6                    NA                -1.4736518   -1.5539125   -1.3933910
Birth       JiVitA-3         BANGLADESH                     7                    NA                -1.4554517   -1.5304991   -1.3804043
Birth       JiVitA-3         BANGLADESH                     8                    NA                -1.5899545   -1.6502431   -1.5296659
Birth       JiVitA-3         BANGLADESH                     9                    NA                -1.4949378   -1.5486633   -1.4412124
Birth       JiVitA-3         BANGLADESH                     10                   NA                -1.6497335   -1.7035233   -1.5959437
Birth       JiVitA-3         BANGLADESH                     11                   NA                -1.7558481   -1.8077557   -1.7039404
Birth       JiVitA-3         BANGLADESH                     12                   NA                -1.7201740   -1.7665197   -1.6738283
Birth       Keneba           GAMBIA                         1                    NA                -0.1641718   -0.3804133    0.0520698
Birth       Keneba           GAMBIA                         2                    NA                 0.2219048    0.0201423    0.4236672
Birth       Keneba           GAMBIA                         3                    NA                 0.1420000   -0.0301259    0.3141259
Birth       Keneba           GAMBIA                         4                    NA                 0.0933333   -0.1233964    0.3100630
Birth       Keneba           GAMBIA                         5                    NA                 0.1775926   -0.0745293    0.4297144
Birth       Keneba           GAMBIA                         6                    NA                 0.1317978   -0.1151595    0.3787550
Birth       Keneba           GAMBIA                         7                    NA                -0.0138158   -0.2790362    0.2514047
Birth       Keneba           GAMBIA                         8                    NA                 0.0461600   -0.1813824    0.2737024
Birth       Keneba           GAMBIA                         9                    NA                -0.0397177   -0.2554729    0.1760374
Birth       Keneba           GAMBIA                         10                   NA                -0.0776257   -0.2698773    0.1146259
Birth       Keneba           GAMBIA                         11                   NA                 0.0377419   -0.2108296    0.2863134
Birth       Keneba           GAMBIA                         12                   NA                -0.0945652   -0.3021703    0.1130399
Birth       MAL-ED           BANGLADESH                     1                    NA                -1.1075000   -1.4978140   -0.7171860
Birth       MAL-ED           BANGLADESH                     2                    NA                -1.3482609   -1.7601227   -0.9363990
Birth       MAL-ED           BANGLADESH                     3                    NA                -1.2345833   -1.6339311   -0.8352355
Birth       MAL-ED           BANGLADESH                     4                    NA                -0.5626316   -0.9338618   -0.1914013
Birth       MAL-ED           BANGLADESH                     5                    NA                -1.4155556   -1.9277899   -0.9033212
Birth       MAL-ED           BANGLADESH                     6                    NA                -0.9850000   -1.6643530   -0.3056470
Birth       MAL-ED           BANGLADESH                     7                    NA                -1.1464286   -1.7919695   -0.5008876
Birth       MAL-ED           BANGLADESH                     8                    NA                -1.2623077   -1.6681956   -0.8564198
Birth       MAL-ED           BANGLADESH                     9                    NA                -1.1161111   -1.6499711   -0.5822511
Birth       MAL-ED           BANGLADESH                     10                   NA                -1.2219048   -1.6052781   -0.8385314
Birth       MAL-ED           BANGLADESH                     11                   NA                -0.8020000   -1.3165147   -0.2874853
Birth       MAL-ED           BANGLADESH                     12                   NA                -0.9916000   -1.3962342   -0.5869658
Birth       MAL-ED           PERU                           1                    NA                -1.0476667   -1.3885098   -0.7068235
Birth       MAL-ED           PERU                           2                    NA                -1.0205556   -1.4494133   -0.5916978
Birth       MAL-ED           PERU                           3                    NA                -1.1055000   -1.4587186   -0.7522814
Birth       MAL-ED           PERU                           4                    NA                -0.6600000   -1.2168652   -0.1031348
Birth       MAL-ED           PERU                           5                    NA                -0.7268182   -1.1317595   -0.3218768
Birth       MAL-ED           PERU                           6                    NA                -0.5654545   -1.1606928    0.0297837
Birth       MAL-ED           PERU                           7                    NA                -0.8884211   -1.3124533   -0.4643888
Birth       MAL-ED           PERU                           8                    NA                -0.7825000   -1.1500122   -0.4149878
Birth       MAL-ED           PERU                           9                    NA                -0.5463158   -0.7856721   -0.3069594
Birth       MAL-ED           PERU                           10                   NA                -0.6423810   -0.9048824   -0.3798795
Birth       MAL-ED           PERU                           11                   NA                -1.2125000   -1.5501638   -0.8748362
Birth       MAL-ED           PERU                           12                   NA                -1.0321429   -1.5719969   -0.4922888
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0740000   -1.4137403   -0.7342597
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4187500   -1.8520366   -0.9854634
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.0400000   -1.6642136   -0.4157864
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    NA                -1.1012500   -1.8872554   -0.3152446
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.7100000   -1.2909595   -0.1290405
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    NA                -1.0118182   -1.7598448   -0.2637916
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.7235714   -1.2062319   -0.2409109
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.8183333   -1.1902467   -0.4464200
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    NA                -3.3760000   -4.7426083   -2.0093917
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   NA                -1.6083333   -2.2352373   -0.9814294
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   NA                -1.0400000   -1.7700079   -0.3099921
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.8830000   -1.7690404    0.0030404
Birth       NIH-Birth        BANGLADESH                     1                    NA                -1.2612857   -1.5323779   -0.9901935
Birth       NIH-Birth        BANGLADESH                     2                    NA                -0.9750000   -1.2184446   -0.7315554
Birth       NIH-Birth        BANGLADESH                     3                    NA                -0.7984746   -1.0745968   -0.5223524
Birth       NIH-Birth        BANGLADESH                     4                    NA                -0.8974510   -1.2468585   -0.5480435
Birth       NIH-Birth        BANGLADESH                     5                    NA                -0.5292553   -0.9189119   -0.1395988
Birth       NIH-Birth        BANGLADESH                     6                    NA                -1.0555435   -1.3008071   -0.8102798
Birth       NIH-Birth        BANGLADESH                     7                    NA                -0.8352500   -1.1534627   -0.5170373
Birth       NIH-Birth        BANGLADESH                     8                    NA                -0.9680000   -1.2772373   -0.6587627
Birth       NIH-Birth        BANGLADESH                     9                    NA                -0.9148936   -1.2444803   -0.5853069
Birth       NIH-Birth        BANGLADESH                     10                   NA                -0.8452083   -1.1881350   -0.5022817
Birth       NIH-Birth        BANGLADESH                     11                   NA                -1.0559615   -1.3300333   -0.7818898
Birth       NIH-Birth        BANGLADESH                     12                   NA                -0.8894231   -1.1724518   -0.6063944
Birth       PROBIT           BELARUS                        1                    NA                 1.3807446    1.1468219    1.6146672
Birth       PROBIT           BELARUS                        2                    NA                 1.2215174    1.0041875    1.4388473
Birth       PROBIT           BELARUS                        3                    NA                 1.2932350    1.0944121    1.4920579
Birth       PROBIT           BELARUS                        4                    NA                 1.3809372    1.1977278    1.5641466
Birth       PROBIT           BELARUS                        5                    NA                 1.4364842    1.2445765    1.6283919
Birth       PROBIT           BELARUS                        6                    NA                 1.2542899    1.0837849    1.4247949
Birth       PROBIT           BELARUS                        7                    NA                 1.3971716    1.1895746    1.6047685
Birth       PROBIT           BELARUS                        8                    NA                 1.2998704    1.1345496    1.4651913
Birth       PROBIT           BELARUS                        9                    NA                 1.2631976    1.0398474    1.4865478
Birth       PROBIT           BELARUS                        10                   NA                 1.3136185    1.1540763    1.4731607
Birth       PROBIT           BELARUS                        11                   NA                 1.2983682    1.1641845    1.4325518
Birth       PROBIT           BELARUS                        12                   NA                 1.2388677    1.0891463    1.3885891
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9173333   -1.1956302   -0.6390365
Birth       PROVIDE          BANGLADESH                     2                    NA                -0.9795833   -1.3185130   -0.6406537
Birth       PROVIDE          BANGLADESH                     3                    NA                -0.6522222   -0.8805454   -0.4238991
Birth       PROVIDE          BANGLADESH                     4                    NA                -0.8832143   -1.1615412   -0.6048874
Birth       PROVIDE          BANGLADESH                     5                    NA                -0.9476087   -1.2143115   -0.6809059
Birth       PROVIDE          BANGLADESH                     6                    NA                -1.1220000   -1.3478547   -0.8961453
Birth       PROVIDE          BANGLADESH                     7                    NA                -0.8014667   -1.0132821   -0.5896512
Birth       PROVIDE          BANGLADESH                     8                    NA                -0.8392593   -1.0800644   -0.5984541
Birth       PROVIDE          BANGLADESH                     9                    NA                -0.5930909   -0.8239036   -0.3622782
Birth       PROVIDE          BANGLADESH                     10                   NA                -0.9146296   -1.1053062   -0.7239530
Birth       PROVIDE          BANGLADESH                     11                   NA                -0.9992593   -1.2544432   -0.7440753
Birth       PROVIDE          BANGLADESH                     12                   NA                -1.1519048   -1.5333962   -0.7704133
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.6393023   -1.8365244   -1.4420802
Birth       SAS-CompFeed     INDIA                          2                    NA                -1.5100000   -1.7167915   -1.3032085
Birth       SAS-CompFeed     INDIA                          3                    NA                -1.5530435   -1.8045585   -1.3015284
Birth       SAS-CompFeed     INDIA                          4                    NA                -1.3483871   -1.5519512   -1.1448230
Birth       SAS-CompFeed     INDIA                          5                    NA                -1.3703409   -1.6699341   -1.0707477
Birth       SAS-CompFeed     INDIA                          6                    NA                -1.3370192   -1.5038694   -1.1701691
Birth       SAS-CompFeed     INDIA                          7                    NA                -1.4055000   -1.7039607   -1.1070393
Birth       SAS-CompFeed     INDIA                          8                    NA                -1.6045139   -1.8410670   -1.3679607
Birth       SAS-CompFeed     INDIA                          9                    NA                -1.2289796   -1.4465868   -1.0113724
Birth       SAS-CompFeed     INDIA                          10                   NA                -1.4094366   -1.6567648   -1.1621084
Birth       SAS-CompFeed     INDIA                          11                   NA                -1.3696639   -1.4698686   -1.2694591
Birth       SAS-CompFeed     INDIA                          12                   NA                -1.4833333   -1.6917244   -1.2749422
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.7218094   -0.7874452   -0.6561736
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.7780513   -0.8526144   -0.7034882
Birth       ZVITAMBO         ZIMBABWE                       3                    NA                -0.6122270   -0.6828070   -0.5416470
Birth       ZVITAMBO         ZIMBABWE                       4                    NA                -0.6057560   -0.6827795   -0.5287326
Birth       ZVITAMBO         ZIMBABWE                       5                    NA                -0.5284857   -0.6094940   -0.4474775
Birth       ZVITAMBO         ZIMBABWE                       6                    NA                -0.4708795   -0.5491777   -0.3925813
Birth       ZVITAMBO         ZIMBABWE                       7                    NA                -0.4170408   -0.4919006   -0.3421811
Birth       ZVITAMBO         ZIMBABWE                       8                    NA                -0.3361734   -0.4004855   -0.2718614
Birth       ZVITAMBO         ZIMBABWE                       9                    NA                -0.3435258   -0.4027402   -0.2843113
Birth       ZVITAMBO         ZIMBABWE                       10                   NA                -0.3694236   -0.4400642   -0.2987830
Birth       ZVITAMBO         ZIMBABWE                       11                   NA                -0.4068301   -0.4762219   -0.3374383
Birth       ZVITAMBO         ZIMBABWE                       12                   NA                -0.4464938   -0.5134358   -0.3795519
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.3496569   -1.7263832   -0.9729305
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                -1.7626042   -2.5767731   -0.9484352
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                -1.2667204   -1.5596886   -0.9737523
6 months    CMC-V-BCS-2002   INDIA                          4                    NA                -1.0025000   -1.4927092   -0.5122908
6 months    CMC-V-BCS-2002   INDIA                          5                    NA                -1.7051429   -2.1419919   -1.2682938
6 months    CMC-V-BCS-2002   INDIA                          6                    NA                -1.6445946   -2.1544753   -1.1347139
6 months    CMC-V-BCS-2002   INDIA                          7                    NA                -1.9226496   -2.3571859   -1.4881133
6 months    CMC-V-BCS-2002   INDIA                          8                    NA                -1.3650980   -1.8870195   -0.8431765
6 months    CMC-V-BCS-2002   INDIA                          9                    NA                -1.1757500   -1.7412476   -0.6102524
6 months    CMC-V-BCS-2002   INDIA                          10                   NA                -1.2758621   -1.7989551   -0.7527691
6 months    CMC-V-BCS-2002   INDIA                          11                   NA                -0.9865873   -1.3091868   -0.6639878
6 months    CMC-V-BCS-2002   INDIA                          12                   NA                -1.8845333   -2.4202243   -1.3488424
6 months    CMIN             BANGLADESH                     1                    NA                -1.9451923   -2.3740428   -1.5163418
6 months    CMIN             BANGLADESH                     2                    NA                -1.4256522   -1.7453482   -1.1059561
6 months    CMIN             BANGLADESH                     3                    NA                -1.3485294   -1.7165298   -0.9805291
6 months    CMIN             BANGLADESH                     4                    NA                -1.3444697   -1.7438101   -0.9451293
6 months    CMIN             BANGLADESH                     5                    NA                -1.1980392   -1.6348404   -0.7612380
6 months    CMIN             BANGLADESH                     6                    NA                -2.1895833   -3.1802181   -1.1989486
6 months    CMIN             BANGLADESH                     7                    NA                -1.7203333   -2.2055735   -1.2350932
6 months    CMIN             BANGLADESH                     8                    NA                -2.7958824   -3.3472038   -2.2445609
6 months    CMIN             BANGLADESH                     9                    NA                -2.0063333   -2.4401306   -1.5725361
6 months    CMIN             BANGLADESH                     10                   NA                -1.6766667   -2.1275254   -1.2258079
6 months    CMIN             BANGLADESH                     11                   NA                -1.8183333   -2.2585141   -1.3781526
6 months    CMIN             BANGLADESH                     12                   NA                -2.1137037   -2.4469514   -1.7804560
6 months    CONTENT          PERU                           1                    NA                 0.2936000   -0.0567506    0.6439506
6 months    CONTENT          PERU                           2                    NA                -0.1250926   -0.5094654    0.2592802
6 months    CONTENT          PERU                           3                    NA                -0.3093833   -0.7118835    0.0931168
6 months    CONTENT          PERU                           4                    NA                -0.7081053   -1.1263937   -0.2898168
6 months    CONTENT          PERU                           5                    NA                -0.3263929   -0.9258658    0.2730801
6 months    CONTENT          PERU                           6                    NA                -0.6261154   -1.0297677   -0.2224630
6 months    CONTENT          PERU                           7                    NA                -0.2547083   -0.6239823    0.1145656
6 months    CONTENT          PERU                           8                    NA                -0.3742826   -0.7700185    0.0214533
6 months    CONTENT          PERU                           9                    NA                -0.0786154   -0.4105651    0.2533343
6 months    CONTENT          PERU                           10                   NA                -0.2785000   -0.8640377    0.3070377
6 months    CONTENT          PERU                           11                   NA                -0.2898333   -0.9518611    0.3721944
6 months    CONTENT          PERU                           12                   NA                -0.0755455   -0.5089182    0.3578273
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -1.9027976   -2.2451428   -1.5604524
6 months    Guatemala BSC    GUATEMALA                      2                    NA                -1.1658000   -1.5503560   -0.7812440
6 months    Guatemala BSC    GUATEMALA                      3                    NA                -1.5577778   -1.9532341   -1.1623214
6 months    Guatemala BSC    GUATEMALA                      4                    NA                -1.6224194   -2.0366891   -1.2081497
6 months    Guatemala BSC    GUATEMALA                      5                    NA                -1.7951075   -2.1497472   -1.4404679
6 months    Guatemala BSC    GUATEMALA                      6                    NA                -1.8132576   -2.2133429   -1.4131722
6 months    Guatemala BSC    GUATEMALA                      7                    NA                -1.3140476   -1.6838173   -0.9442779
6 months    Guatemala BSC    GUATEMALA                      8                    NA                -1.7482143   -2.0375674   -1.4588612
6 months    Guatemala BSC    GUATEMALA                      9                    NA                -1.4918750   -1.8818517   -1.1018983
6 months    Guatemala BSC    GUATEMALA                      10                   NA                -1.2512644   -1.5764956   -0.9260332
6 months    Guatemala BSC    GUATEMALA                      11                   NA                -1.5657639   -1.8906873   -1.2408405
6 months    Guatemala BSC    GUATEMALA                      12                   NA                -1.5124194   -1.8564592   -1.1683795
6 months    IRC              INDIA                          1                    NA                -1.4212719   -1.8575596   -0.9849842
6 months    IRC              INDIA                          2                    NA                -1.7706548   -2.3061388   -1.2351707
6 months    IRC              INDIA                          3                    NA                -1.2537037   -1.6125039   -0.8949035
6 months    IRC              INDIA                          4                    NA                -1.8561111   -2.3723548   -1.3398674
6 months    IRC              INDIA                          5                    NA                -2.0128571   -2.5063632   -1.5193510
6 months    IRC              INDIA                          6                    NA                -0.6421622   -1.1282337   -0.1560906
6 months    IRC              INDIA                          7                    NA                -1.0190278   -1.4394261   -0.5986295
6 months    IRC              INDIA                          8                    NA                -0.9026515   -1.2324970   -0.5728060
6 months    IRC              INDIA                          9                    NA                -0.7090741   -1.4787128    0.0605647
6 months    IRC              INDIA                          10                   NA                -0.9471171   -1.2199169   -0.6743173
6 months    IRC              INDIA                          11                   NA                -1.2695000   -1.6736640   -0.8653360
6 months    IRC              INDIA                          12                   NA                -1.5409477   -1.8414589   -1.2404365
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.2728881   -1.3411732   -1.2046029
6 months    JiVitA-3         BANGLADESH                     2                    NA                -1.2996635   -1.3654555   -1.2338715
6 months    JiVitA-3         BANGLADESH                     3                    NA                -1.2688094   -1.3345939   -1.2030249
6 months    JiVitA-3         BANGLADESH                     4                    NA                -1.2502632   -1.3195112   -1.1810151
6 months    JiVitA-3         BANGLADESH                     5                    NA                -1.3007098   -1.3744293   -1.2269903
6 months    JiVitA-3         BANGLADESH                     6                    NA                -1.2822139   -1.3515264   -1.2129015
6 months    JiVitA-3         BANGLADESH                     7                    NA                -1.2712629   -1.3376205   -1.2049053
6 months    JiVitA-3         BANGLADESH                     8                    NA                -1.3417368   -1.4006358   -1.2828379
6 months    JiVitA-3         BANGLADESH                     9                    NA                -1.2809815   -1.3416848   -1.2202782
6 months    JiVitA-3         BANGLADESH                     10                   NA                -1.3601742   -1.4223079   -1.2980404
6 months    JiVitA-3         BANGLADESH                     11                   NA                -1.4148607   -1.4701315   -1.3595900
6 months    JiVitA-3         BANGLADESH                     12                   NA                -1.3514927   -1.4082154   -1.2947700
6 months    Keneba           GAMBIA                         1                    NA                -0.8385889   -0.9937209   -0.6834569
6 months    Keneba           GAMBIA                         2                    NA                -0.8546699   -1.0097986   -0.6995412
6 months    Keneba           GAMBIA                         3                    NA                -0.9475682   -1.0885447   -0.8065916
6 months    Keneba           GAMBIA                         4                    NA                -0.8980061   -1.0578948   -0.7381174
6 months    Keneba           GAMBIA                         5                    NA                -0.8897366   -1.0669461   -0.7125271
6 months    Keneba           GAMBIA                         6                    NA                -0.9691328   -1.2070245   -0.7312411
6 months    Keneba           GAMBIA                         7                    NA                -1.0753496   -1.3230908   -0.8276085
6 months    Keneba           GAMBIA                         8                    NA                -0.9282232   -1.0746717   -0.7817747
6 months    Keneba           GAMBIA                         9                    NA                -1.0267854   -1.1797365   -0.8738344
6 months    Keneba           GAMBIA                         10                   NA                -0.9238817   -1.0671444   -0.7806191
6 months    Keneba           GAMBIA                         11                   NA                -0.8197353   -0.9737238   -0.6657468
6 months    Keneba           GAMBIA                         12                   NA                -0.7910460   -0.9457405   -0.6363515
6 months    LCNI-5           MALAWI                         1                    NA                -1.8242647   -2.0521410   -1.5963884
6 months    LCNI-5           MALAWI                         2                    NA                -1.5930435   -1.7807608   -1.4053262
6 months    LCNI-5           MALAWI                         3                    NA                -1.7473077   -2.1949809   -1.2996345
6 months    LCNI-5           MALAWI                         4                    NA                -1.7405128   -1.9775766   -1.5034490
6 months    LCNI-5           MALAWI                         5                    NA                -1.5840909   -1.9695204   -1.1986614
6 months    LCNI-5           MALAWI                         6                    NA                -1.8888235   -2.3468608   -1.4307862
6 months    LCNI-5           MALAWI                         7                    NA                -1.5611475   -1.8043776   -1.3179175
6 months    LCNI-5           MALAWI                         8                    NA                -1.5663441   -1.7378106   -1.3948776
6 months    LCNI-5           MALAWI                         9                    NA                -1.6209677   -1.8090815   -1.4328539
6 months    LCNI-5           MALAWI                         10                   NA                -1.7822222   -1.9816626   -1.5827819
6 months    LCNI-5           MALAWI                         11                   NA                -1.6419048   -1.8227120   -1.4610975
6 months    LCNI-5           MALAWI                         12                   NA                -1.5125263   -1.7325936   -1.2924590
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.2301852   -1.6021475   -0.8582228
6 months    MAL-ED           BANGLADESH                     2                    NA                -1.5963333   -1.8848629   -1.3078037
6 months    MAL-ED           BANGLADESH                     3                    NA                -1.4647826   -1.9059797   -1.0235855
6 months    MAL-ED           BANGLADESH                     4                    NA                -0.7737879   -1.1164989   -0.4310768
6 months    MAL-ED           BANGLADESH                     5                    NA                -1.2308730   -1.6349922   -0.8267538
6 months    MAL-ED           BANGLADESH                     6                    NA                -1.0765000   -1.5512361   -0.6017639
6 months    MAL-ED           BANGLADESH                     7                    NA                -1.3300000   -1.7930759   -0.8669241
6 months    MAL-ED           BANGLADESH                     8                    NA                -1.3778986   -1.8035246   -0.9522725
6 months    MAL-ED           BANGLADESH                     9                    NA                -1.0987121   -1.4243189   -0.7731053
6 months    MAL-ED           BANGLADESH                     10                   NA                -1.3423485   -1.8072536   -0.8774434
6 months    MAL-ED           BANGLADESH                     11                   NA                -1.0893750   -1.4522165   -0.7265335
6 months    MAL-ED           BANGLADESH                     12                   NA                -0.8554487   -1.1456601   -0.5652373
6 months    MAL-ED           BRAZIL                         1                    NA                 0.1298889   -0.5073925    0.7671703
6 months    MAL-ED           BRAZIL                         2                    NA                 0.2035507   -0.2351542    0.6422556
6 months    MAL-ED           BRAZIL                         3                    NA                 0.2631250   -0.2622081    0.7884581
6 months    MAL-ED           BRAZIL                         4                    NA                 0.3592424   -0.1690776    0.8875625
6 months    MAL-ED           BRAZIL                         5                    NA                 0.1153175   -0.3116395    0.5422745
6 months    MAL-ED           BRAZIL                         6                    NA                -0.1612500   -0.8236862    0.5011862
6 months    MAL-ED           BRAZIL                         7                    NA                -0.3813542   -1.0505926    0.2878843
6 months    MAL-ED           BRAZIL                         8                    NA                -0.0578125   -0.5421981    0.4265731
6 months    MAL-ED           BRAZIL                         9                    NA                -0.2273333   -0.5959496    0.1412829
6 months    MAL-ED           BRAZIL                         10                   NA                 0.2045833   -0.1996809    0.6088476
6 months    MAL-ED           BRAZIL                         11                   NA                 0.0591270   -0.3324878    0.4507418
6 months    MAL-ED           BRAZIL                         12                   NA                 0.2111111   -0.2713690    0.6935912
6 months    MAL-ED           INDIA                          1                    NA                -1.3868421   -1.7310702   -1.0426140
6 months    MAL-ED           INDIA                          2                    NA                -1.0131481   -1.2516205   -0.7746757
6 months    MAL-ED           INDIA                          3                    NA                -0.9687121   -1.3425190   -0.5949052
6 months    MAL-ED           INDIA                          4                    NA                -1.1227778   -1.6738940   -0.5716616
6 months    MAL-ED           INDIA                          5                    NA                -1.2881250   -1.6637886   -0.9124614
6 months    MAL-ED           INDIA                          6                    NA                -1.1823684   -1.4719459   -0.8927910
6 months    MAL-ED           INDIA                          7                    NA                -1.4447101   -1.8397061   -1.0497142
6 months    MAL-ED           INDIA                          8                    NA                -1.3278030   -1.7165044   -0.9391017
6 months    MAL-ED           INDIA                          9                    NA                -1.0935833   -1.6131042   -0.5740625
6 months    MAL-ED           INDIA                          10                   NA                -1.2251282   -1.6604081   -0.7898483
6 months    MAL-ED           INDIA                          11                   NA                -1.3115333   -1.6606900   -0.9623767
6 months    MAL-ED           INDIA                          12                   NA                -1.1292982   -1.5249009   -0.7336956
6 months    MAL-ED           NEPAL                          1                    NA                -0.7831667   -1.1263953   -0.4399380
6 months    MAL-ED           NEPAL                          2                    NA                -0.9619298   -1.3817709   -0.5420888
6 months    MAL-ED           NEPAL                          3                    NA                -0.8588235   -1.3538991   -0.3637480
6 months    MAL-ED           NEPAL                          4                    NA                -0.4603788   -0.7816973   -0.1390603
6 months    MAL-ED           NEPAL                          5                    NA                -0.6152500   -1.0544123   -0.1760877
6 months    MAL-ED           NEPAL                          6                    NA                -0.4205556   -0.7623902   -0.0787209
6 months    MAL-ED           NEPAL                          7                    NA                -0.6430556   -1.0530872   -0.2330239
6 months    MAL-ED           NEPAL                          8                    NA                -0.4032639   -0.6349113   -0.1716164
6 months    MAL-ED           NEPAL                          9                    NA                -0.4632292   -0.9691843    0.0427259
6 months    MAL-ED           NEPAL                          10                   NA                -0.4580952   -0.7661147   -0.1500758
6 months    MAL-ED           NEPAL                          11                   NA                -0.3429861   -0.7196289    0.0336567
6 months    MAL-ED           NEPAL                          12                   NA                -0.4396078   -0.8625293   -0.0166864
6 months    MAL-ED           PERU                           1                    NA                -1.3222368   -1.6205854   -1.0238883
6 months    MAL-ED           PERU                           2                    NA                -1.3639474   -1.7069753   -1.0209194
6 months    MAL-ED           PERU                           3                    NA                -1.4900000   -1.8541851   -1.1258149
6 months    MAL-ED           PERU                           4                    NA                -0.9525000   -1.4750498   -0.4299502
6 months    MAL-ED           PERU                           5                    NA                -1.2005556   -1.4936362   -0.9074749
6 months    MAL-ED           PERU                           6                    NA                -1.2594444   -1.7361808   -0.7827081
6 months    MAL-ED           PERU                           7                    NA                -1.3257576   -1.6064973   -1.0450179
6 months    MAL-ED           PERU                           8                    NA                -1.1997917   -1.6196292   -0.7799541
6 months    MAL-ED           PERU                           9                    NA                -1.3030797   -1.6635850   -0.9425744
6 months    MAL-ED           PERU                           10                   NA                -1.2570000   -1.6162479   -0.8977521
6 months    MAL-ED           PERU                           11                   NA                -1.7956250   -2.1110146   -1.4802354
6 months    MAL-ED           PERU                           12                   NA                -1.1121053   -1.5157299   -0.7084806
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.2144298   -1.5612991   -0.8675606
6 months    MAL-ED           SOUTH AFRICA                   2                    NA                -1.1131884   -1.3612387   -0.8651381
6 months    MAL-ED           SOUTH AFRICA                   3                    NA                -0.4816667   -1.0382176    0.0748843
6 months    MAL-ED           SOUTH AFRICA                   4                    NA                -0.5861538   -1.0899217   -0.0823860
6 months    MAL-ED           SOUTH AFRICA                   5                    NA                -0.7361538   -1.3705694   -0.1017383
6 months    MAL-ED           SOUTH AFRICA                   6                    NA                -0.8222222   -1.1241351   -0.5203093
6 months    MAL-ED           SOUTH AFRICA                   7                    NA                -1.1309091   -1.5390030   -0.7228151
6 months    MAL-ED           SOUTH AFRICA                   8                    NA                -0.7277778   -1.3954351   -0.0601205
6 months    MAL-ED           SOUTH AFRICA                   9                    NA                -0.9346296   -1.3129320   -0.5563273
6 months    MAL-ED           SOUTH AFRICA                   10                   NA                -1.1329487   -1.5436680   -0.7222294
6 months    MAL-ED           SOUTH AFRICA                   11                   NA                -1.3568750   -1.8547537   -0.8589963
6 months    MAL-ED           SOUTH AFRICA                   12                   NA                -1.3954762   -1.7351292   -1.0558232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2003333   -1.6602977   -0.7403690
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.5441667   -1.8298363   -1.2584970
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.5183333   -2.0073885   -1.0292782
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    NA                -1.8794444   -2.3469016   -1.4119872
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    NA                -1.2846875   -1.6834270   -0.8859480
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    NA                -1.0100000   -1.2854035   -0.7345965
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    NA                -1.1484783   -1.6023505   -0.6946060
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    NA                -1.3291667   -1.8549067   -0.8034266
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    NA                -1.2641270   -1.6260420   -0.9022120
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   NA                -1.6507576   -2.0619183   -1.2395968
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   NA                -1.3998765   -1.7983511   -1.0014020
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   NA                -1.3577778   -1.7584904   -0.9570652
6 months    NIH-Birth        BANGLADESH                     1                    NA                -1.5317628   -1.7924210   -1.2711046
6 months    NIH-Birth        BANGLADESH                     2                    NA                -1.3498639   -1.6506103   -1.0491176
6 months    NIH-Birth        BANGLADESH                     3                    NA                -1.3353667   -1.6444563   -1.0262770
6 months    NIH-Birth        BANGLADESH                     4                    NA                -1.3801984   -1.6341207   -1.1262762
6 months    NIH-Birth        BANGLADESH                     5                    NA                -1.2755159   -1.5657792   -0.9852526
6 months    NIH-Birth        BANGLADESH                     6                    NA                -1.6629070   -1.9914489   -1.3343650
6 months    NIH-Birth        BANGLADESH                     7                    NA                -1.3558120   -1.6850844   -1.0265395
6 months    NIH-Birth        BANGLADESH                     8                    NA                -1.3910952   -1.7233241   -1.0588664
6 months    NIH-Birth        BANGLADESH                     9                    NA                -1.5302778   -1.8319498   -1.2286058
6 months    NIH-Birth        BANGLADESH                     10                   NA                -1.3078968   -1.6469344   -0.9688593
6 months    NIH-Birth        BANGLADESH                     11                   NA                -1.6084500   -1.8983744   -1.3185256
6 months    NIH-Birth        BANGLADESH                     12                   NA                -1.1561765   -1.4657946   -0.8465583
6 months    PROBIT           BELARUS                        1                    NA                -0.0462295   -0.1948938    0.1024348
6 months    PROBIT           BELARUS                        2                    NA                -0.1163023   -0.2386896    0.0060851
6 months    PROBIT           BELARUS                        3                    NA                 0.0900704   -0.0177804    0.1979211
6 months    PROBIT           BELARUS                        4                    NA                 0.1750593    0.0548903    0.2952282
6 months    PROBIT           BELARUS                        5                    NA                 0.2166607    0.0990700    0.3342514
6 months    PROBIT           BELARUS                        6                    NA                 0.1751749    0.0491835    0.3011663
6 months    PROBIT           BELARUS                        7                    NA                 0.1826658    0.0722378    0.2930937
6 months    PROBIT           BELARUS                        8                    NA                 0.1574711    0.0288412    0.2861011
6 months    PROBIT           BELARUS                        9                    NA                 0.1142788   -0.0244661    0.2530237
6 months    PROBIT           BELARUS                        10                   NA                 0.0889520   -0.0395589    0.2174630
6 months    PROBIT           BELARUS                        11                   NA                 0.0611233   -0.0503586    0.1726053
6 months    PROBIT           BELARUS                        12                   NA                 0.0317050   -0.0902511    0.1536611
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.9061905   -1.1964147   -0.6159663
6 months    PROVIDE          BANGLADESH                     2                    NA                -1.3306250   -1.6433120   -1.0179380
6 months    PROVIDE          BANGLADESH                     3                    NA                -0.6759302   -1.0135072   -0.3383533
6 months    PROVIDE          BANGLADESH                     4                    NA                -1.0733333   -1.3518206   -0.7948461
6 months    PROVIDE          BANGLADESH                     5                    NA                -0.8297500   -1.0790064   -0.5804936
6 months    PROVIDE          BANGLADESH                     6                    NA                -1.2683117   -1.5020068   -1.0346166
6 months    PROVIDE          BANGLADESH                     7                    NA                -1.1015789   -1.3003400   -0.9028179
6 months    PROVIDE          BANGLADESH                     8                    NA                -1.2412295   -1.4903056   -0.9921534
6 months    PROVIDE          BANGLADESH                     9                    NA                -1.1716418   -1.4053471   -0.9379364
6 months    PROVIDE          BANGLADESH                     10                   NA                -1.1396269   -1.3027309   -0.9765228
6 months    PROVIDE          BANGLADESH                     11                   NA                -1.1517073   -1.4015270   -0.9018876
6 months    PROVIDE          BANGLADESH                     12                   NA                -0.8627586   -1.1721093   -0.5534079
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.5625287   -1.8560963   -1.2689612
6 months    SAS-CompFeed     INDIA                          2                    NA                -1.2690361   -1.6476509   -0.8904214
6 months    SAS-CompFeed     INDIA                          3                    NA                -1.2456757   -1.7122449   -0.7791065
6 months    SAS-CompFeed     INDIA                          4                    NA                -1.2853030   -1.4340525   -1.1365536
6 months    SAS-CompFeed     INDIA                          5                    NA                -1.3751724   -1.5974111   -1.1529337
6 months    SAS-CompFeed     INDIA                          6                    NA                -1.4996875   -1.6918585   -1.3075165
6 months    SAS-CompFeed     INDIA                          7                    NA                -1.5963115   -1.8876895   -1.3049335
6 months    SAS-CompFeed     INDIA                          8                    NA                -1.4393827   -1.6938179   -1.1849475
6 months    SAS-CompFeed     INDIA                          9                    NA                -1.1744253   -1.3557714   -0.9930792
6 months    SAS-CompFeed     INDIA                          10                   NA                -1.4830201   -1.6313712   -1.3346691
6 months    SAS-CompFeed     INDIA                          11                   NA                -1.4922881   -1.6035794   -1.3809969
6 months    SAS-CompFeed     INDIA                          12                   NA                -1.3699153   -1.5865536   -1.1532770
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4046244   -0.6108572   -0.1983916
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1205257   -0.3194391    0.0783877
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.5345595   -0.7248290   -0.3442900
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.5522767   -0.7379448   -0.3666086
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.6024329   -0.7875637   -0.4173021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.7828671   -0.9573557   -0.6083786
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.7150342   -0.8549975   -0.5750709
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.6557286   -0.8133002   -0.4981571
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.6127083   -0.7611551   -0.4642616
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.6161058   -0.7643714   -0.4678402
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.5110000   -0.6606990   -0.3613010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.3239438   -0.4820099   -0.1658777
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.9197694   -1.0036468   -0.8358920
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                -0.8786452   -0.9732964   -0.7839939
6 months    ZVITAMBO         ZIMBABWE                       3                    NA                -0.9712777   -1.0665811   -0.8759743
6 months    ZVITAMBO         ZIMBABWE                       4                    NA                -0.9093455   -0.9989598   -0.8197312
6 months    ZVITAMBO         ZIMBABWE                       5                    NA                -0.9398287   -1.0302581   -0.8493992
6 months    ZVITAMBO         ZIMBABWE                       6                    NA                -0.9079464   -1.0020886   -0.8138043
6 months    ZVITAMBO         ZIMBABWE                       7                    NA                -0.9462463   -1.0357650   -0.8567275
6 months    ZVITAMBO         ZIMBABWE                       8                    NA                -0.8072959   -0.8885578   -0.7260340
6 months    ZVITAMBO         ZIMBABWE                       9                    NA                -0.7768910   -0.8556784   -0.6981037
6 months    ZVITAMBO         ZIMBABWE                       10                   NA                -0.8422444   -0.9382348   -0.7462541
6 months    ZVITAMBO         ZIMBABWE                       11                   NA                -0.8421195   -0.9249848   -0.7592542
6 months    ZVITAMBO         ZIMBABWE                       12                   NA                -0.7152778   -0.8014003   -0.6291552
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.3015686   -2.6232870   -1.9798502
24 months   CMC-V-BCS-2002   INDIA                          2                    NA                -2.6855208   -3.1635567   -2.2074849
24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -2.6981720   -2.9945398   -2.4018043
24 months   CMC-V-BCS-2002   INDIA                          4                    NA                -2.5864394   -2.9162085   -2.2566703
24 months   CMC-V-BCS-2002   INDIA                          5                    NA                -2.7288095   -3.0112682   -2.4463508
24 months   CMC-V-BCS-2002   INDIA                          6                    NA                -2.5374324   -2.8765072   -2.1983576
24 months   CMC-V-BCS-2002   INDIA                          7                    NA                -2.5146154   -2.8136324   -2.2155983
24 months   CMC-V-BCS-2002   INDIA                          8                    NA                -2.5712745   -3.0535370   -2.0890120
24 months   CMC-V-BCS-2002   INDIA                          9                    NA                -2.2336508   -2.5492453   -1.9180563
24 months   CMC-V-BCS-2002   INDIA                          10                   NA                -2.4641379   -2.8426853   -2.0855906
24 months   CMC-V-BCS-2002   INDIA                          11                   NA                -2.5000388   -2.7928116   -2.2072660
24 months   CMC-V-BCS-2002   INDIA                          12                   NA                -2.9451333   -3.2739939   -2.6162728
24 months   CMIN             BANGLADESH                     1                    NA                -2.6313462   -2.9987622   -2.2639301
24 months   CMIN             BANGLADESH                     2                    NA                -2.4231250   -2.7793778   -2.0668722
24 months   CMIN             BANGLADESH                     3                    NA                -2.1563889   -2.3998980   -1.9128798
24 months   CMIN             BANGLADESH                     4                    NA                -2.3822727   -2.7707716   -1.9937739
24 months   CMIN             BANGLADESH                     5                    NA                -2.0721875   -2.4764105   -1.6679645
24 months   CMIN             BANGLADESH                     6                    NA                -3.4681250   -4.5104113   -2.4258387
24 months   CMIN             BANGLADESH                     7                    NA                -2.1903333   -2.5611345   -1.8195322
24 months   CMIN             BANGLADESH                     8                    NA                -2.9736111   -3.4157054   -2.5315168
24 months   CMIN             BANGLADESH                     9                    NA                -2.3647500   -2.8348561   -1.8946439
24 months   CMIN             BANGLADESH                     10                   NA                -2.6139583   -3.0142387   -2.2136780
24 months   CMIN             BANGLADESH                     11                   NA                -2.4496000   -2.9221174   -1.9770826
24 months   CMIN             BANGLADESH                     12                   NA                -2.7425000   -3.0248581   -2.4601419
24 months   CONTENT          PERU                           1                    NA                -0.4185714   -0.9207781    0.0836352
24 months   CONTENT          PERU                           2                    NA                -0.7803571   -1.2842608   -0.2764535
24 months   CONTENT          PERU                           3                    NA                -0.5877273   -1.0432865   -0.1321680
24 months   CONTENT          PERU                           4                    NA                -0.8903333   -1.4663676   -0.3142991
24 months   CONTENT          PERU                           5                    NA                -0.5196429   -1.0729386    0.0336529
24 months   CONTENT          PERU                           6                    NA                -0.9509091   -1.3121749   -0.5896432
24 months   CONTENT          PERU                           7                    NA                -0.6210870   -1.0672105   -0.1749635
24 months   CONTENT          PERU                           8                    NA                -0.9217857   -1.4074357   -0.4361357
24 months   CONTENT          PERU                           9                    NA                -0.6688235   -1.0858188   -0.2518282
24 months   CONTENT          PERU                           10                   NA                -0.2072727   -0.8135951    0.3990497
24 months   CONTENT          PERU                           11                   NA                -1.0933333   -1.9635025   -0.2231642
24 months   CONTENT          PERU                           12                   NA                -0.7370000   -1.0115718   -0.4624282
24 months   IRC              INDIA                          1                    NA                -1.9829825   -2.2995117   -1.6664532
24 months   IRC              INDIA                          2                    NA                -2.0409524   -2.4002683   -1.6816365
24 months   IRC              INDIA                          3                    NA                -1.8874074   -2.2234189   -1.5513959
24 months   IRC              INDIA                          4                    NA                -2.1052381   -2.4862389   -1.7242373
24 months   IRC              INDIA                          5                    NA                -2.5140909   -2.9590214   -2.0691604
24 months   IRC              INDIA                          6                    NA                -1.4425225   -1.7123959   -1.1726492
24 months   IRC              INDIA                          7                    NA                -1.6929167   -1.9634295   -1.4224039
24 months   IRC              INDIA                          8                    NA                -1.5924621   -1.8526416   -1.3322827
24 months   IRC              INDIA                          9                    NA                -1.7774074   -2.1988560   -1.3559588
24 months   IRC              INDIA                          10                   NA                -1.6001802   -1.8518906   -1.3484698
24 months   IRC              INDIA                          11                   NA                -1.6191250   -1.8965588   -1.3416912
24 months   IRC              INDIA                          12                   NA                -1.8533013   -2.1331993   -1.5734032
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.1117267   -2.1913185   -2.0321349
24 months   JiVitA-3         BANGLADESH                     2                    NA                -2.1077540   -2.1939503   -2.0215577
24 months   JiVitA-3         BANGLADESH                     3                    NA                -1.9783008   -2.0589499   -1.8976518
24 months   JiVitA-3         BANGLADESH                     4                    NA                -1.9235446   -2.0165527   -1.8305364
24 months   JiVitA-3         BANGLADESH                     5                    NA                -2.0166213   -2.1401951   -1.8930474
24 months   JiVitA-3         BANGLADESH                     6                    NA                -1.9201631   -2.0073300   -1.8329962
24 months   JiVitA-3         BANGLADESH                     7                    NA                -1.8702235   -1.9562223   -1.7842248
24 months   JiVitA-3         BANGLADESH                     8                    NA                -1.9442903   -2.0292327   -1.8593480
24 months   JiVitA-3         BANGLADESH                     9                    NA                -1.9229713   -1.9985066   -1.8474360
24 months   JiVitA-3         BANGLADESH                     10                   NA                -1.9873540   -2.0659026   -1.9088053
24 months   JiVitA-3         BANGLADESH                     11                   NA                -2.1150432   -2.1811182   -2.0489683
24 months   JiVitA-3         BANGLADESH                     12                   NA                -2.1292475   -2.1952360   -2.0632590
24 months   Keneba           GAMBIA                         1                    NA                -1.4773294   -1.6356226   -1.3190362
24 months   Keneba           GAMBIA                         2                    NA                -1.5981936   -1.7647044   -1.4316828
24 months   Keneba           GAMBIA                         3                    NA                -1.5596275   -1.7124668   -1.4067881
24 months   Keneba           GAMBIA                         4                    NA                -1.6232529   -1.7949788   -1.4515271
24 months   Keneba           GAMBIA                         5                    NA                -1.6512322   -1.8233996   -1.4790649
24 months   Keneba           GAMBIA                         6                    NA                -1.5954674   -1.8087765   -1.3821583
24 months   Keneba           GAMBIA                         7                    NA                -1.6551502   -1.8846658   -1.4256346
24 months   Keneba           GAMBIA                         8                    NA                -1.4110570   -1.5790221   -1.2430918
24 months   Keneba           GAMBIA                         9                    NA                -1.6540818   -1.8077166   -1.5004469
24 months   Keneba           GAMBIA                         10                   NA                -1.6543243   -1.7916507   -1.5169978
24 months   Keneba           GAMBIA                         11                   NA                -1.5305792   -1.7130921   -1.3480663
24 months   Keneba           GAMBIA                         12                   NA                -1.5762944   -1.7750116   -1.3775773
24 months   LCNI-5           MALAWI                         1                    NA                -1.8656098   -2.1616769   -1.5695426
24 months   LCNI-5           MALAWI                         2                    NA                -1.5995000   -1.8008600   -1.3981400
24 months   LCNI-5           MALAWI                         3                    NA                -1.7884211   -2.1743849   -1.4024572
24 months   LCNI-5           MALAWI                         4                    NA                -1.7000000   -1.9798303   -1.4201697
24 months   LCNI-5           MALAWI                         5                    NA                -1.9406452   -2.3915128   -1.4897776
24 months   LCNI-5           MALAWI                         6                    NA                -2.3941667   -2.9514739   -1.8368594
24 months   LCNI-5           MALAWI                         7                    NA                -1.9229787   -2.2072696   -1.6386878
24 months   LCNI-5           MALAWI                         8                    NA                -1.6756338   -1.8629302   -1.4883374
24 months   LCNI-5           MALAWI                         9                    NA                -1.6217910   -1.8495351   -1.3940470
24 months   LCNI-5           MALAWI                         10                   NA                -2.0017742   -2.2195612   -1.7839872
24 months   LCNI-5           MALAWI                         11                   NA                -1.9951563   -2.2098033   -1.7805092
24 months   LCNI-5           MALAWI                         12                   NA                -2.1334375   -2.3802450   -1.8866300
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.8471429   -2.2533343   -1.4409514
24 months   MAL-ED           BANGLADESH                     2                    NA                -2.5714706   -3.0442000   -2.0987412
24 months   MAL-ED           BANGLADESH                     3                    NA                -2.2223684   -2.5690839   -1.8756529
24 months   MAL-ED           BANGLADESH                     4                    NA                -1.6512500   -2.0401501   -1.2623499
24 months   MAL-ED           BANGLADESH                     5                    NA                -2.1928947   -2.6005985   -1.7851910
24 months   MAL-ED           BANGLADESH                     6                    NA                -1.8171429   -2.4966265   -1.1376592
24 months   MAL-ED           BANGLADESH                     7                    NA                -1.9111111   -2.3345905   -1.4876317
24 months   MAL-ED           BANGLADESH                     8                    NA                -2.0706818   -2.5750672   -1.5662964
24 months   MAL-ED           BANGLADESH                     9                    NA                -1.9941667   -2.3269237   -1.6614096
24 months   MAL-ED           BANGLADESH                     10                   NA                -1.8982500   -2.3763238   -1.4201762
24 months   MAL-ED           BANGLADESH                     11                   NA                -1.9559091   -2.3447941   -1.5670240
24 months   MAL-ED           BANGLADESH                     12                   NA                -1.6622222   -1.9434199   -1.3810246
24 months   MAL-ED           BRAZIL                         1                    NA                -0.1260000   -0.8881517    0.6361517
24 months   MAL-ED           BRAZIL                         2                    NA                -0.3287500   -0.7795469    0.1220469
24 months   MAL-ED           BRAZIL                         3                    NA                 0.2700000   -0.4156715    0.9556715
24 months   MAL-ED           BRAZIL                         4                    NA                 0.7203333    0.4527783    0.9878884
24 months   MAL-ED           BRAZIL                         5                    NA                 0.4108889    0.0231475    0.7986303
24 months   MAL-ED           BRAZIL                         6                    NA                -0.1383333   -1.2209325    0.9442659
24 months   MAL-ED           BRAZIL                         7                    NA                -0.2340000   -1.1177524    0.6497524
24 months   MAL-ED           BRAZIL                         8                    NA                -0.5384615   -1.1004217    0.0234986
24 months   MAL-ED           BRAZIL                         9                    NA                 0.0514815   -0.3088729    0.4118359
24 months   MAL-ED           BRAZIL                         10                   NA                 0.0907143   -0.4021748    0.5836034
24 months   MAL-ED           BRAZIL                         11                   NA                 0.0339815   -0.4685341    0.5364971
24 months   MAL-ED           BRAZIL                         12                   NA                -0.1877273   -0.7512819    0.3758273
24 months   MAL-ED           INDIA                          1                    NA                -2.2936842   -2.7071683   -1.8802001
24 months   MAL-ED           INDIA                          2                    NA                -1.7744444   -2.0829782   -1.4659107
24 months   MAL-ED           INDIA                          3                    NA                -1.5768421   -2.0127390   -1.1409452
24 months   MAL-ED           INDIA                          4                    NA                -1.9700000   -2.4951919   -1.4448081
24 months   MAL-ED           INDIA                          5                    NA                -1.9143750   -2.4148141   -1.4139359
24 months   MAL-ED           INDIA                          6                    NA                -1.6838889   -2.0232260   -1.3445518
24 months   MAL-ED           INDIA                          7                    NA                -1.8930435   -2.3426234   -1.4434635
24 months   MAL-ED           INDIA                          8                    NA                -1.9761905   -2.4233015   -1.5290795
24 months   MAL-ED           INDIA                          9                    NA                -1.9433333   -2.3977207   -1.4889459
24 months   MAL-ED           INDIA                          10                   NA                -2.0001923   -2.4246292   -1.5757554
24 months   MAL-ED           INDIA                          11                   NA                -1.8733333   -2.2306815   -1.5159852
24 months   MAL-ED           INDIA                          12                   NA                -1.7102632   -2.0789386   -1.3415877
24 months   MAL-ED           NEPAL                          1                    NA                -1.5876316   -1.8956516   -1.2796116
24 months   MAL-ED           NEPAL                          2                    NA                -1.8352941   -2.2239713   -1.4466169
24 months   MAL-ED           NEPAL                          3                    NA                -1.9002941   -2.3613333   -1.4392550
24 months   MAL-ED           NEPAL                          4                    NA                -1.2295455   -1.5345452   -0.9245457
24 months   MAL-ED           NEPAL                          5                    NA                -1.4534211   -1.9890686   -0.9177735
24 months   MAL-ED           NEPAL                          6                    NA                -1.0455556   -1.3683577   -0.7227534
24 months   MAL-ED           NEPAL                          7                    NA                -1.1967647   -1.5427260   -0.8508034
24 months   MAL-ED           NEPAL                          8                    NA                -1.0014583   -1.2769173   -0.7259994
24 months   MAL-ED           NEPAL                          9                    NA                -1.0103333   -1.5501306   -0.4705361
24 months   MAL-ED           NEPAL                          10                   NA                -1.1517500   -1.4771108   -0.8263892
24 months   MAL-ED           NEPAL                          11                   NA                -1.2087500   -1.6424652   -0.7750348
24 months   MAL-ED           NEPAL                          12                   NA                -1.2121875   -1.6716939   -0.7526811
24 months   MAL-ED           PERU                           1                    NA                -1.9255000   -2.2902524   -1.5607476
24 months   MAL-ED           PERU                           2                    NA                -1.8585294   -2.1306786   -1.5863802
24 months   MAL-ED           PERU                           3                    NA                -1.7036667   -2.1144170   -1.2929164
24 months   MAL-ED           PERU                           4                    NA                -1.9009091   -2.3960116   -1.4058066
24 months   MAL-ED           PERU                           5                    NA                -1.8279825   -2.3218437   -1.3341212
24 months   MAL-ED           PERU                           6                    NA                -1.3951515   -2.2125324   -0.5777706
24 months   MAL-ED           PERU                           7                    NA                -1.7563333   -1.9613664   -1.5513002
24 months   MAL-ED           PERU                           8                    NA                -1.7008333   -2.1183059   -1.2833607
24 months   MAL-ED           PERU                           9                    NA                -1.3892857   -1.7148227   -1.0637487
24 months   MAL-ED           PERU                           10                   NA                -1.4255952   -1.7727850   -1.0784055
24 months   MAL-ED           PERU                           11                   NA                -1.9347619   -2.2820661   -1.5874577
24 months   MAL-ED           PERU                           12                   NA                -1.9883333   -2.3135444   -1.6631223
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.7997059   -2.1903365   -1.4090753
24 months   MAL-ED           SOUTH AFRICA                   2                    NA                -1.9829545   -2.4232680   -1.5426411
24 months   MAL-ED           SOUTH AFRICA                   3                    NA                -1.3096429   -1.9109589   -0.7083268
24 months   MAL-ED           SOUTH AFRICA                   4                    NA                -0.9887500   -1.5061223   -0.4713777
24 months   MAL-ED           SOUTH AFRICA                   5                    NA                -1.2166667   -1.7704049   -0.6629284
24 months   MAL-ED           SOUTH AFRICA                   6                    NA                -1.4465625   -1.9586134   -0.9345116
24 months   MAL-ED           SOUTH AFRICA                   7                    NA                -1.6550000   -2.0873617   -1.2226383
24 months   MAL-ED           SOUTH AFRICA                   8                    NA                -1.1343750   -1.7559793   -0.5127707
24 months   MAL-ED           SOUTH AFRICA                   9                    NA                -1.4557895   -1.7735255   -1.1380535
24 months   MAL-ED           SOUTH AFRICA                   10                   NA                -1.7031000   -2.1048243   -1.3013757
24 months   MAL-ED           SOUTH AFRICA                   11                   NA                -1.9382609   -2.3857775   -1.4907442
24 months   MAL-ED           SOUTH AFRICA                   12                   NA                -1.8858602   -2.2124316   -1.5592888
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.4930000   -3.1255975   -1.8604025
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -2.9004545   -3.3170555   -2.4838536
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.8622222   -3.3806035   -2.3438409
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    NA                -3.2291667   -4.0348104   -2.4235229
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    NA                -2.5661111   -2.9729543   -2.1592679
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    NA                -2.4072222   -2.7503431   -2.0641013
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    NA                -2.5400000   -3.0269230   -2.0530770
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    NA                -2.4595455   -2.9980014   -1.9210895
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    NA                -2.4500000   -2.8518768   -2.0481232
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   NA                -2.8346667   -3.2480273   -2.4213060
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   NA                -2.6272917   -3.0259171   -2.2286662
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   NA                -2.6684615   -3.0291672   -2.3077559
24 months   NIH-Birth        BANGLADESH                     1                    NA                -2.2833333   -2.5779433   -1.9887234
24 months   NIH-Birth        BANGLADESH                     2                    NA                -2.2301389   -2.4783450   -1.9819328
24 months   NIH-Birth        BANGLADESH                     3                    NA                -2.1278205   -2.4737818   -1.7818592
24 months   NIH-Birth        BANGLADESH                     4                    NA                -2.4709314   -2.8664451   -2.0754177
24 months   NIH-Birth        BANGLADESH                     5                    NA                -2.3454762   -2.6524414   -2.0385109
24 months   NIH-Birth        BANGLADESH                     6                    NA                -2.3071717   -2.6435871   -1.9707564
24 months   NIH-Birth        BANGLADESH                     7                    NA                -2.1247059   -2.4778792   -1.7715325
24 months   NIH-Birth        BANGLADESH                     8                    NA                -2.2682716   -2.6402274   -1.8963158
24 months   NIH-Birth        BANGLADESH                     9                    NA                -2.0738462   -2.5897141   -1.5579782
24 months   NIH-Birth        BANGLADESH                     10                   NA                -2.0997475   -2.5206912   -1.6788038
24 months   NIH-Birth        BANGLADESH                     11                   NA                -2.2331589   -2.5719884   -1.8943294
24 months   NIH-Birth        BANGLADESH                     12                   NA                -2.0774275   -2.4185965   -1.7362586
24 months   PROBIT           BELARUS                        1                    NA                 0.0118056   -0.6515934    0.6752046
24 months   PROBIT           BELARUS                        2                    NA                -0.1976168   -0.5904352    0.1952016
24 months   PROBIT           BELARUS                        3                    NA                 0.1073028   -0.1359515    0.3505572
24 months   PROBIT           BELARUS                        4                    NA                -0.0423881   -0.2790314    0.1942553
24 months   PROBIT           BELARUS                        5                    NA                -0.0919371   -0.2765359    0.0926617
24 months   PROBIT           BELARUS                        6                    NA                 0.0056320   -2.5356637    2.5469276
24 months   PROBIT           BELARUS                        7                    NA                -0.0547493   -0.3870038    0.2775051
24 months   PROBIT           BELARUS                        8                    NA                -0.0180911   -0.2511324    0.2149502
24 months   PROBIT           BELARUS                        9                    NA                -0.2905814   -0.4948822   -0.0862806
24 months   PROBIT           BELARUS                        10                   NA                -0.3672321   -0.5901013   -0.1443629
24 months   PROBIT           BELARUS                        11                   NA                -0.3685356   -0.6280280   -0.1090433
24 months   PROBIT           BELARUS                        12                   NA                -0.2430664   -1.4201019    0.9339691
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.7600000   -2.0724511   -1.4475489
24 months   PROVIDE          BANGLADESH                     2                    NA                -2.0076667   -2.3246390   -1.6906943
24 months   PROVIDE          BANGLADESH                     3                    NA                -1.1732500   -1.5365001   -0.8099999
24 months   PROVIDE          BANGLADESH                     4                    NA                -1.5333333   -1.9620529   -1.1046137
24 months   PROVIDE          BANGLADESH                     5                    NA                -1.2861905   -1.6173394   -0.9550415
24 months   PROVIDE          BANGLADESH                     6                    NA                -1.8684000   -2.1102762   -1.6265238
24 months   PROVIDE          BANGLADESH                     7                    NA                -1.5568571   -1.7694089   -1.3443054
24 months   PROVIDE          BANGLADESH                     8                    NA                -1.4599167   -1.7110826   -1.2087507
24 months   PROVIDE          BANGLADESH                     9                    NA                -1.4778030   -1.7297904   -1.2258157
24 months   PROVIDE          BANGLADESH                     10                   NA                -1.6759375   -1.8713207   -1.4805543
24 months   PROVIDE          BANGLADESH                     11                   NA                -1.7610526   -1.9921528   -1.5299525
24 months   PROVIDE          BANGLADESH                     12                   NA                -1.7742857   -2.1839675   -1.3646039
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.5088684   -1.6707552   -1.3469817
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                -1.5821827   -1.7578629   -1.4065026
24 months   ZVITAMBO         ZIMBABWE                       3                    NA                -1.5530482   -1.7087111   -1.3973853
24 months   ZVITAMBO         ZIMBABWE                       4                    NA                -1.6101765   -1.7615435   -1.4588095
24 months   ZVITAMBO         ZIMBABWE                       5                    NA                -1.5605655   -1.7561759   -1.3649551
24 months   ZVITAMBO         ZIMBABWE                       6                    NA                -1.6297449   -1.7954589   -1.4640309
24 months   ZVITAMBO         ZIMBABWE                       7                    NA                -1.8695833   -2.0835829   -1.6555837
24 months   ZVITAMBO         ZIMBABWE                       8                    NA                -1.6288189   -1.8263188   -1.4313190
24 months   ZVITAMBO         ZIMBABWE                       9                    NA                -1.4076923   -1.5934651   -1.2219195
24 months   ZVITAMBO         ZIMBABWE                       10                   NA                -1.5029167   -1.7931219   -1.2127115
24 months   ZVITAMBO         ZIMBABWE                       11                   NA                -1.6429167   -1.9529440   -1.3328894
24 months   ZVITAMBO         ZIMBABWE                       12                   NA                -1.6404444   -1.8059933   -1.4748956


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    CONTENT          PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    Keneba           GAMBIA                         NA                   NA                -0.9041369   -0.9513363   -0.8569376
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679450   -0.8935071   -0.8423828
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   CONTENT          PERU                           NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0136481   -2.0413552   -1.9859409
24 months   Keneba           GAMBIA                         NA                   NA                -1.5774356   -1.6272400   -1.5276311
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6055701   -1.6625562   -1.5485840


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          2                    1                  0.4351099   -0.3893051    1.2595249
Birth       IRC              INDIA                          3                    1                  0.7408791   -0.0024058    1.4841641
Birth       IRC              INDIA                          4                    1                  0.6752381   -0.0975614    1.4480376
Birth       IRC              INDIA                          5                    1                  1.3231169    0.3853391    2.2608946
Birth       IRC              INDIA                          6                    1                  0.6750420   -0.1101627    1.4602468
Birth       IRC              INDIA                          7                    1                  0.6282857   -0.0637949    1.3203664
Birth       IRC              INDIA                          8                    1                  0.7280451    0.0800870    1.3760032
Birth       IRC              INDIA                          9                    1                  0.2229714   -0.5132887    0.9592316
Birth       IRC              INDIA                          10                   1                  0.0219925   -0.5951488    0.6391338
Birth       IRC              INDIA                          11                   1                  0.3162637   -0.2697250    0.9022525
Birth       IRC              INDIA                          12                   1                  0.2748980   -0.3629215    0.9127174
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                  0.1412790    0.0596740    0.2228840
Birth       JiVitA-3         BANGLADESH                     3                    1                  0.2596201    0.1866223    0.3326179
Birth       JiVitA-3         BANGLADESH                     4                    1                  0.2886576    0.2116711    0.3656441
Birth       JiVitA-3         BANGLADESH                     5                    1                  0.2422789    0.1466307    0.3379270
Birth       JiVitA-3         BANGLADESH                     6                    1                  0.2409855    0.1464235    0.3355475
Birth       JiVitA-3         BANGLADESH                     7                    1                  0.2591856    0.1703933    0.3479779
Birth       JiVitA-3         BANGLADESH                     8                    1                  0.1246827    0.0444370    0.2049285
Birth       JiVitA-3         BANGLADESH                     9                    1                  0.2196994    0.1476456    0.2917533
Birth       JiVitA-3         BANGLADESH                     10                   1                  0.0649038   -0.0043507    0.1341582
Birth       JiVitA-3         BANGLADESH                     11                   1                 -0.0412108   -0.1113096    0.0288880
Birth       JiVitA-3         BANGLADESH                     12                   1                 -0.0055367   -0.0742231    0.0631496
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                  0.3860765    0.0903258    0.6818273
Birth       Keneba           GAMBIA                         3                    1                  0.3061718    0.0297885    0.5825551
Birth       Keneba           GAMBIA                         4                    1                  0.2575051   -0.0486520    0.5636622
Birth       Keneba           GAMBIA                         5                    1                  0.3417644    0.0096110    0.6739177
Birth       Keneba           GAMBIA                         6                    1                  0.2959695   -0.0322808    0.6242199
Birth       Keneba           GAMBIA                         7                    1                  0.1503560   -0.1918461    0.4925581
Birth       Keneba           GAMBIA                         8                    1                  0.2103318   -0.1035726    0.5242362
Birth       Keneba           GAMBIA                         9                    1                  0.1244540   -0.1810139    0.4299220
Birth       Keneba           GAMBIA                         10                   1                  0.0865461   -0.2027999    0.3758921
Birth       Keneba           GAMBIA                         11                   1                  0.2019137   -0.1275528    0.5313803
Birth       Keneba           GAMBIA                         12                   1                  0.0696066   -0.2301605    0.3693736
Birth       MAL-ED           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     2                    1                 -0.2407609   -0.8081895    0.3266677
Birth       MAL-ED           BANGLADESH                     3                    1                 -0.1270833   -0.6854951    0.4313284
Birth       MAL-ED           BANGLADESH                     4                    1                  0.5448684    0.0062063    1.0835306
Birth       MAL-ED           BANGLADESH                     5                    1                 -0.3080556   -0.9520502    0.3359391
Birth       MAL-ED           BANGLADESH                     6                    1                  0.1225000   -0.6609957    0.9059957
Birth       MAL-ED           BANGLADESH                     7                    1                 -0.0389286   -0.7932946    0.7154375
Birth       MAL-ED           BANGLADESH                     8                    1                 -0.1548077   -0.7179151    0.4082997
Birth       MAL-ED           BANGLADESH                     9                    1                 -0.0086111   -0.6699367    0.6527145
Birth       MAL-ED           BANGLADESH                     10                   1                 -0.1144048   -0.6615064    0.4326968
Birth       MAL-ED           BANGLADESH                     11                   1                  0.3055000   -0.3403099    0.9513099
Birth       MAL-ED           BANGLADESH                     12                   1                  0.1159000   -0.4463045    0.6781045
Birth       MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           2                    1                  0.0271111   -0.5206964    0.5749186
Birth       MAL-ED           PERU                           3                    1                 -0.0578333   -0.5486871    0.4330205
Birth       MAL-ED           PERU                           4                    1                  0.3876667   -0.2652291    1.0405624
Birth       MAL-ED           PERU                           5                    1                  0.3208485   -0.2084449    0.8501419
Birth       MAL-ED           PERU                           6                    1                  0.4822121   -0.2037052    1.1681295
Birth       MAL-ED           PERU                           7                    1                  0.1592456   -0.3847925    0.7032837
Birth       MAL-ED           PERU                           8                    1                  0.2651667   -0.2360711    0.7664044
Birth       MAL-ED           PERU                           9                    1                  0.5013509    0.0848590    0.9178428
Birth       MAL-ED           PERU                           10                   1                  0.4052857   -0.0249247    0.8354962
Birth       MAL-ED           PERU                           11                   1                 -0.1648333   -0.6446154    0.3149488
Birth       MAL-ED           PERU                           12                   1                  0.0155238   -0.6229246    0.6539723
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.3447500   -0.8953503    0.2058503
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0340000   -0.6766800    0.7446800
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0272500   -0.8835373    0.8290373
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    1                  0.3640000   -0.3090063    1.0370063
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0621818   -0.7593821    0.8837457
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    1                  0.3504286   -0.2398126    0.9406697
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    1                  0.2556667   -0.2480624    0.7593958
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    1                 -2.3020000   -3.7102051   -0.8937949
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.5343333   -1.2473775    0.1787109
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0340000   -0.7711925    0.8391925
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   1                  0.1910000   -0.7579420    1.1399420
Birth       NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     2                    1                  0.2862857   -0.0780716    0.6506430
Birth       NIH-Birth        BANGLADESH                     3                    1                  0.4628111    0.0758558    0.8497665
Birth       NIH-Birth        BANGLADESH                     4                    1                  0.3638347   -0.0784057    0.8060752
Birth       NIH-Birth        BANGLADESH                     5                    1                  0.7320304    0.2573482    1.2067126
Birth       NIH-Birth        BANGLADESH                     6                    1                  0.2057422   -0.1598330    0.5713175
Birth       NIH-Birth        BANGLADESH                     7                    1                  0.4260357    0.0080042    0.8440672
Birth       NIH-Birth        BANGLADESH                     8                    1                  0.2932857   -0.1179547    0.7045262
Birth       NIH-Birth        BANGLADESH                     9                    1                  0.3463921   -0.0803612    0.7731454
Birth       NIH-Birth        BANGLADESH                     10                   1                  0.4160774   -0.0210607    0.8532154
Birth       NIH-Birth        BANGLADESH                     11                   1                  0.2053242   -0.1801707    0.5908191
Birth       NIH-Birth        BANGLADESH                     12                   1                  0.3718626   -0.0200509    0.7637762
Birth       PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        2                    1                 -0.1592271   -0.3005870   -0.0178673
Birth       PROBIT           BELARUS                        3                    1                 -0.0875096   -0.2322529    0.0572338
Birth       PROBIT           BELARUS                        4                    1                  0.0001926   -0.1552379    0.1556232
Birth       PROBIT           BELARUS                        5                    1                  0.0557397   -0.1118810    0.2233603
Birth       PROBIT           BELARUS                        6                    1                 -0.1264546   -0.3323528    0.0794436
Birth       PROBIT           BELARUS                        7                    1                  0.0164270   -0.2081287    0.2409827
Birth       PROBIT           BELARUS                        8                    1                 -0.0808741   -0.2935293    0.1317811
Birth       PROBIT           BELARUS                        9                    1                 -0.1175470   -0.3595527    0.1244588
Birth       PROBIT           BELARUS                        10                   1                 -0.0671260   -0.2581528    0.1239007
Birth       PROBIT           BELARUS                        11                   1                 -0.0823764   -0.2519517    0.0871989
Birth       PROBIT           BELARUS                        12                   1                 -0.1418768   -0.3166152    0.0328616
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                 -0.0622500   -0.5007958    0.3762958
Birth       PROVIDE          BANGLADESH                     3                    1                  0.2651111   -0.0948620    0.6250842
Birth       PROVIDE          BANGLADESH                     4                    1                  0.0341190   -0.3594734    0.4277115
Birth       PROVIDE          BANGLADESH                     5                    1                 -0.0302754   -0.4157355    0.3551848
Birth       PROVIDE          BANGLADESH                     6                    1                 -0.2046667   -0.5630791    0.1537458
Birth       PROVIDE          BANGLADESH                     7                    1                  0.1158667   -0.2338689    0.4656022
Birth       PROVIDE          BANGLADESH                     8                    1                  0.0780741   -0.2899426    0.4460907
Birth       PROVIDE          BANGLADESH                     9                    1                  0.3242424   -0.0373148    0.6857997
Birth       PROVIDE          BANGLADESH                     10                   1                  0.0027037   -0.3346488    0.3400562
Birth       PROVIDE          BANGLADESH                     11                   1                 -0.0819259   -0.4595077    0.2956559
Birth       PROVIDE          BANGLADESH                     12                   1                 -0.2345714   -0.7067842    0.2376413
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.1293023   -0.1580004    0.4166050
Birth       SAS-CompFeed     INDIA                          3                    1                  0.0862588   -0.2603753    0.4328930
Birth       SAS-CompFeed     INDIA                          4                    1                  0.2909152   -0.0305506    0.6123811
Birth       SAS-CompFeed     INDIA                          5                    1                  0.2689614   -0.1734356    0.7113584
Birth       SAS-CompFeed     INDIA                          6                    1                  0.3022831    0.0119071    0.5926590
Birth       SAS-CompFeed     INDIA                          7                    1                  0.2338023   -0.0309522    0.4985569
Birth       SAS-CompFeed     INDIA                          8                    1                  0.0347884   -0.1554685    0.2250453
Birth       SAS-CompFeed     INDIA                          9                    1                  0.4103227    0.1657659    0.6548796
Birth       SAS-CompFeed     INDIA                          10                   1                  0.2298657   -0.0427082    0.5024396
Birth       SAS-CompFeed     INDIA                          11                   1                  0.2696385   -0.0044883    0.5437652
Birth       SAS-CompFeed     INDIA                          12                   1                  0.1559690   -0.1235287    0.4354667
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                 -0.0562419   -0.1555783    0.0430944
Birth       ZVITAMBO         ZIMBABWE                       3                    1                  0.1095824    0.0131999    0.2059649
Birth       ZVITAMBO         ZIMBABWE                       4                    1                  0.1160533    0.0148571    0.2172495
Birth       ZVITAMBO         ZIMBABWE                       5                    1                  0.1933236    0.0890624    0.2975849
Birth       ZVITAMBO         ZIMBABWE                       6                    1                  0.2509299    0.1487600    0.3530997
Birth       ZVITAMBO         ZIMBABWE                       7                    1                  0.3047686    0.2052093    0.4043278
Birth       ZVITAMBO         ZIMBABWE                       8                    1                  0.3856360    0.2937441    0.4775278
Birth       ZVITAMBO         ZIMBABWE                       9                    1                  0.3782836    0.2898844    0.4666828
Birth       ZVITAMBO         ZIMBABWE                       10                   1                  0.3523858    0.2559588    0.4488127
Birth       ZVITAMBO         ZIMBABWE                       11                   1                  0.3149793    0.2194634    0.4104952
Birth       ZVITAMBO         ZIMBABWE                       12                   1                  0.2753156    0.1815644    0.3690667
6 months    CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          2                    1                 -0.4129473   -1.3100503    0.4841557
6 months    CMC-V-BCS-2002   INDIA                          3                    1                  0.0829364   -0.3942984    0.5601713
6 months    CMC-V-BCS-2002   INDIA                          4                    1                  0.3471569   -0.2710889    0.9654026
6 months    CMC-V-BCS-2002   INDIA                          5                    1                 -0.3554860   -0.9323394    0.2213674
6 months    CMC-V-BCS-2002   INDIA                          6                    1                 -0.2949377   -0.9288944    0.3390190
6 months    CMC-V-BCS-2002   INDIA                          7                    1                 -0.5729927   -1.1480967    0.0021113
6 months    CMC-V-BCS-2002   INDIA                          8                    1                 -0.0154412   -0.6591219    0.6282395
6 months    CMC-V-BCS-2002   INDIA                          9                    1                  0.1739069   -0.5055858    0.8533996
6 months    CMC-V-BCS-2002   INDIA                          10                   1                  0.0737948   -0.5708361    0.7184257
6 months    CMC-V-BCS-2002   INDIA                          11                   1                  0.3630696   -0.1329075    0.8590466
6 months    CMC-V-BCS-2002   INDIA                          12                   1                 -0.5348765   -1.1897716    0.1200186
6 months    CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     2                    1                  0.5195401   -0.0153601    1.0544404
6 months    CMIN             BANGLADESH                     3                    1                  0.5966629    0.0315638    1.1617620
6 months    CMIN             BANGLADESH                     4                    1                  0.6007226    0.0147316    1.1867137
6 months    CMIN             BANGLADESH                     5                    1                  0.7471531    0.1350191    1.3592871
6 months    CMIN             BANGLADESH                     6                    1                 -0.2443910   -1.3238677    0.8350857
6 months    CMIN             BANGLADESH                     7                    1                  0.2248590   -0.4227294    0.8724474
6 months    CMIN             BANGLADESH                     8                    1                 -0.8506900   -1.5491656   -0.1522145
6 months    CMIN             BANGLADESH                     9                    1                 -0.0611410   -0.6711351    0.5488531
6 months    CMIN             BANGLADESH                     10                   1                  0.2685256   -0.3537174    0.8907686
6 months    CMIN             BANGLADESH                     11                   1                  0.1268590   -0.4876912    0.7414091
6 months    CMIN             BANGLADESH                     12                   1                 -0.1685114   -0.7116198    0.3745970
6 months    CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           2                    1                 -0.4186926   -0.9387772    0.1013920
6 months    CONTENT          PERU                           3                    1                 -0.6029833   -1.1366048   -0.0693619
6 months    CONTENT          PERU                           4                    1                 -1.0017053   -1.5473340   -0.4560765
6 months    CONTENT          PERU                           5                    1                 -0.6199929   -1.3143367    0.0743509
6 months    CONTENT          PERU                           6                    1                 -0.9197154   -1.4542065   -0.3852243
6 months    CONTENT          PERU                           7                    1                 -0.5483083   -1.0573356   -0.0392811
6 months    CONTENT          PERU                           8                    1                 -0.6678826   -1.1964206   -0.1393446
6 months    CONTENT          PERU                           9                    1                 -0.3722154   -0.8548500    0.1104192
6 months    CONTENT          PERU                           10                   1                 -0.5721000   -1.2544488    0.1102488
6 months    CONTENT          PERU                           11                   1                 -0.5834333   -1.3324502    0.1655835
6 months    CONTENT          PERU                           12                   1                 -0.3691455   -0.9264223    0.1881314
6 months    Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      2                    1                  0.7369976    0.2221350    1.2518603
6 months    Guatemala BSC    GUATEMALA                      3                    1                  0.3450198   -0.1780346    0.8680743
6 months    Guatemala BSC    GUATEMALA                      4                    1                  0.2803783   -0.2570412    0.8177977
6 months    Guatemala BSC    GUATEMALA                      5                    1                  0.1076901   -0.3852293    0.6006095
6 months    Guatemala BSC    GUATEMALA                      6                    1                  0.0895400   -0.4370229    0.6161030
6 months    Guatemala BSC    GUATEMALA                      7                    1                  0.5887500    0.0848355    1.0926645
6 months    Guatemala BSC    GUATEMALA                      8                    1                  0.1545833   -0.2936638    0.6028304
6 months    Guatemala BSC    GUATEMALA                      9                    1                  0.4109226   -0.1080014    0.9298466
6 months    Guatemala BSC    GUATEMALA                      10                   1                  0.6515333    0.1793303    1.1237362
6 months    Guatemala BSC    GUATEMALA                      11                   1                  0.3370337   -0.1349572    0.8090247
6 months    Guatemala BSC    GUATEMALA                      12                   1                  0.3903783   -0.0949708    0.8757273
6 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          2                    1                 -0.3493828   -1.0401000    0.3413343
6 months    IRC              INDIA                          3                    1                  0.1675682   -0.3973074    0.7324439
6 months    IRC              INDIA                          4                    1                 -0.4348392   -1.1107493    0.2410710
6 months    IRC              INDIA                          5                    1                 -0.5915852   -1.2502925    0.0671220
6 months    IRC              INDIA                          6                    1                  0.7791098    0.1259539    1.4322656
6 months    IRC              INDIA                          7                    1                  0.4022442   -0.2036285    1.0081168
6 months    IRC              INDIA                          8                    1                  0.5186204   -0.0283211    1.0655619
6 months    IRC              INDIA                          9                    1                  0.7121979   -0.1725003    1.5968960
6 months    IRC              INDIA                          10                   1                  0.4741548   -0.0404000    0.9887097
6 months    IRC              INDIA                          11                   1                  0.1517719   -0.4429511    0.7464950
6 months    IRC              INDIA                          12                   1                 -0.1196758   -0.6494436    0.4100921
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                 -0.0267754   -0.1190551    0.0655043
6 months    JiVitA-3         BANGLADESH                     3                    1                  0.0040787   -0.0877003    0.0958577
6 months    JiVitA-3         BANGLADESH                     4                    1                  0.0226249   -0.0721596    0.1174094
6 months    JiVitA-3         BANGLADESH                     5                    1                 -0.0278217   -0.1264928    0.0708494
6 months    JiVitA-3         BANGLADESH                     6                    1                 -0.0093259   -0.1045298    0.0858781
6 months    JiVitA-3         BANGLADESH                     7                    1                  0.0016252   -0.0903257    0.0935760
6 months    JiVitA-3         BANGLADESH                     8                    1                 -0.0688488   -0.1570605    0.0193629
6 months    JiVitA-3         BANGLADESH                     9                    1                 -0.0080934   -0.0941004    0.0779136
6 months    JiVitA-3         BANGLADESH                     10                   1                 -0.0872861   -0.1766609    0.0020887
6 months    JiVitA-3         BANGLADESH                     11                   1                 -0.1419727   -0.2284388   -0.0555065
6 months    JiVitA-3         BANGLADESH                     12                   1                 -0.0786047   -0.1689900    0.0117806
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                 -0.0160810   -0.2354685    0.2033064
6 months    Keneba           GAMBIA                         3                    1                 -0.1089793   -0.3185988    0.1006402
6 months    Keneba           GAMBIA                         4                    1                 -0.0594172   -0.2821959    0.1633615
6 months    Keneba           GAMBIA                         5                    1                 -0.0511477   -0.2866666    0.1843712
6 months    Keneba           GAMBIA                         6                    1                 -0.1305439   -0.4145481    0.1534604
6 months    Keneba           GAMBIA                         7                    1                 -0.2367607   -0.5290647    0.0555432
6 months    Keneba           GAMBIA                         8                    1                 -0.0896343   -0.3029723    0.1237037
6 months    Keneba           GAMBIA                         9                    1                 -0.1881966   -0.4060496    0.0296565
6 months    Keneba           GAMBIA                         10                   1                 -0.0852928   -0.2964566    0.1258709
6 months    Keneba           GAMBIA                         11                   1                  0.0188536   -0.1997291    0.2374363
6 months    Keneba           GAMBIA                         12                   1                  0.0475429   -0.1715378    0.2666235
6 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         2                    1                  0.2312212   -0.0640166    0.5264591
6 months    LCNI-5           MALAWI                         3                    1                  0.0769570   -0.4253765    0.5792905
6 months    LCNI-5           MALAWI                         4                    1                  0.0837519   -0.2450746    0.4125784
6 months    LCNI-5           MALAWI                         5                    1                  0.2401738   -0.2075801    0.6879277
6 months    LCNI-5           MALAWI                         6                    1                 -0.0645588   -0.5761502    0.4470326
6 months    LCNI-5           MALAWI                         7                    1                  0.2631172   -0.0701822    0.5964166
6 months    LCNI-5           MALAWI                         8                    1                  0.2579206   -0.0272607    0.5431019
6 months    LCNI-5           MALAWI                         9                    1                  0.2032970   -0.0921932    0.4987871
6 months    LCNI-5           MALAWI                         10                   1                  0.0420425   -0.2607843    0.3448693
6 months    LCNI-5           MALAWI                         11                   1                  0.1823599   -0.1085333    0.4732532
6 months    LCNI-5           MALAWI                         12                   1                  0.3117384   -0.0050537    0.6285305
6 months    MAL-ED           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     2                    1                 -0.3661481   -0.8368979    0.1046016
6 months    MAL-ED           BANGLADESH                     3                    1                 -0.2345974   -0.8116683    0.3424735
6 months    MAL-ED           BANGLADESH                     4                    1                  0.4563973   -0.0493762    0.9621708
6 months    MAL-ED           BANGLADESH                     5                    1                 -0.0006878   -0.5499313    0.5485556
6 months    MAL-ED           BANGLADESH                     6                    1                  0.1536852   -0.4494155    0.7567858
6 months    MAL-ED           BANGLADESH                     7                    1                 -0.0998148   -0.6937806    0.4941509
6 months    MAL-ED           BANGLADESH                     8                    1                 -0.1477134   -0.7129686    0.4175419
6 months    MAL-ED           BANGLADESH                     9                    1                  0.1314731   -0.3628707    0.6258169
6 months    MAL-ED           BANGLADESH                     10                   1                 -0.1121633   -0.7075562    0.4832296
6 months    MAL-ED           BANGLADESH                     11                   1                  0.1408102   -0.3788146    0.6604350
6 months    MAL-ED           BANGLADESH                     12                   1                  0.3747365   -0.0970460    0.8465189
6 months    MAL-ED           BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         2                    1                  0.0736618   -0.7000239    0.8473475
6 months    MAL-ED           BRAZIL                         3                    1                  0.1332361   -0.6926589    0.9591311
6 months    MAL-ED           BRAZIL                         4                    1                  0.2293535   -0.5984446    1.0571516
6 months    MAL-ED           BRAZIL                         5                    1                 -0.0145714   -0.7816567    0.7525139
6 months    MAL-ED           BRAZIL                         6                    1                 -0.2911389   -1.2103501    0.6280724
6 months    MAL-ED           BRAZIL                         7                    1                 -0.5112431   -1.4353684    0.4128823
6 months    MAL-ED           BRAZIL                         8                    1                 -0.1877014   -0.9881743    0.6127716
6 months    MAL-ED           BRAZIL                         9                    1                 -0.3572222   -1.0934325    0.3789880
6 months    MAL-ED           BRAZIL                         10                   1                  0.0746944   -0.6799957    0.8293846
6 months    MAL-ED           BRAZIL                         11                   1                 -0.0707619   -0.8187524    0.6772286
6 months    MAL-ED           BRAZIL                         12                   1                  0.0812222   -0.7180991    0.8805436
6 months    MAL-ED           INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          2                    1                  0.3736940   -0.0450686    0.7924565
6 months    MAL-ED           INDIA                          3                    1                  0.4181300   -0.0900280    0.9262880
6 months    MAL-ED           INDIA                          4                    1                  0.2640643   -0.3857218    0.9138505
6 months    MAL-ED           INDIA                          5                    1                  0.0987171   -0.4108083    0.6082425
6 months    MAL-ED           INDIA                          6                    1                  0.2044737   -0.2453575    0.6543049
6 months    MAL-ED           INDIA                          7                    1                 -0.0578680   -0.5818096    0.4660735
6 months    MAL-ED           INDIA                          8                    1                  0.0590391   -0.4601735    0.5782517
6 months    MAL-ED           INDIA                          9                    1                  0.2932588   -0.3299546    0.9164721
6 months    MAL-ED           INDIA                          10                   1                  0.1617139   -0.3932290    0.7166568
6 months    MAL-ED           INDIA                          11                   1                  0.0753088   -0.4150007    0.5656182
6 months    MAL-ED           INDIA                          12                   1                  0.2575439   -0.2668553    0.7819430
6 months    MAL-ED           NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          2                    1                 -0.1787632   -0.7210476    0.3635213
6 months    MAL-ED           NEPAL                          3                    1                 -0.0756569   -0.6780734    0.5267597
6 months    MAL-ED           NEPAL                          4                    1                  0.3227879   -0.1473732    0.7929490
6 months    MAL-ED           NEPAL                          5                    1                  0.1679167   -0.3894606    0.7252939
6 months    MAL-ED           NEPAL                          6                    1                  0.3626111   -0.1218028    0.8470250
6 months    MAL-ED           NEPAL                          7                    1                  0.1401111   -0.3946149    0.6748371
6 months    MAL-ED           NEPAL                          8                    1                  0.3799028   -0.0341823    0.7939878
6 months    MAL-ED           NEPAL                          9                    1                  0.3199375   -0.2914515    0.9313265
6 months    MAL-ED           NEPAL                          10                   1                  0.3250714   -0.1361030    0.7862459
6 months    MAL-ED           NEPAL                          11                   1                  0.4401806   -0.0693935    0.9497546
6 months    MAL-ED           NEPAL                          12                   1                  0.3435588   -0.2011140    0.8882316
6 months    MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           2                    1                 -0.0417105   -0.4963313    0.4129102
6 months    MAL-ED           PERU                           3                    1                 -0.1677632   -0.6385526    0.3030262
6 months    MAL-ED           PERU                           4                    1                  0.3697368   -0.2319858    0.9714595
6 months    MAL-ED           PERU                           5                    1                  0.1216813   -0.2965389    0.5399014
6 months    MAL-ED           PERU                           6                    1                  0.0627924   -0.4996037    0.6251885
6 months    MAL-ED           PERU                           7                    1                 -0.0035207   -0.4131872    0.4061457
6 months    MAL-ED           PERU                           8                    1                  0.1224452   -0.3926038    0.6374941
6 months    MAL-ED           PERU                           9                    1                  0.0191571   -0.4487915    0.4871058
6 months    MAL-ED           PERU                           10                   1                  0.0652368   -0.4017438    0.5322174
6 months    MAL-ED           PERU                           11                   1                 -0.4733882   -0.9075338   -0.0392425
6 months    MAL-ED           PERU                           12                   1                  0.2101316   -0.2917894    0.7120526
6 months    MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   2                    1                  0.1012414   -0.3251941    0.5276769
6 months    MAL-ED           SOUTH AFRICA                   3                    1                  0.7327632    0.0769680    1.3885583
6 months    MAL-ED           SOUTH AFRICA                   4                    1                  0.6282760    0.0166385    1.2399134
6 months    MAL-ED           SOUTH AFRICA                   5                    1                  0.4782760   -0.2447740    1.2013260
6 months    MAL-ED           SOUTH AFRICA                   6                    1                  0.3922076   -0.0676507    0.8520659
6 months    MAL-ED           SOUTH AFRICA                   7                    1                  0.0835207   -0.4520714    0.6191129
6 months    MAL-ED           SOUTH AFRICA                   8                    1                  0.4866520   -0.2657338    1.2390379
6 months    MAL-ED           SOUTH AFRICA                   9                    1                  0.2798002   -0.2334551    0.7930555
6 months    MAL-ED           SOUTH AFRICA                   10                   1                  0.0814811   -0.4561141    0.6190764
6 months    MAL-ED           SOUTH AFRICA                   11                   1                 -0.1424452   -0.7492413    0.4643509
6 months    MAL-ED           SOUTH AFRICA                   12                   1                 -0.1810464   -0.6665177    0.3044250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.3438333   -0.8852891    0.1976224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.3180000   -0.9893733    0.3533733
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.6791111   -1.3349186   -0.0233036
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0843542   -0.6930909    0.5243826
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    1                  0.1903333   -0.3457770    0.7264437
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    1                  0.0518551   -0.5943393    0.6980495
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.1288333   -0.8273817    0.5697150
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0637937   -0.6490711    0.5214838
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.4504242   -1.0673686    0.1665201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1995432   -0.8081064    0.4090200
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.1574444   -0.7674754    0.4525865
6 months    NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     2                    1                  0.1818989   -0.2160849    0.5798826
6 months    NIH-Birth        BANGLADESH                     3                    1                  0.1963962   -0.2079293    0.6007217
6 months    NIH-Birth        BANGLADESH                     4                    1                  0.1515644   -0.2123301    0.5154589
6 months    NIH-Birth        BANGLADESH                     5                    1                  0.2562469   -0.1338755    0.6463694
6 months    NIH-Birth        BANGLADESH                     6                    1                 -0.1311442   -0.5505276    0.2882393
6 months    NIH-Birth        BANGLADESH                     7                    1                  0.1759509   -0.2440052    0.5959069
6 months    NIH-Birth        BANGLADESH                     8                    1                  0.1406676   -0.2816104    0.5629456
6 months    NIH-Birth        BANGLADESH                     9                    1                  0.0014850   -0.3971987    0.4001688
6 months    NIH-Birth        BANGLADESH                     10                   1                  0.2238660   -0.2037894    0.6515214
6 months    NIH-Birth        BANGLADESH                     11                   1                 -0.0766872   -0.4665575    0.3131831
6 months    NIH-Birth        BANGLADESH                     12                   1                  0.3755863   -0.0291433    0.7803160
6 months    PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        2                    1                 -0.0700727   -0.2036364    0.0634909
6 months    PROBIT           BELARUS                        3                    1                  0.1362999   -0.0119057    0.2845054
6 months    PROBIT           BELARUS                        4                    1                  0.2212888    0.0404441    0.4021334
6 months    PROBIT           BELARUS                        5                    1                  0.2628902    0.0779406    0.4478397
6 months    PROBIT           BELARUS                        6                    1                  0.2214044    0.0773679    0.3654409
6 months    PROBIT           BELARUS                        7                    1                  0.2288953    0.0868481    0.3709425
6 months    PROBIT           BELARUS                        8                    1                  0.2037007    0.0463465    0.3610548
6 months    PROBIT           BELARUS                        9                    1                  0.1605083    0.0025078    0.3185087
6 months    PROBIT           BELARUS                        10                   1                  0.1351816   -0.0138189    0.2841820
6 months    PROBIT           BELARUS                        11                   1                  0.1073529   -0.0213630    0.2360687
6 months    PROBIT           BELARUS                        12                   1                  0.0779345   -0.0787748    0.2346439
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                 -0.4244345   -0.8510529    0.0021839
6 months    PROVIDE          BANGLADESH                     3                    1                  0.2302602   -0.2149232    0.6754437
6 months    PROVIDE          BANGLADESH                     4                    1                 -0.1671429   -0.5693682    0.2350825
6 months    PROVIDE          BANGLADESH                     5                    1                  0.0764405   -0.3061282    0.4590092
6 months    PROVIDE          BANGLADESH                     6                    1                 -0.3621212   -0.7347383    0.0104959
6 months    PROVIDE          BANGLADESH                     7                    1                 -0.1953885   -0.5471498    0.1563729
6 months    PROVIDE          BANGLADESH                     8                    1                 -0.3350390   -0.7174903    0.0474123
6 months    PROVIDE          BANGLADESH                     9                    1                 -0.2654513   -0.6380748    0.1071722
6 months    PROVIDE          BANGLADESH                     10                   1                 -0.2334364   -0.5663523    0.0994795
6 months    PROVIDE          BANGLADESH                     11                   1                 -0.2455168   -0.6284528    0.1374191
6 months    PROVIDE          BANGLADESH                     12                   1                  0.0434319   -0.3807473    0.4676110
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                  0.2934926   -0.0114332    0.5984184
6 months    SAS-CompFeed     INDIA                          3                    1                  0.3168531   -0.3129717    0.9466778
6 months    SAS-CompFeed     INDIA                          4                    1                  0.2772257   -0.1019144    0.6563658
6 months    SAS-CompFeed     INDIA                          5                    1                  0.1873563   -0.0682379    0.4429506
6 months    SAS-CompFeed     INDIA                          6                    1                  0.0628412   -0.2837537    0.4094361
6 months    SAS-CompFeed     INDIA                          7                    1                 -0.0337827   -0.4588311    0.3912656
6 months    SAS-CompFeed     INDIA                          8                    1                  0.1231460   -0.3141050    0.5603970
6 months    SAS-CompFeed     INDIA                          9                    1                  0.3881034    0.0314853    0.7447216
6 months    SAS-CompFeed     INDIA                          10                   1                  0.0795086   -0.3034398    0.4624570
6 months    SAS-CompFeed     INDIA                          11                   1                  0.0702406   -0.2605494    0.4010306
6 months    SAS-CompFeed     INDIA                          12                   1                  0.1926135   -0.1760824    0.5613094
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2840987   -0.0024297    0.5706271
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.1299351   -0.4105317    0.1506615
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1476523   -0.4251493    0.1298448
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.1978085   -0.4749463    0.0793294
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.3782427   -0.6483876   -0.1080979
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.3104098   -0.5596520   -0.0611675
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.2511042   -0.5106438    0.0084353
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.2080839   -0.4621870    0.0460192
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.2114814   -0.4654787    0.0425160
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1063756   -0.3612123    0.1484611
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0806806   -0.1791595    0.3405207
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                  0.0411243   -0.0853442    0.1675927
6 months    ZVITAMBO         ZIMBABWE                       3                    1                 -0.0515083   -0.1784656    0.0754490
6 months    ZVITAMBO         ZIMBABWE                       4                    1                  0.0104239   -0.1123203    0.1331681
6 months    ZVITAMBO         ZIMBABWE                       5                    1                 -0.0200592   -0.1433998    0.1032813
6 months    ZVITAMBO         ZIMBABWE                       6                    1                  0.0118230   -0.1142649    0.1379109
6 months    ZVITAMBO         ZIMBABWE                       7                    1                 -0.0264769   -0.1491513    0.0961976
6 months    ZVITAMBO         ZIMBABWE                       8                    1                  0.1124735   -0.0043122    0.2292592
6 months    ZVITAMBO         ZIMBABWE                       9                    1                  0.1428784    0.0278007    0.2579560
6 months    ZVITAMBO         ZIMBABWE                       10                   1                  0.0775250   -0.0499488    0.2049988
6 months    ZVITAMBO         ZIMBABWE                       11                   1                  0.0776499   -0.0402571    0.1955570
6 months    ZVITAMBO         ZIMBABWE                       12                   1                  0.2044916    0.0842731    0.3247102
24 months   CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          2                    1                 -0.3839522   -0.9601649    0.1922605
24 months   CMC-V-BCS-2002   INDIA                          3                    1                 -0.3966034   -0.8340238    0.0408170
24 months   CMC-V-BCS-2002   INDIA                          4                    1                 -0.2848708   -0.7455772    0.1758357
24 months   CMC-V-BCS-2002   INDIA                          5                    1                 -0.4272409   -0.8553596    0.0008778
24 months   CMC-V-BCS-2002   INDIA                          6                    1                 -0.2358638   -0.7032763    0.2315487
24 months   CMC-V-BCS-2002   INDIA                          7                    1                 -0.2130468   -0.6522665    0.2261729
24 months   CMC-V-BCS-2002   INDIA                          8                    1                 -0.2697059   -0.8494298    0.3100181
24 months   CMC-V-BCS-2002   INDIA                          9                    1                  0.0679178   -0.3827512    0.5185869
24 months   CMC-V-BCS-2002   INDIA                          10                   1                 -0.1625693   -0.6593598    0.3342212
24 months   CMC-V-BCS-2002   INDIA                          11                   1                 -0.1984701   -0.6334628    0.2365226
24 months   CMC-V-BCS-2002   INDIA                          12                   1                 -0.6435647   -1.1036212   -0.1835082
24 months   CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     2                    1                  0.2082212   -0.3035509    0.7199932
24 months   CMIN             BANGLADESH                     3                    1                  0.4749573    0.0341725    0.9157420
24 months   CMIN             BANGLADESH                     4                    1                  0.2490734   -0.2856470    0.7837938
24 months   CMIN             BANGLADESH                     5                    1                  0.5591587    0.0129071    1.1054102
24 months   CMIN             BANGLADESH                     6                    1                 -0.8367788   -1.9419283    0.2683706
24 months   CMIN             BANGLADESH                     7                    1                  0.4410128   -0.0809911    0.9630167
24 months   CMIN             BANGLADESH                     8                    1                 -0.3422650   -0.9171057    0.2325758
24 months   CMIN             BANGLADESH                     9                    1                  0.2665962   -0.3300564    0.8632487
24 months   CMIN             BANGLADESH                     10                   1                  0.0173878   -0.5259527    0.5607283
24 months   CMIN             BANGLADESH                     11                   1                  0.1817462   -0.4168081    0.7803004
24 months   CMIN             BANGLADESH                     12                   1                 -0.1111538   -0.5745335    0.3522258
24 months   CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           2                    1                 -0.3617857   -1.0732141    0.3496427
24 months   CONTENT          PERU                           3                    1                 -0.1691558   -0.8472014    0.5088897
24 months   CONTENT          PERU                           4                    1                 -0.4717619   -1.2359785    0.2924547
24 months   CONTENT          PERU                           5                    1                 -0.1010714   -0.8482981    0.6461552
24 months   CONTENT          PERU                           6                    1                 -0.5323377   -1.1509850    0.0863097
24 months   CONTENT          PERU                           7                    1                 -0.2025155   -0.8742578    0.4692268
24 months   CONTENT          PERU                           8                    1                 -0.5032143   -1.2018325    0.1954040
24 months   CONTENT          PERU                           9                    1                 -0.2502521   -0.9030129    0.4025087
24 months   CONTENT          PERU                           10                   1                  0.2112987   -0.5759995    0.9985969
24 months   CONTENT          PERU                           11                   1                 -0.6747619   -1.6794539    0.3299301
24 months   CONTENT          PERU                           12                   1                 -0.3184286   -0.8907931    0.2539360
24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          2                    1                 -0.0579699   -0.5368214    0.4208815
24 months   IRC              INDIA                          3                    1                  0.0955750   -0.3660466    0.5571967
24 months   IRC              INDIA                          4                    1                 -0.1222556   -0.6175862    0.3730750
24 months   IRC              INDIA                          5                    1                 -0.5311085   -1.0771432    0.0149263
24 months   IRC              INDIA                          6                    1                  0.5404599    0.1245003    0.9564196
24 months   IRC              INDIA                          7                    1                  0.2900658   -0.1263090    0.7064406
24 months   IRC              INDIA                          8                    1                  0.3905203   -0.0192163    0.8002570
24 months   IRC              INDIA                          9                    1                  0.2055750   -0.3215015    0.7326516
24 months   IRC              INDIA                          10                   1                  0.3828023   -0.0216095    0.7872141
24 months   IRC              INDIA                          11                   1                  0.3638575   -0.0570467    0.7847616
24 months   IRC              INDIA                          12                   1                  0.1296812   -0.2928513    0.5522137
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                  0.0039727   -0.1071380    0.1150835
24 months   JiVitA-3         BANGLADESH                     3                    1                  0.1334259    0.0248604    0.2419914
24 months   JiVitA-3         BANGLADESH                     4                    1                  0.1881822    0.0640288    0.3123356
24 months   JiVitA-3         BANGLADESH                     5                    1                  0.0951055   -0.0525782    0.2427892
24 months   JiVitA-3         BANGLADESH                     6                    1                  0.1915636    0.0779891    0.3051381
24 months   JiVitA-3         BANGLADESH                     7                    1                  0.2415032    0.1248720    0.3581343
24 months   JiVitA-3         BANGLADESH                     8                    1                  0.1674364    0.0520915    0.2827813
24 months   JiVitA-3         BANGLADESH                     9                    1                  0.1887554    0.0808704    0.2966405
24 months   JiVitA-3         BANGLADESH                     10                   1                  0.1243728    0.0143416    0.2344040
24 months   JiVitA-3         BANGLADESH                     11                   1                 -0.0033165   -0.1047482    0.0981152
24 months   JiVitA-3         BANGLADESH                     12                   1                 -0.0175208   -0.1200245    0.0849830
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                 -0.1208642   -0.3506088    0.1088804
24 months   Keneba           GAMBIA                         3                    1                 -0.0822980   -0.3023358    0.1377397
24 months   Keneba           GAMBIA                         4                    1                 -0.1459235   -0.3794754    0.0876284
24 months   Keneba           GAMBIA                         5                    1                 -0.1739028   -0.4077795    0.0599739
24 months   Keneba           GAMBIA                         6                    1                 -0.1181380   -0.3837646    0.1474887
24 months   Keneba           GAMBIA                         7                    1                 -0.1778208   -0.4566292    0.1009877
24 months   Keneba           GAMBIA                         8                    1                  0.0662725   -0.1645284    0.2970733
24 months   Keneba           GAMBIA                         9                    1                 -0.1767523   -0.3973433    0.0438387
24 months   Keneba           GAMBIA                         10                   1                 -0.1769949   -0.3865546    0.0325649
24 months   Keneba           GAMBIA                         11                   1                 -0.0532498   -0.2948438    0.1883443
24 months   Keneba           GAMBIA                         12                   1                 -0.0989650   -0.3530225    0.1550925
24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         2                    1                  0.2661098   -0.0919428    0.6241623
24 months   LCNI-5           MALAWI                         3                    1                  0.0771887   -0.4092513    0.5636287
24 months   LCNI-5           MALAWI                         4                    1                  0.1656098   -0.2417731    0.5729926
24 months   LCNI-5           MALAWI                         5                    1                 -0.0750354   -0.6144215    0.4643507
24 months   LCNI-5           MALAWI                         6                    1                 -0.5285569   -1.1596252    0.1025114
24 months   LCNI-5           MALAWI                         7                    1                 -0.0573690   -0.4678286    0.3530907
24 months   LCNI-5           MALAWI                         8                    1                  0.1899760   -0.1603606    0.5403125
24 months   LCNI-5           MALAWI                         9                    1                  0.2438187   -0.1297093    0.6173467
24 months   LCNI-5           MALAWI                         10                   1                 -0.1361644   -0.5037062    0.2313774
24 months   LCNI-5           MALAWI                         11                   1                 -0.1295465   -0.4952364    0.2361434
24 months   LCNI-5           MALAWI                         12                   1                 -0.2678277   -0.6532752    0.1176197
24 months   MAL-ED           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     2                    1                 -0.7243277   -1.3475970   -0.1010584
24 months   MAL-ED           BANGLADESH                     3                    1                 -0.3752256   -0.9092697    0.1588186
24 months   MAL-ED           BANGLADESH                     4                    1                  0.1958929   -0.3664548    0.7582405
24 months   MAL-ED           BANGLADESH                     5                    1                 -0.3457519   -0.9212637    0.2297600
24 months   MAL-ED           BANGLADESH                     6                    1                  0.0300000   -0.7616373    0.8216373
24 months   MAL-ED           BANGLADESH                     7                    1                 -0.0639683   -0.6507615    0.5228250
24 months   MAL-ED           BANGLADESH                     8                    1                 -0.2235390   -0.8711470    0.4240691
24 months   MAL-ED           BANGLADESH                     9                    1                 -0.1470238   -0.6721131    0.3780655
24 months   MAL-ED           BANGLADESH                     10                   1                 -0.0511071   -0.6784396    0.5762253
24 months   MAL-ED           BANGLADESH                     11                   1                 -0.1087662   -0.6711034    0.4535710
24 months   MAL-ED           BANGLADESH                     12                   1                  0.1849206   -0.3091074    0.6789486
24 months   MAL-ED           BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         2                    1                 -0.2027500   -1.0882402    0.6827402
24 months   MAL-ED           BRAZIL                         3                    1                  0.3960000   -0.6291929    1.4211929
24 months   MAL-ED           BRAZIL                         4                    1                  0.8463333    0.0385828    1.6540838
24 months   MAL-ED           BRAZIL                         5                    1                  0.5368889   -0.3182243    1.3920021
24 months   MAL-ED           BRAZIL                         6                    1                 -0.0123333   -1.3363032    1.3116365
24 months   MAL-ED           BRAZIL                         7                    1                 -0.1080000   -1.2750019    1.0590019
24 months   MAL-ED           BRAZIL                         8                    1                 -0.4124615   -1.3593905    0.5344674
24 months   MAL-ED           BRAZIL                         9                    1                  0.1774815   -0.6655668    1.0205298
24 months   MAL-ED           BRAZIL                         10                   1                  0.2167143   -0.6909282    1.1243568
24 months   MAL-ED           BRAZIL                         11                   1                  0.1599815   -0.7529243    1.0728873
24 months   MAL-ED           BRAZIL                         12                   1                 -0.0617273   -1.0096033    0.8861487
24 months   MAL-ED           INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          2                    1                  0.5192398    0.0033307    1.0351488
24 months   MAL-ED           INDIA                          3                    1                  0.7168421    0.1160300    1.3176542
24 months   MAL-ED           INDIA                          4                    1                  0.3236842   -0.3447435    0.9921119
24 months   MAL-ED           INDIA                          5                    1                  0.3793092   -0.2698505    1.0284689
24 months   MAL-ED           INDIA                          6                    1                  0.6097953    0.0748946    1.1446960
24 months   MAL-ED           INDIA                          7                    1                  0.4006407   -0.2101712    1.0114527
24 months   MAL-ED           INDIA                          8                    1                  0.3174937   -0.2915033    0.9264907
24 months   MAL-ED           INDIA                          9                    1                  0.3503509   -0.2640081    0.9647099
24 months   MAL-ED           INDIA                          10                   1                  0.2934919   -0.2990583    0.8860421
24 months   MAL-ED           INDIA                          11                   1                  0.4203509   -0.1261533    0.9668550
24 months   MAL-ED           INDIA                          12                   1                  0.5834211    0.0294439    1.1373982
24 months   MAL-ED           NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          2                    1                 -0.2476625   -0.7435922    0.2482672
24 months   MAL-ED           NEPAL                          3                    1                 -0.3126625   -0.8671293    0.2418042
24 months   MAL-ED           NEPAL                          4                    1                  0.3580861   -0.0753895    0.7915618
24 months   MAL-ED           NEPAL                          5                    1                  0.1342105   -0.4836847    0.7521058
24 months   MAL-ED           NEPAL                          6                    1                  0.5420760    0.0958950    0.9882571
24 months   MAL-ED           NEPAL                          7                    1                  0.3908669   -0.0723453    0.8540791
24 months   MAL-ED           NEPAL                          8                    1                  0.5861732    0.1729494    0.9993971
24 months   MAL-ED           NEPAL                          9                    1                  0.5772982   -0.0441978    1.1987943
24 months   MAL-ED           NEPAL                          10                   1                  0.4358816   -0.0121541    0.8839172
24 months   MAL-ED           NEPAL                          11                   1                  0.3788816   -0.1530820    0.9108451
24 months   MAL-ED           NEPAL                          12                   1                  0.3754441   -0.1777489    0.9286370
24 months   MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           2                    1                  0.0669706   -0.3881222    0.5220634
24 months   MAL-ED           PERU                           3                    1                  0.2218333   -0.3274936    0.7711603
24 months   MAL-ED           PERU                           4                    1                  0.0245909   -0.5903650    0.6395468
24 months   MAL-ED           PERU                           5                    1                  0.0975175   -0.5164395    0.7114746
24 months   MAL-ED           PERU                           6                    1                  0.5303485   -0.3647246    1.4254216
24 months   MAL-ED           PERU                           7                    1                  0.1691667   -0.2492624    0.5875957
24 months   MAL-ED           PERU                           8                    1                  0.2246667   -0.3297048    0.7790381
24 months   MAL-ED           PERU                           9                    1                  0.5362143    0.0473190    1.0251096
24 months   MAL-ED           PERU                           10                   1                  0.4999048   -0.0036675    1.0034770
24 months   MAL-ED           PERU                           11                   1                 -0.0092619   -0.5129131    0.4943893
24 months   MAL-ED           PERU                           12                   1                 -0.0628333   -0.5515117    0.4258450
24 months   MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   2                    1                 -0.1832487   -0.7718642    0.4053668
24 months   MAL-ED           SOUTH AFRICA                   3                    1                  0.4900630   -0.2269957    1.2071218
24 months   MAL-ED           SOUTH AFRICA                   4                    1                  0.8109559    0.1626764    1.4592354
24 months   MAL-ED           SOUTH AFRICA                   5                    1                  0.5830392   -0.0946173    1.2606957
24 months   MAL-ED           SOUTH AFRICA                   6                    1                  0.3531434   -0.2908973    0.9971840
24 months   MAL-ED           SOUTH AFRICA                   7                    1                  0.1447059   -0.4379852    0.7273970
24 months   MAL-ED           SOUTH AFRICA                   8                    1                  0.6653309   -0.0688245    1.3994863
24 months   MAL-ED           SOUTH AFRICA                   9                    1                  0.3439164   -0.1596195    0.8474523
24 months   MAL-ED           SOUTH AFRICA                   10                   1                  0.0966059   -0.4637285    0.6569403
24 months   MAL-ED           SOUTH AFRICA                   11                   1                 -0.1385550   -0.7325781    0.4554681
24 months   MAL-ED           SOUTH AFRICA                   12                   1                 -0.0861543   -0.5953116    0.4230030
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.4074545   -1.1649082    0.3499991
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.3692222   -1.1870845    0.4486401
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.7361667   -1.7604916    0.2881582
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0731111   -0.8252421    0.6790199
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0857778   -0.6338829    0.8054385
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.0470000   -0.8452942    0.7512942
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0334545   -0.7972767    0.8641858
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0430000   -0.7064562    0.7924562
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.3416667   -1.0973430    0.4140096
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1342917   -0.8820094    0.6134261
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.1754615   -0.9036704    0.5527473
24 months   NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     2                    1                  0.0531944   -0.3320344    0.4384233
24 months   NIH-Birth        BANGLADESH                     3                    1                  0.1555128   -0.2988926    0.6099182
24 months   NIH-Birth        BANGLADESH                     4                    1                 -0.1875980   -0.6807776    0.3055815
24 months   NIH-Birth        BANGLADESH                     5                    1                 -0.0621429   -0.4876105    0.3633247
24 months   NIH-Birth        BANGLADESH                     6                    1                 -0.0238384   -0.4710188    0.4233420
24 months   NIH-Birth        BANGLADESH                     7                    1                  0.1586275   -0.3012926    0.6185475
24 months   NIH-Birth        BANGLADESH                     8                    1                  0.0150617   -0.4594339    0.4895574
24 months   NIH-Birth        BANGLADESH                     9                    1                  0.2094872   -0.3845791    0.8035535
24 months   NIH-Birth        BANGLADESH                     10                   1                  0.1835859   -0.3302123    0.6973841
24 months   NIH-Birth        BANGLADESH                     11                   1                  0.0501744   -0.3988250    0.4991738
24 months   NIH-Birth        BANGLADESH                     12                   1                  0.2059058   -0.2448616    0.6566732
24 months   PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        2                    1                 -0.2094224   -0.9731382    0.5542935
24 months   PROBIT           BELARUS                        3                    1                  0.0954973   -0.6777075    0.8687021
24 months   PROBIT           BELARUS                        4                    1                 -0.0541936   -0.7415126    0.6331254
24 months   PROBIT           BELARUS                        5                    1                 -0.1037426   -0.8395648    0.6320795
24 months   PROBIT           BELARUS                        6                    1                 -0.0061736   -2.6551192    2.6427720
24 months   PROBIT           BELARUS                        7                    1                 -0.0665549   -0.8058814    0.6727716
24 months   PROBIT           BELARUS                        8                    1                 -0.0298966   -0.7255378    0.6657445
24 months   PROBIT           BELARUS                        9                    1                 -0.3023870   -0.9608668    0.3560929
24 months   PROBIT           BELARUS                        10                   1                 -0.3790376   -1.0884225    0.3303473
24 months   PROBIT           BELARUS                        11                   1                 -0.3803412   -1.0016802    0.2409978
24 months   PROBIT           BELARUS                        12                   1                 -0.2548719   -1.0462236    0.5364797
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                 -0.2476667   -0.6927477    0.1974144
24 months   PROVIDE          BANGLADESH                     3                    1                  0.5867500    0.1076088    1.0658912
24 months   PROVIDE          BANGLADESH                     4                    1                  0.2266667   -0.3038295    0.7571628
24 months   PROVIDE          BANGLADESH                     5                    1                  0.4738095    0.0185236    0.9290955
24 months   PROVIDE          BANGLADESH                     6                    1                 -0.1084000   -0.5035326    0.2867326
24 months   PROVIDE          BANGLADESH                     7                    1                  0.2031429   -0.1747512    0.5810369
24 months   PROVIDE          BANGLADESH                     8                    1                  0.3000833   -0.1008032    0.7009699
24 months   PROVIDE          BANGLADESH                     9                    1                  0.2821970   -0.1192047    0.6835986
24 months   PROVIDE          BANGLADESH                     10                   1                  0.0840625   -0.2844484    0.4525734
24 months   PROVIDE          BANGLADESH                     11                   1                 -0.0010526   -0.3896822    0.3875770
24 months   PROVIDE          BANGLADESH                     12                   1                 -0.0142857   -0.5295185    0.5009471
24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0733143   -0.3122094    0.1655807
24 months   ZVITAMBO         ZIMBABWE                       3                    1                 -0.0441798   -0.2687645    0.1804048
24 months   ZVITAMBO         ZIMBABWE                       4                    1                 -0.1013080   -0.3229368    0.1203207
24 months   ZVITAMBO         ZIMBABWE                       5                    1                 -0.0516971   -0.3056080    0.2022139
24 months   ZVITAMBO         ZIMBABWE                       6                    1                 -0.1208765   -0.3525410    0.1107880
24 months   ZVITAMBO         ZIMBABWE                       7                    1                 -0.3607149   -0.6290489   -0.0923809
24 months   ZVITAMBO         ZIMBABWE                       8                    1                 -0.1199505   -0.3753199    0.1354189
24 months   ZVITAMBO         ZIMBABWE                       9                    1                  0.1011761   -0.1452358    0.3475880
24 months   ZVITAMBO         ZIMBABWE                       10                   1                  0.0059518   -0.3263529    0.3382564
24 months   ZVITAMBO         ZIMBABWE                       11                   1                 -0.1340482   -0.4837971    0.2157006
24 months   ZVITAMBO         ZIMBABWE                       12                   1                 -0.1315760   -0.3631224    0.0999704


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                 0.4605302    0.0320342    0.8890262
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.1252224    0.0769416    0.1735033
Birth       Keneba           GAMBIA                         1                    NA                 0.1949754   -0.0073393    0.3972902
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.0105952   -0.3901220    0.3689315
Birth       MAL-ED           PERU                           1                    NA                 0.1648770   -0.1513841    0.4811380
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0816000   -0.4571381    0.2939381
Birth       NIH-Birth        BANGLADESH                     1                    NA                 0.3302660    0.0764159    0.5841161
Birth       PROBIT           BELARUS                        1                    NA                -0.0693028   -0.2271199    0.0885143
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0322313   -0.2406375    0.3051001
Birth       SAS-CompFeed     INDIA                          1                    NA                 0.2078806    0.0272573    0.3885039
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.2215369    0.1591179    0.2839560
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.0737939   -0.4421570    0.2945692
6 months    CMIN             BANGLADESH                     1                    NA                 0.1607547   -0.2436720    0.5651814
6 months    CONTENT          PERU                           1                    NA                -0.5721256   -0.9307056   -0.2135456
6 months    Guatemala BSC    GUATEMALA                      1                    NA                 0.3408968    0.0129613    0.6688324
6 months    IRC              INDIA                          1                    NA                 0.1868657   -0.2279610    0.6016924
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0402052   -0.1040227    0.0236124
6 months    Keneba           GAMBIA                         1                    NA                -0.0655480   -0.2120240    0.0809279
6 months    LCNI-5           MALAWI                         1                    NA                 0.1640740   -0.0558159    0.3839639
6 months    MAL-ED           BANGLADESH                     1                    NA                 0.0251921   -0.3373398    0.3877240
6 months    MAL-ED           BRAZIL                         1                    NA                -0.0823131   -0.6893935    0.5247673
6 months    MAL-ED           INDIA                          1                    NA                 0.1753167   -0.1614617    0.5120951
6 months    MAL-ED           NEPAL                          1                    NA                 0.2215847   -0.1108575    0.5540270
6 months    MAL-ED           PERU                           1                    NA                -0.0014292   -0.2769260    0.2740675
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.1511096   -0.1660634    0.4682826
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1684116   -0.6068106    0.2699874
6 months    NIH-Birth        BANGLADESH                     1                    NA                 0.1243808   -0.1259152    0.3746767
6 months    PROBIT           BELARUS                        1                    NA                 0.1442369    0.0208333    0.2676405
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1855010   -0.4683571    0.0973551
6 months    SAS-CompFeed     INDIA                          1                    NA                 0.1606724   -0.1294260    0.4507709
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1388145   -0.3362391    0.0586102
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0518244   -0.0278712    0.1315200
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.2572993   -0.5645991    0.0500005
24 months   CMIN             BANGLADESH                     1                    NA                 0.1203957   -0.2284061    0.4691976
24 months   CONTENT          PERU                           1                    NA                -0.2682883   -0.7720557    0.2354791
24 months   IRC              INDIA                          1                    NA                 0.1842050   -0.1163562    0.4847661
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0980787    0.0224325    0.1737248
24 months   Keneba           GAMBIA                         1                    NA                -0.1001061   -0.2503374    0.0501252
24 months   LCNI-5           MALAWI                         1                    NA                -0.0205388   -0.3065594    0.2654818
24 months   MAL-ED           BANGLADESH                     1                    NA                -0.1312534   -0.5302948    0.2677880
24 months   MAL-ED           BRAZIL                         1                    NA                 0.1321144   -0.5793775    0.8436063
24 months   MAL-ED           INDIA                          1                    NA                 0.4074948    0.0100951    0.8048945
24 months   MAL-ED           NEPAL                          1                    NA                 0.2800439   -0.0254721    0.5855599
24 months   MAL-ED           PERU                           1                    NA                 0.1730290   -0.1556230    0.5016810
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.1546464   -0.2019052    0.5111979
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1525607   -0.7545152    0.4493937
24 months   NIH-Birth        BANGLADESH                     1                    NA                 0.0642754   -0.2184618    0.3470127
24 months   PROBIT           BELARUS                        1                    NA                -0.1560947   -0.7319280    0.4197386
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.1575779   -0.1486216    0.4637773
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0967017   -0.2496145    0.0562110
