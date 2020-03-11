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
Birth       CMC-V-BCS-2002   INDIA                          1               9      86
Birth       CMC-V-BCS-2002   INDIA                          2               1      86
Birth       CMC-V-BCS-2002   INDIA                          3               7      86
Birth       CMC-V-BCS-2002   INDIA                          4               9      86
Birth       CMC-V-BCS-2002   INDIA                          5              10      86
Birth       CMC-V-BCS-2002   INDIA                          6               9      86
Birth       CMC-V-BCS-2002   INDIA                          7               7      86
Birth       CMC-V-BCS-2002   INDIA                          8               4      86
Birth       CMC-V-BCS-2002   INDIA                          9               8      86
Birth       CMC-V-BCS-2002   INDIA                          10              8      86
Birth       CMC-V-BCS-2002   INDIA                          11             11      86
Birth       CMC-V-BCS-2002   INDIA                          12              3      86
Birth       CMIN             BANGLADESH                     1               2      19
Birth       CMIN             BANGLADESH                     2               4      19
Birth       CMIN             BANGLADESH                     3               0      19
Birth       CMIN             BANGLADESH                     4               2      19
Birth       CMIN             BANGLADESH                     5               1      19
Birth       CMIN             BANGLADESH                     6               0      19
Birth       CMIN             BANGLADESH                     7               4      19
Birth       CMIN             BANGLADESH                     8               2      19
Birth       CMIN             BANGLADESH                     9               1      19
Birth       CMIN             BANGLADESH                     10              1      19
Birth       CMIN             BANGLADESH                     11              2      19
Birth       CMIN             BANGLADESH                     12              0      19
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
Birth       EE               PAKISTAN                       1              39     177
Birth       EE               PAKISTAN                       2              36     177
Birth       EE               PAKISTAN                       3              16     177
Birth       EE               PAKISTAN                       4               7     177
Birth       EE               PAKISTAN                       5               0     177
Birth       EE               PAKISTAN                       6               0     177
Birth       EE               PAKISTAN                       7               0     177
Birth       EE               PAKISTAN                       8               0     177
Birth       EE               PAKISTAN                       9               0     177
Birth       EE               PAKISTAN                       10              0     177
Birth       EE               PAKISTAN                       11             41     177
Birth       EE               PAKISTAN                       12             38     177
Birth       GMS-Nepal        NEPAL                          1               0     641
Birth       GMS-Nepal        NEPAL                          2               0     641
Birth       GMS-Nepal        NEPAL                          3               0     641
Birth       GMS-Nepal        NEPAL                          4               1     641
Birth       GMS-Nepal        NEPAL                          5               0     641
Birth       GMS-Nepal        NEPAL                          6             162     641
Birth       GMS-Nepal        NEPAL                          7             242     641
Birth       GMS-Nepal        NEPAL                          8             236     641
Birth       GMS-Nepal        NEPAL                          9               0     641
Birth       GMS-Nepal        NEPAL                          10              0     641
Birth       GMS-Nepal        NEPAL                          11              0     641
Birth       GMS-Nepal        NEPAL                          12              0     641
Birth       IRC              INDIA                          1              31     343
Birth       IRC              INDIA                          2              23     343
Birth       IRC              INDIA                          3              24     343
Birth       IRC              INDIA                          4              19     343
Birth       IRC              INDIA                          5              15     343
Birth       IRC              INDIA                          6              26     343
Birth       IRC              INDIA                          7              31     343
Birth       IRC              INDIA                          8              36     343
Birth       IRC              INDIA                          9              24     343
Birth       IRC              INDIA                          10             33     343
Birth       IRC              INDIA                          11             38     343
Birth       IRC              INDIA                          12             43     343
Birth       JiVitA-3         BANGLADESH                     1            1623   18014
Birth       JiVitA-3         BANGLADESH                     2            1410   18014
Birth       JiVitA-3         BANGLADESH                     3            1703   18014
Birth       JiVitA-3         BANGLADESH                     4            1245   18014
Birth       JiVitA-3         BANGLADESH                     5             880   18014
Birth       JiVitA-3         BANGLADESH                     6             925   18014
Birth       JiVitA-3         BANGLADESH                     7            1059   18014
Birth       JiVitA-3         BANGLADESH                     8            1414   18014
Birth       JiVitA-3         BANGLADESH                     9            1856   18014
Birth       JiVitA-3         BANGLADESH                     10           1919   18014
Birth       JiVitA-3         BANGLADESH                     11           1937   18014
Birth       JiVitA-3         BANGLADESH                     12           2043   18014
Birth       JiVitA-4         BANGLADESH                     1               0    2396
Birth       JiVitA-4         BANGLADESH                     2             299    2396
Birth       JiVitA-4         BANGLADESH                     3             327    2396
Birth       JiVitA-4         BANGLADESH                     4             403    2396
Birth       JiVitA-4         BANGLADESH                     5             368    2396
Birth       JiVitA-4         BANGLADESH                     6             286    2396
Birth       JiVitA-4         BANGLADESH                     7             322    2396
Birth       JiVitA-4         BANGLADESH                     8             216    2396
Birth       JiVitA-4         BANGLADESH                     9             134    2396
Birth       JiVitA-4         BANGLADESH                     10             41    2396
Birth       JiVitA-4         BANGLADESH                     11              0    2396
Birth       JiVitA-4         BANGLADESH                     12              0    2396
Birth       Keneba           GAMBIA                         1             153    1466
Birth       Keneba           GAMBIA                         2             140    1466
Birth       Keneba           GAMBIA                         3             159    1466
Birth       Keneba           GAMBIA                         4             103    1466
Birth       Keneba           GAMBIA                         5             102    1466
Birth       Keneba           GAMBIA                         6              85    1466
Birth       Keneba           GAMBIA                         7              74    1466
Birth       Keneba           GAMBIA                         8             116    1466
Birth       Keneba           GAMBIA                         9             118    1466
Birth       Keneba           GAMBIA                         10            168    1466
Birth       Keneba           GAMBIA                         11            115    1466
Birth       Keneba           GAMBIA                         12            133    1466
Birth       MAL-ED           BANGLADESH                     1              19     215
Birth       MAL-ED           BANGLADESH                     2              21     215
Birth       MAL-ED           BANGLADESH                     3              21     215
Birth       MAL-ED           BANGLADESH                     4              19     215
Birth       MAL-ED           BANGLADESH                     5              17     215
Birth       MAL-ED           BANGLADESH                     6               7     215
Birth       MAL-ED           BANGLADESH                     7              13     215
Birth       MAL-ED           BANGLADESH                     8              23     215
Birth       MAL-ED           BANGLADESH                     9              16     215
Birth       MAL-ED           BANGLADESH                     10             20     215
Birth       MAL-ED           BANGLADESH                     11             15     215
Birth       MAL-ED           BANGLADESH                     12             24     215
Birth       MAL-ED           BRAZIL                         1               5      62
Birth       MAL-ED           BRAZIL                         2              10      62
Birth       MAL-ED           BRAZIL                         3               7      62
Birth       MAL-ED           BRAZIL                         4               4      62
Birth       MAL-ED           BRAZIL                         5               1      62
Birth       MAL-ED           BRAZIL                         6               5      62
Birth       MAL-ED           BRAZIL                         7               6      62
Birth       MAL-ED           BRAZIL                         8               6      62
Birth       MAL-ED           BRAZIL                         9               5      62
Birth       MAL-ED           BRAZIL                         10              5      62
Birth       MAL-ED           BRAZIL                         11              4      62
Birth       MAL-ED           BRAZIL                         12              4      62
Birth       MAL-ED           INDIA                          1               2      45
Birth       MAL-ED           INDIA                          2               6      45
Birth       MAL-ED           INDIA                          3               3      45
Birth       MAL-ED           INDIA                          4               5      45
Birth       MAL-ED           INDIA                          5               4      45
Birth       MAL-ED           INDIA                          6               2      45
Birth       MAL-ED           INDIA                          7               3      45
Birth       MAL-ED           INDIA                          8               8      45
Birth       MAL-ED           INDIA                          9               4      45
Birth       MAL-ED           INDIA                          10              5      45
Birth       MAL-ED           INDIA                          11              3      45
Birth       MAL-ED           INDIA                          12              0      45
Birth       MAL-ED           NEPAL                          1               2      26
Birth       MAL-ED           NEPAL                          2               2      26
Birth       MAL-ED           NEPAL                          3               1      26
Birth       MAL-ED           NEPAL                          4               2      26
Birth       MAL-ED           NEPAL                          5               3      26
Birth       MAL-ED           NEPAL                          6               2      26
Birth       MAL-ED           NEPAL                          7               2      26
Birth       MAL-ED           NEPAL                          8               1      26
Birth       MAL-ED           NEPAL                          9               2      26
Birth       MAL-ED           NEPAL                          10              4      26
Birth       MAL-ED           NEPAL                          11              4      26
Birth       MAL-ED           NEPAL                          12              1      26
Birth       MAL-ED           PERU                           1              29     228
Birth       MAL-ED           PERU                           2              17     228
Birth       MAL-ED           PERU                           3              20     228
Birth       MAL-ED           PERU                           4              14     228
Birth       MAL-ED           PERU                           5              21     228
Birth       MAL-ED           PERU                           6              11     228
Birth       MAL-ED           PERU                           7              19     228
Birth       MAL-ED           PERU                           8              16     228
Birth       MAL-ED           PERU                           9              19     228
Birth       MAL-ED           PERU                           10             21     228
Birth       MAL-ED           PERU                           11             28     228
Birth       MAL-ED           PERU                           12             13     228
Birth       MAL-ED           SOUTH AFRICA                   1               9     120
Birth       MAL-ED           SOUTH AFRICA                   2              13     120
Birth       MAL-ED           SOUTH AFRICA                   3               8     120
Birth       MAL-ED           SOUTH AFRICA                   4               6     120
Birth       MAL-ED           SOUTH AFRICA                   5               6     120
Birth       MAL-ED           SOUTH AFRICA                   6               8     120
Birth       MAL-ED           SOUTH AFRICA                   7              13     120
Birth       MAL-ED           SOUTH AFRICA                   8               3     120
Birth       MAL-ED           SOUTH AFRICA                   9              10     120
Birth       MAL-ED           SOUTH AFRICA                   10             13     120
Birth       MAL-ED           SOUTH AFRICA                   11             14     120
Birth       MAL-ED           SOUTH AFRICA                   12             17     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              15     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              11     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               8     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               9     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              14     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               6     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               2     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             11     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             10     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              9     115
Birth       NIH-Birth        BANGLADESH                     1              59     575
Birth       NIH-Birth        BANGLADESH                     2              54     575
Birth       NIH-Birth        BANGLADESH                     3              56     575
Birth       NIH-Birth        BANGLADESH                     4              47     575
Birth       NIH-Birth        BANGLADESH                     5              45     575
Birth       NIH-Birth        BANGLADESH                     6              45     575
Birth       NIH-Birth        BANGLADESH                     7              39     575
Birth       NIH-Birth        BANGLADESH                     8              38     575
Birth       NIH-Birth        BANGLADESH                     9              44     575
Birth       NIH-Birth        BANGLADESH                     10             47     575
Birth       NIH-Birth        BANGLADESH                     11             51     575
Birth       NIH-Birth        BANGLADESH                     12             50     575
Birth       PROBIT           BELARUS                        1             822   13817
Birth       PROBIT           BELARUS                        2             797   13817
Birth       PROBIT           BELARUS                        3             941   13817
Birth       PROBIT           BELARUS                        4             970   13817
Birth       PROBIT           BELARUS                        5             942   13817
Birth       PROBIT           BELARUS                        6            1020   13817
Birth       PROBIT           BELARUS                        7            1285   13817
Birth       PROBIT           BELARUS                        8            1306   13817
Birth       PROBIT           BELARUS                        9            1322   13817
Birth       PROBIT           BELARUS                        10           1487   13817
Birth       PROBIT           BELARUS                        11           1383   13817
Birth       PROBIT           BELARUS                        12           1542   13817
Birth       PROVIDE          BANGLADESH                     1              30     532
Birth       PROVIDE          BANGLADESH                     2              24     532
Birth       PROVIDE          BANGLADESH                     3              45     532
Birth       PROVIDE          BANGLADESH                     4              28     532
Birth       PROVIDE          BANGLADESH                     5              45     532
Birth       PROVIDE          BANGLADESH                     6              75     532
Birth       PROVIDE          BANGLADESH                     7              75     532
Birth       PROVIDE          BANGLADESH                     8              53     532
Birth       PROVIDE          BANGLADESH                     9              55     532
Birth       PROVIDE          BANGLADESH                     10             54     532
Birth       PROVIDE          BANGLADESH                     11             27     532
Birth       PROVIDE          BANGLADESH                     12             21     532
Birth       ResPak           PAKISTAN                       1               2      38
Birth       ResPak           PAKISTAN                       2               1      38
Birth       ResPak           PAKISTAN                       3               1      38
Birth       ResPak           PAKISTAN                       4               6      38
Birth       ResPak           PAKISTAN                       5               7      38
Birth       ResPak           PAKISTAN                       6               7      38
Birth       ResPak           PAKISTAN                       7               8      38
Birth       ResPak           PAKISTAN                       8               4      38
Birth       ResPak           PAKISTAN                       9               1      38
Birth       ResPak           PAKISTAN                       10              1      38
Birth       ResPak           PAKISTAN                       11              0      38
Birth       ResPak           PAKISTAN                       12              0      38
Birth       SAS-CompFeed     INDIA                          1              70    1103
Birth       SAS-CompFeed     INDIA                          2              64    1103
Birth       SAS-CompFeed     INDIA                          3              60    1103
Birth       SAS-CompFeed     INDIA                          4              58    1103
Birth       SAS-CompFeed     INDIA                          5              74    1103
Birth       SAS-CompFeed     INDIA                          6              94    1103
Birth       SAS-CompFeed     INDIA                          7              92    1103
Birth       SAS-CompFeed     INDIA                          8             123    1103
Birth       SAS-CompFeed     INDIA                          9             134    1103
Birth       SAS-CompFeed     INDIA                          10            125    1103
Birth       SAS-CompFeed     INDIA                          11            111    1103
Birth       SAS-CompFeed     INDIA                          12             98    1103
Birth       ZVITAMBO         ZIMBABWE                       1            1233   12917
Birth       ZVITAMBO         ZIMBABWE                       2             957   12917
Birth       ZVITAMBO         ZIMBABWE                       3            1077   12917
Birth       ZVITAMBO         ZIMBABWE                       4             922   12917
Birth       ZVITAMBO         ZIMBABWE                       5             929   12917
Birth       ZVITAMBO         ZIMBABWE                       6            1048   12917
Birth       ZVITAMBO         ZIMBABWE                       7            1096   12917
Birth       ZVITAMBO         ZIMBABWE                       8            1188   12917
Birth       ZVITAMBO         ZIMBABWE                       9            1246   12917
Birth       ZVITAMBO         ZIMBABWE                       10            980   12917
Birth       ZVITAMBO         ZIMBABWE                       11           1103   12917
Birth       ZVITAMBO         ZIMBABWE                       12           1138   12917
6 months    CMC-V-BCS-2002   INDIA                          1              34     368
6 months    CMC-V-BCS-2002   INDIA                          2              16     368
6 months    CMC-V-BCS-2002   INDIA                          3              31     368
6 months    CMC-V-BCS-2002   INDIA                          4              43     368
6 months    CMC-V-BCS-2002   INDIA                          5              34     368
6 months    CMC-V-BCS-2002   INDIA                          6              37     368
6 months    CMC-V-BCS-2002   INDIA                          7              39     368
6 months    CMC-V-BCS-2002   INDIA                          8              17     368
6 months    CMC-V-BCS-2002   INDIA                          9              21     368
6 months    CMC-V-BCS-2002   INDIA                          10             29     368
6 months    CMC-V-BCS-2002   INDIA                          11             42     368
6 months    CMC-V-BCS-2002   INDIA                          12             25     368
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
6 months    CMIN             BANGLADESH                     11             26     243
6 months    CMIN             BANGLADESH                     12             28     243
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
6 months    EE               PAKISTAN                       1              92     375
6 months    EE               PAKISTAN                       2              66     375
6 months    EE               PAKISTAN                       3              43     375
6 months    EE               PAKISTAN                       4              16     375
6 months    EE               PAKISTAN                       5               0     375
6 months    EE               PAKISTAN                       6               0     375
6 months    EE               PAKISTAN                       7               0     375
6 months    EE               PAKISTAN                       8               0     375
6 months    EE               PAKISTAN                       9               0     375
6 months    EE               PAKISTAN                       10              4     375
6 months    EE               PAKISTAN                       11             71     375
6 months    EE               PAKISTAN                       12             83     375
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
6 months    IRC              INDIA                          1              38     408
6 months    IRC              INDIA                          2              28     408
6 months    IRC              INDIA                          3              27     408
6 months    IRC              INDIA                          4              21     408
6 months    IRC              INDIA                          5              22     408
6 months    IRC              INDIA                          6              37     408
6 months    IRC              INDIA                          7              36     408
6 months    IRC              INDIA                          8              44     408
6 months    IRC              INDIA                          9              25     408
6 months    IRC              INDIA                          10             38     408
6 months    IRC              INDIA                          11             40     408
6 months    IRC              INDIA                          12             52     408
6 months    JiVitA-3         BANGLADESH                     1            1342   16784
6 months    JiVitA-3         BANGLADESH                     2            1154   16784
6 months    JiVitA-3         BANGLADESH                     3            1409   16784
6 months    JiVitA-3         BANGLADESH                     4            1178   16784
6 months    JiVitA-3         BANGLADESH                     5            1110   16784
6 months    JiVitA-3         BANGLADESH                     6            1198   16784
6 months    JiVitA-3         BANGLADESH                     7            1255   16784
6 months    JiVitA-3         BANGLADESH                     8            1515   16784
6 months    JiVitA-3         BANGLADESH                     9            1621   16784
6 months    JiVitA-3         BANGLADESH                     10           1665   16784
6 months    JiVitA-3         BANGLADESH                     11           1759   16784
6 months    JiVitA-3         BANGLADESH                     12           1578   16784
6 months    JiVitA-4         BANGLADESH                     1               0    4833
6 months    JiVitA-4         BANGLADESH                     2             542    4833
6 months    JiVitA-4         BANGLADESH                     3             962    4833
6 months    JiVitA-4         BANGLADESH                     4             736    4833
6 months    JiVitA-4         BANGLADESH                     5             601    4833
6 months    JiVitA-4         BANGLADESH                     6             439    4833
6 months    JiVitA-4         BANGLADESH                     7             518    4833
6 months    JiVitA-4         BANGLADESH                     8             521    4833
6 months    JiVitA-4         BANGLADESH                     9             386    4833
6 months    JiVitA-4         BANGLADESH                     10            128    4833
6 months    JiVitA-4         BANGLADESH                     11              0    4833
6 months    JiVitA-4         BANGLADESH                     12              0    4833
6 months    Keneba           GAMBIA                         1             210    2089
6 months    Keneba           GAMBIA                         2             187    2089
6 months    Keneba           GAMBIA                         3             220    2089
6 months    Keneba           GAMBIA                         4             143    2089
6 months    Keneba           GAMBIA                         5             144    2089
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
6 months    PROBIT           BELARUS                        1             975   15757
6 months    PROBIT           BELARUS                        2             932   15757
6 months    PROBIT           BELARUS                        3            1066   15757
6 months    PROBIT           BELARUS                        4            1098   15757
6 months    PROBIT           BELARUS                        5            1111   15757
6 months    PROBIT           BELARUS                        6            1115   15757
6 months    PROBIT           BELARUS                        7            1464   15757
6 months    PROBIT           BELARUS                        8            1473   15757
6 months    PROBIT           BELARUS                        9            1509   15757
6 months    PROBIT           BELARUS                        10           1689   15757
6 months    PROBIT           BELARUS                        11           1588   15757
6 months    PROBIT           BELARUS                        12           1737   15757
6 months    PROVIDE          BANGLADESH                     1              35     603
6 months    PROVIDE          BANGLADESH                     2              32     603
6 months    PROVIDE          BANGLADESH                     3              43     603
6 months    PROVIDE          BANGLADESH                     4              36     603
6 months    PROVIDE          BANGLADESH                     5              40     603
6 months    PROVIDE          BANGLADESH                     6              77     603
6 months    PROVIDE          BANGLADESH                     7              76     603
6 months    PROVIDE          BANGLADESH                     8              61     603
6 months    PROVIDE          BANGLADESH                     9              66     603
6 months    PROVIDE          BANGLADESH                     10             67     603
6 months    PROVIDE          BANGLADESH                     11             41     603
6 months    PROVIDE          BANGLADESH                     12             29     603
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
6 months    SAS-CompFeed     INDIA                          1              87    1334
6 months    SAS-CompFeed     INDIA                          2              83    1334
6 months    SAS-CompFeed     INDIA                          3              74    1334
6 months    SAS-CompFeed     INDIA                          4              64    1334
6 months    SAS-CompFeed     INDIA                          5              87    1334
6 months    SAS-CompFeed     INDIA                          6              96    1334
6 months    SAS-CompFeed     INDIA                          7             122    1334
6 months    SAS-CompFeed     INDIA                          8             162    1334
6 months    SAS-CompFeed     INDIA                          9             173    1334
6 months    SAS-CompFeed     INDIA                          10            149    1334
6 months    SAS-CompFeed     INDIA                          11            119    1334
6 months    SAS-CompFeed     INDIA                          12            118    1334
6 months    SAS-FoodSuppl    INDIA                          1              24     380
6 months    SAS-FoodSuppl    INDIA                          2              33     380
6 months    SAS-FoodSuppl    INDIA                          3              19     380
6 months    SAS-FoodSuppl    INDIA                          4               4     380
6 months    SAS-FoodSuppl    INDIA                          5              12     380
6 months    SAS-FoodSuppl    INDIA                          6              21     380
6 months    SAS-FoodSuppl    INDIA                          7              33     380
6 months    SAS-FoodSuppl    INDIA                          8              63     380
6 months    SAS-FoodSuppl    INDIA                          9              62     380
6 months    SAS-FoodSuppl    INDIA                          10             47     380
6 months    SAS-FoodSuppl    INDIA                          11             28     380
6 months    SAS-FoodSuppl    INDIA                          12             34     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             142    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             149    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             140    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             153    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             149    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             143    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             195    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             199    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             183    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            208    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            195    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            172    2028
6 months    ZVITAMBO         ZIMBABWE                       1             810    8505
6 months    ZVITAMBO         ZIMBABWE                       2             609    8505
6 months    ZVITAMBO         ZIMBABWE                       3             750    8505
6 months    ZVITAMBO         ZIMBABWE                       4             646    8505
6 months    ZVITAMBO         ZIMBABWE                       5             628    8505
6 months    ZVITAMBO         ZIMBABWE                       6             662    8505
6 months    ZVITAMBO         ZIMBABWE                       7             662    8505
6 months    ZVITAMBO         ZIMBABWE                       8             775    8505
6 months    ZVITAMBO         ZIMBABWE                       9             767    8505
6 months    ZVITAMBO         ZIMBABWE                       10            616    8505
6 months    ZVITAMBO         ZIMBABWE                       11            779    8505
6 months    ZVITAMBO         ZIMBABWE                       12            801    8505
24 months   CMC-V-BCS-2002   INDIA                          1              34     372
24 months   CMC-V-BCS-2002   INDIA                          2              16     372
24 months   CMC-V-BCS-2002   INDIA                          3              31     372
24 months   CMC-V-BCS-2002   INDIA                          4              44     372
24 months   CMC-V-BCS-2002   INDIA                          5              36     372
24 months   CMC-V-BCS-2002   INDIA                          6              37     372
24 months   CMC-V-BCS-2002   INDIA                          7              39     372
24 months   CMC-V-BCS-2002   INDIA                          8              17     372
24 months   CMC-V-BCS-2002   INDIA                          9              21     372
24 months   CMC-V-BCS-2002   INDIA                          10             29     372
24 months   CMC-V-BCS-2002   INDIA                          11             43     372
24 months   CMC-V-BCS-2002   INDIA                          12             25     372
24 months   CMIN             BANGLADESH                     1              26     243
24 months   CMIN             BANGLADESH                     2              24     243
24 months   CMIN             BANGLADESH                     3              18     243
24 months   CMIN             BANGLADESH                     4              22     243
24 months   CMIN             BANGLADESH                     5              16     243
24 months   CMIN             BANGLADESH                     6               8     243
24 months   CMIN             BANGLADESH                     7              15     243
24 months   CMIN             BANGLADESH                     8              18     243
24 months   CMIN             BANGLADESH                     9              20     243
24 months   CMIN             BANGLADESH                     10             24     243
24 months   CMIN             BANGLADESH                     11             25     243
24 months   CMIN             BANGLADESH                     12             27     243
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
24 months   EE               PAKISTAN                       1              14     168
24 months   EE               PAKISTAN                       2               4     168
24 months   EE               PAKISTAN                       3               0     168
24 months   EE               PAKISTAN                       4               0     168
24 months   EE               PAKISTAN                       5               0     168
24 months   EE               PAKISTAN                       6               0     168
24 months   EE               PAKISTAN                       7               0     168
24 months   EE               PAKISTAN                       8               0     168
24 months   EE               PAKISTAN                       9               0     168
24 months   EE               PAKISTAN                       10              4     168
24 months   EE               PAKISTAN                       11             66     168
24 months   EE               PAKISTAN                       12             80     168
24 months   GMS-Nepal        NEPAL                          1               0     487
24 months   GMS-Nepal        NEPAL                          2               0     487
24 months   GMS-Nepal        NEPAL                          3               0     487
24 months   GMS-Nepal        NEPAL                          4               0     487
24 months   GMS-Nepal        NEPAL                          5               0     487
24 months   GMS-Nepal        NEPAL                          6              79     487
24 months   GMS-Nepal        NEPAL                          7             206     487
24 months   GMS-Nepal        NEPAL                          8             202     487
24 months   GMS-Nepal        NEPAL                          9               0     487
24 months   GMS-Nepal        NEPAL                          10              0     487
24 months   GMS-Nepal        NEPAL                          11              0     487
24 months   GMS-Nepal        NEPAL                          12              0     487
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
24 months   JiVitA-3         BANGLADESH                     1             665    8603
24 months   JiVitA-3         BANGLADESH                     2             561    8603
24 months   JiVitA-3         BANGLADESH                     3             714    8603
24 months   JiVitA-3         BANGLADESH                     4             504    8603
24 months   JiVitA-3         BANGLADESH                     5             364    8603
24 months   JiVitA-3         BANGLADESH                     6             609    8603
24 months   JiVitA-3         BANGLADESH                     7             672    8603
24 months   JiVitA-3         BANGLADESH                     8             618    8603
24 months   JiVitA-3         BANGLADESH                     9             800    8603
24 months   JiVitA-3         BANGLADESH                     10            874    8603
24 months   JiVitA-3         BANGLADESH                     11           1039    8603
24 months   JiVitA-3         BANGLADESH                     12           1183    8603
24 months   JiVitA-4         BANGLADESH                     1               0    4735
24 months   JiVitA-4         BANGLADESH                     2             781    4735
24 months   JiVitA-4         BANGLADESH                     3             851    4735
24 months   JiVitA-4         BANGLADESH                     4             649    4735
24 months   JiVitA-4         BANGLADESH                     5             563    4735
24 months   JiVitA-4         BANGLADESH                     6             418    4735
24 months   JiVitA-4         BANGLADESH                     7             484    4735
24 months   JiVitA-4         BANGLADESH                     8             503    4735
24 months   JiVitA-4         BANGLADESH                     9             364    4735
24 months   JiVitA-4         BANGLADESH                     10            122    4735
24 months   JiVitA-4         BANGLADESH                     11              0    4735
24 months   JiVitA-4         BANGLADESH                     12              0    4735
24 months   Keneba           GAMBIA                         1             171    1726
24 months   Keneba           GAMBIA                         2             167    1726
24 months   Keneba           GAMBIA                         3             170    1726
24 months   Keneba           GAMBIA                         4             114    1726
24 months   Keneba           GAMBIA                         5             122    1726
24 months   Keneba           GAMBIA                         6              92    1726
24 months   Keneba           GAMBIA                         7              83    1726
24 months   Keneba           GAMBIA                         8             158    1726
24 months   Keneba           GAMBIA                         9             160    1726
24 months   Keneba           GAMBIA                         10            200    1726
24 months   Keneba           GAMBIA                         11            140    1726
24 months   Keneba           GAMBIA                         12            149    1726
24 months   LCNI-5           MALAWI                         1              39     563
24 months   LCNI-5           MALAWI                         2              30     563
24 months   LCNI-5           MALAWI                         3              19     563
24 months   LCNI-5           MALAWI                         4              28     563
24 months   LCNI-5           MALAWI                         5              30     563
24 months   LCNI-5           MALAWI                         6              24     563
24 months   LCNI-5           MALAWI                         7              45     563
24 months   LCNI-5           MALAWI                         8              70     563
24 months   LCNI-5           MALAWI                         9              63     563
24 months   LCNI-5           MALAWI                         10             89     563
24 months   LCNI-5           MALAWI                         11             62     563
24 months   LCNI-5           MALAWI                         12             64     563
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
24 months   NIH-Birth        BANGLADESH                     1              43     428
24 months   NIH-Birth        BANGLADESH                     2              36     428
24 months   NIH-Birth        BANGLADESH                     3              39     428
24 months   NIH-Birth        BANGLADESH                     4              34     428
24 months   NIH-Birth        BANGLADESH                     5              35     428
24 months   NIH-Birth        BANGLADESH                     6              33     428
24 months   NIH-Birth        BANGLADESH                     7              34     428
24 months   NIH-Birth        BANGLADESH                     8              27     428
24 months   NIH-Birth        BANGLADESH                     9              26     428
24 months   NIH-Birth        BANGLADESH                     10             33     428
24 months   NIH-Birth        BANGLADESH                     11             42     428
24 months   NIH-Birth        BANGLADESH                     12             46     428
24 months   PROBIT           BELARUS                        1             248    3970
24 months   PROBIT           BELARUS                        2             213    3970
24 months   PROBIT           BELARUS                        3             312    3970
24 months   PROBIT           BELARUS                        4             332    3970
24 months   PROBIT           BELARUS                        5             296    3970
24 months   PROBIT           BELARUS                        6             267    3970
24 months   PROBIT           BELARUS                        7             371    3970
24 months   PROBIT           BELARUS                        8             337    3970
24 months   PROBIT           BELARUS                        9             380    3970
24 months   PROBIT           BELARUS                        10            391    3970
24 months   PROBIT           BELARUS                        11            376    3970
24 months   PROBIT           BELARUS                        12            447    3970
24 months   PROVIDE          BANGLADESH                     1              32     579
24 months   PROVIDE          BANGLADESH                     2              30     579
24 months   PROVIDE          BANGLADESH                     3              40     579
24 months   PROVIDE          BANGLADESH                     4              33     579
24 months   PROVIDE          BANGLADESH                     5              42     579
24 months   PROVIDE          BANGLADESH                     6              75     579
24 months   PROVIDE          BANGLADESH                     7              70     579
24 months   PROVIDE          BANGLADESH                     8              60     579
24 months   PROVIDE          BANGLADESH                     9              67     579
24 months   PROVIDE          BANGLADESH                     10             64     579
24 months   PROVIDE          BANGLADESH                     11             38     579
24 months   PROVIDE          BANGLADESH                     12             28     579
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
24 months   ZVITAMBO         ZIMBABWE                       1              49     433
24 months   ZVITAMBO         ZIMBABWE                       2              64     433
24 months   ZVITAMBO         ZIMBABWE                       3              56     433
24 months   ZVITAMBO         ZIMBABWE                       4              47     433
24 months   ZVITAMBO         ZIMBABWE                       5              51     433
24 months   ZVITAMBO         ZIMBABWE                       6              44     433
24 months   ZVITAMBO         ZIMBABWE                       7              28     433
24 months   ZVITAMBO         ZIMBABWE                       8              30     433
24 months   ZVITAMBO         ZIMBABWE                       9               2     433
24 months   ZVITAMBO         ZIMBABWE                       10              4     433
24 months   ZVITAMBO         ZIMBABWE                       11             20     433
24 months   ZVITAMBO         ZIMBABWE                       12             38     433


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
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/34d33ccb-cc5d-4a81-82c5-7f1bb9d93127/a2bb2797-848d-4641-986c-2e88a6e94f2f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed          -0.2140643   -0.8642457    0.4361171
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.6315237   -0.6890448   -0.5740027
Birth       Keneba           GAMBIA                         optimal              observed          -0.7683700   -1.0442296   -0.4925103
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.2224665   -1.7706905   -0.6742425
Birth       MAL-ED           PERU                           optimal              observed           0.0583340   -0.4275227    0.5441906
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.0904974   -1.3410317   -0.8399631
Birth       PROBIT           BELARUS                        optimal              observed          -1.0245441   -1.2960190   -0.7530692
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.7167075   -0.9835441   -0.4498709
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0232810   -0.2035320    0.1569700
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2585307   -0.3539501   -0.1631112
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.1644711   -0.4283163    0.7572585
6 months    CMIN             BANGLADESH                     optimal              observed           0.3370331   -0.2363780    0.9104441
6 months    CONTENT          PERU                           optimal              observed           1.3420606    0.7958470    1.8882741
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0612368   -0.4870431    0.3645695
6 months    IRC              INDIA                          optimal              observed          -0.1866860   -0.9786345    0.6052624
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5089463   -0.5777795   -0.4401131
6 months    Keneba           GAMBIA                         optimal              observed           0.0639224   -0.0865383    0.2143831
6 months    LCNI-5           MALAWI                         optimal              observed           0.3098994    0.0778004    0.5419984
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.1107750   -0.5483307    0.7698808
6 months    MAL-ED           BRAZIL                         optimal              observed           0.7270980    0.2077727    1.2464233
6 months    MAL-ED           INDIA                          optimal              observed          -0.6963343   -1.1322548   -0.2604138
6 months    MAL-ED           NEPAL                          optimal              observed          -0.1086373   -0.5926050    0.3753304
6 months    MAL-ED           PERU                           optimal              observed           1.1932933    0.7266951    1.6598915
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.4652800   -0.4260710    1.3566311
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3647318    0.7886206    1.9408431
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.0354326   -0.3853595    0.3144943
6 months    PROBIT           BELARUS                        optimal              observed           0.5049909    0.4293933    0.5805885
6 months    PROVIDE          BANGLADESH                     optimal              observed           0.1474466   -0.0926074    0.3875005
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.1453874   -0.4532389    0.1624642
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3132828    0.1179070    0.5086585
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.4059317    0.3121978    0.4996656
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5424462   -0.7933791   -0.2915133
24 months   CMIN             BANGLADESH                     optimal              observed          -0.6364213   -0.9203952   -0.3524473
24 months   CONTENT          PERU                           optimal              observed           0.3677392   -0.3430865    1.0785649
24 months   IRC              INDIA                          optimal              observed          -0.7257510   -1.0428669   -0.4086351
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.0266356   -1.0997121   -0.9535592
24 months   Keneba           GAMBIA                         optimal              observed          -0.4735485   -0.6160433   -0.3310536
24 months   LCNI-5           MALAWI                         optimal              observed           0.2697639   -0.0818071    0.6213350
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.9675091   -1.3613034   -0.5737148
24 months   MAL-ED           BRAZIL                         optimal              observed           1.5685837    0.8470347    2.2901327
24 months   MAL-ED           INDIA                          optimal              observed          -1.0306078   -1.4365128   -0.6247028
24 months   MAL-ED           NEPAL                          optimal              observed          -0.5346856   -0.9493758   -0.1199953
24 months   MAL-ED           PERU                           optimal              observed          -0.7483736   -1.2591993   -0.2375479
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.2980867   -0.2648226    0.8609960
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2263418   -0.8625602    0.4098766
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.9020656   -1.2538905   -0.5502407
24 months   PROBIT           BELARUS                        optimal              observed           0.6666080    0.5376955    0.7955206
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.0669121   -1.3000969   -0.8337274


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
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    CONTENT          PERU                           observed             observed           1.0644279    0.9468682    1.1819876
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
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
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3105514    0.2848767    0.3362262
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   CONTENT          PERU                           observed             observed           0.5902439    0.4560143    0.7244735
24 months   IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
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
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed          -0.7965188   -1.4171290   -0.1759086
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.1463035   -0.1995651   -0.0930419
Birth       Keneba           GAMBIA                         optimal              observed          -0.4665755   -0.7336509   -0.1995000
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.2806060   -0.2461285    0.8073406
Birth       MAL-ED           PERU                           optimal              observed          -0.1103515   -0.5752900    0.3545870
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.2594243   -0.5067985   -0.0120502
Birth       PROBIT           BELARUS                        optimal              observed          -0.1246341   -0.2743169    0.0250488
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.5817511   -0.8451472   -0.3183550
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.6467643   -0.8439062   -0.4496224
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2569590   -0.3487590   -0.1651590
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6671477   -1.2185343   -0.1157612
6 months    CMIN             BANGLADESH                     optimal              observed          -0.9150784   -1.4691991   -0.3609576
6 months    CONTENT          PERU                           optimal              observed          -0.2776327   -0.8035009    0.2482356
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0227766   -0.4240274    0.3784742
6 months    IRC              INDIA                          optimal              observed          -0.4122437   -1.1767276    0.3522402
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0845698   -0.1502584   -0.0188813
6 months    Keneba           GAMBIA                         optimal              observed          -0.2485262   -0.3895486   -0.1075037
6 months    LCNI-5           MALAWI                         optimal              observed           0.1400410   -0.0911348    0.3712168
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.2484514   -0.8952368    0.3983340
6 months    MAL-ED           BRAZIL                         optimal              observed           0.2449793   -0.2724348    0.7623934
6 months    MAL-ED           INDIA                          optimal              observed          -0.0116636   -0.4292845    0.4059573
6 months    MAL-ED           NEPAL                          optimal              observed           0.2190681   -0.2486048    0.6867410
6 months    MAL-ED           PERU                           optimal              observed          -0.1404117   -0.5856607    0.3048372
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.0768984   -0.7857202    0.9395171
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8285105   -1.3947715   -0.2622496
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.4119712   -0.7490980   -0.0748444
6 months    PROBIT           BELARUS                        optimal              observed           0.0691190    0.0088638    0.1293742
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.3465372   -0.5748076   -0.1182668
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5203210   -0.7095357   -0.3311064
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2323496   -0.4203044   -0.0443948
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0953802   -0.1842535   -0.0065070
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0147043   -0.2640699    0.2346613
24 months   CMIN             BANGLADESH                     optimal              observed          -0.2171178   -0.5083993    0.0741637
24 months   CONTENT          PERU                           optimal              observed           0.2225047   -0.4586346    0.9036440
24 months   IRC              INDIA                          optimal              observed          -0.0200640   -0.3254961    0.2853682
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.2711675   -0.3418420   -0.2004929
24 months   Keneba           GAMBIA                         optimal              observed          -0.3363805   -0.4728434   -0.1999176
24 months   LCNI-5           MALAWI                         optimal              observed          -0.3175348   -0.6618223    0.0267526
24 months   MAL-ED           BANGLADESH                     optimal              observed           0.1482166   -0.2342991    0.5307323
24 months   MAL-ED           BRAZIL                         optimal              observed          -1.1059604   -1.8173205   -0.3946004
24 months   MAL-ED           INDIA                          optimal              observed           0.0789558   -0.3142088    0.4721204
24 months   MAL-ED           NEPAL                          optimal              observed           0.1597733   -0.2430675    0.5626141
24 months   MAL-ED           PERU                           optimal              observed           0.8595718    0.3687650    1.3503786
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.1109434   -0.4292581    0.6511449
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2811393   -0.3236227    0.8859014
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.0095135   -0.3485951    0.3295681
24 months   PROBIT           BELARUS                        optimal              observed           0.0315326   -0.0929932    0.1560584
24 months   PROVIDE          BANGLADESH                     optimal              observed           0.1740451   -0.0522285    0.4003188
