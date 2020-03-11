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

**Outcome Variable:** whz

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
Birth       CMC-V-BCS-2002   INDIA                          1             9      86
Birth       CMC-V-BCS-2002   INDIA                          2             1      86
Birth       CMC-V-BCS-2002   INDIA                          3             7      86
Birth       CMC-V-BCS-2002   INDIA                          4             9      86
Birth       CMC-V-BCS-2002   INDIA                          5             9      86
Birth       CMC-V-BCS-2002   INDIA                          6            10      86
Birth       CMC-V-BCS-2002   INDIA                          7             7      86
Birth       CMC-V-BCS-2002   INDIA                          8             4      86
Birth       CMC-V-BCS-2002   INDIA                          9             8      86
Birth       CMC-V-BCS-2002   INDIA                          10            8      86
Birth       CMC-V-BCS-2002   INDIA                          11           11      86
Birth       CMC-V-BCS-2002   INDIA                          12            3      86
Birth       CMIN             BANGLADESH                     1             0      19
Birth       CMIN             BANGLADESH                     2             4      19
Birth       CMIN             BANGLADESH                     3             2      19
Birth       CMIN             BANGLADESH                     4             0      19
Birth       CMIN             BANGLADESH                     5             3      19
Birth       CMIN             BANGLADESH                     6             0      19
Birth       CMIN             BANGLADESH                     7             0      19
Birth       CMIN             BANGLADESH                     8             5      19
Birth       CMIN             BANGLADESH                     9             2      19
Birth       CMIN             BANGLADESH                     10            1      19
Birth       CMIN             BANGLADESH                     11            2      19
Birth       CMIN             BANGLADESH                     12            0      19
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
Birth       EE               PAKISTAN                       1            34     177
Birth       EE               PAKISTAN                       2            39     177
Birth       EE               PAKISTAN                       3            19     177
Birth       EE               PAKISTAN                       4             8     177
Birth       EE               PAKISTAN                       5             0     177
Birth       EE               PAKISTAN                       6             0     177
Birth       EE               PAKISTAN                       7             0     177
Birth       EE               PAKISTAN                       8             0     177
Birth       EE               PAKISTAN                       9             0     177
Birth       EE               PAKISTAN                       10            0     177
Birth       EE               PAKISTAN                       11           38     177
Birth       EE               PAKISTAN                       12           39     177
Birth       GMS-Nepal        NEPAL                          1             0     641
Birth       GMS-Nepal        NEPAL                          2             0     641
Birth       GMS-Nepal        NEPAL                          3             0     641
Birth       GMS-Nepal        NEPAL                          4             1     641
Birth       GMS-Nepal        NEPAL                          5             0     641
Birth       GMS-Nepal        NEPAL                          6           151     641
Birth       GMS-Nepal        NEPAL                          7           240     641
Birth       GMS-Nepal        NEPAL                          8           249     641
Birth       GMS-Nepal        NEPAL                          9             0     641
Birth       GMS-Nepal        NEPAL                          10            0     641
Birth       GMS-Nepal        NEPAL                          11            0     641
Birth       GMS-Nepal        NEPAL                          12            0     641
Birth       IRC              INDIA                          1            30     343
Birth       IRC              INDIA                          2            22     343
Birth       IRC              INDIA                          3            26     343
Birth       IRC              INDIA                          4            19     343
Birth       IRC              INDIA                          5            15     343
Birth       IRC              INDIA                          6            25     343
Birth       IRC              INDIA                          7            31     343
Birth       IRC              INDIA                          8            37     343
Birth       IRC              INDIA                          9            24     343
Birth       IRC              INDIA                          10           32     343
Birth       IRC              INDIA                          11           39     343
Birth       IRC              INDIA                          12           43     343
Birth       JiVitA-3         BANGLADESH                     1          1628   18014
Birth       JiVitA-3         BANGLADESH                     2          1411   18014
Birth       JiVitA-3         BANGLADESH                     3          1715   18014
Birth       JiVitA-3         BANGLADESH                     4          1254   18014
Birth       JiVitA-3         BANGLADESH                     5           895   18014
Birth       JiVitA-3         BANGLADESH                     6           918   18014
Birth       JiVitA-3         BANGLADESH                     7          1052   18014
Birth       JiVitA-3         BANGLADESH                     8          1382   18014
Birth       JiVitA-3         BANGLADESH                     9          1863   18014
Birth       JiVitA-3         BANGLADESH                     10         1913   18014
Birth       JiVitA-3         BANGLADESH                     11         1905   18014
Birth       JiVitA-3         BANGLADESH                     12         2078   18014
Birth       JiVitA-4         BANGLADESH                     1             0    2396
Birth       JiVitA-4         BANGLADESH                     2           277    2396
Birth       JiVitA-4         BANGLADESH                     3           316    2396
Birth       JiVitA-4         BANGLADESH                     4           395    2396
Birth       JiVitA-4         BANGLADESH                     5           377    2396
Birth       JiVitA-4         BANGLADESH                     6           295    2396
Birth       JiVitA-4         BANGLADESH                     7           315    2396
Birth       JiVitA-4         BANGLADESH                     8           226    2396
Birth       JiVitA-4         BANGLADESH                     9           134    2396
Birth       JiVitA-4         BANGLADESH                     10           61    2396
Birth       JiVitA-4         BANGLADESH                     11            0    2396
Birth       JiVitA-4         BANGLADESH                     12            0    2396
Birth       Keneba           GAMBIA                         1           133    1466
Birth       Keneba           GAMBIA                         2           153    1466
Birth       Keneba           GAMBIA                         3           140    1466
Birth       Keneba           GAMBIA                         4           159    1466
Birth       Keneba           GAMBIA                         5           103    1466
Birth       Keneba           GAMBIA                         6           102    1466
Birth       Keneba           GAMBIA                         7            85    1466
Birth       Keneba           GAMBIA                         8            74    1466
Birth       Keneba           GAMBIA                         9           116    1466
Birth       Keneba           GAMBIA                         10          118    1466
Birth       Keneba           GAMBIA                         11          168    1466
Birth       Keneba           GAMBIA                         12          115    1466
Birth       MAL-ED           BANGLADESH                     1            20     215
Birth       MAL-ED           BANGLADESH                     2            18     215
Birth       MAL-ED           BANGLADESH                     3            23     215
Birth       MAL-ED           BANGLADESH                     4            21     215
Birth       MAL-ED           BANGLADESH                     5            17     215
Birth       MAL-ED           BANGLADESH                     6             6     215
Birth       MAL-ED           BANGLADESH                     7            12     215
Birth       MAL-ED           BANGLADESH                     8            24     215
Birth       MAL-ED           BANGLADESH                     9            16     215
Birth       MAL-ED           BANGLADESH                     10           19     215
Birth       MAL-ED           BANGLADESH                     11           13     215
Birth       MAL-ED           BANGLADESH                     12           26     215
Birth       MAL-ED           BRAZIL                         1             5      62
Birth       MAL-ED           BRAZIL                         2             8      62
Birth       MAL-ED           BRAZIL                         3             9      62
Birth       MAL-ED           BRAZIL                         4             5      62
Birth       MAL-ED           BRAZIL                         5             1      62
Birth       MAL-ED           BRAZIL                         6             5      62
Birth       MAL-ED           BRAZIL                         7             5      62
Birth       MAL-ED           BRAZIL                         8             6      62
Birth       MAL-ED           BRAZIL                         9             6      62
Birth       MAL-ED           BRAZIL                         10            4      62
Birth       MAL-ED           BRAZIL                         11            5      62
Birth       MAL-ED           BRAZIL                         12            3      62
Birth       MAL-ED           INDIA                          1             2      45
Birth       MAL-ED           INDIA                          2             3      45
Birth       MAL-ED           INDIA                          3             5      45
Birth       MAL-ED           INDIA                          4             6      45
Birth       MAL-ED           INDIA                          5             2      45
Birth       MAL-ED           INDIA                          6             3      45
Birth       MAL-ED           INDIA                          7             3      45
Birth       MAL-ED           INDIA                          8             7      45
Birth       MAL-ED           INDIA                          9             4      45
Birth       MAL-ED           INDIA                          10            6      45
Birth       MAL-ED           INDIA                          11            3      45
Birth       MAL-ED           INDIA                          12            1      45
Birth       MAL-ED           NEPAL                          1             1      26
Birth       MAL-ED           NEPAL                          2             3      26
Birth       MAL-ED           NEPAL                          3             1      26
Birth       MAL-ED           NEPAL                          4             2      26
Birth       MAL-ED           NEPAL                          5             2      26
Birth       MAL-ED           NEPAL                          6             3      26
Birth       MAL-ED           NEPAL                          7             1      26
Birth       MAL-ED           NEPAL                          8             1      26
Birth       MAL-ED           NEPAL                          9             3      26
Birth       MAL-ED           NEPAL                          10            3      26
Birth       MAL-ED           NEPAL                          11            4      26
Birth       MAL-ED           NEPAL                          12            2      26
Birth       MAL-ED           PERU                           1            24     228
Birth       MAL-ED           PERU                           2            20     228
Birth       MAL-ED           PERU                           3            21     228
Birth       MAL-ED           PERU                           4            13     228
Birth       MAL-ED           PERU                           5            18     228
Birth       MAL-ED           PERU                           6            15     228
Birth       MAL-ED           PERU                           7            20     228
Birth       MAL-ED           PERU                           8            14     228
Birth       MAL-ED           PERU                           9            20     228
Birth       MAL-ED           PERU                           10           20     228
Birth       MAL-ED           PERU                           11           29     228
Birth       MAL-ED           PERU                           12           14     228
Birth       MAL-ED           SOUTH AFRICA                   1             7     120
Birth       MAL-ED           SOUTH AFRICA                   2            13     120
Birth       MAL-ED           SOUTH AFRICA                   3            10     120
Birth       MAL-ED           SOUTH AFRICA                   4             7     120
Birth       MAL-ED           SOUTH AFRICA                   5             5     120
Birth       MAL-ED           SOUTH AFRICA                   6             7     120
Birth       MAL-ED           SOUTH AFRICA                   7            14     120
Birth       MAL-ED           SOUTH AFRICA                   8             4     120
Birth       MAL-ED           SOUTH AFRICA                   9            10     120
Birth       MAL-ED           SOUTH AFRICA                   10           10     120
Birth       MAL-ED           SOUTH AFRICA                   11           15     120
Birth       MAL-ED           SOUTH AFRICA                   12           18     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             8     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2            14     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3            15     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5            10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6             8     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7            15     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8             7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9             1     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10            6     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11           14     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12           10     115
Birth       NIH-Birth        BANGLADESH                     1            54     575
Birth       NIH-Birth        BANGLADESH                     2            55     575
Birth       NIH-Birth        BANGLADESH                     3            58     575
Birth       NIH-Birth        BANGLADESH                     4            48     575
Birth       NIH-Birth        BANGLADESH                     5            45     575
Birth       NIH-Birth        BANGLADESH                     6            40     575
Birth       NIH-Birth        BANGLADESH                     7            45     575
Birth       NIH-Birth        BANGLADESH                     8            41     575
Birth       NIH-Birth        BANGLADESH                     9            31     575
Birth       NIH-Birth        BANGLADESH                     10           58     575
Birth       NIH-Birth        BANGLADESH                     11           49     575
Birth       NIH-Birth        BANGLADESH                     12           51     575
Birth       PROBIT           BELARUS                        1           855   13817
Birth       PROBIT           BELARUS                        2           785   13817
Birth       PROBIT           BELARUS                        3           960   13817
Birth       PROBIT           BELARUS                        4           955   13817
Birth       PROBIT           BELARUS                        5           949   13817
Birth       PROBIT           BELARUS                        6          1006   13817
Birth       PROBIT           BELARUS                        7          1275   13817
Birth       PROBIT           BELARUS                        8          1318   13817
Birth       PROBIT           BELARUS                        9          1311   13817
Birth       PROBIT           BELARUS                        10         1496   13817
Birth       PROBIT           BELARUS                        11         1392   13817
Birth       PROBIT           BELARUS                        12         1515   13817
Birth       ResPak           PAKISTAN                       1             0      38
Birth       ResPak           PAKISTAN                       2             2      38
Birth       ResPak           PAKISTAN                       3             1      38
Birth       ResPak           PAKISTAN                       4             1      38
Birth       ResPak           PAKISTAN                       5             6      38
Birth       ResPak           PAKISTAN                       6             7      38
Birth       ResPak           PAKISTAN                       7             7      38
Birth       ResPak           PAKISTAN                       8             8      38
Birth       ResPak           PAKISTAN                       9             4      38
Birth       ResPak           PAKISTAN                       10            1      38
Birth       ResPak           PAKISTAN                       11            1      38
Birth       ResPak           PAKISTAN                       12            0      38
Birth       SAS-CompFeed     INDIA                          1            65    1103
Birth       SAS-CompFeed     INDIA                          2            62    1103
Birth       SAS-CompFeed     INDIA                          3            67    1103
Birth       SAS-CompFeed     INDIA                          4            60    1103
Birth       SAS-CompFeed     INDIA                          5            65    1103
Birth       SAS-CompFeed     INDIA                          6            92    1103
Birth       SAS-CompFeed     INDIA                          7            94    1103
Birth       SAS-CompFeed     INDIA                          8           123    1103
Birth       SAS-CompFeed     INDIA                          9           135    1103
Birth       SAS-CompFeed     INDIA                          10          123    1103
Birth       SAS-CompFeed     INDIA                          11          113    1103
Birth       SAS-CompFeed     INDIA                          12          104    1103
Birth       ZVITAMBO         ZIMBABWE                       1          1238   12917
Birth       ZVITAMBO         ZIMBABWE                       2           948   12917
Birth       ZVITAMBO         ZIMBABWE                       3          1060   12917
Birth       ZVITAMBO         ZIMBABWE                       4           941   12917
Birth       ZVITAMBO         ZIMBABWE                       5           914   12917
Birth       ZVITAMBO         ZIMBABWE                       6          1047   12917
Birth       ZVITAMBO         ZIMBABWE                       7          1098   12917
Birth       ZVITAMBO         ZIMBABWE                       8          1166   12917
Birth       ZVITAMBO         ZIMBABWE                       9          1268   12917
Birth       ZVITAMBO         ZIMBABWE                       10          984   12917
Birth       ZVITAMBO         ZIMBABWE                       11         1070   12917
Birth       ZVITAMBO         ZIMBABWE                       12         1183   12917
6 months    CMC-V-BCS-2002   INDIA                          1            28     368
6 months    CMC-V-BCS-2002   INDIA                          2            24     368
6 months    CMC-V-BCS-2002   INDIA                          3            26     368
6 months    CMC-V-BCS-2002   INDIA                          4            29     368
6 months    CMC-V-BCS-2002   INDIA                          5            41     368
6 months    CMC-V-BCS-2002   INDIA                          6            36     368
6 months    CMC-V-BCS-2002   INDIA                          7            33     368
6 months    CMC-V-BCS-2002   INDIA                          8            41     368
6 months    CMC-V-BCS-2002   INDIA                          9            22     368
6 months    CMC-V-BCS-2002   INDIA                          10           19     368
6 months    CMC-V-BCS-2002   INDIA                          11           41     368
6 months    CMC-V-BCS-2002   INDIA                          12           28     368
6 months    CMIN             BANGLADESH                     1            28     243
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
6 months    CMIN             BANGLADESH                     12           44     243
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
6 months    EE               PAKISTAN                       1            91     375
6 months    EE               PAKISTAN                       2            72     375
6 months    EE               PAKISTAN                       3            47     375
6 months    EE               PAKISTAN                       4            22     375
6 months    EE               PAKISTAN                       5             0     375
6 months    EE               PAKISTAN                       6             0     375
6 months    EE               PAKISTAN                       7             0     375
6 months    EE               PAKISTAN                       8             0     375
6 months    EE               PAKISTAN                       9             0     375
6 months    EE               PAKISTAN                       10            0     375
6 months    EE               PAKISTAN                       11           60     375
6 months    EE               PAKISTAN                       12           83     375
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
6 months    IRC              INDIA                          1            35     408
6 months    IRC              INDIA                          2            30     408
6 months    IRC              INDIA                          3            29     408
6 months    IRC              INDIA                          4            24     408
6 months    IRC              INDIA                          5            21     408
6 months    IRC              INDIA                          6            35     408
6 months    IRC              INDIA                          7            36     408
6 months    IRC              INDIA                          8            41     408
6 months    IRC              INDIA                          9            28     408
6 months    IRC              INDIA                          10           39     408
6 months    IRC              INDIA                          11           41     408
6 months    IRC              INDIA                          12           49     408
6 months    JiVitA-3         BANGLADESH                     1          1366   16784
6 months    JiVitA-3         BANGLADESH                     2          1179   16784
6 months    JiVitA-3         BANGLADESH                     3          1420   16784
6 months    JiVitA-3         BANGLADESH                     4          1191   16784
6 months    JiVitA-3         BANGLADESH                     5          1147   16784
6 months    JiVitA-3         BANGLADESH                     6          1155   16784
6 months    JiVitA-3         BANGLADESH                     7          1245   16784
6 months    JiVitA-3         BANGLADESH                     8          1463   16784
6 months    JiVitA-3         BANGLADESH                     9          1551   16784
6 months    JiVitA-3         BANGLADESH                     10         1693   16784
6 months    JiVitA-3         BANGLADESH                     11         1669   16784
6 months    JiVitA-3         BANGLADESH                     12         1705   16784
6 months    JiVitA-4         BANGLADESH                     1            53    4833
6 months    JiVitA-4         BANGLADESH                     2           165    4833
6 months    JiVitA-4         BANGLADESH                     3           430    4833
6 months    JiVitA-4         BANGLADESH                     4           848    4833
6 months    JiVitA-4         BANGLADESH                     5           586    4833
6 months    JiVitA-4         BANGLADESH                     6           434    4833
6 months    JiVitA-4         BANGLADESH                     7           836    4833
6 months    JiVitA-4         BANGLADESH                     8           510    4833
6 months    JiVitA-4         BANGLADESH                     9           431    4833
6 months    JiVitA-4         BANGLADESH                     10          306    4833
6 months    JiVitA-4         BANGLADESH                     11          157    4833
6 months    JiVitA-4         BANGLADESH                     12           77    4833
6 months    Keneba           GAMBIA                         1           184    2089
6 months    Keneba           GAMBIA                         2           210    2089
6 months    Keneba           GAMBIA                         3           185    2089
6 months    Keneba           GAMBIA                         4           224    2089
6 months    Keneba           GAMBIA                         5           185    2089
6 months    Keneba           GAMBIA                         6           150    2089
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
6 months    PROBIT           BELARUS                        1          1101   15757
6 months    PROBIT           BELARUS                        2           950   15757
6 months    PROBIT           BELARUS                        3          1114   15757
6 months    PROBIT           BELARUS                        4          1070   15757
6 months    PROBIT           BELARUS                        5          1096   15757
6 months    PROBIT           BELARUS                        6          1120   15757
6 months    PROBIT           BELARUS                        7          1366   15757
6 months    PROBIT           BELARUS                        8          1498   15757
6 months    PROBIT           BELARUS                        9          1481   15757
6 months    PROBIT           BELARUS                        10         1669   15757
6 months    PROBIT           BELARUS                        11         1589   15757
6 months    PROBIT           BELARUS                        12         1703   15757
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
6 months    SAS-CompFeed     INDIA                          1            85    1334
6 months    SAS-CompFeed     INDIA                          2            81    1334
6 months    SAS-CompFeed     INDIA                          3            80    1334
6 months    SAS-CompFeed     INDIA                          4            75    1334
6 months    SAS-CompFeed     INDIA                          5            76    1334
6 months    SAS-CompFeed     INDIA                          6           102    1334
6 months    SAS-CompFeed     INDIA                          7           115    1334
6 months    SAS-CompFeed     INDIA                          8           152    1334
6 months    SAS-CompFeed     INDIA                          9           165    1334
6 months    SAS-CompFeed     INDIA                          10          148    1334
6 months    SAS-CompFeed     INDIA                          11          126    1334
6 months    SAS-CompFeed     INDIA                          12          129    1334
6 months    SAS-FoodSuppl    INDIA                          1            61     380
6 months    SAS-FoodSuppl    INDIA                          2            37     380
6 months    SAS-FoodSuppl    INDIA                          3            36     380
6 months    SAS-FoodSuppl    INDIA                          4            26     380
6 months    SAS-FoodSuppl    INDIA                          5            29     380
6 months    SAS-FoodSuppl    INDIA                          6            31     380
6 months    SAS-FoodSuppl    INDIA                          7            16     380
6 months    SAS-FoodSuppl    INDIA                          8             0     380
6 months    SAS-FoodSuppl    INDIA                          9            12     380
6 months    SAS-FoodSuppl    INDIA                          10           26     380
6 months    SAS-FoodSuppl    INDIA                          11           44     380
6 months    SAS-FoodSuppl    INDIA                          12           62     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1           199    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2           137    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3           151    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4           138    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5           161    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6           142    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7           145    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8           174    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9           198    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10          195    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11          187    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12          201    2028
6 months    ZVITAMBO         ZIMBABWE                       1           816    8505
6 months    ZVITAMBO         ZIMBABWE                       2           598    8505
6 months    ZVITAMBO         ZIMBABWE                       3           720    8505
6 months    ZVITAMBO         ZIMBABWE                       4           669    8505
6 months    ZVITAMBO         ZIMBABWE                       5           621    8505
6 months    ZVITAMBO         ZIMBABWE                       6           670    8505
6 months    ZVITAMBO         ZIMBABWE                       7           663    8505
6 months    ZVITAMBO         ZIMBABWE                       8           759    8505
6 months    ZVITAMBO         ZIMBABWE                       9           789    8505
6 months    ZVITAMBO         ZIMBABWE                       10          617    8505
6 months    ZVITAMBO         ZIMBABWE                       11          745    8505
6 months    ZVITAMBO         ZIMBABWE                       12          838    8505
24 months   CMC-V-BCS-2002   INDIA                          1            28     372
24 months   CMC-V-BCS-2002   INDIA                          2            24     372
24 months   CMC-V-BCS-2002   INDIA                          3            26     372
24 months   CMC-V-BCS-2002   INDIA                          4            29     372
24 months   CMC-V-BCS-2002   INDIA                          5            43     372
24 months   CMC-V-BCS-2002   INDIA                          6            37     372
24 months   CMC-V-BCS-2002   INDIA                          7            33     372
24 months   CMC-V-BCS-2002   INDIA                          8            41     372
24 months   CMC-V-BCS-2002   INDIA                          9            22     372
24 months   CMC-V-BCS-2002   INDIA                          10           19     372
24 months   CMC-V-BCS-2002   INDIA                          11           41     372
24 months   CMC-V-BCS-2002   INDIA                          12           29     372
24 months   CMIN             BANGLADESH                     1            27     243
24 months   CMIN             BANGLADESH                     2            31     243
24 months   CMIN             BANGLADESH                     3            19     243
24 months   CMIN             BANGLADESH                     4            18     243
24 months   CMIN             BANGLADESH                     5            19     243
24 months   CMIN             BANGLADESH                     6            22     243
24 months   CMIN             BANGLADESH                     7            12     243
24 months   CMIN             BANGLADESH                     8            13     243
24 months   CMIN             BANGLADESH                     9            18     243
24 months   CMIN             BANGLADESH                     10           19     243
24 months   CMIN             BANGLADESH                     11            2     243
24 months   CMIN             BANGLADESH                     12           43     243
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
24 months   EE               PAKISTAN                       1            29     168
24 months   EE               PAKISTAN                       2             2     168
24 months   EE               PAKISTAN                       3             2     168
24 months   EE               PAKISTAN                       4             0     168
24 months   EE               PAKISTAN                       5             0     168
24 months   EE               PAKISTAN                       6             0     168
24 months   EE               PAKISTAN                       7             0     168
24 months   EE               PAKISTAN                       8             0     168
24 months   EE               PAKISTAN                       9             0     168
24 months   EE               PAKISTAN                       10            0     168
24 months   EE               PAKISTAN                       11           57     168
24 months   EE               PAKISTAN                       12           78     168
24 months   GMS-Nepal        NEPAL                          1             0     487
24 months   GMS-Nepal        NEPAL                          2             0     487
24 months   GMS-Nepal        NEPAL                          3             0     487
24 months   GMS-Nepal        NEPAL                          4             0     487
24 months   GMS-Nepal        NEPAL                          5             0     487
24 months   GMS-Nepal        NEPAL                          6            72     487
24 months   GMS-Nepal        NEPAL                          7           200     487
24 months   GMS-Nepal        NEPAL                          8           215     487
24 months   GMS-Nepal        NEPAL                          9             0     487
24 months   GMS-Nepal        NEPAL                          10            0     487
24 months   GMS-Nepal        NEPAL                          11            0     487
24 months   GMS-Nepal        NEPAL                          12            0     487
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
24 months   JiVitA-3         BANGLADESH                     1           705    8603
24 months   JiVitA-3         BANGLADESH                     2           608    8603
24 months   JiVitA-3         BANGLADESH                     3           726    8603
24 months   JiVitA-3         BANGLADESH                     4           538    8603
24 months   JiVitA-3         BANGLADESH                     5           394    8603
24 months   JiVitA-3         BANGLADESH                     6           561    8603
24 months   JiVitA-3         BANGLADESH                     7           649    8603
24 months   JiVitA-3         BANGLADESH                     8           647    8603
24 months   JiVitA-3         BANGLADESH                     9           726    8603
24 months   JiVitA-3         BANGLADESH                     10          885    8603
24 months   JiVitA-3         BANGLADESH                     11          937    8603
24 months   JiVitA-3         BANGLADESH                     12         1227    8603
24 months   JiVitA-4         BANGLADESH                     1            48    4735
24 months   JiVitA-4         BANGLADESH                     2           321    4735
24 months   JiVitA-4         BANGLADESH                     3           400    4735
24 months   JiVitA-4         BANGLADESH                     4           796    4735
24 months   JiVitA-4         BANGLADESH                     5           559    4735
24 months   JiVitA-4         BANGLADESH                     6           423    4735
24 months   JiVitA-4         BANGLADESH                     7           780    4735
24 months   JiVitA-4         BANGLADESH                     8           472    4735
24 months   JiVitA-4         BANGLADESH                     9           444    4735
24 months   JiVitA-4         BANGLADESH                     10          276    4735
24 months   JiVitA-4         BANGLADESH                     11          145    4735
24 months   JiVitA-4         BANGLADESH                     12           71    4735
24 months   Keneba           GAMBIA                         1           148    1726
24 months   Keneba           GAMBIA                         2           160    1726
24 months   Keneba           GAMBIA                         3           159    1726
24 months   Keneba           GAMBIA                         4           175    1726
24 months   Keneba           GAMBIA                         5           182    1726
24 months   Keneba           GAMBIA                         6           132    1726
24 months   Keneba           GAMBIA                         7           101    1726
24 months   Keneba           GAMBIA                         8            94    1726
24 months   Keneba           GAMBIA                         9           135    1726
24 months   Keneba           GAMBIA                         10          150    1726
24 months   Keneba           GAMBIA                         11          178    1726
24 months   Keneba           GAMBIA                         12          112    1726
24 months   LCNI-5           MALAWI                         1            40     563
24 months   LCNI-5           MALAWI                         2            86     563
24 months   LCNI-5           MALAWI                         3            67     563
24 months   LCNI-5           MALAWI                         4            74     563
24 months   LCNI-5           MALAWI                         5            62     563
24 months   LCNI-5           MALAWI                         6            64     563
24 months   LCNI-5           MALAWI                         7            39     563
24 months   LCNI-5           MALAWI                         8            27     563
24 months   LCNI-5           MALAWI                         9            20     563
24 months   LCNI-5           MALAWI                         10           25     563
24 months   LCNI-5           MALAWI                         11           35     563
24 months   LCNI-5           MALAWI                         12           24     563
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
24 months   NIH-Birth        BANGLADESH                     1            42     428
24 months   NIH-Birth        BANGLADESH                     2            36     428
24 months   NIH-Birth        BANGLADESH                     3            41     428
24 months   NIH-Birth        BANGLADESH                     4            34     428
24 months   NIH-Birth        BANGLADESH                     5            34     428
24 months   NIH-Birth        BANGLADESH                     6            30     428
24 months   NIH-Birth        BANGLADESH                     7            37     428
24 months   NIH-Birth        BANGLADESH                     8            30     428
24 months   NIH-Birth        BANGLADESH                     9            19     428
24 months   NIH-Birth        BANGLADESH                     10           40     428
24 months   NIH-Birth        BANGLADESH                     11           40     428
24 months   NIH-Birth        BANGLADESH                     12           45     428
24 months   PROBIT           BELARUS                        1           264    3970
24 months   PROBIT           BELARUS                        2           210    3970
24 months   PROBIT           BELARUS                        3           320    3970
24 months   PROBIT           BELARUS                        4           322    3970
24 months   PROBIT           BELARUS                        5           301    3970
24 months   PROBIT           BELARUS                        6           264    3970
24 months   PROBIT           BELARUS                        7           364    3970
24 months   PROBIT           BELARUS                        8           346    3970
24 months   PROBIT           BELARUS                        9           375    3970
24 months   PROBIT           BELARUS                        10          389    3970
24 months   PROBIT           BELARUS                        11          386    3970
24 months   PROBIT           BELARUS                        12          429    3970
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
24 months   ZVITAMBO         ZIMBABWE                       1            51     433
24 months   ZVITAMBO         ZIMBABWE                       2            60     433
24 months   ZVITAMBO         ZIMBABWE                       3            56     433
24 months   ZVITAMBO         ZIMBABWE                       4            46     433
24 months   ZVITAMBO         ZIMBABWE                       5            49     433
24 months   ZVITAMBO         ZIMBABWE                       6            44     433
24 months   ZVITAMBO         ZIMBABWE                       7            32     433
24 months   ZVITAMBO         ZIMBABWE                       8            30     433
24 months   ZVITAMBO         ZIMBABWE                       9             2     433
24 months   ZVITAMBO         ZIMBABWE                       10            4     433
24 months   ZVITAMBO         ZIMBABWE                       11           20     433
24 months   ZVITAMBO         ZIMBABWE                       12           39     433


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
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

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
![](/tmp/3f5efd23-c499-4ab1-865f-59f46d7415b0/0435b2a6-80f6-49a4-ac7b-b2431eb66082/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed          -0.6440844   -1.3798035    0.0916347
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.6340098   -0.6916102   -0.5764093
Birth       Keneba           GAMBIA                         optimal              observed          -0.7695628   -1.0449645   -0.4941610
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.1709124   -1.7598186   -0.5820062
Birth       MAL-ED           PERU                           optimal              observed          -0.5838324   -1.0007846   -0.1668802
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.9051155   -1.1654912   -0.6447399
Birth       PROBIT           BELARUS                        optimal              observed          -1.0185829   -1.2989683   -0.7381974
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0941808   -0.2891424    0.1007809
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2646744   -0.3608102   -0.1685386
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3982492   -0.9028959    0.1063975
6 months    CONTENT          PERU                           optimal              observed           0.7778788    0.3926947    1.1630629
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.4885252   -0.8269609   -0.1500896
6 months    IRC              INDIA                          optimal              observed           0.0655018   -0.7375533    0.8685569
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5532127   -0.6223363   -0.4840891
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3827400   -0.5103516   -0.2551283
6 months    Keneba           GAMBIA                         optimal              observed           0.0622014   -0.1158594    0.2402622
6 months    LCNI-5           MALAWI                         optimal              observed           0.7666497    0.4233017    1.1099977
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.0747852   -0.6622814    0.8118519
6 months    MAL-ED           BRAZIL                         optimal              observed           0.9650660    0.5051634    1.4249685
6 months    MAL-ED           INDIA                          optimal              observed          -0.9989944   -1.3391849   -0.6588040
6 months    MAL-ED           NEPAL                          optimal              observed           0.5701478    0.1324263    1.0078694
6 months    MAL-ED           PERU                           optimal              observed           1.4683121    0.9604622    1.9761620
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           1.1997727    0.8155549    1.5839906
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0904496   -0.4630220    0.6439212
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.4334682   -0.7137451   -0.1531913
6 months    PROBIT           BELARUS                        optimal              observed           0.5005142    0.4183833    0.5826452
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.3378347   -0.6848812    0.0092117
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3150285    0.1237502    0.5063067
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.3696202    0.2732542    0.4659861
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6566695   -0.9975365   -0.3158024
24 months   IRC              INDIA                          optimal              observed          -0.7619589   -1.0490303   -0.4748875
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.1363197   -1.2081991   -1.0644403
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.0497097   -1.1556230   -0.9437964
24 months   Keneba           GAMBIA                         optimal              observed          -0.5688508   -0.7125364   -0.4251652
24 months   LCNI-5           MALAWI                         optimal              observed          -0.1334189   -0.4660218    0.1991840
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.6934073   -1.2262962   -0.1605184
24 months   MAL-ED           BRAZIL                         optimal              observed           1.3285098    0.4957097    2.1613099
24 months   MAL-ED           INDIA                          optimal              observed          -0.8432460   -1.2848067   -0.4016853
24 months   MAL-ED           NEPAL                          optimal              observed          -0.5433342   -0.9116267   -0.1750417
24 months   MAL-ED           PERU                           optimal              observed          -0.5551769   -1.4043439    0.2939901
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.4091835   -0.0408122    0.8591793
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1157557   -0.4371872    0.2056758
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -1.0810744   -1.4597937   -0.7023551
24 months   PROBIT           BELARUS                        optimal              observed           0.5583776    0.4136918    0.7030633


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
Birth       Keneba           GAMBIA                         observed             observed          -1.2349454   -1.2972413   -1.1726496
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       PROBIT           BELARUS                        observed             observed          -1.1491782   -1.3593933   -0.9389630
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    CONTENT          PERU                           observed             observed           1.0644279    0.9468682    1.1819876
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
6 months    Keneba           GAMBIA                         observed             observed          -0.1846038   -0.2354782   -0.1337293
6 months    LCNI-5           MALAWI                         observed             observed           0.4499404    0.3788501    0.5210308
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          observed             observed          -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED           NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    PROBIT           BELARUS                        observed             observed           0.5741099    0.5141290    0.6340908
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3105514    0.2848767    0.3362262
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543
24 months   Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   LCNI-5           MALAWI                         observed             observed          -0.0477709   -0.1296526    0.0341109
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   PROBIT           BELARUS                        observed             observed           0.6981406    0.5843775    0.8119038


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed          -0.3664987   -1.0675774    0.3345801
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.1438175   -0.1968223   -0.0908126
Birth       Keneba           GAMBIA                         optimal              observed          -0.4653827   -0.7319944   -0.1987710
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.2290520   -0.3267612    0.7848651
Birth       MAL-ED           PERU                           optimal              observed           0.5318148    0.1274137    0.9362159
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.4448062   -0.6998062   -0.1898062
Birth       PROBIT           BELARUS                        optimal              observed          -0.1305953   -0.2955232    0.0343326
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.5758646   -0.7847183   -0.3670108
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2508153   -0.3433179   -0.1583127
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1044274   -0.5843576    0.3755027
6 months    CONTENT          PERU                           optimal              observed           0.2865491   -0.1019855    0.6750837
6 months    Guatemala BSC    GUATEMALA                      optimal              observed           0.4045119    0.0796668    0.7293569
6 months    IRC              INDIA                          optimal              observed          -0.6644316   -1.4424389    0.1135758
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0403034   -0.1065863    0.0259795
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0070655   -0.1350050    0.1208739
6 months    Keneba           GAMBIA                         optimal              observed          -0.2468052   -0.4187036   -0.0749068
6 months    LCNI-5           MALAWI                         optimal              observed          -0.3167093   -0.6531906    0.0197719
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.2124616   -0.9286310    0.5037079
6 months    MAL-ED           BRAZIL                         optimal              observed           0.0070114   -0.4513193    0.4653421
6 months    MAL-ED           INDIA                          optimal              observed           0.2909966   -0.0425318    0.6245250
6 months    MAL-ED           NEPAL                          optimal              observed          -0.4597170   -0.8836988   -0.0357353
6 months    MAL-ED           PERU                           optimal              observed          -0.4154306   -0.8992452    0.0683840
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.6575943   -1.0235938   -0.2915947
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4457717   -0.0868534    0.9783969
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.0139356   -0.2878879    0.2600168
6 months    PROBIT           BELARUS                        optimal              observed           0.0735957    0.0116520    0.1355394
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.3278737   -0.5557358   -0.1000116
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2340953   -0.4190925   -0.0490981
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0590687   -0.1504935    0.0323561
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed           0.0995189   -0.2314567    0.4304945
24 months   IRC              INDIA                          optimal              observed           0.0161439   -0.2619549    0.2942427
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.1614834   -0.2303066   -0.0926602
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.1733991   -0.2766410   -0.0701572
24 months   Keneba           GAMBIA                         optimal              observed          -0.2410782   -0.3792622   -0.1028941
24 months   LCNI-5           MALAWI                         optimal              observed           0.0856480   -0.2396367    0.4109328
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.1258852   -0.6346988    0.3829285
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.8658865   -1.6842696   -0.0475035
24 months   MAL-ED           INDIA                          optimal              observed          -0.1084060   -0.5289587    0.3121467
24 months   MAL-ED           NEPAL                          optimal              observed           0.1684219   -0.1888668    0.5257107
24 months   MAL-ED           PERU                           optimal              observed           0.6663751   -0.1495965    1.4823467
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0001534   -0.4319617    0.4316549
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1705532   -0.1415601    0.4826665
24 months   NIH-Birth        BANGLADESH                     optimal              observed           0.1694954   -0.1928545    0.5318452
24 months   PROBIT           BELARUS                        optimal              observed           0.1397631    0.0018325    0.2776937
