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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        month    n_cell       n
----------  ---------------  -----------------------------  ------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1             9      92
Birth       CMC-V-BCS-2002   INDIA                          2             1      92
Birth       CMC-V-BCS-2002   INDIA                          3             8      92
Birth       CMC-V-BCS-2002   INDIA                          4             9      92
Birth       CMC-V-BCS-2002   INDIA                          5            11      92
Birth       CMC-V-BCS-2002   INDIA                          6            10      92
Birth       CMC-V-BCS-2002   INDIA                          7             7      92
Birth       CMC-V-BCS-2002   INDIA                          8             4      92
Birth       CMC-V-BCS-2002   INDIA                          9             8      92
Birth       CMC-V-BCS-2002   INDIA                          10           10      92
Birth       CMC-V-BCS-2002   INDIA                          11           11      92
Birth       CMC-V-BCS-2002   INDIA                          12            4      92
Birth       CMIN             BANGLADESH                     1             1      26
Birth       CMIN             BANGLADESH                     2             6      26
Birth       CMIN             BANGLADESH                     3             2      26
Birth       CMIN             BANGLADESH                     4             1      26
Birth       CMIN             BANGLADESH                     5             3      26
Birth       CMIN             BANGLADESH                     6             0      26
Birth       CMIN             BANGLADESH                     7             0      26
Birth       CMIN             BANGLADESH                     8             7      26
Birth       CMIN             BANGLADESH                     9             2      26
Birth       CMIN             BANGLADESH                     10            1      26
Birth       CMIN             BANGLADESH                     11            3      26
Birth       CMIN             BANGLADESH                     12            0      26
Birth       CONTENT          PERU                           1             0       2
Birth       CONTENT          PERU                           2             0       2
Birth       CONTENT          PERU                           3             0       2
Birth       CONTENT          PERU                           4             0       2
Birth       CONTENT          PERU                           5             2       2
Birth       CONTENT          PERU                           6             0       2
Birth       CONTENT          PERU                           7             0       2
Birth       CONTENT          PERU                           8             0       2
Birth       CONTENT          PERU                           9             0       2
Birth       CONTENT          PERU                           10            0       2
Birth       CONTENT          PERU                           11            0       2
Birth       CONTENT          PERU                           12            0       2
Birth       EE               PAKISTAN                       1            57     240
Birth       EE               PAKISTAN                       2            50     240
Birth       EE               PAKISTAN                       3            29     240
Birth       EE               PAKISTAN                       4            11     240
Birth       EE               PAKISTAN                       5             0     240
Birth       EE               PAKISTAN                       6             0     240
Birth       EE               PAKISTAN                       7             0     240
Birth       EE               PAKISTAN                       8             0     240
Birth       EE               PAKISTAN                       9             0     240
Birth       EE               PAKISTAN                       10            0     240
Birth       EE               PAKISTAN                       11           44     240
Birth       EE               PAKISTAN                       12           49     240
Birth       GMS-Nepal        NEPAL                          1             0     696
Birth       GMS-Nepal        NEPAL                          2             0     696
Birth       GMS-Nepal        NEPAL                          3             0     696
Birth       GMS-Nepal        NEPAL                          4             1     696
Birth       GMS-Nepal        NEPAL                          5             0     696
Birth       GMS-Nepal        NEPAL                          6           160     696
Birth       GMS-Nepal        NEPAL                          7           265     696
Birth       GMS-Nepal        NEPAL                          8           270     696
Birth       GMS-Nepal        NEPAL                          9             0     696
Birth       GMS-Nepal        NEPAL                          10            0     696
Birth       GMS-Nepal        NEPAL                          11            0     696
Birth       GMS-Nepal        NEPAL                          12            0     696
Birth       IRC              INDIA                          1            34     388
Birth       IRC              INDIA                          2            25     388
Birth       IRC              INDIA                          3            27     388
Birth       IRC              INDIA                          4            22     388
Birth       IRC              INDIA                          5            21     388
Birth       IRC              INDIA                          6            34     388
Birth       IRC              INDIA                          7            35     388
Birth       IRC              INDIA                          8            39     388
Birth       IRC              INDIA                          9            25     388
Birth       IRC              INDIA                          10           37     388
Birth       IRC              INDIA                          11           40     388
Birth       IRC              INDIA                          12           49     388
Birth       JiVitA-3         BANGLADESH                     1          2112   22455
Birth       JiVitA-3         BANGLADESH                     2          1744   22455
Birth       JiVitA-3         BANGLADESH                     3          2060   22455
Birth       JiVitA-3         BANGLADESH                     4          1489   22455
Birth       JiVitA-3         BANGLADESH                     5          1087   22455
Birth       JiVitA-3         BANGLADESH                     6          1111   22455
Birth       JiVitA-3         BANGLADESH                     7          1260   22455
Birth       JiVitA-3         BANGLADESH                     8          1715   22455
Birth       JiVitA-3         BANGLADESH                     9          2267   22455
Birth       JiVitA-3         BANGLADESH                     10         2428   22455
Birth       JiVitA-3         BANGLADESH                     11         2482   22455
Birth       JiVitA-3         BANGLADESH                     12         2700   22455
Birth       JiVitA-4         BANGLADESH                     1             0    2823
Birth       JiVitA-4         BANGLADESH                     2           333    2823
Birth       JiVitA-4         BANGLADESH                     3           396    2823
Birth       JiVitA-4         BANGLADESH                     4           467    2823
Birth       JiVitA-4         BANGLADESH                     5           449    2823
Birth       JiVitA-4         BANGLADESH                     6           357    2823
Birth       JiVitA-4         BANGLADESH                     7           358    2823
Birth       JiVitA-4         BANGLADESH                     8           247    2823
Birth       JiVitA-4         BANGLADESH                     9           150    2823
Birth       JiVitA-4         BANGLADESH                     10           66    2823
Birth       JiVitA-4         BANGLADESH                     11            0    2823
Birth       JiVitA-4         BANGLADESH                     12            0    2823
Birth       Keneba           GAMBIA                         1           138    1543
Birth       Keneba           GAMBIA                         2           163    1543
Birth       Keneba           GAMBIA                         3           147    1543
Birth       Keneba           GAMBIA                         4           165    1543
Birth       Keneba           GAMBIA                         5           105    1543
Birth       Keneba           GAMBIA                         6           108    1543
Birth       Keneba           GAMBIA                         7            89    1543
Birth       Keneba           GAMBIA                         8            76    1543
Birth       Keneba           GAMBIA                         9           125    1543
Birth       Keneba           GAMBIA                         10          124    1543
Birth       Keneba           GAMBIA                         11          179    1543
Birth       Keneba           GAMBIA                         12          124    1543
Birth       MAL-ED           BANGLADESH                     1            21     231
Birth       MAL-ED           BANGLADESH                     2            21     231
Birth       MAL-ED           BANGLADESH                     3            26     231
Birth       MAL-ED           BANGLADESH                     4            21     231
Birth       MAL-ED           BANGLADESH                     5            17     231
Birth       MAL-ED           BANGLADESH                     6             8     231
Birth       MAL-ED           BANGLADESH                     7            13     231
Birth       MAL-ED           BANGLADESH                     8            27     231
Birth       MAL-ED           BANGLADESH                     9            18     231
Birth       MAL-ED           BANGLADESH                     10           20     231
Birth       MAL-ED           BANGLADESH                     11           13     231
Birth       MAL-ED           BANGLADESH                     12           26     231
Birth       MAL-ED           BRAZIL                         1             5      65
Birth       MAL-ED           BRAZIL                         2             8      65
Birth       MAL-ED           BRAZIL                         3             9      65
Birth       MAL-ED           BRAZIL                         4             5      65
Birth       MAL-ED           BRAZIL                         5             2      65
Birth       MAL-ED           BRAZIL                         6             5      65
Birth       MAL-ED           BRAZIL                         7             5      65
Birth       MAL-ED           BRAZIL                         8             7      65
Birth       MAL-ED           BRAZIL                         9             7      65
Birth       MAL-ED           BRAZIL                         10            4      65
Birth       MAL-ED           BRAZIL                         11            5      65
Birth       MAL-ED           BRAZIL                         12            3      65
Birth       MAL-ED           INDIA                          1             2      47
Birth       MAL-ED           INDIA                          2             3      47
Birth       MAL-ED           INDIA                          3             5      47
Birth       MAL-ED           INDIA                          4             7      47
Birth       MAL-ED           INDIA                          5             2      47
Birth       MAL-ED           INDIA                          6             3      47
Birth       MAL-ED           INDIA                          7             3      47
Birth       MAL-ED           INDIA                          8             7      47
Birth       MAL-ED           INDIA                          9             4      47
Birth       MAL-ED           INDIA                          10            6      47
Birth       MAL-ED           INDIA                          11            4      47
Birth       MAL-ED           INDIA                          12            1      47
Birth       MAL-ED           NEPAL                          1             1      27
Birth       MAL-ED           NEPAL                          2             3      27
Birth       MAL-ED           NEPAL                          3             1      27
Birth       MAL-ED           NEPAL                          4             2      27
Birth       MAL-ED           NEPAL                          5             2      27
Birth       MAL-ED           NEPAL                          6             3      27
Birth       MAL-ED           NEPAL                          7             1      27
Birth       MAL-ED           NEPAL                          8             1      27
Birth       MAL-ED           NEPAL                          9             3      27
Birth       MAL-ED           NEPAL                          10            3      27
Birth       MAL-ED           NEPAL                          11            5      27
Birth       MAL-ED           NEPAL                          12            2      27
Birth       MAL-ED           PERU                           1            25     233
Birth       MAL-ED           PERU                           2            21     233
Birth       MAL-ED           PERU                           3            21     233
Birth       MAL-ED           PERU                           4            14     233
Birth       MAL-ED           PERU                           5            19     233
Birth       MAL-ED           PERU                           6            15     233
Birth       MAL-ED           PERU                           7            20     233
Birth       MAL-ED           PERU                           8            14     233
Birth       MAL-ED           PERU                           9            20     233
Birth       MAL-ED           PERU                           10           20     233
Birth       MAL-ED           PERU                           11           29     233
Birth       MAL-ED           PERU                           12           15     233
Birth       MAL-ED           SOUTH AFRICA                   1             8     123
Birth       MAL-ED           SOUTH AFRICA                   2            13     123
Birth       MAL-ED           SOUTH AFRICA                   3            11     123
Birth       MAL-ED           SOUTH AFRICA                   4             7     123
Birth       MAL-ED           SOUTH AFRICA                   5             5     123
Birth       MAL-ED           SOUTH AFRICA                   6             7     123
Birth       MAL-ED           SOUTH AFRICA                   7            14     123
Birth       MAL-ED           SOUTH AFRICA                   8             4     123
Birth       MAL-ED           SOUTH AFRICA                   9            10     123
Birth       MAL-ED           SOUTH AFRICA                   10           10     123
Birth       MAL-ED           SOUTH AFRICA                   11           15     123
Birth       MAL-ED           SOUTH AFRICA                   12           19     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             8     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2            15     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3            16     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5            10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6            10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7            15     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8             7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9             2     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10            9     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11           15     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12           11     125
Birth       NIH-Birth        BANGLADESH                     1            65     608
Birth       NIH-Birth        BANGLADESH                     2            58     608
Birth       NIH-Birth        BANGLADESH                     3            61     608
Birth       NIH-Birth        BANGLADESH                     4            52     608
Birth       NIH-Birth        BANGLADESH                     5            45     608
Birth       NIH-Birth        BANGLADESH                     6            43     608
Birth       NIH-Birth        BANGLADESH                     7            46     608
Birth       NIH-Birth        BANGLADESH                     8            42     608
Birth       NIH-Birth        BANGLADESH                     9            34     608
Birth       NIH-Birth        BANGLADESH                     10           60     608
Birth       NIH-Birth        BANGLADESH                     11           50     608
Birth       NIH-Birth        BANGLADESH                     12           52     608
Birth       PROBIT           BELARUS                        1           859   13893
Birth       PROBIT           BELARUS                        2           791   13893
Birth       PROBIT           BELARUS                        3           969   13893
Birth       PROBIT           BELARUS                        4           956   13893
Birth       PROBIT           BELARUS                        5           957   13893
Birth       PROBIT           BELARUS                        6          1007   13893
Birth       PROBIT           BELARUS                        7          1281   13893
Birth       PROBIT           BELARUS                        8          1327   13893
Birth       PROBIT           BELARUS                        9          1315   13893
Birth       PROBIT           BELARUS                        10         1511   13893
Birth       PROBIT           BELARUS                        11         1397   13893
Birth       PROBIT           BELARUS                        12         1523   13893
Birth       ResPak           PAKISTAN                       1             0      42
Birth       ResPak           PAKISTAN                       2             2      42
Birth       ResPak           PAKISTAN                       3             1      42
Birth       ResPak           PAKISTAN                       4             1      42
Birth       ResPak           PAKISTAN                       5             8      42
Birth       ResPak           PAKISTAN                       6             7      42
Birth       ResPak           PAKISTAN                       7             9      42
Birth       ResPak           PAKISTAN                       8             8      42
Birth       ResPak           PAKISTAN                       9             4      42
Birth       ResPak           PAKISTAN                       10            1      42
Birth       ResPak           PAKISTAN                       11            1      42
Birth       ResPak           PAKISTAN                       12            0      42
Birth       SAS-CompFeed     INDIA                          1            82    1252
Birth       SAS-CompFeed     INDIA                          2            72    1252
Birth       SAS-CompFeed     INDIA                          3            80    1252
Birth       SAS-CompFeed     INDIA                          4            63    1252
Birth       SAS-CompFeed     INDIA                          5            80    1252
Birth       SAS-CompFeed     INDIA                          6           102    1252
Birth       SAS-CompFeed     INDIA                          7           101    1252
Birth       SAS-CompFeed     INDIA                          8           145    1252
Birth       SAS-CompFeed     INDIA                          9           148    1252
Birth       SAS-CompFeed     INDIA                          10          138    1252
Birth       SAS-CompFeed     INDIA                          11          122    1252
Birth       SAS-CompFeed     INDIA                          12          119    1252
Birth       ZVITAMBO         ZIMBABWE                       1          1349   13875
Birth       ZVITAMBO         ZIMBABWE                       2          1041   13875
Birth       ZVITAMBO         ZIMBABWE                       3          1144   13875
Birth       ZVITAMBO         ZIMBABWE                       4          1014   13875
Birth       ZVITAMBO         ZIMBABWE                       5          1004   13875
Birth       ZVITAMBO         ZIMBABWE                       6          1135   13875
Birth       ZVITAMBO         ZIMBABWE                       7          1179   13875
Birth       ZVITAMBO         ZIMBABWE                       8          1232   13875
Birth       ZVITAMBO         ZIMBABWE                       9          1322   13875
Birth       ZVITAMBO         ZIMBABWE                       10         1047   13875
Birth       ZVITAMBO         ZIMBABWE                       11         1140   13875
Birth       ZVITAMBO         ZIMBABWE                       12         1268   13875
6 months    CMC-V-BCS-2002   INDIA                          1            28     369
6 months    CMC-V-BCS-2002   INDIA                          2            24     369
6 months    CMC-V-BCS-2002   INDIA                          3            26     369
6 months    CMC-V-BCS-2002   INDIA                          4            29     369
6 months    CMC-V-BCS-2002   INDIA                          5            42     369
6 months    CMC-V-BCS-2002   INDIA                          6            37     369
6 months    CMC-V-BCS-2002   INDIA                          7            33     369
6 months    CMC-V-BCS-2002   INDIA                          8            41     369
6 months    CMC-V-BCS-2002   INDIA                          9            21     369
6 months    CMC-V-BCS-2002   INDIA                          10           19     369
6 months    CMC-V-BCS-2002   INDIA                          11           41     369
6 months    CMC-V-BCS-2002   INDIA                          12           28     369
6 months    CMIN             BANGLADESH                     1            27     243
6 months    CMIN             BANGLADESH                     2            30     243
6 months    CMIN             BANGLADESH                     3            18     243
6 months    CMIN             BANGLADESH                     4            17     243
6 months    CMIN             BANGLADESH                     5            20     243
6 months    CMIN             BANGLADESH                     6            23     243
6 months    CMIN             BANGLADESH                     7            12     243
6 months    CMIN             BANGLADESH                     8            13     243
6 months    CMIN             BANGLADESH                     9            16     243
6 months    CMIN             BANGLADESH                     10           20     243
6 months    CMIN             BANGLADESH                     11            2     243
6 months    CMIN             BANGLADESH                     12           45     243
6 months    CONTENT          PERU                           1             9     215
6 months    CONTENT          PERU                           2            13     215
6 months    CONTENT          PERU                           3            27     215
6 months    CONTENT          PERU                           4            18     215
6 months    CONTENT          PERU                           5            25     215
6 months    CONTENT          PERU                           6            14     215
6 months    CONTENT          PERU                           7            16     215
6 months    CONTENT          PERU                           8            26     215
6 months    CONTENT          PERU                           9            19     215
6 months    CONTENT          PERU                           10           23     215
6 months    CONTENT          PERU                           11           18     215
6 months    CONTENT          PERU                           12            7     215
6 months    EE               PAKISTAN                       1            90     373
6 months    EE               PAKISTAN                       2            72     373
6 months    EE               PAKISTAN                       3            46     373
6 months    EE               PAKISTAN                       4            22     373
6 months    EE               PAKISTAN                       5             0     373
6 months    EE               PAKISTAN                       6             0     373
6 months    EE               PAKISTAN                       7             0     373
6 months    EE               PAKISTAN                       8             0     373
6 months    EE               PAKISTAN                       9             0     373
6 months    EE               PAKISTAN                       10            0     373
6 months    EE               PAKISTAN                       11           60     373
6 months    EE               PAKISTAN                       12           83     373
6 months    GMS-Nepal        NEPAL                          1             0     564
6 months    GMS-Nepal        NEPAL                          2             0     564
6 months    GMS-Nepal        NEPAL                          3             0     564
6 months    GMS-Nepal        NEPAL                          4             1     564
6 months    GMS-Nepal        NEPAL                          5             0     564
6 months    GMS-Nepal        NEPAL                          6           115     564
6 months    GMS-Nepal        NEPAL                          7           211     564
6 months    GMS-Nepal        NEPAL                          8           237     564
6 months    GMS-Nepal        NEPAL                          9             0     564
6 months    GMS-Nepal        NEPAL                          10            0     564
6 months    GMS-Nepal        NEPAL                          11            0     564
6 months    GMS-Nepal        NEPAL                          12            0     564
6 months    Guatemala BSC    GUATEMALA                      1            18     299
6 months    Guatemala BSC    GUATEMALA                      2            19     299
6 months    Guatemala BSC    GUATEMALA                      3            21     299
6 months    Guatemala BSC    GUATEMALA                      4            27     299
6 months    Guatemala BSC    GUATEMALA                      5            31     299
6 months    Guatemala BSC    GUATEMALA                      6            39     299
6 months    Guatemala BSC    GUATEMALA                      7            24     299
6 months    Guatemala BSC    GUATEMALA                      8            19     299
6 months    Guatemala BSC    GUATEMALA                      9            34     299
6 months    Guatemala BSC    GUATEMALA                      10           29     299
6 months    Guatemala BSC    GUATEMALA                      11           28     299
6 months    Guatemala BSC    GUATEMALA                      12           10     299
6 months    IRC              INDIA                          1            35     407
6 months    IRC              INDIA                          2            29     407
6 months    IRC              INDIA                          3            29     407
6 months    IRC              INDIA                          4            24     407
6 months    IRC              INDIA                          5            20     407
6 months    IRC              INDIA                          6            35     407
6 months    IRC              INDIA                          7            36     407
6 months    IRC              INDIA                          8            41     407
6 months    IRC              INDIA                          9            30     407
6 months    IRC              INDIA                          10           38     407
6 months    IRC              INDIA                          11           41     407
6 months    IRC              INDIA                          12           49     407
6 months    JiVitA-3         BANGLADESH                     1          1365   16811
6 months    JiVitA-3         BANGLADESH                     2          1184   16811
6 months    JiVitA-3         BANGLADESH                     3          1421   16811
6 months    JiVitA-3         BANGLADESH                     4          1191   16811
6 months    JiVitA-3         BANGLADESH                     5          1150   16811
6 months    JiVitA-3         BANGLADESH                     6          1161   16811
6 months    JiVitA-3         BANGLADESH                     7          1251   16811
6 months    JiVitA-3         BANGLADESH                     8          1468   16811
6 months    JiVitA-3         BANGLADESH                     9          1550   16811
6 months    JiVitA-3         BANGLADESH                     10         1694   16811
6 months    JiVitA-3         BANGLADESH                     11         1667   16811
6 months    JiVitA-3         BANGLADESH                     12         1709   16811
6 months    JiVitA-4         BANGLADESH                     1            53    4831
6 months    JiVitA-4         BANGLADESH                     2           165    4831
6 months    JiVitA-4         BANGLADESH                     3           430    4831
6 months    JiVitA-4         BANGLADESH                     4           845    4831
6 months    JiVitA-4         BANGLADESH                     5           585    4831
6 months    JiVitA-4         BANGLADESH                     6           434    4831
6 months    JiVitA-4         BANGLADESH                     7           838    4831
6 months    JiVitA-4         BANGLADESH                     8           510    4831
6 months    JiVitA-4         BANGLADESH                     9           431    4831
6 months    JiVitA-4         BANGLADESH                     10          306    4831
6 months    JiVitA-4         BANGLADESH                     11          157    4831
6 months    JiVitA-4         BANGLADESH                     12           77    4831
6 months    Keneba           GAMBIA                         1           184    2089
6 months    Keneba           GAMBIA                         2           210    2089
6 months    Keneba           GAMBIA                         3           185    2089
6 months    Keneba           GAMBIA                         4           224    2089
6 months    Keneba           GAMBIA                         5           186    2089
6 months    Keneba           GAMBIA                         6           149    2089
6 months    Keneba           GAMBIA                         7           129    2089
6 months    Keneba           GAMBIA                         8           118    2089
6 months    Keneba           GAMBIA                         9           151    2089
6 months    Keneba           GAMBIA                         10          169    2089
6 months    Keneba           GAMBIA                         11          225    2089
6 months    Keneba           GAMBIA                         12          159    2089
6 months    LCNI-5           MALAWI                         1            55     839
6 months    LCNI-5           MALAWI                         2           114     839
6 months    LCNI-5           MALAWI                         3            98     839
6 months    LCNI-5           MALAWI                         4           110     839
6 months    LCNI-5           MALAWI                         5           111     839
6 months    LCNI-5           MALAWI                         6            91     839
6 months    LCNI-5           MALAWI                         7            72     839
6 months    LCNI-5           MALAWI                         8            41     839
6 months    LCNI-5           MALAWI                         9            29     839
6 months    LCNI-5           MALAWI                         10           35     839
6 months    LCNI-5           MALAWI                         11           49     839
6 months    LCNI-5           MALAWI                         12           34     839
6 months    MAL-ED           BANGLADESH                     1            19     241
6 months    MAL-ED           BANGLADESH                     2            20     241
6 months    MAL-ED           BANGLADESH                     3            23     241
6 months    MAL-ED           BANGLADESH                     4            24     241
6 months    MAL-ED           BANGLADESH                     5            17     241
6 months    MAL-ED           BANGLADESH                     6            12     241
6 months    MAL-ED           BANGLADESH                     7            17     241
6 months    MAL-ED           BANGLADESH                     8            25     241
6 months    MAL-ED           BANGLADESH                     9            21     241
6 months    MAL-ED           BANGLADESH                     10           22     241
6 months    MAL-ED           BANGLADESH                     11           15     241
6 months    MAL-ED           BANGLADESH                     12           26     241
6 months    MAL-ED           BRAZIL                         1            14     209
6 months    MAL-ED           BRAZIL                         2            24     209
6 months    MAL-ED           BRAZIL                         3            15     209
6 months    MAL-ED           BRAZIL                         4            12     209
6 months    MAL-ED           BRAZIL                         5            17     209
6 months    MAL-ED           BRAZIL                         6            14     209
6 months    MAL-ED           BRAZIL                         7            16     209
6 months    MAL-ED           BRAZIL                         8            15     209
6 months    MAL-ED           BRAZIL                         9            21     209
6 months    MAL-ED           BRAZIL                         10           26     209
6 months    MAL-ED           BRAZIL                         11           17     209
6 months    MAL-ED           BRAZIL                         12           18     209
6 months    MAL-ED           INDIA                          1            15     236
6 months    MAL-ED           INDIA                          2            23     236
6 months    MAL-ED           INDIA                          3            21     236
6 months    MAL-ED           INDIA                          4            18     236
6 months    MAL-ED           INDIA                          5             8     236
6 months    MAL-ED           INDIA                          6            18     236
6 months    MAL-ED           INDIA                          7            21     236
6 months    MAL-ED           INDIA                          8            21     236
6 months    MAL-ED           INDIA                          9            21     236
6 months    MAL-ED           INDIA                          10           24     236
6 months    MAL-ED           INDIA                          11           24     236
6 months    MAL-ED           INDIA                          12           22     236
6 months    MAL-ED           NEPAL                          1            20     236
6 months    MAL-ED           NEPAL                          2            20     236
6 months    MAL-ED           NEPAL                          3            20     236
6 months    MAL-ED           NEPAL                          4            20     236
6 months    MAL-ED           NEPAL                          5            18     236
6 months    MAL-ED           NEPAL                          6            20     236
6 months    MAL-ED           NEPAL                          7            19     236
6 months    MAL-ED           NEPAL                          8            19     236
6 months    MAL-ED           NEPAL                          9            20     236
6 months    MAL-ED           NEPAL                          10           20     236
6 months    MAL-ED           NEPAL                          11           20     236
6 months    MAL-ED           NEPAL                          12           20     236
6 months    MAL-ED           PERU                           1            33     273
6 months    MAL-ED           PERU                           2            26     273
6 months    MAL-ED           PERU                           3            22     273
6 months    MAL-ED           PERU                           4            18     273
6 months    MAL-ED           PERU                           5            24     273
6 months    MAL-ED           PERU                           6            20     273
6 months    MAL-ED           PERU                           7            22     273
6 months    MAL-ED           PERU                           8            16     273
6 months    MAL-ED           PERU                           9            22     273
6 months    MAL-ED           PERU                           10           20     273
6 months    MAL-ED           PERU                           11           34     273
6 months    MAL-ED           PERU                           12           16     273
6 months    MAL-ED           SOUTH AFRICA                   1            32     254
6 months    MAL-ED           SOUTH AFRICA                   2            33     254
6 months    MAL-ED           SOUTH AFRICA                   3            17     254
6 months    MAL-ED           SOUTH AFRICA                   4            12     254
6 months    MAL-ED           SOUTH AFRICA                   5            11     254
6 months    MAL-ED           SOUTH AFRICA                   6            18     254
6 months    MAL-ED           SOUTH AFRICA                   7            25     254
6 months    MAL-ED           SOUTH AFRICA                   8             7     254
6 months    MAL-ED           SOUTH AFRICA                   9            17     254
6 months    MAL-ED           SOUTH AFRICA                   10           22     254
6 months    MAL-ED           SOUTH AFRICA                   11           29     254
6 months    MAL-ED           SOUTH AFRICA                   12           31     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1            21     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2            28     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3            23     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4            10     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5            12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6            16     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7            28     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8            12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9            18     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10           19     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11           28     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12           32     247
6 months    NIH-Birth        BANGLADESH                     1            50     537
6 months    NIH-Birth        BANGLADESH                     2            50     537
6 months    NIH-Birth        BANGLADESH                     3            50     537
6 months    NIH-Birth        BANGLADESH                     4            44     537
6 months    NIH-Birth        BANGLADESH                     5            40     537
6 months    NIH-Birth        BANGLADESH                     6            39     537
6 months    NIH-Birth        BANGLADESH                     7            45     537
6 months    NIH-Birth        BANGLADESH                     8            38     537
6 months    NIH-Birth        BANGLADESH                     9            30     537
6 months    NIH-Birth        BANGLADESH                     10           52     537
6 months    NIH-Birth        BANGLADESH                     11           49     537
6 months    NIH-Birth        BANGLADESH                     12           50     537
6 months    PROBIT           BELARUS                        1          1102   15760
6 months    PROBIT           BELARUS                        2           951   15760
6 months    PROBIT           BELARUS                        3          1114   15760
6 months    PROBIT           BELARUS                        4          1069   15760
6 months    PROBIT           BELARUS                        5          1096   15760
6 months    PROBIT           BELARUS                        6          1120   15760
6 months    PROBIT           BELARUS                        7          1365   15760
6 months    PROBIT           BELARUS                        8          1498   15760
6 months    PROBIT           BELARUS                        9          1481   15760
6 months    PROBIT           BELARUS                        10         1669   15760
6 months    PROBIT           BELARUS                        11         1589   15760
6 months    PROBIT           BELARUS                        12         1706   15760
6 months    ResPak           PAKISTAN                       1             2     239
6 months    ResPak           PAKISTAN                       2             8     239
6 months    ResPak           PAKISTAN                       3            10     239
6 months    ResPak           PAKISTAN                       4            20     239
6 months    ResPak           PAKISTAN                       5            30     239
6 months    ResPak           PAKISTAN                       6            39     239
6 months    ResPak           PAKISTAN                       7            43     239
6 months    ResPak           PAKISTAN                       8            26     239
6 months    ResPak           PAKISTAN                       9            37     239
6 months    ResPak           PAKISTAN                       10           15     239
6 months    ResPak           PAKISTAN                       11            6     239
6 months    ResPak           PAKISTAN                       12            3     239
6 months    SAS-CompFeed     INDIA                          1            85    1336
6 months    SAS-CompFeed     INDIA                          2            81    1336
6 months    SAS-CompFeed     INDIA                          3            80    1336
6 months    SAS-CompFeed     INDIA                          4            77    1336
6 months    SAS-CompFeed     INDIA                          5            76    1336
6 months    SAS-CompFeed     INDIA                          6           102    1336
6 months    SAS-CompFeed     INDIA                          7           115    1336
6 months    SAS-CompFeed     INDIA                          8           152    1336
6 months    SAS-CompFeed     INDIA                          9           166    1336
6 months    SAS-CompFeed     INDIA                          10          148    1336
6 months    SAS-CompFeed     INDIA                          11          125    1336
6 months    SAS-CompFeed     INDIA                          12          129    1336
6 months    SAS-FoodSuppl    INDIA                          1            61     380
6 months    SAS-FoodSuppl    INDIA                          2            37     380
6 months    SAS-FoodSuppl    INDIA                          3            35     380
6 months    SAS-FoodSuppl    INDIA                          4            26     380
6 months    SAS-FoodSuppl    INDIA                          5            29     380
6 months    SAS-FoodSuppl    INDIA                          6            31     380
6 months    SAS-FoodSuppl    INDIA                          7            17     380
6 months    SAS-FoodSuppl    INDIA                          8             0     380
6 months    SAS-FoodSuppl    INDIA                          9            12     380
6 months    SAS-FoodSuppl    INDIA                          10           26     380
6 months    SAS-FoodSuppl    INDIA                          11           44     380
6 months    SAS-FoodSuppl    INDIA                          12           62     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1           199    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2           137    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3           151    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4           138    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5           161    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6           142    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7           145    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8           174    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9           198    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10          196    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11          187    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12          201    2029
6 months    ZVITAMBO         ZIMBABWE                       1           830    8669
6 months    ZVITAMBO         ZIMBABWE                       2           609    8669
6 months    ZVITAMBO         ZIMBABWE                       3           736    8669
6 months    ZVITAMBO         ZIMBABWE                       4           680    8669
6 months    ZVITAMBO         ZIMBABWE                       5           636    8669
6 months    ZVITAMBO         ZIMBABWE                       6           680    8669
6 months    ZVITAMBO         ZIMBABWE                       7           675    8669
6 months    ZVITAMBO         ZIMBABWE                       8           768    8669
6 months    ZVITAMBO         ZIMBABWE                       9           801    8669
6 months    ZVITAMBO         ZIMBABWE                       10          628    8669
6 months    ZVITAMBO         ZIMBABWE                       11          761    8669
6 months    ZVITAMBO         ZIMBABWE                       12          865    8669
24 months   CMC-V-BCS-2002   INDIA                          1            28     371
24 months   CMC-V-BCS-2002   INDIA                          2            24     371
24 months   CMC-V-BCS-2002   INDIA                          3            26     371
24 months   CMC-V-BCS-2002   INDIA                          4            29     371
24 months   CMC-V-BCS-2002   INDIA                          5            43     371
24 months   CMC-V-BCS-2002   INDIA                          6            36     371
24 months   CMC-V-BCS-2002   INDIA                          7            33     371
24 months   CMC-V-BCS-2002   INDIA                          8            41     371
24 months   CMC-V-BCS-2002   INDIA                          9            22     371
24 months   CMC-V-BCS-2002   INDIA                          10           19     371
24 months   CMC-V-BCS-2002   INDIA                          11           41     371
24 months   CMC-V-BCS-2002   INDIA                          12           29     371
24 months   CMIN             BANGLADESH                     1            26     242
24 months   CMIN             BANGLADESH                     2            31     242
24 months   CMIN             BANGLADESH                     3            19     242
24 months   CMIN             BANGLADESH                     4            18     242
24 months   CMIN             BANGLADESH                     5            19     242
24 months   CMIN             BANGLADESH                     6            22     242
24 months   CMIN             BANGLADESH                     7            12     242
24 months   CMIN             BANGLADESH                     8            13     242
24 months   CMIN             BANGLADESH                     9            18     242
24 months   CMIN             BANGLADESH                     10           19     242
24 months   CMIN             BANGLADESH                     11            2     242
24 months   CMIN             BANGLADESH                     12           43     242
24 months   CONTENT          PERU                           1             8     164
24 months   CONTENT          PERU                           2            10     164
24 months   CONTENT          PERU                           3            20     164
24 months   CONTENT          PERU                           4            13     164
24 months   CONTENT          PERU                           5            22     164
24 months   CONTENT          PERU                           6            11     164
24 months   CONTENT          PERU                           7            13     164
24 months   CONTENT          PERU                           8            23     164
24 months   CONTENT          PERU                           9            11     164
24 months   CONTENT          PERU                           10           12     164
24 months   CONTENT          PERU                           11           17     164
24 months   CONTENT          PERU                           12            4     164
24 months   EE               PAKISTAN                       1            28     167
24 months   EE               PAKISTAN                       2             2     167
24 months   EE               PAKISTAN                       3             2     167
24 months   EE               PAKISTAN                       4             0     167
24 months   EE               PAKISTAN                       5             0     167
24 months   EE               PAKISTAN                       6             0     167
24 months   EE               PAKISTAN                       7             0     167
24 months   EE               PAKISTAN                       8             0     167
24 months   EE               PAKISTAN                       9             0     167
24 months   EE               PAKISTAN                       10            0     167
24 months   EE               PAKISTAN                       11           57     167
24 months   EE               PAKISTAN                       12           78     167
24 months   GMS-Nepal        NEPAL                          1             0     488
24 months   GMS-Nepal        NEPAL                          2             0     488
24 months   GMS-Nepal        NEPAL                          3             0     488
24 months   GMS-Nepal        NEPAL                          4             0     488
24 months   GMS-Nepal        NEPAL                          5             0     488
24 months   GMS-Nepal        NEPAL                          6            73     488
24 months   GMS-Nepal        NEPAL                          7           200     488
24 months   GMS-Nepal        NEPAL                          8           215     488
24 months   GMS-Nepal        NEPAL                          9             0     488
24 months   GMS-Nepal        NEPAL                          10            0     488
24 months   GMS-Nepal        NEPAL                          11            0     488
24 months   GMS-Nepal        NEPAL                          12            0     488
24 months   IRC              INDIA                          1            35     409
24 months   IRC              INDIA                          2            30     409
24 months   IRC              INDIA                          3            29     409
24 months   IRC              INDIA                          4            24     409
24 months   IRC              INDIA                          5            21     409
24 months   IRC              INDIA                          6            35     409
24 months   IRC              INDIA                          7            36     409
24 months   IRC              INDIA                          8            41     409
24 months   IRC              INDIA                          9            30     409
24 months   IRC              INDIA                          10           38     409
24 months   IRC              INDIA                          11           41     409
24 months   IRC              INDIA                          12           49     409
24 months   JiVitA-3         BANGLADESH                     1           705    8632
24 months   JiVitA-3         BANGLADESH                     2           609    8632
24 months   JiVitA-3         BANGLADESH                     3           730    8632
24 months   JiVitA-3         BANGLADESH                     4           541    8632
24 months   JiVitA-3         BANGLADESH                     5           396    8632
24 months   JiVitA-3         BANGLADESH                     6           564    8632
24 months   JiVitA-3         BANGLADESH                     7           649    8632
24 months   JiVitA-3         BANGLADESH                     8           648    8632
24 months   JiVitA-3         BANGLADESH                     9           727    8632
24 months   JiVitA-3         BANGLADESH                     10          885    8632
24 months   JiVitA-3         BANGLADESH                     11          940    8632
24 months   JiVitA-3         BANGLADESH                     12         1238    8632
24 months   JiVitA-4         BANGLADESH                     1            47    4752
24 months   JiVitA-4         BANGLADESH                     2           326    4752
24 months   JiVitA-4         BANGLADESH                     3           401    4752
24 months   JiVitA-4         BANGLADESH                     4           803    4752
24 months   JiVitA-4         BANGLADESH                     5           559    4752
24 months   JiVitA-4         BANGLADESH                     6           423    4752
24 months   JiVitA-4         BANGLADESH                     7           783    4752
24 months   JiVitA-4         BANGLADESH                     8           472    4752
24 months   JiVitA-4         BANGLADESH                     9           445    4752
24 months   JiVitA-4         BANGLADESH                     10          276    4752
24 months   JiVitA-4         BANGLADESH                     11          146    4752
24 months   JiVitA-4         BANGLADESH                     12           71    4752
24 months   Keneba           GAMBIA                         1           150    1725
24 months   Keneba           GAMBIA                         2           160    1725
24 months   Keneba           GAMBIA                         3           159    1725
24 months   Keneba           GAMBIA                         4           175    1725
24 months   Keneba           GAMBIA                         5           182    1725
24 months   Keneba           GAMBIA                         6           132    1725
24 months   Keneba           GAMBIA                         7           101    1725
24 months   Keneba           GAMBIA                         8            92    1725
24 months   Keneba           GAMBIA                         9           135    1725
24 months   Keneba           GAMBIA                         10          150    1725
24 months   Keneba           GAMBIA                         11          178    1725
24 months   Keneba           GAMBIA                         12          111    1725
24 months   LCNI-5           MALAWI                         1            41     579
24 months   LCNI-5           MALAWI                         2            88     579
24 months   LCNI-5           MALAWI                         3            70     579
24 months   LCNI-5           MALAWI                         4            79     579
24 months   LCNI-5           MALAWI                         5            64     579
24 months   LCNI-5           MALAWI                         6            64     579
24 months   LCNI-5           MALAWI                         7            41     579
24 months   LCNI-5           MALAWI                         8            27     579
24 months   LCNI-5           MALAWI                         9            20     579
24 months   LCNI-5           MALAWI                         10           25     579
24 months   LCNI-5           MALAWI                         11           36     579
24 months   LCNI-5           MALAWI                         12           24     579
24 months   MAL-ED           BANGLADESH                     1            17     212
24 months   MAL-ED           BANGLADESH                     2            17     212
24 months   MAL-ED           BANGLADESH                     3            19     212
24 months   MAL-ED           BANGLADESH                     4            21     212
24 months   MAL-ED           BANGLADESH                     5            15     212
24 months   MAL-ED           BANGLADESH                     6             9     212
24 months   MAL-ED           BANGLADESH                     7            17     212
24 months   MAL-ED           BANGLADESH                     8            24     212
24 months   MAL-ED           BANGLADESH                     9            18     212
24 months   MAL-ED           BANGLADESH                     10           20     212
24 months   MAL-ED           BANGLADESH                     11            9     212
24 months   MAL-ED           BANGLADESH                     12           26     212
24 months   MAL-ED           BRAZIL                         1            14     169
24 months   MAL-ED           BRAZIL                         2            19     169
24 months   MAL-ED           BRAZIL                         3            11     169
24 months   MAL-ED           BRAZIL                         4            11     169
24 months   MAL-ED           BRAZIL                         5            15     169
24 months   MAL-ED           BRAZIL                         6             9     169
24 months   MAL-ED           BRAZIL                         7            10     169
24 months   MAL-ED           BRAZIL                         8            12     169
24 months   MAL-ED           BRAZIL                         9            18     169
24 months   MAL-ED           BRAZIL                         10           21     169
24 months   MAL-ED           BRAZIL                         11           12     169
24 months   MAL-ED           BRAZIL                         12           17     169
24 months   MAL-ED           INDIA                          1            15     227
24 months   MAL-ED           INDIA                          2            23     227
24 months   MAL-ED           INDIA                          3            19     227
24 months   MAL-ED           INDIA                          4            17     227
24 months   MAL-ED           INDIA                          5             7     227
24 months   MAL-ED           INDIA                          6            17     227
24 months   MAL-ED           INDIA                          7            21     227
24 months   MAL-ED           INDIA                          8            20     227
24 months   MAL-ED           INDIA                          9            20     227
24 months   MAL-ED           INDIA                          10           23     227
24 months   MAL-ED           INDIA                          11           24     227
24 months   MAL-ED           INDIA                          12           21     227
24 months   MAL-ED           NEPAL                          1            19     228
24 months   MAL-ED           NEPAL                          2            18     228
24 months   MAL-ED           NEPAL                          3            19     228
24 months   MAL-ED           NEPAL                          4            20     228
24 months   MAL-ED           NEPAL                          5            17     228
24 months   MAL-ED           NEPAL                          6            20     228
24 months   MAL-ED           NEPAL                          7            19     228
24 months   MAL-ED           NEPAL                          8            18     228
24 months   MAL-ED           NEPAL                          9            19     228
24 months   MAL-ED           NEPAL                          10           20     228
24 months   MAL-ED           NEPAL                          11           19     228
24 months   MAL-ED           NEPAL                          12           20     228
24 months   MAL-ED           PERU                           1            26     201
24 months   MAL-ED           PERU                           2            23     201
24 months   MAL-ED           PERU                           3            15     201
24 months   MAL-ED           PERU                           4            10     201
24 months   MAL-ED           PERU                           5            18     201
24 months   MAL-ED           PERU                           6            14     201
24 months   MAL-ED           PERU                           7            14     201
24 months   MAL-ED           PERU                           8            12     201
24 months   MAL-ED           PERU                           9            21     201
24 months   MAL-ED           PERU                           10           15     201
24 months   MAL-ED           PERU                           11           21     201
24 months   MAL-ED           PERU                           12           12     201
24 months   MAL-ED           SOUTH AFRICA                   1            29     238
24 months   MAL-ED           SOUTH AFRICA                   2            30     238
24 months   MAL-ED           SOUTH AFRICA                   3            16     238
24 months   MAL-ED           SOUTH AFRICA                   4            12     238
24 months   MAL-ED           SOUTH AFRICA                   5            10     238
24 months   MAL-ED           SOUTH AFRICA                   6            15     238
24 months   MAL-ED           SOUTH AFRICA                   7            25     238
24 months   MAL-ED           SOUTH AFRICA                   8             7     238
24 months   MAL-ED           SOUTH AFRICA                   9            17     238
24 months   MAL-ED           SOUTH AFRICA                   10           22     238
24 months   MAL-ED           SOUTH AFRICA                   11           27     238
24 months   MAL-ED           SOUTH AFRICA                   12           28     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1            18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2            19     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3            22     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             8     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5            14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6            14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7            28     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8            12     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9            15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10           17     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11           21     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12           26     214
24 months   NIH-Birth        BANGLADESH                     1            42     429
24 months   NIH-Birth        BANGLADESH                     2            36     429
24 months   NIH-Birth        BANGLADESH                     3            41     429
24 months   NIH-Birth        BANGLADESH                     4            34     429
24 months   NIH-Birth        BANGLADESH                     5            34     429
24 months   NIH-Birth        BANGLADESH                     6            30     429
24 months   NIH-Birth        BANGLADESH                     7            37     429
24 months   NIH-Birth        BANGLADESH                     8            30     429
24 months   NIH-Birth        BANGLADESH                     9            19     429
24 months   NIH-Birth        BANGLADESH                     10           40     429
24 months   NIH-Birth        BANGLADESH                     11           41     429
24 months   NIH-Birth        BANGLADESH                     12           45     429
24 months   PROBIT           BELARUS                        1           269    4035
24 months   PROBIT           BELARUS                        2           211    4035
24 months   PROBIT           BELARUS                        3           324    4035
24 months   PROBIT           BELARUS                        4           326    4035
24 months   PROBIT           BELARUS                        5           307    4035
24 months   PROBIT           BELARUS                        6           265    4035
24 months   PROBIT           BELARUS                        7           373    4035
24 months   PROBIT           BELARUS                        8           353    4035
24 months   PROBIT           BELARUS                        9           382    4035
24 months   PROBIT           BELARUS                        10          393    4035
24 months   PROBIT           BELARUS                        11          389    4035
24 months   PROBIT           BELARUS                        12          443    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            0       6
24 months   ZVITAMBO         ZIMBABWE                       1           190    1640
24 months   ZVITAMBO         ZIMBABWE                       2           189    1640
24 months   ZVITAMBO         ZIMBABWE                       3           214    1640
24 months   ZVITAMBO         ZIMBABWE                       4           179    1640
24 months   ZVITAMBO         ZIMBABWE                       5           164    1640
24 months   ZVITAMBO         ZIMBABWE                       6           199    1640
24 months   ZVITAMBO         ZIMBABWE                       7           124    1640
24 months   ZVITAMBO         ZIMBABWE                       8           130    1640
24 months   ZVITAMBO         ZIMBABWE                       9            17    1640
24 months   ZVITAMBO         ZIMBABWE                       10           25    1640
24 months   ZVITAMBO         ZIMBABWE                       11           67    1640
24 months   ZVITAMBO         ZIMBABWE                       12          142    1640


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
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/8af7a13b-4b3f-44b7-9002-44ffee7565d3/53eff3e2-111e-4817-be09-69f2c18d475a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed           0.0704574   -0.7324038    0.8733187
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.4222810   -1.4817242   -1.3628377
Birth       Keneba           GAMBIA                         optimal              observed           0.0503266   -0.1857949    0.2864482
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.2106954   -1.6016658   -0.8197250
Birth       MAL-ED           PERU                           optimal              observed          -0.3006959   -0.7601018    0.1587101
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.5369346   -0.9163411   -0.1575281
Birth       PROBIT           BELARUS                        optimal              observed           1.4558149    1.2610150    1.6506148
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.4250081   -1.5716194   -1.2783969
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3768949   -0.4412575   -0.3125322
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.7381174   -2.2465411   -1.2296937
6 months    CONTENT          PERU                           optimal              observed           0.0792738   -0.7153754    0.8739229
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.5197209   -1.9044417   -1.1350001
6 months    IRC              INDIA                          optimal              observed          -1.0115494   -1.5756337   -0.4474651
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.3083418   -1.3735490   -1.2431346
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.3299092   -1.4687859   -1.1910325
6 months    Keneba           GAMBIA                         optimal              observed          -0.8829823   -1.0448045   -0.7211602
6 months    LCNI-5           MALAWI                         optimal              observed          -1.9099919   -2.2302263   -1.5897574
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.6288305   -2.0370885   -1.2205726
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.2353292   -0.6487329    0.1780745
6 months    MAL-ED           INDIA                          optimal              observed          -1.1318927   -1.5501230   -0.7136625
6 months    MAL-ED           NEPAL                          optimal              observed          -0.8380629   -1.2923810   -0.3837449
6 months    MAL-ED           PERU                           optimal              observed          -1.5296097   -1.9673332   -1.0918862
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.7994990   -1.1699639   -0.4290341
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5734836   -2.3111501   -0.8358170
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -1.2189453   -1.5010294   -0.9368612
6 months    PROBIT           BELARUS                        optimal              observed           0.2423009    0.1129298    0.3716719
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.5182755   -1.7407625   -1.2957885
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1061431   -0.3162563    0.1039702
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7132290   -0.7980055   -0.6284526
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.6090864   -3.0199427   -2.1982300
24 months   IRC              INDIA                          optimal              observed          -1.8448652   -2.1571895   -1.5325408
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.8673472   -1.9575097   -1.7771846
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.5921823   -1.7159340   -1.4684306
24 months   Keneba           GAMBIA                         optimal              observed          -1.4982487   -1.6681351   -1.3283624
24 months   LCNI-5           MALAWI                         optimal              observed          -2.0909523   -2.3566378   -1.8252669
24 months   MAL-ED           BANGLADESH                     optimal              observed          -2.0204928   -2.4219966   -1.6189891
24 months   MAL-ED           BRAZIL                         optimal              observed           0.3404191   -0.4504258    1.1312640
24 months   MAL-ED           INDIA                          optimal              observed          -1.8696106   -2.1219301   -1.6172912
24 months   MAL-ED           NEPAL                          optimal              observed          -1.4648480   -1.7940449   -1.1356510
24 months   MAL-ED           PERU                           optimal              observed          -1.6502113   -2.0996583   -1.2007644
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.5789831   -2.0037495   -1.1542168
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.9758171   -3.6021251   -2.3495091
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -2.5122143   -3.2060435   -1.8183851
24 months   PROBIT           BELARUS                        optimal              observed          -0.0075873   -0.1907125    0.1755379
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.9355265   -2.1298662   -1.7411868


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
Birth       Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    CONTENT          PERU                           observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
6 months    Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    PROBIT           BELARUS                        observed             observed           0.0980074    0.0062724    0.1897424
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8679450   -0.8935071   -0.8423828
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0136481   -2.0413552   -1.9859409
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958
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
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6055701   -1.6625562   -1.5485840


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed          -0.3784987   -1.1549375    0.3979402
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.1671338   -0.2243015   -0.1099662
Birth       Keneba           GAMBIA                         optimal              observed          -0.0195230   -0.2434594    0.2044134
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.0926002   -0.2873952    0.4725955
Birth       MAL-ED           PERU                           optimal              observed          -0.5820938   -1.0278906   -0.1362971
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.3940852   -0.7565585   -0.0316119
Birth       PROBIT           BELARUS                        optimal              observed          -0.1443732   -0.2417264   -0.0470199
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0064136   -0.1028433    0.0900162
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1233776   -0.1851865   -0.0615686
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.3146667   -0.1743900    0.8037233
6 months    CONTENT          PERU                           optimal              observed          -0.3577993   -1.1398878    0.4242891
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0421799   -0.4080920    0.3237323
6 months    IRC              INDIA                          optimal              observed          -0.2228568   -0.7569745    0.3112609
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0047514   -0.0651731    0.0556704
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0148848   -0.1510412    0.1212715
6 months    Keneba           GAMBIA                         optimal              observed          -0.0211546   -0.1769307    0.1346215
6 months    LCNI-5           MALAWI                         optimal              observed           0.2498012   -0.0561310    0.5557333
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.4238374    0.0370705    0.8106044
6 months    MAL-ED           BRAZIL                         optimal              observed           0.2829050   -0.1268826    0.6926925
6 months    MAL-ED           INDIA                          optimal              observed          -0.0796327   -0.4810768    0.3218115
6 months    MAL-ED           NEPAL                          optimal              observed           0.2764810   -0.1577950    0.7107570
6 months    MAL-ED           PERU                           optimal              observed           0.2059436   -0.2172564    0.6291437
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2638212   -0.6337875    0.1061450
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2047386   -0.4979813    0.9074586
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.1884368   -0.4596106    0.0827371
6 months    PROBIT           BELARUS                        optimal              observed          -0.1442935   -0.2446404   -0.0439466
6 months    SAS-CompFeed     INDIA                          optimal              observed           0.1164192   -0.1236668    0.3565052
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4372958   -0.6373587   -0.2372330
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1547159   -0.2347725   -0.0746594
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed           0.0502185   -0.3396444    0.4400813
24 months   IRC              INDIA                          optimal              observed           0.0460877   -0.2527339    0.3449092
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.1463009   -0.2315854   -0.0610163
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.1885395   -0.3116669   -0.0654121
24 months   Keneba           GAMBIA                         optimal              observed          -0.0791868   -0.2433619    0.0849882
24 months   LCNI-5           MALAWI                         optimal              observed           0.2048038   -0.0619262    0.4715338
24 months   MAL-ED           BANGLADESH                     optimal              observed           0.0420966   -0.3517144    0.4359076
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.3343047   -1.0946916    0.4260822
24 months   MAL-ED           INDIA                          optimal              observed          -0.0165788   -0.2809753    0.2478177
24 months   MAL-ED           NEPAL                          optimal              observed           0.1572603   -0.1665809    0.4811015
24 months   MAL-ED           PERU                           optimal              observed          -0.1022596   -0.5384146    0.3338954
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0660764   -0.4890945    0.3569417
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3302563   -0.2739776    0.9344903
24 months   NIH-Birth        BANGLADESH                     optimal              observed           0.2931564   -0.3760247    0.9623375
24 months   PROBIT           BELARUS                        optimal              observed          -0.1367018   -0.4133461    0.1399425
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed           0.3299564    0.1410930    0.5188198
