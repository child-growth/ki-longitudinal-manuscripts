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

agecat      studyid          country                        brthmon    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1               9      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          2               1      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          3               7      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          4               9      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          5              10      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          6               9      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          7               7      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          8               4      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          9               8      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          10              8      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          11             11      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          12              3      86  whz              
Birth       CMIN             BANGLADESH                     1               2      19  whz              
Birth       CMIN             BANGLADESH                     2               4      19  whz              
Birth       CMIN             BANGLADESH                     3               0      19  whz              
Birth       CMIN             BANGLADESH                     4               2      19  whz              
Birth       CMIN             BANGLADESH                     5               1      19  whz              
Birth       CMIN             BANGLADESH                     6               0      19  whz              
Birth       CMIN             BANGLADESH                     7               4      19  whz              
Birth       CMIN             BANGLADESH                     8               2      19  whz              
Birth       CMIN             BANGLADESH                     9               1      19  whz              
Birth       CMIN             BANGLADESH                     10              1      19  whz              
Birth       CMIN             BANGLADESH                     11              2      19  whz              
Birth       CMIN             BANGLADESH                     12              0      19  whz              
Birth       CONTENT          PERU                           1               0       2  whz              
Birth       CONTENT          PERU                           2               0       2  whz              
Birth       CONTENT          PERU                           3               0       2  whz              
Birth       CONTENT          PERU                           4               0       2  whz              
Birth       CONTENT          PERU                           5               2       2  whz              
Birth       CONTENT          PERU                           6               0       2  whz              
Birth       CONTENT          PERU                           7               0       2  whz              
Birth       CONTENT          PERU                           8               0       2  whz              
Birth       CONTENT          PERU                           9               0       2  whz              
Birth       CONTENT          PERU                           10              0       2  whz              
Birth       CONTENT          PERU                           11              0       2  whz              
Birth       CONTENT          PERU                           12              0       2  whz              
Birth       EE               PAKISTAN                       1              39     177  whz              
Birth       EE               PAKISTAN                       2              36     177  whz              
Birth       EE               PAKISTAN                       3              16     177  whz              
Birth       EE               PAKISTAN                       4               7     177  whz              
Birth       EE               PAKISTAN                       5               0     177  whz              
Birth       EE               PAKISTAN                       6               0     177  whz              
Birth       EE               PAKISTAN                       7               0     177  whz              
Birth       EE               PAKISTAN                       8               0     177  whz              
Birth       EE               PAKISTAN                       9               0     177  whz              
Birth       EE               PAKISTAN                       10              0     177  whz              
Birth       EE               PAKISTAN                       11             41     177  whz              
Birth       EE               PAKISTAN                       12             38     177  whz              
Birth       GMS-Nepal        NEPAL                          1               0     641  whz              
Birth       GMS-Nepal        NEPAL                          2               0     641  whz              
Birth       GMS-Nepal        NEPAL                          3               0     641  whz              
Birth       GMS-Nepal        NEPAL                          4               1     641  whz              
Birth       GMS-Nepal        NEPAL                          5               0     641  whz              
Birth       GMS-Nepal        NEPAL                          6             162     641  whz              
Birth       GMS-Nepal        NEPAL                          7             242     641  whz              
Birth       GMS-Nepal        NEPAL                          8             236     641  whz              
Birth       GMS-Nepal        NEPAL                          9               0     641  whz              
Birth       GMS-Nepal        NEPAL                          10              0     641  whz              
Birth       GMS-Nepal        NEPAL                          11              0     641  whz              
Birth       GMS-Nepal        NEPAL                          12              0     641  whz              
Birth       IRC              INDIA                          1              31     343  whz              
Birth       IRC              INDIA                          2              23     343  whz              
Birth       IRC              INDIA                          3              24     343  whz              
Birth       IRC              INDIA                          4              19     343  whz              
Birth       IRC              INDIA                          5              15     343  whz              
Birth       IRC              INDIA                          6              26     343  whz              
Birth       IRC              INDIA                          7              31     343  whz              
Birth       IRC              INDIA                          8              36     343  whz              
Birth       IRC              INDIA                          9              24     343  whz              
Birth       IRC              INDIA                          10             33     343  whz              
Birth       IRC              INDIA                          11             38     343  whz              
Birth       IRC              INDIA                          12             43     343  whz              
Birth       JiVitA-3         BANGLADESH                     1            1623   18014  whz              
Birth       JiVitA-3         BANGLADESH                     2            1410   18014  whz              
Birth       JiVitA-3         BANGLADESH                     3            1703   18014  whz              
Birth       JiVitA-3         BANGLADESH                     4            1245   18014  whz              
Birth       JiVitA-3         BANGLADESH                     5             880   18014  whz              
Birth       JiVitA-3         BANGLADESH                     6             925   18014  whz              
Birth       JiVitA-3         BANGLADESH                     7            1059   18014  whz              
Birth       JiVitA-3         BANGLADESH                     8            1414   18014  whz              
Birth       JiVitA-3         BANGLADESH                     9            1856   18014  whz              
Birth       JiVitA-3         BANGLADESH                     10           1919   18014  whz              
Birth       JiVitA-3         BANGLADESH                     11           1937   18014  whz              
Birth       JiVitA-3         BANGLADESH                     12           2043   18014  whz              
Birth       JiVitA-4         BANGLADESH                     1               0    2396  whz              
Birth       JiVitA-4         BANGLADESH                     2             299    2396  whz              
Birth       JiVitA-4         BANGLADESH                     3             327    2396  whz              
Birth       JiVitA-4         BANGLADESH                     4             403    2396  whz              
Birth       JiVitA-4         BANGLADESH                     5             368    2396  whz              
Birth       JiVitA-4         BANGLADESH                     6             286    2396  whz              
Birth       JiVitA-4         BANGLADESH                     7             322    2396  whz              
Birth       JiVitA-4         BANGLADESH                     8             216    2396  whz              
Birth       JiVitA-4         BANGLADESH                     9             134    2396  whz              
Birth       JiVitA-4         BANGLADESH                     10             41    2396  whz              
Birth       JiVitA-4         BANGLADESH                     11              0    2396  whz              
Birth       JiVitA-4         BANGLADESH                     12              0    2396  whz              
Birth       Keneba           GAMBIA                         1             153    1466  whz              
Birth       Keneba           GAMBIA                         2             140    1466  whz              
Birth       Keneba           GAMBIA                         3             159    1466  whz              
Birth       Keneba           GAMBIA                         4             103    1466  whz              
Birth       Keneba           GAMBIA                         5             102    1466  whz              
Birth       Keneba           GAMBIA                         6              85    1466  whz              
Birth       Keneba           GAMBIA                         7              74    1466  whz              
Birth       Keneba           GAMBIA                         8             116    1466  whz              
Birth       Keneba           GAMBIA                         9             118    1466  whz              
Birth       Keneba           GAMBIA                         10            168    1466  whz              
Birth       Keneba           GAMBIA                         11            115    1466  whz              
Birth       Keneba           GAMBIA                         12            133    1466  whz              
Birth       MAL-ED           BANGLADESH                     1              19     215  whz              
Birth       MAL-ED           BANGLADESH                     2              21     215  whz              
Birth       MAL-ED           BANGLADESH                     3              21     215  whz              
Birth       MAL-ED           BANGLADESH                     4              19     215  whz              
Birth       MAL-ED           BANGLADESH                     5              17     215  whz              
Birth       MAL-ED           BANGLADESH                     6               7     215  whz              
Birth       MAL-ED           BANGLADESH                     7              13     215  whz              
Birth       MAL-ED           BANGLADESH                     8              23     215  whz              
Birth       MAL-ED           BANGLADESH                     9              16     215  whz              
Birth       MAL-ED           BANGLADESH                     10             20     215  whz              
Birth       MAL-ED           BANGLADESH                     11             15     215  whz              
Birth       MAL-ED           BANGLADESH                     12             24     215  whz              
Birth       MAL-ED           BRAZIL                         1               5      62  whz              
Birth       MAL-ED           BRAZIL                         2              10      62  whz              
Birth       MAL-ED           BRAZIL                         3               7      62  whz              
Birth       MAL-ED           BRAZIL                         4               4      62  whz              
Birth       MAL-ED           BRAZIL                         5               1      62  whz              
Birth       MAL-ED           BRAZIL                         6               5      62  whz              
Birth       MAL-ED           BRAZIL                         7               6      62  whz              
Birth       MAL-ED           BRAZIL                         8               6      62  whz              
Birth       MAL-ED           BRAZIL                         9               5      62  whz              
Birth       MAL-ED           BRAZIL                         10              5      62  whz              
Birth       MAL-ED           BRAZIL                         11              4      62  whz              
Birth       MAL-ED           BRAZIL                         12              4      62  whz              
Birth       MAL-ED           INDIA                          1               2      45  whz              
Birth       MAL-ED           INDIA                          2               6      45  whz              
Birth       MAL-ED           INDIA                          3               3      45  whz              
Birth       MAL-ED           INDIA                          4               5      45  whz              
Birth       MAL-ED           INDIA                          5               4      45  whz              
Birth       MAL-ED           INDIA                          6               2      45  whz              
Birth       MAL-ED           INDIA                          7               3      45  whz              
Birth       MAL-ED           INDIA                          8               8      45  whz              
Birth       MAL-ED           INDIA                          9               4      45  whz              
Birth       MAL-ED           INDIA                          10              5      45  whz              
Birth       MAL-ED           INDIA                          11              3      45  whz              
Birth       MAL-ED           INDIA                          12              0      45  whz              
Birth       MAL-ED           NEPAL                          1               2      26  whz              
Birth       MAL-ED           NEPAL                          2               2      26  whz              
Birth       MAL-ED           NEPAL                          3               1      26  whz              
Birth       MAL-ED           NEPAL                          4               2      26  whz              
Birth       MAL-ED           NEPAL                          5               3      26  whz              
Birth       MAL-ED           NEPAL                          6               2      26  whz              
Birth       MAL-ED           NEPAL                          7               2      26  whz              
Birth       MAL-ED           NEPAL                          8               1      26  whz              
Birth       MAL-ED           NEPAL                          9               2      26  whz              
Birth       MAL-ED           NEPAL                          10              4      26  whz              
Birth       MAL-ED           NEPAL                          11              4      26  whz              
Birth       MAL-ED           NEPAL                          12              1      26  whz              
Birth       MAL-ED           PERU                           1              29     228  whz              
Birth       MAL-ED           PERU                           2              17     228  whz              
Birth       MAL-ED           PERU                           3              20     228  whz              
Birth       MAL-ED           PERU                           4              14     228  whz              
Birth       MAL-ED           PERU                           5              21     228  whz              
Birth       MAL-ED           PERU                           6              11     228  whz              
Birth       MAL-ED           PERU                           7              19     228  whz              
Birth       MAL-ED           PERU                           8              16     228  whz              
Birth       MAL-ED           PERU                           9              19     228  whz              
Birth       MAL-ED           PERU                           10             21     228  whz              
Birth       MAL-ED           PERU                           11             28     228  whz              
Birth       MAL-ED           PERU                           12             13     228  whz              
Birth       MAL-ED           SOUTH AFRICA                   1               9     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   2              13     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   3               8     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   4               6     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   5               6     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   6               8     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   7              13     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   8               3     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   9              10     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   10             13     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   11             14     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   12             17     120  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              10     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              15     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              11     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               8     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   5               9     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              10     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              14     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   8               6     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   9               2     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             11     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             10     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   12              9     115  whz              
Birth       NIH-Birth        BANGLADESH                     1              59     575  whz              
Birth       NIH-Birth        BANGLADESH                     2              54     575  whz              
Birth       NIH-Birth        BANGLADESH                     3              56     575  whz              
Birth       NIH-Birth        BANGLADESH                     4              47     575  whz              
Birth       NIH-Birth        BANGLADESH                     5              45     575  whz              
Birth       NIH-Birth        BANGLADESH                     6              45     575  whz              
Birth       NIH-Birth        BANGLADESH                     7              39     575  whz              
Birth       NIH-Birth        BANGLADESH                     8              38     575  whz              
Birth       NIH-Birth        BANGLADESH                     9              44     575  whz              
Birth       NIH-Birth        BANGLADESH                     10             47     575  whz              
Birth       NIH-Birth        BANGLADESH                     11             51     575  whz              
Birth       NIH-Birth        BANGLADESH                     12             50     575  whz              
Birth       PROBIT           BELARUS                        1             822   13817  whz              
Birth       PROBIT           BELARUS                        2             797   13817  whz              
Birth       PROBIT           BELARUS                        3             941   13817  whz              
Birth       PROBIT           BELARUS                        4             970   13817  whz              
Birth       PROBIT           BELARUS                        5             942   13817  whz              
Birth       PROBIT           BELARUS                        6            1020   13817  whz              
Birth       PROBIT           BELARUS                        7            1285   13817  whz              
Birth       PROBIT           BELARUS                        8            1306   13817  whz              
Birth       PROBIT           BELARUS                        9            1322   13817  whz              
Birth       PROBIT           BELARUS                        10           1487   13817  whz              
Birth       PROBIT           BELARUS                        11           1383   13817  whz              
Birth       PROBIT           BELARUS                        12           1542   13817  whz              
Birth       PROVIDE          BANGLADESH                     1              30     532  whz              
Birth       PROVIDE          BANGLADESH                     2              24     532  whz              
Birth       PROVIDE          BANGLADESH                     3              45     532  whz              
Birth       PROVIDE          BANGLADESH                     4              28     532  whz              
Birth       PROVIDE          BANGLADESH                     5              45     532  whz              
Birth       PROVIDE          BANGLADESH                     6              75     532  whz              
Birth       PROVIDE          BANGLADESH                     7              75     532  whz              
Birth       PROVIDE          BANGLADESH                     8              53     532  whz              
Birth       PROVIDE          BANGLADESH                     9              55     532  whz              
Birth       PROVIDE          BANGLADESH                     10             54     532  whz              
Birth       PROVIDE          BANGLADESH                     11             27     532  whz              
Birth       PROVIDE          BANGLADESH                     12             21     532  whz              
Birth       ResPak           PAKISTAN                       1               2      38  whz              
Birth       ResPak           PAKISTAN                       2               1      38  whz              
Birth       ResPak           PAKISTAN                       3               1      38  whz              
Birth       ResPak           PAKISTAN                       4               6      38  whz              
Birth       ResPak           PAKISTAN                       5               7      38  whz              
Birth       ResPak           PAKISTAN                       6               7      38  whz              
Birth       ResPak           PAKISTAN                       7               8      38  whz              
Birth       ResPak           PAKISTAN                       8               4      38  whz              
Birth       ResPak           PAKISTAN                       9               1      38  whz              
Birth       ResPak           PAKISTAN                       10              1      38  whz              
Birth       ResPak           PAKISTAN                       11              0      38  whz              
Birth       ResPak           PAKISTAN                       12              0      38  whz              
Birth       SAS-CompFeed     INDIA                          1              70    1103  whz              
Birth       SAS-CompFeed     INDIA                          2              64    1103  whz              
Birth       SAS-CompFeed     INDIA                          3              60    1103  whz              
Birth       SAS-CompFeed     INDIA                          4              58    1103  whz              
Birth       SAS-CompFeed     INDIA                          5              74    1103  whz              
Birth       SAS-CompFeed     INDIA                          6              94    1103  whz              
Birth       SAS-CompFeed     INDIA                          7              92    1103  whz              
Birth       SAS-CompFeed     INDIA                          8             123    1103  whz              
Birth       SAS-CompFeed     INDIA                          9             134    1103  whz              
Birth       SAS-CompFeed     INDIA                          10            125    1103  whz              
Birth       SAS-CompFeed     INDIA                          11            111    1103  whz              
Birth       SAS-CompFeed     INDIA                          12             98    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       1            1233   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       2             957   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       3            1077   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       4             922   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       5             929   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       6            1048   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       7            1096   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       8            1188   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       9            1246   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       10            980   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       11           1103   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       12           1138   12917  whz              
6 months    CMC-V-BCS-2002   INDIA                          1              34     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          2              16     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          3              31     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          4              43     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          5              34     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          6              37     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          7              39     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          8              17     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          9              21     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          10             29     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          11             42     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          12             25     368  whz              
6 months    CMIN             BANGLADESH                     1              26     243  whz              
6 months    CMIN             BANGLADESH                     2              23     243  whz              
6 months    CMIN             BANGLADESH                     3              17     243  whz              
6 months    CMIN             BANGLADESH                     4              22     243  whz              
6 months    CMIN             BANGLADESH                     5              17     243  whz              
6 months    CMIN             BANGLADESH                     6               8     243  whz              
6 months    CMIN             BANGLADESH                     7              15     243  whz              
6 months    CMIN             BANGLADESH                     8              17     243  whz              
6 months    CMIN             BANGLADESH                     9              20     243  whz              
6 months    CMIN             BANGLADESH                     10             24     243  whz              
6 months    CMIN             BANGLADESH                     11             26     243  whz              
6 months    CMIN             BANGLADESH                     12             28     243  whz              
6 months    CONTENT          PERU                           1              10     215  whz              
6 months    CONTENT          PERU                           2              18     215  whz              
6 months    CONTENT          PERU                           3              30     215  whz              
6 months    CONTENT          PERU                           4              19     215  whz              
6 months    CONTENT          PERU                           5              14     215  whz              
6 months    CONTENT          PERU                           6              13     215  whz              
6 months    CONTENT          PERU                           7              28     215  whz              
6 months    CONTENT          PERU                           8              23     215  whz              
6 months    CONTENT          PERU                           9              26     215  whz              
6 months    CONTENT          PERU                           10             14     215  whz              
6 months    CONTENT          PERU                           11              9     215  whz              
6 months    CONTENT          PERU                           12             11     215  whz              
6 months    EE               PAKISTAN                       1              92     375  whz              
6 months    EE               PAKISTAN                       2              66     375  whz              
6 months    EE               PAKISTAN                       3              43     375  whz              
6 months    EE               PAKISTAN                       4              16     375  whz              
6 months    EE               PAKISTAN                       5               0     375  whz              
6 months    EE               PAKISTAN                       6               0     375  whz              
6 months    EE               PAKISTAN                       7               0     375  whz              
6 months    EE               PAKISTAN                       8               0     375  whz              
6 months    EE               PAKISTAN                       9               0     375  whz              
6 months    EE               PAKISTAN                       10              4     375  whz              
6 months    EE               PAKISTAN                       11             71     375  whz              
6 months    EE               PAKISTAN                       12             83     375  whz              
6 months    GMS-Nepal        NEPAL                          1               0     564  whz              
6 months    GMS-Nepal        NEPAL                          2               0     564  whz              
6 months    GMS-Nepal        NEPAL                          3               0     564  whz              
6 months    GMS-Nepal        NEPAL                          4               1     564  whz              
6 months    GMS-Nepal        NEPAL                          5               0     564  whz              
6 months    GMS-Nepal        NEPAL                          6             121     564  whz              
6 months    GMS-Nepal        NEPAL                          7             219     564  whz              
6 months    GMS-Nepal        NEPAL                          8             223     564  whz              
6 months    GMS-Nepal        NEPAL                          9               0     564  whz              
6 months    GMS-Nepal        NEPAL                          10              0     564  whz              
6 months    GMS-Nepal        NEPAL                          11              0     564  whz              
6 months    GMS-Nepal        NEPAL                          12              0     564  whz              
6 months    Guatemala BSC    GUATEMALA                      1              28     299  whz              
6 months    Guatemala BSC    GUATEMALA                      2              25     299  whz              
6 months    Guatemala BSC    GUATEMALA                      3              27     299  whz              
6 months    Guatemala BSC    GUATEMALA                      4              31     299  whz              
6 months    Guatemala BSC    GUATEMALA                      5              31     299  whz              
6 months    Guatemala BSC    GUATEMALA                      6              22     299  whz              
6 months    Guatemala BSC    GUATEMALA                      7              21     299  whz              
6 months    Guatemala BSC    GUATEMALA                      8              14     299  whz              
6 months    Guatemala BSC    GUATEMALA                      9              16     299  whz              
6 months    Guatemala BSC    GUATEMALA                      10             29     299  whz              
6 months    Guatemala BSC    GUATEMALA                      11             24     299  whz              
6 months    Guatemala BSC    GUATEMALA                      12             31     299  whz              
6 months    IRC              INDIA                          1              38     408  whz              
6 months    IRC              INDIA                          2              28     408  whz              
6 months    IRC              INDIA                          3              27     408  whz              
6 months    IRC              INDIA                          4              21     408  whz              
6 months    IRC              INDIA                          5              22     408  whz              
6 months    IRC              INDIA                          6              37     408  whz              
6 months    IRC              INDIA                          7              36     408  whz              
6 months    IRC              INDIA                          8              44     408  whz              
6 months    IRC              INDIA                          9              25     408  whz              
6 months    IRC              INDIA                          10             38     408  whz              
6 months    IRC              INDIA                          11             40     408  whz              
6 months    IRC              INDIA                          12             52     408  whz              
6 months    JiVitA-3         BANGLADESH                     1            1342   16784  whz              
6 months    JiVitA-3         BANGLADESH                     2            1154   16784  whz              
6 months    JiVitA-3         BANGLADESH                     3            1409   16784  whz              
6 months    JiVitA-3         BANGLADESH                     4            1178   16784  whz              
6 months    JiVitA-3         BANGLADESH                     5            1110   16784  whz              
6 months    JiVitA-3         BANGLADESH                     6            1198   16784  whz              
6 months    JiVitA-3         BANGLADESH                     7            1255   16784  whz              
6 months    JiVitA-3         BANGLADESH                     8            1515   16784  whz              
6 months    JiVitA-3         BANGLADESH                     9            1621   16784  whz              
6 months    JiVitA-3         BANGLADESH                     10           1665   16784  whz              
6 months    JiVitA-3         BANGLADESH                     11           1759   16784  whz              
6 months    JiVitA-3         BANGLADESH                     12           1578   16784  whz              
6 months    JiVitA-4         BANGLADESH                     1               0    4833  whz              
6 months    JiVitA-4         BANGLADESH                     2             542    4833  whz              
6 months    JiVitA-4         BANGLADESH                     3             962    4833  whz              
6 months    JiVitA-4         BANGLADESH                     4             736    4833  whz              
6 months    JiVitA-4         BANGLADESH                     5             601    4833  whz              
6 months    JiVitA-4         BANGLADESH                     6             439    4833  whz              
6 months    JiVitA-4         BANGLADESH                     7             518    4833  whz              
6 months    JiVitA-4         BANGLADESH                     8             521    4833  whz              
6 months    JiVitA-4         BANGLADESH                     9             386    4833  whz              
6 months    JiVitA-4         BANGLADESH                     10            128    4833  whz              
6 months    JiVitA-4         BANGLADESH                     11              0    4833  whz              
6 months    JiVitA-4         BANGLADESH                     12              0    4833  whz              
6 months    Keneba           GAMBIA                         1             210    2089  whz              
6 months    Keneba           GAMBIA                         2             187    2089  whz              
6 months    Keneba           GAMBIA                         3             220    2089  whz              
6 months    Keneba           GAMBIA                         4             143    2089  whz              
6 months    Keneba           GAMBIA                         5             144    2089  whz              
6 months    Keneba           GAMBIA                         6             118    2089  whz              
6 months    Keneba           GAMBIA                         7              92    2089  whz              
6 months    Keneba           GAMBIA                         8             174    2089  whz              
6 months    Keneba           GAMBIA                         9             174    2089  whz              
6 months    Keneba           GAMBIA                         10            248    2089  whz              
6 months    Keneba           GAMBIA                         11            187    2089  whz              
6 months    Keneba           GAMBIA                         12            192    2089  whz              
6 months    LCNI-5           MALAWI                         1              68     839  whz              
6 months    LCNI-5           MALAWI                         2              46     839  whz              
6 months    LCNI-5           MALAWI                         3              26     839  whz              
6 months    LCNI-5           MALAWI                         4              39     839  whz              
6 months    LCNI-5           MALAWI                         5              44     839  whz              
6 months    LCNI-5           MALAWI                         6              34     839  whz              
6 months    LCNI-5           MALAWI                         7              61     839  whz              
6 months    LCNI-5           MALAWI                         8              93     839  whz              
6 months    LCNI-5           MALAWI                         9              93     839  whz              
6 months    LCNI-5           MALAWI                         10            135     839  whz              
6 months    LCNI-5           MALAWI                         11            105     839  whz              
6 months    LCNI-5           MALAWI                         12             95     839  whz              
6 months    MAL-ED           BANGLADESH                     1              18     241  whz              
6 months    MAL-ED           BANGLADESH                     2              20     241  whz              
6 months    MAL-ED           BANGLADESH                     3              23     241  whz              
6 months    MAL-ED           BANGLADESH                     4              22     241  whz              
6 months    MAL-ED           BANGLADESH                     5              21     241  whz              
6 months    MAL-ED           BANGLADESH                     6              10     241  whz              
6 months    MAL-ED           BANGLADESH                     7              18     241  whz              
6 months    MAL-ED           BANGLADESH                     8              23     241  whz              
6 months    MAL-ED           BANGLADESH                     9              22     241  whz              
6 months    MAL-ED           BANGLADESH                     10             22     241  whz              
6 months    MAL-ED           BANGLADESH                     11             16     241  whz              
6 months    MAL-ED           BANGLADESH                     12             26     241  whz              
6 months    MAL-ED           BRAZIL                         1              15     209  whz              
6 months    MAL-ED           BRAZIL                         2              23     209  whz              
6 months    MAL-ED           BRAZIL                         3              16     209  whz              
6 months    MAL-ED           BRAZIL                         4              11     209  whz              
6 months    MAL-ED           BRAZIL                         5              21     209  whz              
6 months    MAL-ED           BRAZIL                         6               8     209  whz              
6 months    MAL-ED           BRAZIL                         7              16     209  whz              
6 months    MAL-ED           BRAZIL                         8              16     209  whz              
6 months    MAL-ED           BRAZIL                         9              30     209  whz              
6 months    MAL-ED           BRAZIL                         10             20     209  whz              
6 months    MAL-ED           BRAZIL                         11             21     209  whz              
6 months    MAL-ED           BRAZIL                         12             12     209  whz              
6 months    MAL-ED           INDIA                          1              19     236  whz              
6 months    MAL-ED           INDIA                          2              18     236  whz              
6 months    MAL-ED           INDIA                          3              22     236  whz              
6 months    MAL-ED           INDIA                          4              15     236  whz              
6 months    MAL-ED           INDIA                          5               8     236  whz              
6 months    MAL-ED           INDIA                          6              19     236  whz              
6 months    MAL-ED           INDIA                          7              23     236  whz              
6 months    MAL-ED           INDIA                          8              22     236  whz              
6 months    MAL-ED           INDIA                          9              20     236  whz              
6 months    MAL-ED           INDIA                          10             26     236  whz              
6 months    MAL-ED           INDIA                          11             25     236  whz              
6 months    MAL-ED           INDIA                          12             19     236  whz              
6 months    MAL-ED           NEPAL                          1              20     236  whz              
6 months    MAL-ED           NEPAL                          2              19     236  whz              
6 months    MAL-ED           NEPAL                          3              17     236  whz              
6 months    MAL-ED           NEPAL                          4              22     236  whz              
6 months    MAL-ED           NEPAL                          5              20     236  whz              
6 months    MAL-ED           NEPAL                          6              18     236  whz              
6 months    MAL-ED           NEPAL                          7              18     236  whz              
6 months    MAL-ED           NEPAL                          8              24     236  whz              
6 months    MAL-ED           NEPAL                          9              16     236  whz              
6 months    MAL-ED           NEPAL                          10             21     236  whz              
6 months    MAL-ED           NEPAL                          11             24     236  whz              
6 months    MAL-ED           NEPAL                          12             17     236  whz              
6 months    MAL-ED           PERU                           1              38     273  whz              
6 months    MAL-ED           PERU                           2              19     273  whz              
6 months    MAL-ED           PERU                           3              22     273  whz              
6 months    MAL-ED           PERU                           4              20     273  whz              
6 months    MAL-ED           PERU                           5              27     273  whz              
6 months    MAL-ED           PERU                           6              15     273  whz              
6 months    MAL-ED           PERU                           7              22     273  whz              
6 months    MAL-ED           PERU                           8              16     273  whz              
6 months    MAL-ED           PERU                           9              23     273  whz              
6 months    MAL-ED           PERU                           10             20     273  whz              
6 months    MAL-ED           PERU                           11             32     273  whz              
6 months    MAL-ED           PERU                           12             19     273  whz              
6 months    MAL-ED           SOUTH AFRICA                   1              38     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   2              23     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   3              15     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   4              13     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   5              13     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   6              18     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   7              22     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   8               9     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   9              18     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   10             26     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   11             24     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   12             35     254  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              20     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              30     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              18     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               9     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              16     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              19     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              23     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              12     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              21     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             22     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             27     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             30     247  whz              
6 months    NIH-Birth        BANGLADESH                     1              52     537  whz              
6 months    NIH-Birth        BANGLADESH                     2              49     537  whz              
6 months    NIH-Birth        BANGLADESH                     3              50     537  whz              
6 months    NIH-Birth        BANGLADESH                     4              42     537  whz              
6 months    NIH-Birth        BANGLADESH                     5              42     537  whz              
6 months    NIH-Birth        BANGLADESH                     6              43     537  whz              
6 months    NIH-Birth        BANGLADESH                     7              39     537  whz              
6 months    NIH-Birth        BANGLADESH                     8              35     537  whz              
6 months    NIH-Birth        BANGLADESH                     9              42     537  whz              
6 months    NIH-Birth        BANGLADESH                     10             42     537  whz              
6 months    NIH-Birth        BANGLADESH                     11             50     537  whz              
6 months    NIH-Birth        BANGLADESH                     12             51     537  whz              
6 months    PROBIT           BELARUS                        1             975   15757  whz              
6 months    PROBIT           BELARUS                        2             932   15757  whz              
6 months    PROBIT           BELARUS                        3            1066   15757  whz              
6 months    PROBIT           BELARUS                        4            1098   15757  whz              
6 months    PROBIT           BELARUS                        5            1111   15757  whz              
6 months    PROBIT           BELARUS                        6            1115   15757  whz              
6 months    PROBIT           BELARUS                        7            1464   15757  whz              
6 months    PROBIT           BELARUS                        8            1473   15757  whz              
6 months    PROBIT           BELARUS                        9            1509   15757  whz              
6 months    PROBIT           BELARUS                        10           1689   15757  whz              
6 months    PROBIT           BELARUS                        11           1588   15757  whz              
6 months    PROBIT           BELARUS                        12           1737   15757  whz              
6 months    PROVIDE          BANGLADESH                     1              35     603  whz              
6 months    PROVIDE          BANGLADESH                     2              32     603  whz              
6 months    PROVIDE          BANGLADESH                     3              43     603  whz              
6 months    PROVIDE          BANGLADESH                     4              36     603  whz              
6 months    PROVIDE          BANGLADESH                     5              40     603  whz              
6 months    PROVIDE          BANGLADESH                     6              77     603  whz              
6 months    PROVIDE          BANGLADESH                     7              76     603  whz              
6 months    PROVIDE          BANGLADESH                     8              61     603  whz              
6 months    PROVIDE          BANGLADESH                     9              66     603  whz              
6 months    PROVIDE          BANGLADESH                     10             67     603  whz              
6 months    PROVIDE          BANGLADESH                     11             41     603  whz              
6 months    PROVIDE          BANGLADESH                     12             29     603  whz              
6 months    ResPak           PAKISTAN                       1              11     239  whz              
6 months    ResPak           PAKISTAN                       2              10     239  whz              
6 months    ResPak           PAKISTAN                       3              25     239  whz              
6 months    ResPak           PAKISTAN                       4              24     239  whz              
6 months    ResPak           PAKISTAN                       5              45     239  whz              
6 months    ResPak           PAKISTAN                       6              41     239  whz              
6 months    ResPak           PAKISTAN                       7              24     239  whz              
6 months    ResPak           PAKISTAN                       8              34     239  whz              
6 months    ResPak           PAKISTAN                       9              16     239  whz              
6 months    ResPak           PAKISTAN                       10              4     239  whz              
6 months    ResPak           PAKISTAN                       11              2     239  whz              
6 months    ResPak           PAKISTAN                       12              3     239  whz              
6 months    SAS-CompFeed     INDIA                          1              87    1334  whz              
6 months    SAS-CompFeed     INDIA                          2              83    1334  whz              
6 months    SAS-CompFeed     INDIA                          3              74    1334  whz              
6 months    SAS-CompFeed     INDIA                          4              64    1334  whz              
6 months    SAS-CompFeed     INDIA                          5              87    1334  whz              
6 months    SAS-CompFeed     INDIA                          6              96    1334  whz              
6 months    SAS-CompFeed     INDIA                          7             122    1334  whz              
6 months    SAS-CompFeed     INDIA                          8             162    1334  whz              
6 months    SAS-CompFeed     INDIA                          9             173    1334  whz              
6 months    SAS-CompFeed     INDIA                          10            149    1334  whz              
6 months    SAS-CompFeed     INDIA                          11            119    1334  whz              
6 months    SAS-CompFeed     INDIA                          12            118    1334  whz              
6 months    SAS-FoodSuppl    INDIA                          1              24     380  whz              
6 months    SAS-FoodSuppl    INDIA                          2              33     380  whz              
6 months    SAS-FoodSuppl    INDIA                          3              19     380  whz              
6 months    SAS-FoodSuppl    INDIA                          4               4     380  whz              
6 months    SAS-FoodSuppl    INDIA                          5              12     380  whz              
6 months    SAS-FoodSuppl    INDIA                          6              21     380  whz              
6 months    SAS-FoodSuppl    INDIA                          7              33     380  whz              
6 months    SAS-FoodSuppl    INDIA                          8              63     380  whz              
6 months    SAS-FoodSuppl    INDIA                          9              62     380  whz              
6 months    SAS-FoodSuppl    INDIA                          10             47     380  whz              
6 months    SAS-FoodSuppl    INDIA                          11             28     380  whz              
6 months    SAS-FoodSuppl    INDIA                          12             34     380  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             142    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             149    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             140    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             153    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             149    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             143    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             195    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             199    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             183    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            208    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            195    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            172    2028  whz              
6 months    ZVITAMBO         ZIMBABWE                       1             810    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       2             609    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       3             750    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       4             646    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       5             628    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       6             662    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       7             662    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       8             775    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       9             767    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       10            616    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       11            779    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       12            801    8505  whz              
24 months   CMC-V-BCS-2002   INDIA                          1              34     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          2              16     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          3              31     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          4              44     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          5              36     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          6              37     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          7              39     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          8              17     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          9              21     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          10             29     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          11             43     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          12             25     372  whz              
24 months   CMIN             BANGLADESH                     1              26     243  whz              
24 months   CMIN             BANGLADESH                     2              24     243  whz              
24 months   CMIN             BANGLADESH                     3              18     243  whz              
24 months   CMIN             BANGLADESH                     4              22     243  whz              
24 months   CMIN             BANGLADESH                     5              16     243  whz              
24 months   CMIN             BANGLADESH                     6               8     243  whz              
24 months   CMIN             BANGLADESH                     7              15     243  whz              
24 months   CMIN             BANGLADESH                     8              18     243  whz              
24 months   CMIN             BANGLADESH                     9              20     243  whz              
24 months   CMIN             BANGLADESH                     10             24     243  whz              
24 months   CMIN             BANGLADESH                     11             25     243  whz              
24 months   CMIN             BANGLADESH                     12             27     243  whz              
24 months   CONTENT          PERU                           1               7     164  whz              
24 months   CONTENT          PERU                           2              14     164  whz              
24 months   CONTENT          PERU                           3              22     164  whz              
24 months   CONTENT          PERU                           4              15     164  whz              
24 months   CONTENT          PERU                           5              14     164  whz              
24 months   CONTENT          PERU                           6              11     164  whz              
24 months   CONTENT          PERU                           7              23     164  whz              
24 months   CONTENT          PERU                           8              14     164  whz              
24 months   CONTENT          PERU                           9              17     164  whz              
24 months   CONTENT          PERU                           10             11     164  whz              
24 months   CONTENT          PERU                           11              6     164  whz              
24 months   CONTENT          PERU                           12             10     164  whz              
24 months   EE               PAKISTAN                       1              14     168  whz              
24 months   EE               PAKISTAN                       2               4     168  whz              
24 months   EE               PAKISTAN                       3               0     168  whz              
24 months   EE               PAKISTAN                       4               0     168  whz              
24 months   EE               PAKISTAN                       5               0     168  whz              
24 months   EE               PAKISTAN                       6               0     168  whz              
24 months   EE               PAKISTAN                       7               0     168  whz              
24 months   EE               PAKISTAN                       8               0     168  whz              
24 months   EE               PAKISTAN                       9               0     168  whz              
24 months   EE               PAKISTAN                       10              4     168  whz              
24 months   EE               PAKISTAN                       11             66     168  whz              
24 months   EE               PAKISTAN                       12             80     168  whz              
24 months   GMS-Nepal        NEPAL                          1               0     487  whz              
24 months   GMS-Nepal        NEPAL                          2               0     487  whz              
24 months   GMS-Nepal        NEPAL                          3               0     487  whz              
24 months   GMS-Nepal        NEPAL                          4               0     487  whz              
24 months   GMS-Nepal        NEPAL                          5               0     487  whz              
24 months   GMS-Nepal        NEPAL                          6              79     487  whz              
24 months   GMS-Nepal        NEPAL                          7             206     487  whz              
24 months   GMS-Nepal        NEPAL                          8             202     487  whz              
24 months   GMS-Nepal        NEPAL                          9               0     487  whz              
24 months   GMS-Nepal        NEPAL                          10              0     487  whz              
24 months   GMS-Nepal        NEPAL                          11              0     487  whz              
24 months   GMS-Nepal        NEPAL                          12              0     487  whz              
24 months   IRC              INDIA                          1              38     409  whz              
24 months   IRC              INDIA                          2              28     409  whz              
24 months   IRC              INDIA                          3              27     409  whz              
24 months   IRC              INDIA                          4              21     409  whz              
24 months   IRC              INDIA                          5              22     409  whz              
24 months   IRC              INDIA                          6              37     409  whz              
24 months   IRC              INDIA                          7              36     409  whz              
24 months   IRC              INDIA                          8              44     409  whz              
24 months   IRC              INDIA                          9              27     409  whz              
24 months   IRC              INDIA                          10             37     409  whz              
24 months   IRC              INDIA                          11             40     409  whz              
24 months   IRC              INDIA                          12             52     409  whz              
24 months   JiVitA-3         BANGLADESH                     1             665    8603  whz              
24 months   JiVitA-3         BANGLADESH                     2             561    8603  whz              
24 months   JiVitA-3         BANGLADESH                     3             714    8603  whz              
24 months   JiVitA-3         BANGLADESH                     4             504    8603  whz              
24 months   JiVitA-3         BANGLADESH                     5             364    8603  whz              
24 months   JiVitA-3         BANGLADESH                     6             609    8603  whz              
24 months   JiVitA-3         BANGLADESH                     7             672    8603  whz              
24 months   JiVitA-3         BANGLADESH                     8             618    8603  whz              
24 months   JiVitA-3         BANGLADESH                     9             800    8603  whz              
24 months   JiVitA-3         BANGLADESH                     10            874    8603  whz              
24 months   JiVitA-3         BANGLADESH                     11           1039    8603  whz              
24 months   JiVitA-3         BANGLADESH                     12           1183    8603  whz              
24 months   JiVitA-4         BANGLADESH                     1               0    4735  whz              
24 months   JiVitA-4         BANGLADESH                     2             781    4735  whz              
24 months   JiVitA-4         BANGLADESH                     3             851    4735  whz              
24 months   JiVitA-4         BANGLADESH                     4             649    4735  whz              
24 months   JiVitA-4         BANGLADESH                     5             563    4735  whz              
24 months   JiVitA-4         BANGLADESH                     6             418    4735  whz              
24 months   JiVitA-4         BANGLADESH                     7             484    4735  whz              
24 months   JiVitA-4         BANGLADESH                     8             503    4735  whz              
24 months   JiVitA-4         BANGLADESH                     9             364    4735  whz              
24 months   JiVitA-4         BANGLADESH                     10            122    4735  whz              
24 months   JiVitA-4         BANGLADESH                     11              0    4735  whz              
24 months   JiVitA-4         BANGLADESH                     12              0    4735  whz              
24 months   Keneba           GAMBIA                         1             171    1726  whz              
24 months   Keneba           GAMBIA                         2             167    1726  whz              
24 months   Keneba           GAMBIA                         3             170    1726  whz              
24 months   Keneba           GAMBIA                         4             114    1726  whz              
24 months   Keneba           GAMBIA                         5             122    1726  whz              
24 months   Keneba           GAMBIA                         6              92    1726  whz              
24 months   Keneba           GAMBIA                         7              83    1726  whz              
24 months   Keneba           GAMBIA                         8             158    1726  whz              
24 months   Keneba           GAMBIA                         9             160    1726  whz              
24 months   Keneba           GAMBIA                         10            200    1726  whz              
24 months   Keneba           GAMBIA                         11            140    1726  whz              
24 months   Keneba           GAMBIA                         12            149    1726  whz              
24 months   LCNI-5           MALAWI                         1              39     563  whz              
24 months   LCNI-5           MALAWI                         2              30     563  whz              
24 months   LCNI-5           MALAWI                         3              19     563  whz              
24 months   LCNI-5           MALAWI                         4              28     563  whz              
24 months   LCNI-5           MALAWI                         5              30     563  whz              
24 months   LCNI-5           MALAWI                         6              24     563  whz              
24 months   LCNI-5           MALAWI                         7              45     563  whz              
24 months   LCNI-5           MALAWI                         8              70     563  whz              
24 months   LCNI-5           MALAWI                         9              63     563  whz              
24 months   LCNI-5           MALAWI                         10             89     563  whz              
24 months   LCNI-5           MALAWI                         11             62     563  whz              
24 months   LCNI-5           MALAWI                         12             64     563  whz              
24 months   MAL-ED           BANGLADESH                     1              14     212  whz              
24 months   MAL-ED           BANGLADESH                     2              17     212  whz              
24 months   MAL-ED           BANGLADESH                     3              19     212  whz              
24 months   MAL-ED           BANGLADESH                     4              20     212  whz              
24 months   MAL-ED           BANGLADESH                     5              19     212  whz              
24 months   MAL-ED           BANGLADESH                     6               7     212  whz              
24 months   MAL-ED           BANGLADESH                     7              18     212  whz              
24 months   MAL-ED           BANGLADESH                     8              22     212  whz              
24 months   MAL-ED           BANGLADESH                     9              18     212  whz              
24 months   MAL-ED           BANGLADESH                     10             20     212  whz              
24 months   MAL-ED           BANGLADESH                     11             11     212  whz              
24 months   MAL-ED           BANGLADESH                     12             27     212  whz              
24 months   MAL-ED           BRAZIL                         1              15     169  whz              
24 months   MAL-ED           BRAZIL                         2              16     169  whz              
24 months   MAL-ED           BRAZIL                         3              14     169  whz              
24 months   MAL-ED           BRAZIL                         4              10     169  whz              
24 months   MAL-ED           BRAZIL                         5              15     169  whz              
24 months   MAL-ED           BRAZIL                         6               6     169  whz              
24 months   MAL-ED           BRAZIL                         7              10     169  whz              
24 months   MAL-ED           BRAZIL                         8              13     169  whz              
24 months   MAL-ED           BRAZIL                         9              27     169  whz              
24 months   MAL-ED           BRAZIL                         10             14     169  whz              
24 months   MAL-ED           BRAZIL                         11             18     169  whz              
24 months   MAL-ED           BRAZIL                         12             11     169  whz              
24 months   MAL-ED           INDIA                          1              19     227  whz              
24 months   MAL-ED           INDIA                          2              18     227  whz              
24 months   MAL-ED           INDIA                          3              19     227  whz              
24 months   MAL-ED           INDIA                          4              14     227  whz              
24 months   MAL-ED           INDIA                          5               8     227  whz              
24 months   MAL-ED           INDIA                          6              18     227  whz              
24 months   MAL-ED           INDIA                          7              23     227  whz              
24 months   MAL-ED           INDIA                          8              21     227  whz              
24 months   MAL-ED           INDIA                          9              18     227  whz              
24 months   MAL-ED           INDIA                          10             26     227  whz              
24 months   MAL-ED           INDIA                          11             24     227  whz              
24 months   MAL-ED           INDIA                          12             19     227  whz              
24 months   MAL-ED           NEPAL                          1              19     228  whz              
24 months   MAL-ED           NEPAL                          2              17     228  whz              
24 months   MAL-ED           NEPAL                          3              17     228  whz              
24 months   MAL-ED           NEPAL                          4              22     228  whz              
24 months   MAL-ED           NEPAL                          5              19     228  whz              
24 months   MAL-ED           NEPAL                          6              18     228  whz              
24 months   MAL-ED           NEPAL                          7              17     228  whz              
24 months   MAL-ED           NEPAL                          8              24     228  whz              
24 months   MAL-ED           NEPAL                          9              15     228  whz              
24 months   MAL-ED           NEPAL                          10             20     228  whz              
24 months   MAL-ED           NEPAL                          11             24     228  whz              
24 months   MAL-ED           NEPAL                          12             16     228  whz              
24 months   MAL-ED           PERU                           1              30     201  whz              
24 months   MAL-ED           PERU                           2              17     201  whz              
24 months   MAL-ED           PERU                           3              15     201  whz              
24 months   MAL-ED           PERU                           4              11     201  whz              
24 months   MAL-ED           PERU                           5              19     201  whz              
24 months   MAL-ED           PERU                           6              11     201  whz              
24 months   MAL-ED           PERU                           7              15     201  whz              
24 months   MAL-ED           PERU                           8              12     201  whz              
24 months   MAL-ED           PERU                           9              21     201  whz              
24 months   MAL-ED           PERU                           10             14     201  whz              
24 months   MAL-ED           PERU                           11             21     201  whz              
24 months   MAL-ED           PERU                           12             15     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   1              34     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   2              22     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   3              14     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   4              12     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   5              12     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   6              16     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   7              22     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   8               8     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   9              19     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   10             25     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   11             23     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   12             31     238  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              15     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              22     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              18     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               6     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              18     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              18     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              23     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              11     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              18     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             15     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             24     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             26     214  whz              
24 months   NIH-Birth        BANGLADESH                     1              43     428  whz              
24 months   NIH-Birth        BANGLADESH                     2              36     428  whz              
24 months   NIH-Birth        BANGLADESH                     3              39     428  whz              
24 months   NIH-Birth        BANGLADESH                     4              34     428  whz              
24 months   NIH-Birth        BANGLADESH                     5              35     428  whz              
24 months   NIH-Birth        BANGLADESH                     6              33     428  whz              
24 months   NIH-Birth        BANGLADESH                     7              34     428  whz              
24 months   NIH-Birth        BANGLADESH                     8              27     428  whz              
24 months   NIH-Birth        BANGLADESH                     9              26     428  whz              
24 months   NIH-Birth        BANGLADESH                     10             33     428  whz              
24 months   NIH-Birth        BANGLADESH                     11             42     428  whz              
24 months   NIH-Birth        BANGLADESH                     12             46     428  whz              
24 months   PROBIT           BELARUS                        1             248    3970  whz              
24 months   PROBIT           BELARUS                        2             213    3970  whz              
24 months   PROBIT           BELARUS                        3             312    3970  whz              
24 months   PROBIT           BELARUS                        4             332    3970  whz              
24 months   PROBIT           BELARUS                        5             296    3970  whz              
24 months   PROBIT           BELARUS                        6             267    3970  whz              
24 months   PROBIT           BELARUS                        7             371    3970  whz              
24 months   PROBIT           BELARUS                        8             337    3970  whz              
24 months   PROBIT           BELARUS                        9             380    3970  whz              
24 months   PROBIT           BELARUS                        10            391    3970  whz              
24 months   PROBIT           BELARUS                        11            376    3970  whz              
24 months   PROBIT           BELARUS                        12            447    3970  whz              
24 months   PROVIDE          BANGLADESH                     1              32     579  whz              
24 months   PROVIDE          BANGLADESH                     2              30     579  whz              
24 months   PROVIDE          BANGLADESH                     3              40     579  whz              
24 months   PROVIDE          BANGLADESH                     4              33     579  whz              
24 months   PROVIDE          BANGLADESH                     5              42     579  whz              
24 months   PROVIDE          BANGLADESH                     6              75     579  whz              
24 months   PROVIDE          BANGLADESH                     7              70     579  whz              
24 months   PROVIDE          BANGLADESH                     8              60     579  whz              
24 months   PROVIDE          BANGLADESH                     9              67     579  whz              
24 months   PROVIDE          BANGLADESH                     10             64     579  whz              
24 months   PROVIDE          BANGLADESH                     11             38     579  whz              
24 months   PROVIDE          BANGLADESH                     12             28     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               2       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       1              49     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       2              64     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       3              56     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       4              47     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       5              51     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       6              44     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       7              28     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       8              30     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       9               2     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       10              4     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       11             20     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       12             38     433  whz              


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/b6859bdf-f7ff-4459-a0ac-fb64b618164e/e3e87337-47d7-49e0-9e64-4253f3211007/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b6859bdf-f7ff-4459-a0ac-fb64b618164e/e3e87337-47d7-49e0-9e64-4253f3211007/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b6859bdf-f7ff-4459-a0ac-fb64b618164e/e3e87337-47d7-49e0-9e64-4253f3211007/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.2064516   -0.8241587    0.4112554
Birth       IRC              INDIA                          2                    NA                -0.5304348   -1.0966348    0.0357652
Birth       IRC              INDIA                          3                    NA                -0.8991667   -1.7172346   -0.0810988
Birth       IRC              INDIA                          4                    NA                -1.5168421   -2.1488141   -0.8848701
Birth       IRC              INDIA                          5                    NA                -1.7686667   -2.5910096   -0.9463238
Birth       IRC              INDIA                          6                    NA                -1.3615385   -2.0604069   -0.6626700
Birth       IRC              INDIA                          7                    NA                -1.0848387   -1.6762039   -0.4934735
Birth       IRC              INDIA                          8                    NA                -1.3869444   -1.9532683   -0.8206205
Birth       IRC              INDIA                          9                    NA                -1.0200000   -1.8383304   -0.2016696
Birth       IRC              INDIA                          10                   NA                -0.9990909   -1.5750645   -0.4231173
Birth       IRC              INDIA                          11                   NA                -0.8418421   -1.3887010   -0.2949832
Birth       IRC              INDIA                          12                   NA                -0.9930233   -1.4781855   -0.5078611
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.6317930   -0.6892360   -0.5743500
Birth       JiVitA-3         BANGLADESH                     2                    NA                -0.7167943   -0.7728395   -0.6607492
Birth       JiVitA-3         BANGLADESH                     3                    NA                -0.7718027   -0.8220441   -0.7215613
Birth       JiVitA-3         BANGLADESH                     4                    NA                -0.7763052   -0.8353053   -0.7173051
Birth       JiVitA-3         BANGLADESH                     5                    NA                -0.7791250   -0.8517791   -0.7064709
Birth       JiVitA-3         BANGLADESH                     6                    NA                -0.8001622   -0.8681817   -0.7321426
Birth       JiVitA-3         BANGLADESH                     7                    NA                -0.7512653   -0.8144339   -0.6880968
Birth       JiVitA-3         BANGLADESH                     8                    NA                -0.8435644   -0.9029217   -0.7842070
Birth       JiVitA-3         BANGLADESH                     9                    NA                -0.9139817   -0.9686963   -0.8592670
Birth       JiVitA-3         BANGLADESH                     10                   NA                -0.8499010   -0.9017269   -0.7980751
Birth       JiVitA-3         BANGLADESH                     11                   NA                -0.7938410   -0.8445187   -0.7431633
Birth       JiVitA-3         BANGLADESH                     12                   NA                -0.6929369   -0.7442469   -0.6416268
Birth       Keneba           GAMBIA                         1                    NA                -1.3488889   -1.5422100   -1.1555678
Birth       Keneba           GAMBIA                         2                    NA                -1.4002857   -1.5922534   -1.2083180
Birth       Keneba           GAMBIA                         3                    NA                -1.0693082   -1.2476477   -0.8909687
Birth       Keneba           GAMBIA                         4                    NA                -1.0735922   -1.3043402   -0.8428443
Birth       Keneba           GAMBIA                         5                    NA                -1.0514706   -1.2875250   -0.8154162
Birth       Keneba           GAMBIA                         6                    NA                -0.7711765   -1.0420592   -0.5002937
Birth       Keneba           GAMBIA                         7                    NA                -1.2347297   -1.4957055   -0.9737540
Birth       Keneba           GAMBIA                         8                    NA                -1.3240517   -1.5259142   -1.1221892
Birth       Keneba           GAMBIA                         9                    NA                -1.3485593   -1.5684485   -1.1286702
Birth       Keneba           GAMBIA                         10                   NA                -1.3270833   -1.5108883   -1.1432783
Birth       Keneba           GAMBIA                         11                   NA                -1.2966087   -1.5435588   -1.0496586
Birth       Keneba           GAMBIA                         12                   NA                -1.3418045   -1.5483400   -1.1352690
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.8447368   -1.2679122   -0.4215615
Birth       MAL-ED           BANGLADESH                     2                    NA                -0.9766667   -1.4645399   -0.4887935
Birth       MAL-ED           BANGLADESH                     3                    NA                -1.0814286   -1.5581991   -0.6046581
Birth       MAL-ED           BANGLADESH                     4                    NA                -1.2013158   -1.7040536   -0.6985780
Birth       MAL-ED           BANGLADESH                     5                    NA                -0.5841176   -1.1364997   -0.0317356
Birth       MAL-ED           BANGLADESH                     6                    NA                -0.7257143   -1.1540291   -0.2973994
Birth       MAL-ED           BANGLADESH                     7                    NA                -1.1130769   -1.5329650   -0.6931889
Birth       MAL-ED           BANGLADESH                     8                    NA                -0.6582609   -1.1407755   -0.1757462
Birth       MAL-ED           BANGLADESH                     9                    NA                -1.4718750   -1.9537166   -0.9900334
Birth       MAL-ED           BANGLADESH                     10                   NA                -0.9840000   -1.4629655   -0.5050345
Birth       MAL-ED           BANGLADESH                     11                   NA                -0.9360000   -1.3986933   -0.4733067
Birth       MAL-ED           BANGLADESH                     12                   NA                -0.7714583   -1.2225093   -0.3204073
Birth       MAL-ED           PERU                           1                    NA                -0.3206897   -0.5727261   -0.0686532
Birth       MAL-ED           PERU                           2                    NA                 0.1058824   -0.2337632    0.4455279
Birth       MAL-ED           PERU                           3                    NA                 0.1795000   -0.1460680    0.5050680
Birth       MAL-ED           PERU                           4                    NA                -0.0171429   -0.5339030    0.4996173
Birth       MAL-ED           PERU                           5                    NA                 0.2857143   -0.1073159    0.6787445
Birth       MAL-ED           PERU                           6                    NA                 0.0945455   -0.3404883    0.5295792
Birth       MAL-ED           PERU                           7                    NA                -0.2915789   -0.7308879    0.1477300
Birth       MAL-ED           PERU                           8                    NA                -0.1137500   -0.6127408    0.3852408
Birth       MAL-ED           PERU                           9                    NA                -0.0805263   -0.5566281    0.3955755
Birth       MAL-ED           PERU                           10                   NA                 0.0471429   -0.2825564    0.3768421
Birth       MAL-ED           PERU                           11                   NA                -0.2550000   -0.6968636    0.1868636
Birth       MAL-ED           PERU                           12                   NA                 0.0223077   -0.4135688    0.4581842
Birth       NIH-Birth        BANGLADESH                     1                    NA                -1.3449153   -1.6895662   -1.0002643
Birth       NIH-Birth        BANGLADESH                     2                    NA                -1.0214815   -1.3467319   -0.6962310
Birth       NIH-Birth        BANGLADESH                     3                    NA                -1.2967857   -1.5770342   -1.0165373
Birth       NIH-Birth        BANGLADESH                     4                    NA                -1.6967021   -1.9899936   -1.4034107
Birth       NIH-Birth        BANGLADESH                     5                    NA                -1.5788889   -1.9127127   -1.2450650
Birth       NIH-Birth        BANGLADESH                     6                    NA                -1.3960000   -1.7426231   -1.0493769
Birth       NIH-Birth        BANGLADESH                     7                    NA                -1.6928205   -2.0858292   -1.2998118
Birth       NIH-Birth        BANGLADESH                     8                    NA                -1.4989474   -1.8583183   -1.1395764
Birth       NIH-Birth        BANGLADESH                     9                    NA                -1.4631818   -1.7511491   -1.1752145
Birth       NIH-Birth        BANGLADESH                     10                   NA                -1.4223404   -1.7267161   -1.1179648
Birth       NIH-Birth        BANGLADESH                     11                   NA                -1.0931373   -1.3995052   -0.7867693
Birth       NIH-Birth        BANGLADESH                     12                   NA                -0.9100000   -1.1698170   -0.6501830
Birth       PROBIT           BELARUS                        1                    NA                -1.1755839   -1.5011916   -0.8499763
Birth       PROBIT           BELARUS                        2                    NA                -1.0301631   -1.3004140   -0.7599123
Birth       PROBIT           BELARUS                        3                    NA                -1.1571201   -1.3985780   -0.9156622
Birth       PROBIT           BELARUS                        4                    NA                -1.1659175   -1.4127374   -0.9190977
Birth       PROBIT           BELARUS                        5                    NA                -1.2864384   -1.5398865   -1.0329903
Birth       PROBIT           BELARUS                        6                    NA                -1.1548676   -1.3980015   -0.9117338
Birth       PROBIT           BELARUS                        7                    NA                -1.2213463   -1.4537682   -0.9889244
Birth       PROBIT           BELARUS                        8                    NA                -1.1461945   -1.3876775   -0.9047115
Birth       PROBIT           BELARUS                        9                    NA                -1.0988994   -1.3713134   -0.8264854
Birth       PROBIT           BELARUS                        10                   NA                -1.1690417   -1.3720949   -0.9659885
Birth       PROBIT           BELARUS                        11                   NA                -1.1016811   -1.2852222   -0.9181401
Birth       PROBIT           BELARUS                        12                   NA                -1.1025616   -1.3124468   -0.8926764
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.7130000   -0.9699481   -0.4560519
Birth       PROVIDE          BANGLADESH                     2                    NA                -1.2404167   -1.6655483   -0.8152851
Birth       PROVIDE          BANGLADESH                     3                    NA                -1.1888889   -1.4299534   -0.9478243
Birth       PROVIDE          BANGLADESH                     4                    NA                -1.1375000   -1.3642553   -0.9107447
Birth       PROVIDE          BANGLADESH                     5                    NA                -1.6000000   -1.8372875   -1.3627125
Birth       PROVIDE          BANGLADESH                     6                    NA                -1.3874667   -1.5677779   -1.2071555
Birth       PROVIDE          BANGLADESH                     7                    NA                -1.5102667   -1.7175159   -1.3030175
Birth       PROVIDE          BANGLADESH                     8                    NA                -1.4407547   -1.7015896   -1.1799199
Birth       PROVIDE          BANGLADESH                     9                    NA                -1.2358182   -1.4847475   -0.9868889
Birth       PROVIDE          BANGLADESH                     10                   NA                -1.2955556   -1.5507933   -1.0403178
Birth       PROVIDE          BANGLADESH                     11                   NA                -1.0155556   -1.3070053   -0.7241058
Birth       PROVIDE          BANGLADESH                     12                   NA                -1.1061905   -1.5519148   -0.6604661
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.5337143   -0.7509432   -0.3164854
Birth       SAS-CompFeed     INDIA                          2                    NA                -0.3184375   -0.5979882   -0.0388868
Birth       SAS-CompFeed     INDIA                          3                    NA                -0.5126667   -0.8944255   -0.1309079
Birth       SAS-CompFeed     INDIA                          4                    NA                -0.5553448   -0.8827642   -0.2279254
Birth       SAS-CompFeed     INDIA                          5                    NA                -0.9790541   -1.1096451   -0.8484630
Birth       SAS-CompFeed     INDIA                          6                    NA                -1.0976596   -1.3472081   -0.8481111
Birth       SAS-CompFeed     INDIA                          7                    NA                -0.7023913   -0.9733954   -0.4313872
Birth       SAS-CompFeed     INDIA                          8                    NA                -0.7655285   -1.0067716   -0.5242853
Birth       SAS-CompFeed     INDIA                          9                    NA                -0.9126866   -1.3103844   -0.5149888
Birth       SAS-CompFeed     INDIA                          10                   NA                -0.8190400   -1.1198367   -0.5182433
Birth       SAS-CompFeed     INDIA                          11                   NA                -0.5128829   -0.6560544   -0.3697114
Birth       SAS-CompFeed     INDIA                          12                   NA                -0.0237755   -0.2043237    0.1567726
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.3814193   -0.4662692   -0.2965694
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.2605434   -0.3557697   -0.1653170
Birth       ZVITAMBO         ZIMBABWE                       3                    NA                -0.4062674   -0.4953487   -0.3171861
Birth       ZVITAMBO         ZIMBABWE                       4                    NA                -0.3699892   -0.4634498   -0.2765285
Birth       ZVITAMBO         ZIMBABWE                       5                    NA                -0.4436491   -0.5447969   -0.3425013
Birth       ZVITAMBO         ZIMBABWE                       6                    NA                -0.6468130   -0.7391124   -0.5545135
Birth       ZVITAMBO         ZIMBABWE                       7                    NA                -0.7014964   -0.7932813   -0.6097114
Birth       ZVITAMBO         ZIMBABWE                       8                    NA                -0.5955640   -0.6808817   -0.5102462
Birth       ZVITAMBO         ZIMBABWE                       9                    NA                -0.5203210   -0.5996200   -0.4410221
Birth       ZVITAMBO         ZIMBABWE                       10                   NA                -0.6488878   -0.7401429   -0.5576326
Birth       ZVITAMBO         ZIMBABWE                       11                   NA                -0.6228558   -0.7088943   -0.5368174
Birth       ZVITAMBO         ZIMBABWE                       12                   NA                -0.5471441   -0.6328194   -0.4614688
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.7164216   -1.2434657   -0.1893775
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                -0.6296875   -1.4989217    0.2395467
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                -0.6195161   -0.9721374   -0.2668949
6 months    CMC-V-BCS-2002   INDIA                          4                    NA                -0.3396899   -0.7911701    0.1117903
6 months    CMC-V-BCS-2002   INDIA                          5                    NA                -0.3894118   -0.8896601    0.1108365
6 months    CMC-V-BCS-2002   INDIA                          6                    NA                -0.1206306   -0.5838824    0.3426211
6 months    CMC-V-BCS-2002   INDIA                          7                    NA                 0.2313675   -0.3300149    0.7927500
6 months    CMC-V-BCS-2002   INDIA                          8                    NA                -0.2841176   -0.8704031    0.3021678
6 months    CMC-V-BCS-2002   INDIA                          9                    NA                -0.4559524   -0.9082773   -0.0036275
6 months    CMC-V-BCS-2002   INDIA                          10                   NA                -0.7431034   -1.2672568   -0.2189501
6 months    CMC-V-BCS-2002   INDIA                          11                   NA                -0.9584127   -1.2744567   -0.6423687
6 months    CMC-V-BCS-2002   INDIA                          12                   NA                -1.2740667   -1.8410029   -0.7071304
6 months    CMIN             BANGLADESH                     1                    NA                -0.6932692   -1.0741594   -0.3123790
6 months    CMIN             BANGLADESH                     2                    NA                -0.8032609   -1.1878700   -0.4186517
6 months    CMIN             BANGLADESH                     3                    NA                -1.0250000   -1.4865274   -0.5634726
6 months    CMIN             BANGLADESH                     4                    NA                -0.6000000   -1.1769467   -0.0230533
6 months    CMIN             BANGLADESH                     5                    NA                -0.0746078   -0.4411309    0.2919152
6 months    CMIN             BANGLADESH                     6                    NA                -0.5604167   -1.2487783    0.1279450
6 months    CMIN             BANGLADESH                     7                    NA                -0.2603333   -0.7292044    0.2085377
6 months    CMIN             BANGLADESH                     8                    NA                 0.3502941   -0.1820160    0.8826043
6 months    CMIN             BANGLADESH                     9                    NA                 0.0124167   -0.4332748    0.4581082
6 months    CMIN             BANGLADESH                     10                   NA                -1.0612500   -1.3107753   -0.8117247
6 months    CMIN             BANGLADESH                     11                   NA                -0.5952564   -1.0505584   -0.1399544
6 months    CMIN             BANGLADESH                     12                   NA                -1.0335714   -1.5524800   -0.5146628
6 months    CONTENT          PERU                           1                    NA                 1.0378000    0.6412768    1.4343232
6 months    CONTENT          PERU                           2                    NA                 0.9709259    0.4864729    1.4553789
6 months    CONTENT          PERU                           3                    NA                 0.9859167    0.6037493    1.3680840
6 months    CONTENT          PERU                           4                    NA                 1.0751667    0.8209654    1.3293679
6 months    CONTENT          PERU                           5                    NA                 1.4791429    0.9382542    2.0200315
6 months    CONTENT          PERU                           6                    NA                 1.0185000    0.6487419    1.3882581
6 months    CONTENT          PERU                           7                    NA                 1.3512202    1.0520814    1.6503591
6 months    CONTENT          PERU                           8                    NA                 0.9500000    0.6761313    1.2238687
6 months    CONTENT          PERU                           9                    NA                 1.0566731    0.7363856    1.3769605
6 months    CONTENT          PERU                           10                   NA                 0.8579286    0.4115834    1.3042737
6 months    CONTENT          PERU                           11                   NA                 1.0727778    0.4811186    1.6644370
6 months    CONTENT          PERU                           12                   NA                 0.7472273    0.1876805    1.3067740
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.4269048   -0.7948039   -0.0590056
6 months    Guatemala BSC    GUATEMALA                      2                    NA                 0.3126667   -0.1064428    0.7317761
6 months    Guatemala BSC    GUATEMALA                      3                    NA                -0.0860494   -0.5127069    0.3406082
6 months    Guatemala BSC    GUATEMALA                      4                    NA                 0.1300538   -0.2214521    0.4815597
6 months    Guatemala BSC    GUATEMALA                      5                    NA                 0.2671505   -0.0726640    0.6069650
6 months    Guatemala BSC    GUATEMALA                      6                    NA                -0.1600758   -0.5347109    0.2145594
6 months    Guatemala BSC    GUATEMALA                      7                    NA                -0.2440476   -0.5720307    0.0839355
6 months    Guatemala BSC    GUATEMALA                      8                    NA                -0.0655952   -0.4826157    0.3514252
6 months    Guatemala BSC    GUATEMALA                      9                    NA                -0.2404167   -0.5695200    0.0886867
6 months    Guatemala BSC    GUATEMALA                      10                   NA                 0.0066667   -0.3231393    0.3364726
6 months    Guatemala BSC    GUATEMALA                      11                   NA                -0.2920139   -0.6032552    0.0192274
6 months    Guatemala BSC    GUATEMALA                      12                   NA                -0.3466667   -0.7064441    0.0131108
6 months    IRC              INDIA                          1                    NA                -0.4518421   -0.8938773   -0.0098069
6 months    IRC              INDIA                          2                    NA                -0.4610714   -1.0287366    0.1065938
6 months    IRC              INDIA                          3                    NA                -0.5869753   -1.0480233   -0.1259273
6 months    IRC              INDIA                          4                    NA                -0.2330952   -0.7636272    0.2974367
6 months    IRC              INDIA                          5                    NA                 0.0495455   -0.6212307    0.7203217
6 months    IRC              INDIA                          6                    NA                -0.7106757   -1.1526801   -0.2686713
6 months    IRC              INDIA                          7                    NA                -0.7382407   -1.2291028   -0.2473787
6 months    IRC              INDIA                          8                    NA                -0.7268939   -1.1278540   -0.3259339
6 months    IRC              INDIA                          9                    NA                -0.5356000   -1.0022676   -0.0689324
6 months    IRC              INDIA                          10                   NA                -0.7657895   -1.1080768   -0.4235021
6 months    IRC              INDIA                          11                   NA                -0.6060417   -0.9908141   -0.2212692
6 months    IRC              INDIA                          12                   NA                -0.8277564   -1.2656631   -0.3898497
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6707899   -0.7287580   -0.6128217
6 months    JiVitA-3         BANGLADESH                     2                    NA                -0.5747574   -0.6445619   -0.5049528
6 months    JiVitA-3         BANGLADESH                     3                    NA                -0.5695955   -0.6309423   -0.5082486
6 months    JiVitA-3         BANGLADESH                     4                    NA                -0.5919525   -0.6520149   -0.5318900
6 months    JiVitA-3         BANGLADESH                     5                    NA                -0.5107297   -0.5763225   -0.4451369
6 months    JiVitA-3         BANGLADESH                     6                    NA                -0.4867362   -0.5564994   -0.4169731
6 months    JiVitA-3         BANGLADESH                     7                    NA                -0.5078367   -0.5714392   -0.4442341
6 months    JiVitA-3         BANGLADESH                     8                    NA                -0.5907789   -0.6477644   -0.5337934
6 months    JiVitA-3         BANGLADESH                     9                    NA                -0.5866872   -0.6448461   -0.5285284
6 months    JiVitA-3         BANGLADESH                     10                   NA                -0.6524264   -0.7073696   -0.5974832
6 months    JiVitA-3         BANGLADESH                     11                   NA                -0.6836157   -0.7339576   -0.6332737
6 months    JiVitA-3         BANGLADESH                     12                   NA                -0.6185361   -0.6749357   -0.5621365
6 months    Keneba           GAMBIA                         1                    NA                -0.1830508   -0.3318136   -0.0342880
6 months    Keneba           GAMBIA                         2                    NA                -0.1717543   -0.3251764   -0.0183322
6 months    Keneba           GAMBIA                         3                    NA                -0.2573900   -0.4160071   -0.0987730
6 months    Keneba           GAMBIA                         4                    NA                -0.3270304   -0.5262502   -0.1278106
6 months    Keneba           GAMBIA                         5                    NA                -0.3417269   -0.5412039   -0.1422498
6 months    Keneba           GAMBIA                         6                    NA                -0.2551384   -0.4838246   -0.0264522
6 months    Keneba           GAMBIA                         7                    NA                -0.2169547   -0.4932620    0.0593526
6 months    Keneba           GAMBIA                         8                    NA                -0.2638611   -0.4302145   -0.0975077
6 months    Keneba           GAMBIA                         9                    NA                -0.0663846   -0.2441854    0.1114162
6 months    Keneba           GAMBIA                         10                   NA                 0.0634288   -0.0861309    0.2129884
6 months    Keneba           GAMBIA                         11                   NA                -0.0055766   -0.1757170    0.1645637
6 months    Keneba           GAMBIA                         12                   NA                -0.3626944   -0.5218060   -0.2035829
6 months    LCNI-5           MALAWI                         1                    NA                 0.4669118    0.2119132    0.7219104
6 months    LCNI-5           MALAWI                         2                    NA                 0.7821739    0.5364040    1.0279438
6 months    LCNI-5           MALAWI                         3                    NA                 0.2780769   -0.0713877    0.6275416
6 months    LCNI-5           MALAWI                         4                    NA                 0.7371795    0.4175886    1.0567704
6 months    LCNI-5           MALAWI                         5                    NA                 0.6836364    0.3854359    0.9818368
6 months    LCNI-5           MALAWI                         6                    NA                 0.3841176   -0.0326415    0.8008768
6 months    LCNI-5           MALAWI                         7                    NA                 0.4218033    0.1980188    0.6455878
6 months    LCNI-5           MALAWI                         8                    NA                 0.2874194    0.0609160    0.5139227
6 months    LCNI-5           MALAWI                         9                    NA                 0.4733333    0.2650962    0.6815705
6 months    LCNI-5           MALAWI                         10                   NA                 0.4850370    0.3023610    0.6677130
6 months    LCNI-5           MALAWI                         11                   NA                 0.2427619    0.0522891    0.4332347
6 months    LCNI-5           MALAWI                         12                   NA                 0.4547368    0.2358661    0.6736076
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.2475000   -0.5544896    0.0594896
6 months    MAL-ED           BANGLADESH                     2                    NA                -0.2668333   -0.6294714    0.0958048
6 months    MAL-ED           BANGLADESH                     3                    NA                -0.2722464   -0.6821052    0.1376124
6 months    MAL-ED           BANGLADESH                     4                    NA                -0.2563636   -0.7989919    0.2862646
6 months    MAL-ED           BANGLADESH                     5                    NA                 0.0033333   -0.4959253    0.5025920
6 months    MAL-ED           BANGLADESH                     6                    NA                 0.3175000   -0.3657220    1.0007220
6 months    MAL-ED           BANGLADESH                     7                    NA                -0.4611111   -1.0307408    0.1085186
6 months    MAL-ED           BANGLADESH                     8                    NA                 0.0697101   -0.1728107    0.3122310
6 months    MAL-ED           BANGLADESH                     9                    NA                -0.3009091   -0.6823517    0.0805336
6 months    MAL-ED           BANGLADESH                     10                   NA                -0.1815152   -0.6936183    0.3305880
6 months    MAL-ED           BANGLADESH                     11                   NA                 0.0840625   -0.3325470    0.5006720
6 months    MAL-ED           BANGLADESH                     12                   NA                 0.0474359   -0.2959340    0.3908058
6 months    MAL-ED           BRAZIL                         1                    NA                 1.2042222    0.5898453    1.8185991
6 months    MAL-ED           BRAZIL                         2                    NA                 0.6436957    0.0604282    1.2269631
6 months    MAL-ED           BRAZIL                         3                    NA                 0.9668750    0.4209185    1.5128315
6 months    MAL-ED           BRAZIL                         4                    NA                 1.4336364    0.5653984    2.3018744
6 months    MAL-ED           BRAZIL                         5                    NA                 1.2439683    0.8851694    1.6027671
6 months    MAL-ED           BRAZIL                         6                    NA                 0.4587500   -0.3490427    1.2665427
6 months    MAL-ED           BRAZIL                         7                    NA                 1.3845833    0.9357320    1.8334346
6 months    MAL-ED           BRAZIL                         8                    NA                 0.9456250    0.4957670    1.3954830
6 months    MAL-ED           BRAZIL                         9                    NA                 0.8528333    0.4403183    1.2653484
6 months    MAL-ED           BRAZIL                         10                   NA                 1.1933333    0.6657376    1.7209291
6 months    MAL-ED           BRAZIL                         11                   NA                 0.7164683    0.0884939    1.3444426
6 months    MAL-ED           BRAZIL                         12                   NA                 0.6234722    0.0763498    1.1705946
6 months    MAL-ED           INDIA                          1                    NA                -0.7060526   -1.1237577   -0.2883476
6 months    MAL-ED           INDIA                          2                    NA                -0.6902778   -1.2061607   -0.1743949
6 months    MAL-ED           INDIA                          3                    NA                -0.8064394   -1.2364038   -0.3764750
6 months    MAL-ED           INDIA                          4                    NA                -0.6514444   -1.0082004   -0.2946885
6 months    MAL-ED           INDIA                          5                    NA                -0.4275000   -1.1069082    0.2519082
6 months    MAL-ED           INDIA                          6                    NA                -0.7815789   -1.2812660   -0.2818919
6 months    MAL-ED           INDIA                          7                    NA                -0.7924638   -1.2358131   -0.3491144
6 months    MAL-ED           INDIA                          8                    NA                -0.3298485   -0.7596992    0.1000022
6 months    MAL-ED           INDIA                          9                    NA                -0.6658750   -0.9539326   -0.3778174
6 months    MAL-ED           INDIA                          10                   NA                -0.6108333   -1.0000717   -0.2215950
6 months    MAL-ED           INDIA                          11                   NA                -1.0981333   -1.4623552   -0.7339114
6 months    MAL-ED           INDIA                          12                   NA                -0.7014912   -1.1050829   -0.2978996
6 months    MAL-ED           NEPAL                          1                    NA                -0.0475833   -0.5507888    0.4556221
6 months    MAL-ED           NEPAL                          2                    NA                 0.1150877   -0.2516733    0.4818488
6 months    MAL-ED           NEPAL                          3                    NA                 0.4694118   -0.0924232    1.0312467
6 months    MAL-ED           NEPAL                          4                    NA                -0.0162879   -0.4839711    0.4513954
6 months    MAL-ED           NEPAL                          5                    NA                -0.0832500   -0.5266076    0.3601076
6 months    MAL-ED           NEPAL                          6                    NA                 0.1211111   -0.3610731    0.6032953
6 months    MAL-ED           NEPAL                          7                    NA                 0.0135185   -0.5877197    0.6147567
6 months    MAL-ED           NEPAL                          8                    NA                -0.0195833   -0.3686137    0.3294470
6 months    MAL-ED           NEPAL                          9                    NA                 0.2088542   -0.1944739    0.6121822
6 months    MAL-ED           NEPAL                          10                   NA                 0.4462698    0.0813999    0.8111398
6 months    MAL-ED           NEPAL                          11                   NA                -0.0263889   -0.3220301    0.2692523
6 months    MAL-ED           NEPAL                          12                   NA                 0.2845098   -0.2763530    0.8453726
6 months    MAL-ED           PERU                           1                    NA                 1.0147368    0.6692337    1.3602400
6 months    MAL-ED           PERU                           2                    NA                 1.2314035    0.7835345    1.6792725
6 months    MAL-ED           PERU                           3                    NA                 1.4883333    1.0237770    1.9528897
6 months    MAL-ED           PERU                           4                    NA                 0.8465000    0.4294616    1.2635384
6 months    MAL-ED           PERU                           5                    NA                 0.8372222    0.3859217    1.2885227
6 months    MAL-ED           PERU                           6                    NA                 1.0437778    0.6972520    1.3903035
6 months    MAL-ED           PERU                           7                    NA                 1.0154545    0.5456235    1.4852856
6 months    MAL-ED           PERU                           8                    NA                 1.1958333    0.6920694    1.6995973
6 months    MAL-ED           PERU                           9                    NA                 0.9868478    0.5950276    1.3786680
6 months    MAL-ED           PERU                           10                   NA                 1.0844583    0.6436736    1.5252430
6 months    MAL-ED           PERU                           11                   NA                 1.1545312    0.8196367    1.4894258
6 months    MAL-ED           PERU                           12                   NA                 0.7757895    0.5059062    1.0456728
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.6692105    0.2002600    1.1381610
6 months    MAL-ED           SOUTH AFRICA                   2                    NA                 0.9426812    0.5948492    1.2905131
6 months    MAL-ED           SOUTH AFRICA                   3                    NA                 0.6626667    0.1843381    1.1409952
6 months    MAL-ED           SOUTH AFRICA                   4                    NA                 0.7726923    0.2444865    1.3008981
6 months    MAL-ED           SOUTH AFRICA                   5                    NA                 0.3676923   -0.2827090    1.0180936
6 months    MAL-ED           SOUTH AFRICA                   6                    NA                 0.2716667   -0.2170786    0.7604120
6 months    MAL-ED           SOUTH AFRICA                   7                    NA                 0.6350000    0.1346447    1.1353553
6 months    MAL-ED           SOUTH AFRICA                   8                    NA                 0.9251852    0.1559137    1.6944567
6 months    MAL-ED           SOUTH AFRICA                   9                    NA                 0.3074074   -0.0851279    0.6999427
6 months    MAL-ED           SOUTH AFRICA                   10                   NA                 0.0741026   -0.4273482    0.5755533
6 months    MAL-ED           SOUTH AFRICA                   11                   NA                 0.7250000    0.0290666    1.4209334
6 months    MAL-ED           SOUTH AFRICA                   12                   NA                 0.3940000    0.0660197    0.7219803
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3402500   -0.1626152    0.8431152
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.6275000    0.3466050    0.9083950
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4986111    0.0884088    0.9088134
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.6838889   -0.1552299    1.5230077
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.5828125    0.0887667    1.0768583
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.3984211   -0.1595552    0.9563973
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.6245652    0.2279568    1.0211736
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    NA                 1.3143056    0.8046495    1.8239616
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.5780952    0.0531067    1.1030838
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.7836364    0.4870967    1.0801761
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.2639506   -0.1834728    0.7113741
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.2716111   -0.0716809    0.6149031
6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.7528846   -1.0177030   -0.4880662
6 months    NIH-Birth        BANGLADESH                     2                    NA                -0.6012245   -0.9208560   -0.2815930
6 months    NIH-Birth        BANGLADESH                     3                    NA                -0.5348333   -0.8135856   -0.2560811
6 months    NIH-Birth        BANGLADESH                     4                    NA                -0.4333532   -0.7628868   -0.1038196
6 months    NIH-Birth        BANGLADESH                     5                    NA                -0.5221429   -0.8541658   -0.1901199
6 months    NIH-Birth        BANGLADESH                     6                    NA                -0.1690504   -0.4707955    0.1326947
6 months    NIH-Birth        BANGLADESH                     7                    NA                -0.0169231   -0.3519288    0.3180826
6 months    NIH-Birth        BANGLADESH                     8                    NA                -0.4646190   -0.7633303   -0.1659078
6 months    NIH-Birth        BANGLADESH                     9                    NA                -0.1458730   -0.4857288    0.1939828
6 months    NIH-Birth        BANGLADESH                     10                   NA                -0.5650397   -0.8875278   -0.2425515
6 months    NIH-Birth        BANGLADESH                     11                   NA                -0.4936833   -0.7705182   -0.2168485
6 months    NIH-Birth        BANGLADESH                     12                   NA                -0.5105882   -0.8083247   -0.2128517
6 months    PROBIT           BELARUS                        1                    NA                 0.5791487    0.4530215    0.7052759
6 months    PROBIT           BELARUS                        2                    NA                 0.5663627    0.4459649    0.6867604
6 months    PROBIT           BELARUS                        3                    NA                 0.5756379    0.4841481    0.6671277
6 months    PROBIT           BELARUS                        4                    NA                 0.6036521    0.5187878    0.6885164
6 months    PROBIT           BELARUS                        5                    NA                 0.5574842    0.4608314    0.6541371
6 months    PROBIT           BELARUS                        6                    NA                 0.5974978    0.5105832    0.6844123
6 months    PROBIT           BELARUS                        7                    NA                 0.5834460    0.5045648    0.6623273
6 months    PROBIT           BELARUS                        8                    NA                 0.5698846    0.4936834    0.6460857
6 months    PROBIT           BELARUS                        9                    NA                 0.5510769    0.4641409    0.6380129
6 months    PROBIT           BELARUS                        10                   NA                 0.5516548    0.4700158    0.6332939
6 months    PROBIT           BELARUS                        11                   NA                 0.5756045    0.4627424    0.6884666
6 months    PROBIT           BELARUS                        12                   NA                 0.5876396    0.5004786    0.6748006
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.4747619   -0.8546779   -0.0948459
6 months    PROVIDE          BANGLADESH                     2                    NA                -0.2650000   -0.5896213    0.0596213
6 months    PROVIDE          BANGLADESH                     3                    NA                -0.2945349   -0.5826372   -0.0064326
6 months    PROVIDE          BANGLADESH                     4                    NA                -0.1430556   -0.5031499    0.2170388
6 months    PROVIDE          BANGLADESH                     5                    NA                -0.3830000   -0.7091202   -0.0568798
6 months    PROVIDE          BANGLADESH                     6                    NA                -0.2648052   -0.5159540   -0.0136564
6 months    PROVIDE          BANGLADESH                     7                    NA                -0.1483553   -0.3739873    0.0772768
6 months    PROVIDE          BANGLADESH                     8                    NA                -0.2020492   -0.4755420    0.0714436
6 months    PROVIDE          BANGLADESH                     9                    NA                 0.1325758   -0.1033663    0.3685178
6 months    PROVIDE          BANGLADESH                     10                   NA                -0.0294030   -0.2539709    0.1951650
6 months    PROVIDE          BANGLADESH                     11                   NA                -0.3248780   -0.5898372   -0.0599189
6 months    PROVIDE          BANGLADESH                     12                   NA                -0.3893103   -0.7602203   -0.0184004
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.0686207   -1.3169904   -0.8202509
6 months    SAS-CompFeed     INDIA                          2                    NA                -0.8159036   -1.0512770   -0.5805303
6 months    SAS-CompFeed     INDIA                          3                    NA                -0.8260811   -1.2104965   -0.4416657
6 months    SAS-CompFeed     INDIA                          4                    NA                -0.7492187   -0.9952647   -0.5031728
6 months    SAS-CompFeed     INDIA                          5                    NA                -0.5396552   -0.8941001   -0.1852102
6 months    SAS-CompFeed     INDIA                          6                    NA                -0.4227083   -0.6635856   -0.1818311
6 months    SAS-CompFeed     INDIA                          7                    NA                -0.1605738   -0.4601943    0.1390467
6 months    SAS-CompFeed     INDIA                          8                    NA                -0.3796605   -0.6158309   -0.1434901
6 months    SAS-CompFeed     INDIA                          9                    NA                -0.4785549   -0.5656331   -0.3914767
6 months    SAS-CompFeed     INDIA                          10                   NA                -0.8208054   -1.0423239   -0.5992869
6 months    SAS-CompFeed     INDIA                          11                   NA                -1.1681513   -1.3839961   -0.9523065
6 months    SAS-CompFeed     INDIA                          12                   NA                -0.8945763   -1.1452184   -0.6439341
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1654108   -0.3711643    0.0403427
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0322148   -0.1651544    0.2295839
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.3003452    0.1288430    0.4718475
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.3900109    0.2068640    0.5731578
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.3228020    0.1437129    0.5018911
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.1631235   -0.0450445    0.3712916
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.1543504   -0.0080482    0.3167490
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                 0.0499162   -0.1217961    0.2216286
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0510565   -0.1315348    0.2336477
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.0502163   -0.1142288    0.2146615
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.1525128   -0.3175802    0.0125546
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.1186240   -0.3034313    0.0661832
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.3744198    0.2884784    0.4603612
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                 0.2888670    0.1958357    0.3818983
6 months    ZVITAMBO         ZIMBABWE                       3                    NA                 0.4068533    0.3132888    0.5004179
6 months    ZVITAMBO         ZIMBABWE                       4                    NA                 0.3182430    0.2309792    0.4055069
6 months    ZVITAMBO         ZIMBABWE                       5                    NA                 0.3020223    0.2091961    0.3948485
6 months    ZVITAMBO         ZIMBABWE                       6                    NA                 0.2080514    0.1116304    0.3044724
6 months    ZVITAMBO         ZIMBABWE                       7                    NA                 0.2869033    0.1938109    0.3799958
6 months    ZVITAMBO         ZIMBABWE                       8                    NA                 0.2972774    0.2106845    0.3838703
6 months    ZVITAMBO         ZIMBABWE                       9                    NA                 0.3157627    0.2307892    0.4007363
6 months    ZVITAMBO         ZIMBABWE                       10                   NA                 0.2675731    0.1781455    0.3570006
6 months    ZVITAMBO         ZIMBABWE                       11                   NA                 0.2677407    0.1853721    0.3501093
6 months    ZVITAMBO         ZIMBABWE                       12                   NA                 0.3595630    0.2780405    0.4410856
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.5502941   -0.8570488   -0.2435395
24 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.4466667   -0.8971683    0.0038349
24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.2944086   -0.5880137   -0.0008035
24 months   CMC-V-BCS-2002   INDIA                          4                    NA                -0.3505682   -0.6445927   -0.0565437
24 months   CMC-V-BCS-2002   INDIA                          5                    NA                -0.5581481   -0.9379537   -0.1783426
24 months   CMC-V-BCS-2002   INDIA                          6                    NA                -0.6310360   -0.9244241   -0.3376479
24 months   CMC-V-BCS-2002   INDIA                          7                    NA                -0.4737607   -0.8952343   -0.0522871
24 months   CMC-V-BCS-2002   INDIA                          8                    NA                -0.5994118   -1.0407506   -0.1580729
24 months   CMC-V-BCS-2002   INDIA                          9                    NA                -0.6264286   -0.9303610   -0.3224961
24 months   CMC-V-BCS-2002   INDIA                          10                   NA                -0.8289080   -1.1571242   -0.5006919
24 months   CMC-V-BCS-2002   INDIA                          11                   NA                -0.5694186   -0.8324125   -0.3064247
24 months   CMC-V-BCS-2002   INDIA                          12                   NA                -0.9226000   -1.2826003   -0.5625997
24 months   CMIN             BANGLADESH                     1                    NA                -0.6700000   -0.9208588   -0.4191412
24 months   CMIN             BANGLADESH                     2                    NA                -0.8214583   -1.0600668   -0.5828499
24 months   CMIN             BANGLADESH                     3                    NA                -0.6422222   -0.9621661   -0.3222783
24 months   CMIN             BANGLADESH                     4                    NA                -0.8220455   -1.2341968   -0.4098941
24 months   CMIN             BANGLADESH                     5                    NA                -0.4512500   -0.8600615   -0.0424385
24 months   CMIN             BANGLADESH                     6                    NA                -0.4312500   -0.5829128   -0.2795872
24 months   CMIN             BANGLADESH                     7                    NA                -0.8410000   -1.2461525   -0.4358475
24 months   CMIN             BANGLADESH                     8                    NA                -0.7866667   -1.2125299   -0.3608034
24 months   CMIN             BANGLADESH                     9                    NA                -1.0170000   -1.4846793   -0.5493207
24 months   CMIN             BANGLADESH                     10                   NA                -1.1343750   -1.4846345   -0.7841155
24 months   CMIN             BANGLADESH                     11                   NA                -1.0770000   -1.4989690   -0.6550310
24 months   CMIN             BANGLADESH                     12                   NA                -1.0627778   -1.4036694   -0.7218861
24 months   CONTENT          PERU                           1                    NA                 0.0357143   -0.2735005    0.3449290
24 months   CONTENT          PERU                           2                    NA                 0.7057143    0.1717919    1.2396367
24 months   CONTENT          PERU                           3                    NA                 0.7970455    0.2964457    1.2976452
24 months   CONTENT          PERU                           4                    NA                 0.4850000    0.1998346    0.7701654
24 months   CONTENT          PERU                           5                    NA                 0.6342857    0.1340344    1.1345371
24 months   CONTENT          PERU                           6                    NA                 0.0681818   -0.1872603    0.3236240
24 months   CONTENT          PERU                           7                    NA                 0.5160870    0.2029844    0.8291895
24 months   CONTENT          PERU                           8                    NA                 0.5307143    0.0713780    0.9900506
24 months   CONTENT          PERU                           9                    NA                 0.7594118    0.4706752    1.0481483
24 months   CONTENT          PERU                           10                   NA                 0.8518182    0.4365788    1.2670575
24 months   CONTENT          PERU                           11                   NA                 0.7133333    0.1172661    1.3094005
24 months   CONTENT          PERU                           12                   NA                 0.6370000   -0.0385052    1.3125052
24 months   IRC              INDIA                          1                    NA                -0.5281140   -0.8309595   -0.2252685
24 months   IRC              INDIA                          2                    NA                -0.5079167   -0.8724258   -0.1434075
24 months   IRC              INDIA                          3                    NA                -0.5063580   -0.7705413   -0.2421748
24 months   IRC              INDIA                          4                    NA                -0.8365079   -1.1259166   -0.5470993
24 months   IRC              INDIA                          5                    NA                -0.9840152   -1.3777291   -0.5903012
24 months   IRC              INDIA                          6                    NA                -0.8320270   -1.1445304   -0.5195237
24 months   IRC              INDIA                          7                    NA                -0.7324074   -1.0048157   -0.4599991
24 months   IRC              INDIA                          8                    NA                -0.8911364   -1.1998781   -0.5823946
24 months   IRC              INDIA                          9                    NA                -0.8592593   -1.2538492   -0.4646694
24 months   IRC              INDIA                          10                   NA                -0.7902252   -1.1222192   -0.4582312
24 months   IRC              INDIA                          11                   NA                -0.7643750   -1.0527119   -0.4760381
24 months   IRC              INDIA                          12                   NA                -0.7401282   -0.9703039   -0.5099525
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.0283158   -1.1012255   -0.9554061
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.1166310   -1.1998081   -1.0334540
24 months   JiVitA-3         BANGLADESH                     3                    NA                -1.2470028   -1.3271860   -1.1668196
24 months   JiVitA-3         BANGLADESH                     4                    NA                -1.3425198   -1.4358126   -1.2492271
24 months   JiVitA-3         BANGLADESH                     5                    NA                -1.3610440   -1.4666004   -1.2554875
24 months   JiVitA-3         BANGLADESH                     6                    NA                -1.4710181   -1.5474693   -1.3945668
24 months   JiVitA-3         BANGLADESH                     7                    NA                -1.4517708   -1.5376518   -1.3658899
24 months   JiVitA-3         BANGLADESH                     8                    NA                -1.5210194   -1.5990899   -1.4429490
24 months   JiVitA-3         BANGLADESH                     9                    NA                -1.4355500   -1.5121031   -1.3589969
24 months   JiVitA-3         BANGLADESH                     10                   NA                -1.3782723   -1.4451988   -1.3113458
24 months   JiVitA-3         BANGLADESH                     11                   NA                -1.2783061   -1.3419916   -1.2146206
24 months   JiVitA-3         BANGLADESH                     12                   NA                -1.0986391   -1.1566514   -1.0406267
24 months   Keneba           GAMBIA                         1                    NA                -0.7296442   -0.8643423   -0.5949462
24 months   Keneba           GAMBIA                         2                    NA                -0.4740649   -0.6157706   -0.3323591
24 months   Keneba           GAMBIA                         3                    NA                -0.6130392   -0.7609553   -0.4651231
24 months   Keneba           GAMBIA                         4                    NA                -0.6535599   -0.8361515   -0.4709684
24 months   Keneba           GAMBIA                         5                    NA                -0.7315301   -0.8841582   -0.5789019
24 months   Keneba           GAMBIA                         6                    NA                -0.7300543   -0.9441449   -0.5159638
24 months   Keneba           GAMBIA                         7                    NA                -1.0341687   -1.2564286   -0.8119087
24 months   Keneba           GAMBIA                         8                    NA                -1.1099177   -1.2536335   -0.9662019
24 months   Keneba           GAMBIA                         9                    NA                -1.0015021   -1.1568427   -0.8461615
24 months   Keneba           GAMBIA                         10                   NA                -0.9642438   -1.1129007   -0.8155869
24 months   Keneba           GAMBIA                         11                   NA                -0.8275655   -1.0066657   -0.6484653
24 months   Keneba           GAMBIA                         12                   NA                -0.8638523   -1.0153212   -0.7123835
24 months   LCNI-5           MALAWI                         1                    NA                -0.2266667   -0.5249347    0.0716014
24 months   LCNI-5           MALAWI                         2                    NA                -0.0760000   -0.3253068    0.1733068
24 months   LCNI-5           MALAWI                         3                    NA                -0.9089474   -1.2518788   -0.5660160
24 months   LCNI-5           MALAWI                         4                    NA                 0.2596429   -0.0782522    0.5975379
24 months   LCNI-5           MALAWI                         5                    NA                 0.0273333   -0.3761948    0.4308615
24 months   LCNI-5           MALAWI                         6                    NA                 0.0466667   -0.3891095    0.4824428
24 months   LCNI-5           MALAWI                         7                    NA                 0.1100000   -0.1223079    0.3423079
24 months   LCNI-5           MALAWI                         8                    NA                -0.0361429   -0.2728944    0.2006087
24 months   LCNI-5           MALAWI                         9                    NA                 0.1474603   -0.0692893    0.3642100
24 months   LCNI-5           MALAWI                         10                   NA                 0.0273596   -0.1749511    0.2296702
24 months   LCNI-5           MALAWI                         11                   NA                -0.0316129   -0.3279648    0.2647390
24 months   LCNI-5           MALAWI                         12                   NA                -0.3109375   -0.5375729   -0.0843021
24 months   MAL-ED           BANGLADESH                     1                    NA                -0.6367857   -1.1790404   -0.0945311
24 months   MAL-ED           BANGLADESH                     2                    NA                -0.9300000   -1.2911518   -0.5688482
24 months   MAL-ED           BANGLADESH                     3                    NA                -0.9544737   -1.3267594   -0.5821880
24 months   MAL-ED           BANGLADESH                     4                    NA                -0.8280000   -1.2661513   -0.3898487
24 months   MAL-ED           BANGLADESH                     5                    NA                -1.0510526   -1.4704092   -0.6316961
24 months   MAL-ED           BANGLADESH                     6                    NA                -0.5285714   -1.2016574    0.1445146
24 months   MAL-ED           BANGLADESH                     7                    NA                -0.9375000   -1.3721795   -0.5028205
24 months   MAL-ED           BANGLADESH                     8                    NA                -0.8688636   -1.1406399   -0.5970874
24 months   MAL-ED           BANGLADESH                     9                    NA                -1.1025000   -1.5127162   -0.6922838
24 months   MAL-ED           BANGLADESH                     10                   NA                -0.6257500   -1.0438963   -0.2076037
24 months   MAL-ED           BANGLADESH                     11                   NA                -0.9490909   -1.4552672   -0.4429146
24 months   MAL-ED           BANGLADESH                     12                   NA                -0.4374074   -0.7531360   -0.1216788
24 months   MAL-ED           BRAZIL                         1                    NA                 0.4230000   -0.1839261    1.0299261
24 months   MAL-ED           BRAZIL                         2                    NA                 0.3096875   -0.3433506    0.9627256
24 months   MAL-ED           BRAZIL                         3                    NA                 0.4678571   -0.3177124    1.2534267
24 months   MAL-ED           BRAZIL                         4                    NA                 0.7063333   -0.4409140    1.8535807
24 months   MAL-ED           BRAZIL                         5                    NA                 0.1275556   -0.3440991    0.5992102
24 months   MAL-ED           BRAZIL                         6                    NA                -0.1050000   -0.9395763    0.7295763
24 months   MAL-ED           BRAZIL                         7                    NA                 1.6400000    0.9619226    2.3180774
24 months   MAL-ED           BRAZIL                         8                    NA                 0.7157692   -0.0580575    1.4895960
24 months   MAL-ED           BRAZIL                         9                    NA                 0.1557407   -0.3006388    0.6121202
24 months   MAL-ED           BRAZIL                         10                   NA                 0.8692857    0.1481871    1.5903843
24 months   MAL-ED           BRAZIL                         11                   NA                 0.1395370   -0.5271585    0.8062326
24 months   MAL-ED           BRAZIL                         12                   NA                 0.6722727    0.0738617    1.2706837
24 months   MAL-ED           INDIA                          1                    NA                -1.0823684   -1.4501847   -0.7145522
24 months   MAL-ED           INDIA                          2                    NA                -0.6094444   -1.0558146   -0.1630743
24 months   MAL-ED           INDIA                          3                    NA                -0.9089474   -1.1982799   -0.6196148
24 months   MAL-ED           INDIA                          4                    NA                -0.6557143   -1.1745895   -0.1368390
24 months   MAL-ED           INDIA                          5                    NA                -1.2500000   -1.6219013   -0.8780987
24 months   MAL-ED           INDIA                          6                    NA                -1.2263889   -1.8302058   -0.6225720
24 months   MAL-ED           INDIA                          7                    NA                -0.9886957   -1.3431945   -0.6341968
24 months   MAL-ED           INDIA                          8                    NA                -0.7428571   -1.1089218   -0.3767925
24 months   MAL-ED           INDIA                          9                    NA                -1.1983333   -1.4880284   -0.9086383
24 months   MAL-ED           INDIA                          10                   NA                -0.8875000   -1.2263265   -0.5486735
24 months   MAL-ED           INDIA                          11                   NA                -1.2956250   -1.5698942   -1.0213558
24 months   MAL-ED           INDIA                          12                   NA                -0.6255263   -0.9585037   -0.2925490
24 months   MAL-ED           NEPAL                          1                    NA                -0.2515789   -0.5997210    0.0965631
24 months   MAL-ED           NEPAL                          2                    NA                -0.2523529   -0.5953019    0.0905960
24 months   MAL-ED           NEPAL                          3                    NA                -0.1323529   -0.4983283    0.2336224
24 months   MAL-ED           NEPAL                          4                    NA                -0.3697727   -0.7565669    0.0170214
24 months   MAL-ED           NEPAL                          5                    NA                -0.7578947   -1.1186675   -0.3971220
24 months   MAL-ED           NEPAL                          6                    NA                -0.5252778   -0.8975322   -0.1530234
24 months   MAL-ED           NEPAL                          7                    NA                -0.3850000   -0.8049811    0.0349811
24 months   MAL-ED           NEPAL                          8                    NA                -0.6035417   -1.0068933   -0.2001900
24 months   MAL-ED           NEPAL                          9                    NA                -0.6170000   -0.9634606   -0.2705394
24 months   MAL-ED           NEPAL                          10                   NA                -0.1330000   -0.3576966    0.0916966
24 months   MAL-ED           NEPAL                          11                   NA                -0.3833333   -0.7747758    0.0081091
24 months   MAL-ED           NEPAL                          12                   NA                -0.0015625   -0.5297741    0.5266491
24 months   MAL-ED           PERU                           1                    NA                 0.0342222   -0.3025545    0.3709989
24 months   MAL-ED           PERU                           2                    NA                 0.2577451   -0.0940357    0.6095259
24 months   MAL-ED           PERU                           3                    NA                 0.2653333   -0.2418525    0.7725191
24 months   MAL-ED           PERU                           4                    NA                 0.3040152   -0.1217098    0.7297401
24 months   MAL-ED           PERU                           5                    NA                 0.1140351   -0.2188769    0.4469470
24 months   MAL-ED           PERU                           6                    NA                 0.1543939   -0.6487028    0.9574907
24 months   MAL-ED           PERU                           7                    NA                -0.1068889   -0.4650149    0.2512372
24 months   MAL-ED           PERU                           8                    NA                 0.0033333   -0.6011979    0.6078646
24 months   MAL-ED           PERU                           9                    NA                 0.0037302   -0.2774752    0.2849355
24 months   MAL-ED           PERU                           10                   NA                 0.2260714   -0.1696390    0.6217818
24 months   MAL-ED           PERU                           11                   NA                 0.1394444   -0.3144868    0.5933757
24 months   MAL-ED           PERU                           12                   NA                 0.0763333   -0.2750479    0.4277146
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.1651471   -0.2144087    0.5447029
24 months   MAL-ED           SOUTH AFRICA                   2                    NA                 0.4147727    0.0879551    0.7415903
24 months   MAL-ED           SOUTH AFRICA                   3                    NA                 0.6035714    0.2628463    0.9442965
24 months   MAL-ED           SOUTH AFRICA                   4                    NA                 0.5512500   -0.1135761    1.2160761
24 months   MAL-ED           SOUTH AFRICA                   5                    NA                 0.2133333   -0.2370057    0.6636724
24 months   MAL-ED           SOUTH AFRICA                   6                    NA                 0.5303125    0.1325839    0.9280411
24 months   MAL-ED           SOUTH AFRICA                   7                    NA                 0.6800000    0.2320557    1.1279443
24 months   MAL-ED           SOUTH AFRICA                   8                    NA                 0.6312500   -0.0063834    1.2688834
24 months   MAL-ED           SOUTH AFRICA                   9                    NA                 0.5136842    0.1686509    0.8587175
24 months   MAL-ED           SOUTH AFRICA                   10                   NA                 0.1794333   -0.2138973    0.5727640
24 months   MAL-ED           SOUTH AFRICA                   11                   NA                 0.6619565    0.2760487    1.0478643
24 months   MAL-ED           SOUTH AFRICA                   12                   NA                 0.2263978   -0.0581509    0.5109466
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5136667   -1.0978790    0.0705456
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.2675000   -0.6706670    0.1356670
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0361111   -0.3857715    0.4579937
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1075000   -0.8336556    0.6186556
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.1530556   -0.0888787    0.3949898
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0277778   -0.2645235    0.2089680
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.3591304   -0.0382587    0.7565195
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0077273   -0.7394279    0.7239733
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0822222   -0.3156428    0.4800872
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.3156667   -0.0426198    0.6739532
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.0804167   -0.2770298    0.4378631
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.2591026   -0.1252289    0.6434340
24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.9762403   -1.2426522   -0.7098284
24 months   NIH-Birth        BANGLADESH                     2                    NA                -0.9476852   -1.2477882   -0.6475821
24 months   NIH-Birth        BANGLADESH                     3                    NA                -0.9287179   -1.2999520   -0.5574839
24 months   NIH-Birth        BANGLADESH                     4                    NA                -1.1785539   -1.4933256   -0.8637822
24 months   NIH-Birth        BANGLADESH                     5                    NA                -1.0776667   -1.3587793   -0.7965540
24 months   NIH-Birth        BANGLADESH                     6                    NA                -0.6725253   -0.9675238   -0.3775267
24 months   NIH-Birth        BANGLADESH                     7                    NA                -0.7286765   -1.1290139   -0.3283390
24 months   NIH-Birth        BANGLADESH                     8                    NA                -0.9662346   -1.3686890   -0.5637801
24 months   NIH-Birth        BANGLADESH                     9                    NA                -0.9301923   -1.3077029   -0.5526817
24 months   NIH-Birth        BANGLADESH                     10                   NA                -0.9060606   -1.3661747   -0.4459465
24 months   NIH-Birth        BANGLADESH                     11                   NA                -0.8408532   -1.1641600   -0.5175463
24 months   NIH-Birth        BANGLADESH                     12                   NA                -0.8172645   -1.0834219   -0.5511071
24 months   PROBIT           BELARUS                        1                    NA                 0.6244153    0.3828953    0.8659354
24 months   PROBIT           BELARUS                        2                    NA                 0.7661033    0.5335829    0.9986237
24 months   PROBIT           BELARUS                        3                    NA                 0.7024679    0.4648295    0.9401063
24 months   PROBIT           BELARUS                        4                    NA                 0.6964759    0.4713818    0.9215700
24 months   PROBIT           BELARUS                        5                    NA                 0.7813514    0.6732000    0.8895027
24 months   PROBIT           BELARUS                        6                    NA                 0.5888577   -0.1751438    1.3528592
24 months   PROBIT           BELARUS                        7                    NA                 0.6475741    0.4572219    0.8379263
24 months   PROBIT           BELARUS                        8                    NA                 0.7228190    0.5330116    0.9126264
24 months   PROBIT           BELARUS                        9                    NA                 0.6705658    0.4579517    0.8831798
24 months   PROBIT           BELARUS                        10                   NA                 0.7022464    0.5664462    0.8380466
24 months   PROBIT           BELARUS                        11                   NA                 0.7624335    0.6401302    0.8847368
24 months   PROBIT           BELARUS                        12                   NA                 0.7041834    0.5692486    0.8391183
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.7250000   -1.0468305   -0.4031695
24 months   PROVIDE          BANGLADESH                     2                    NA                -0.7326667   -1.0030436   -0.4622898
24 months   PROVIDE          BANGLADESH                     3                    NA                -0.8755000   -1.2146741   -0.5363259
24 months   PROVIDE          BANGLADESH                     4                    NA                -0.7245455   -1.1451090   -0.3039819
24 months   PROVIDE          BANGLADESH                     5                    NA                -1.1330952   -1.5574346   -0.7087558
24 months   PROVIDE          BANGLADESH                     6                    NA                -1.0805333   -1.2898096   -0.8712571
24 months   PROVIDE          BANGLADESH                     7                    NA                -1.0905714   -1.2989313   -0.8822116
24 months   PROVIDE          BANGLADESH                     8                    NA                -0.9961667   -1.2773121   -0.7150212
24 months   PROVIDE          BANGLADESH                     9                    NA                -0.6808209   -0.9258717   -0.4357701
24 months   PROVIDE          BANGLADESH                     10                   NA                -0.8272656   -1.0533215   -0.6012098
24 months   PROVIDE          BANGLADESH                     11                   NA                -0.7113158   -0.8954796   -0.5271520
24 months   PROVIDE          BANGLADESH                     12                   NA                -0.8046429   -1.1461189   -0.4631668


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       Keneba           GAMBIA                         NA                   NA                -1.2349454   -1.2972413   -1.1726496
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    CONTENT          PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    Keneba           GAMBIA                         NA                   NA                -0.1846038   -0.2354782   -0.1337293
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4499404    0.3788501    0.5210308
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3105514    0.2848767    0.3362262
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   CONTENT          PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0477709   -0.1296526    0.0341109
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          2                    1                 -0.3239832   -1.1619238    0.5139574
Birth       IRC              INDIA                          3                    1                 -0.6927151   -1.7177990    0.3323689
Birth       IRC              INDIA                          4                    1                 -1.3103905   -2.1941046   -0.4266764
Birth       IRC              INDIA                          5                    1                 -1.5622151   -2.5907139   -0.5337162
Birth       IRC              INDIA                          6                    1                 -1.1550868   -2.0878136   -0.2223601
Birth       IRC              INDIA                          7                    1                 -0.8783871   -1.7335332   -0.0232410
Birth       IRC              INDIA                          8                    1                 -1.1804928   -2.0185171   -0.3424685
Birth       IRC              INDIA                          9                    1                 -0.8135484   -1.8388418    0.2117450
Birth       IRC              INDIA                          10                   1                 -0.7926393   -1.6372147    0.0519361
Birth       IRC              INDIA                          11                   1                 -0.6353905   -1.4603854    0.1896045
Birth       IRC              INDIA                          12                   1                 -0.7865716   -1.5720297   -0.0011136
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                 -0.0850014   -0.1633104   -0.0066923
Birth       JiVitA-3         BANGLADESH                     3                    1                 -0.1400097   -0.2157769   -0.0642425
Birth       JiVitA-3         BANGLADESH                     4                    1                 -0.1445122   -0.2264789   -0.0625456
Birth       JiVitA-3         BANGLADESH                     5                    1                 -0.1473320   -0.2399252   -0.0547389
Birth       JiVitA-3         BANGLADESH                     6                    1                 -0.1683692   -0.2554918   -0.0812466
Birth       JiVitA-3         BANGLADESH                     7                    1                 -0.1194724   -0.2031072   -0.0358376
Birth       JiVitA-3         BANGLADESH                     8                    1                 -0.2117714   -0.2937996   -0.1297432
Birth       JiVitA-3         BANGLADESH                     9                    1                 -0.2821887   -0.3592823   -0.2050951
Birth       JiVitA-3         BANGLADESH                     10                   1                 -0.2181080   -0.2950189   -0.1411972
Birth       JiVitA-3         BANGLADESH                     11                   1                 -0.1620480   -0.2355223   -0.0885737
Birth       JiVitA-3         BANGLADESH                     12                   1                 -0.0611439   -0.1341478    0.0118600
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                 -0.0513968   -0.3238388    0.2210452
Birth       Keneba           GAMBIA                         3                    1                  0.2795807    0.0165635    0.5425979
Birth       Keneba           GAMBIA                         4                    1                  0.2752967   -0.0257310    0.5763244
Birth       Keneba           GAMBIA                         5                    1                  0.2974183   -0.0076960    0.6025326
Birth       Keneba           GAMBIA                         6                    1                  0.5777124    0.2449204    0.9105044
Birth       Keneba           GAMBIA                         7                    1                  0.1141592   -0.2106199    0.4389382
Birth       Keneba           GAMBIA                         8                    1                  0.0248372   -0.2546651    0.3043394
Birth       Keneba           GAMBIA                         9                    1                  0.0003296   -0.2924576    0.2931167
Birth       Keneba           GAMBIA                         10                   1                  0.0218056   -0.2449478    0.2885589
Birth       Keneba           GAMBIA                         11                   1                  0.0522802   -0.2613397    0.3659000
Birth       Keneba           GAMBIA                         12                   1                  0.0070844   -0.2758113    0.2899801
Birth       MAL-ED           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     2                    1                 -0.1319298   -0.7777608    0.5139012
Birth       MAL-ED           BANGLADESH                     3                    1                 -0.2366917   -0.8741770    0.4007936
Birth       MAL-ED           BANGLADESH                     4                    1                 -0.3565789   -1.0137111    0.3005532
Birth       MAL-ED           BANGLADESH                     5                    1                  0.2606192   -0.4352280    0.9564664
Birth       MAL-ED           BANGLADESH                     6                    1                  0.1190226   -0.4830829    0.7211280
Birth       MAL-ED           BANGLADESH                     7                    1                 -0.2683401   -0.8644805    0.3278003
Birth       MAL-ED           BANGLADESH                     8                    1                  0.1864760   -0.4553167    0.8282686
Birth       MAL-ED           BANGLADESH                     9                    1                 -0.6271382   -1.2684249    0.0141486
Birth       MAL-ED           BANGLADESH                     10                   1                 -0.1392632   -0.7783917    0.4998654
Birth       MAL-ED           BANGLADESH                     11                   1                 -0.0912632   -0.7182898    0.5357635
Birth       MAL-ED           BANGLADESH                     12                   1                  0.0732785   -0.5452070    0.6917641
Birth       MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           2                    1                  0.4265720    0.0036282    0.8495158
Birth       MAL-ED           PERU                           3                    1                  0.5001897    0.0884654    0.9119140
Birth       MAL-ED           PERU                           4                    1                  0.3035468   -0.2713997    0.8784933
Birth       MAL-ED           PERU                           5                    1                  0.6064039    0.1395045    1.0733034
Birth       MAL-ED           PERU                           6                    1                  0.4152351   -0.0875339    0.9180042
Birth       MAL-ED           PERU                           7                    1                  0.0291107   -0.4773621    0.5355835
Birth       MAL-ED           PERU                           8                    1                  0.2069397   -0.3520901    0.7659694
Birth       MAL-ED           PERU                           9                    1                  0.2401633   -0.2985344    0.7788611
Birth       MAL-ED           PERU                           10                   1                  0.3678325   -0.0471663    0.7828313
Birth       MAL-ED           PERU                           11                   1                  0.0656897   -0.4430007    0.5743800
Birth       MAL-ED           PERU                           12                   1                  0.3429973   -0.1605011    0.8464958
Birth       NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     2                    1                  0.3234338   -0.1504566    0.7973242
Birth       NIH-Birth        BANGLADESH                     3                    1                  0.0481295   -0.3960815    0.4923406
Birth       NIH-Birth        BANGLADESH                     4                    1                 -0.3517869   -0.8043398    0.1007660
Birth       NIH-Birth        BANGLADESH                     5                    1                 -0.2339736   -0.7137888    0.2458416
Birth       NIH-Birth        BANGLADESH                     6                    1                 -0.0510847   -0.5398913    0.4377218
Birth       NIH-Birth        BANGLADESH                     7                    1                 -0.3479053   -0.8706290    0.1748184
Birth       NIH-Birth        BANGLADESH                     8                    1                 -0.1540321   -0.6519595    0.3438953
Birth       NIH-Birth        BANGLADESH                     9                    1                 -0.1182666   -0.5673873    0.3308542
Birth       NIH-Birth        BANGLADESH                     10                   1                 -0.0774252   -0.5372390    0.3823887
Birth       NIH-Birth        BANGLADESH                     11                   1                  0.2517780   -0.2093571    0.7129131
Birth       NIH-Birth        BANGLADESH                     12                   1                  0.4349153    0.0033030    0.8665275
Birth       PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        2                    1                  0.1454208   -0.0047962    0.2956379
Birth       PROBIT           BELARUS                        3                    1                  0.0184639   -0.1824340    0.2193617
Birth       PROBIT           BELARUS                        4                    1                  0.0096664   -0.2228865    0.2422194
Birth       PROBIT           BELARUS                        5                    1                 -0.1108545   -0.3643616    0.1426526
Birth       PROBIT           BELARUS                        6                    1                  0.0207163   -0.2972181    0.3386506
Birth       PROBIT           BELARUS                        7                    1                 -0.0457624   -0.3459536    0.2544288
Birth       PROBIT           BELARUS                        8                    1                  0.0293895   -0.2979633    0.3567422
Birth       PROBIT           BELARUS                        9                    1                  0.0766845   -0.2577145    0.4110836
Birth       PROBIT           BELARUS                        10                   1                  0.0065422   -0.2552436    0.2683281
Birth       PROBIT           BELARUS                        11                   1                  0.0739028   -0.1697093    0.3175150
Birth       PROBIT           BELARUS                        12                   1                  0.0730223   -0.1729659    0.3190106
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                 -0.5274167   -1.0241653   -0.0306680
Birth       PROVIDE          BANGLADESH                     3                    1                 -0.4758889   -0.8282161   -0.1235617
Birth       PROVIDE          BANGLADESH                     4                    1                 -0.4245000   -0.7671956   -0.0818044
Birth       PROVIDE          BANGLADESH                     5                    1                 -0.8870000   -1.2367537   -0.5372463
Birth       PROVIDE          BANGLADESH                     6                    1                 -0.6744667   -0.9883686   -0.3605647
Birth       PROVIDE          BANGLADESH                     7                    1                 -0.7972667   -1.1273796   -0.4671537
Birth       PROVIDE          BANGLADESH                     8                    1                 -0.7277547   -1.0938929   -0.3616166
Birth       PROVIDE          BANGLADESH                     9                    1                 -0.5228182   -0.8805724   -0.1650639
Birth       PROVIDE          BANGLADESH                     10                   1                 -0.5825556   -0.9447276   -0.2203835
Birth       PROVIDE          BANGLADESH                     11                   1                 -0.3025556   -0.6910981    0.0859870
Birth       PROVIDE          BANGLADESH                     12                   1                 -0.3931905   -0.9076732    0.1212923
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.2152768   -0.1268809    0.5574345
Birth       SAS-CompFeed     INDIA                          3                    1                  0.0210476   -0.4943229    0.5364181
Birth       SAS-CompFeed     INDIA                          4                    1                 -0.0216305   -0.3135591    0.2702980
Birth       SAS-CompFeed     INDIA                          5                    1                 -0.4453398   -0.5935626   -0.2971170
Birth       SAS-CompFeed     INDIA                          6                    1                 -0.5639453   -0.9584225   -0.1694681
Birth       SAS-CompFeed     INDIA                          7                    1                 -0.1686770   -0.5016159    0.1642619
Birth       SAS-CompFeed     INDIA                          8                    1                 -0.2318142   -0.5720723    0.1084439
Birth       SAS-CompFeed     INDIA                          9                    1                 -0.3789723   -0.8132536    0.0553090
Birth       SAS-CompFeed     INDIA                          10                   1                 -0.2853257   -0.5983373    0.0276859
Birth       SAS-CompFeed     INDIA                          11                   1                  0.0208314   -0.2916071    0.3332699
Birth       SAS-CompFeed     INDIA                          12                   1                  0.5099388    0.1727457    0.8471318
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                  0.1208759   -0.0066684    0.2484202
Birth       ZVITAMBO         ZIMBABWE                       3                    1                 -0.0248481   -0.1478724    0.0981762
Birth       ZVITAMBO         ZIMBABWE                       4                    1                  0.0114301   -0.1148013    0.1376616
Birth       ZVITAMBO         ZIMBABWE                       5                    1                 -0.0622298   -0.1942539    0.0697944
Birth       ZVITAMBO         ZIMBABWE                       6                    1                 -0.2653937   -0.3907679   -0.1400195
Birth       ZVITAMBO         ZIMBABWE                       7                    1                 -0.3200770   -0.4450730   -0.1950811
Birth       ZVITAMBO         ZIMBABWE                       8                    1                 -0.2141447   -0.3344718   -0.0938175
Birth       ZVITAMBO         ZIMBABWE                       9                    1                 -0.1389017   -0.2550388   -0.0227646
Birth       ZVITAMBO         ZIMBABWE                       10                   1                 -0.2674685   -0.3920758   -0.1428611
Birth       ZVITAMBO         ZIMBABWE                       11                   1                 -0.2414365   -0.3622758   -0.1205973
Birth       ZVITAMBO         ZIMBABWE                       12                   1                 -0.1657248   -0.2863057   -0.0451439
6 months    CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          2                    1                  0.0867341   -0.9298010    1.1032691
6 months    CMC-V-BCS-2002   INDIA                          3                    1                  0.0969054   -0.5372217    0.7310326
6 months    CMC-V-BCS-2002   INDIA                          4                    1                  0.3767316   -0.3172495    1.0707128
6 months    CMC-V-BCS-2002   INDIA                          5                    1                  0.3270098   -0.3996427    1.0536623
6 months    CMC-V-BCS-2002   INDIA                          6                    1                  0.5957909   -0.1059053    1.2974872
6 months    CMC-V-BCS-2002   INDIA                          7                    1                  0.9477891    0.1777724    1.7178058
6 months    CMC-V-BCS-2002   INDIA                          8                    1                  0.4323039   -0.3560527    1.2206605
6 months    CMC-V-BCS-2002   INDIA                          9                    1                  0.2604692   -0.4340618    0.9550002
6 months    CMC-V-BCS-2002   INDIA                          10                   1                 -0.0266819   -0.7699936    0.7166298
6 months    CMC-V-BCS-2002   INDIA                          11                   1                 -0.2419911   -0.8565310    0.3725488
6 months    CMC-V-BCS-2002   INDIA                          12                   1                 -0.5576451   -1.3317202    0.2164300
6 months    CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     2                    1                 -0.1099916   -0.6512878    0.4313045
6 months    CMIN             BANGLADESH                     3                    1                 -0.3317308   -0.9301327    0.2666712
6 months    CMIN             BANGLADESH                     4                    1                  0.0932692   -0.5980663    0.7846048
6 months    CMIN             BANGLADESH                     5                    1                  0.6186614    0.0900628    1.1472600
6 months    CMIN             BANGLADESH                     6                    1                  0.1328526   -0.6538616    0.9195667
6 months    CMIN             BANGLADESH                     7                    1                  0.4329359   -0.1711481    1.0370198
6 months    CMIN             BANGLADESH                     8                    1                  1.0435633    0.3890166    1.6981101
6 months    CMIN             BANGLADESH                     9                    1                  0.7056859    0.1194110    1.2919608
6 months    CMIN             BANGLADESH                     10                   1                 -0.3679808   -0.8233270    0.0873655
6 months    CMIN             BANGLADESH                     11                   1                  0.0980128   -0.4956009    0.6916266
6 months    CMIN             BANGLADESH                     12                   1                 -0.3403022   -0.9839974    0.3033930
6 months    CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           2                    1                 -0.0668741   -0.6929135    0.5591653
6 months    CONTENT          PERU                           3                    1                 -0.0518833   -0.6025943    0.4988276
6 months    CONTENT          PERU                           4                    1                  0.0373667   -0.4336417    0.5083751
6 months    CONTENT          PERU                           5                    1                  0.4413429   -0.2293219    1.1120076
6 months    CONTENT          PERU                           6                    1                 -0.0193000   -0.5614731    0.5228731
6 months    CONTENT          PERU                           7                    1                  0.3134202   -0.1832836    0.8101240
6 months    CONTENT          PERU                           8                    1                 -0.0878000   -0.5697073    0.3941073
6 months    CONTENT          PERU                           9                    1                  0.0188731   -0.4908471    0.5285933
6 months    CONTENT          PERU                           10                   1                 -0.1798714   -0.7769096    0.4171668
6 months    CONTENT          PERU                           11                   1                  0.0349778   -0.6772660    0.7472216
6 months    CONTENT          PERU                           12                   1                 -0.2905727   -0.9763739    0.3952284
6 months    Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      2                    1                  0.7395714    0.1818954    1.2972475
6 months    Guatemala BSC    GUATEMALA                      3                    1                  0.3408554   -0.2225152    0.9042260
6 months    Guatemala BSC    GUATEMALA                      4                    1                  0.5569585    0.0481303    1.0657868
6 months    Guatemala BSC    GUATEMALA                      5                    1                  0.6940553    0.1932323    1.1948783
6 months    Guatemala BSC    GUATEMALA                      6                    1                  0.2668290   -0.2582437    0.7919017
6 months    Guatemala BSC    GUATEMALA                      7                    1                  0.1828571   -0.3100147    0.6757290
6 months    Guatemala BSC    GUATEMALA                      8                    1                  0.3613095   -0.1947983    0.9174173
6 months    Guatemala BSC    GUATEMALA                      9                    1                  0.1864881   -0.3071300    0.6801062
6 months    Guatemala BSC    GUATEMALA                      10                   1                  0.4335714   -0.0605154    0.9276582
6 months    Guatemala BSC    GUATEMALA                      11                   1                  0.1348909   -0.3470022    0.6167840
6 months    Guatemala BSC    GUATEMALA                      12                   1                  0.0802381   -0.4343390    0.5948152
6 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          2                    1                 -0.0092293   -0.7287006    0.7102420
6 months    IRC              INDIA                          3                    1                 -0.1351332   -0.7738510    0.5035846
6 months    IRC              INDIA                          4                    1                  0.2187469   -0.4718031    0.9092969
6 months    IRC              INDIA                          5                    1                  0.5013876   -0.3019404    1.3047156
6 months    IRC              INDIA                          6                    1                 -0.2588336   -0.8839440    0.3662769
6 months    IRC              INDIA                          7                    1                 -0.2863986   -0.9469595    0.3741623
6 months    IRC              INDIA                          8                    1                 -0.2750518   -0.8718467    0.3217430
6 months    IRC              INDIA                          9                    1                 -0.0837579   -0.7265438    0.5590280
6 months    IRC              INDIA                          10                   1                 -0.3139474   -0.8730142    0.2451195
6 months    IRC              INDIA                          11                   1                 -0.1541996   -0.7402414    0.4318422
6 months    IRC              INDIA                          12                   1                 -0.3759143   -0.9981341    0.2463055
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                  0.0960325    0.0059555    0.1861095
6 months    JiVitA-3         BANGLADESH                     3                    1                  0.1011944    0.0181251    0.1842637
6 months    JiVitA-3         BANGLADESH                     4                    1                  0.0788374   -0.0009256    0.1586004
6 months    JiVitA-3         BANGLADESH                     5                    1                  0.1600601    0.0731163    0.2470040
6 months    JiVitA-3         BANGLADESH                     6                    1                  0.1840536    0.0957000    0.2724073
6 months    JiVitA-3         BANGLADESH                     7                    1                  0.1629532    0.0756520    0.2502544
6 months    JiVitA-3         BANGLADESH                     8                    1                  0.0800110    0.0002742    0.1597477
6 months    JiVitA-3         BANGLADESH                     9                    1                  0.0841026    0.0016399    0.1665654
6 months    JiVitA-3         BANGLADESH                     10                   1                  0.0183634   -0.0607402    0.0974671
6 months    JiVitA-3         BANGLADESH                     11                   1                 -0.0128258   -0.0865150    0.0608633
6 months    JiVitA-3         BANGLADESH                     12                   1                  0.0522537   -0.0254213    0.1299288
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                  0.0112965   -0.2024059    0.2249989
6 months    Keneba           GAMBIA                         3                    1                 -0.0743392   -0.2918013    0.1431228
6 months    Keneba           GAMBIA                         4                    1                 -0.1439796   -0.3926136    0.1046545
6 months    Keneba           GAMBIA                         5                    1                 -0.1586761   -0.4075163    0.0901642
6 months    Keneba           GAMBIA                         6                    1                 -0.0720876   -0.3449021    0.2007269
6 months    Keneba           GAMBIA                         7                    1                 -0.0339039   -0.3477129    0.2799051
6 months    Keneba           GAMBIA                         8                    1                 -0.0808103   -0.3039780    0.1423574
6 months    Keneba           GAMBIA                         9                    1                  0.1166662   -0.1151602    0.3484927
6 months    Keneba           GAMBIA                         10                   1                  0.2464796    0.0355330    0.4574261
6 months    Keneba           GAMBIA                         11                   1                  0.1774741   -0.0485305    0.4034788
6 months    Keneba           GAMBIA                         12                   1                 -0.1796437   -0.3974667    0.0381794
6 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         2                    1                  0.3152621   -0.0388948    0.6694191
6 months    LCNI-5           MALAWI                         3                    1                 -0.1888348   -0.6214430    0.2437733
6 months    LCNI-5           MALAWI                         4                    1                  0.2702677   -0.1385875    0.6791230
6 months    LCNI-5           MALAWI                         5                    1                  0.2167246   -0.1756372    0.6090864
6 months    LCNI-5           MALAWI                         6                    1                 -0.0827941   -0.5713762    0.4057880
6 months    LCNI-5           MALAWI                         7                    1                 -0.0451085   -0.3843780    0.2941610
6 months    LCNI-5           MALAWI                         8                    1                 -0.1794924   -0.5205614    0.1615766
6 months    LCNI-5           MALAWI                         9                    1                  0.0064216   -0.3228002    0.3356434
6 months    LCNI-5           MALAWI                         10                   1                  0.0181253   -0.2955542    0.3318047
6 months    LCNI-5           MALAWI                         11                   1                 -0.2241499   -0.5424330    0.0941333
6 months    LCNI-5           MALAWI                         12                   1                 -0.0121749   -0.3482236    0.3238737
6 months    MAL-ED           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     2                    1                 -0.0193333   -0.4944638    0.4557972
6 months    MAL-ED           BANGLADESH                     3                    1                 -0.0247464   -0.5368273    0.4873345
6 months    MAL-ED           BANGLADESH                     4                    1                 -0.0088636   -0.6323121    0.6145848
6 months    MAL-ED           BANGLADESH                     5                    1                  0.2508333   -0.3352569    0.8369236
6 months    MAL-ED           BANGLADESH                     6                    1                  0.5650000   -0.1840226    1.3140226
6 months    MAL-ED           BANGLADESH                     7                    1                 -0.2136111   -0.8606974    0.4334751
6 months    MAL-ED           BANGLADESH                     8                    1                  0.3172101   -0.0740174    0.7084377
6 months    MAL-ED           BANGLADESH                     9                    1                 -0.0534091   -0.5430427    0.4362246
6 months    MAL-ED           BANGLADESH                     10                   1                  0.0659848   -0.5310849    0.6630546
6 months    MAL-ED           BANGLADESH                     11                   1                  0.3315625   -0.1859373    0.8490623
6 months    MAL-ED           BANGLADESH                     12                   1                  0.2949359   -0.1656566    0.7555284
6 months    MAL-ED           BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         2                    1                 -0.5605266   -1.4076746    0.2866215
6 months    MAL-ED           BRAZIL                         3                    1                 -0.2373472   -1.0592520    0.5845575
6 months    MAL-ED           BRAZIL                         4                    1                  0.2294141   -0.8342099    1.2930382
6 months    MAL-ED           BRAZIL                         5                    1                  0.0397460   -0.6717282    0.7512203
6 months    MAL-ED           BRAZIL                         6                    1                 -0.7454722   -1.7603554    0.2694110
6 months    MAL-ED           BRAZIL                         7                    1                  0.1803611   -0.5805110    0.9412333
6 months    MAL-ED           BRAZIL                         8                    1                 -0.2585972   -1.0200637    0.5028693
6 months    MAL-ED           BRAZIL                         9                    1                 -0.3513889   -1.0914075    0.3886298
6 months    MAL-ED           BRAZIL                         10                   1                 -0.0108889   -0.8207137    0.7989359
6 months    MAL-ED           BRAZIL                         11                   1                 -0.4877540   -1.3662816    0.3907736
6 months    MAL-ED           BRAZIL                         12                   1                 -0.5807500   -1.4034297    0.2419297
6 months    MAL-ED           INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          2                    1                  0.0157749   -0.6480117    0.6795614
6 months    MAL-ED           INDIA                          3                    1                 -0.1003868   -0.6998422    0.4990687
6 months    MAL-ED           INDIA                          4                    1                  0.0546082   -0.4947117    0.6039280
6 months    MAL-ED           INDIA                          5                    1                  0.2785526   -0.5189892    1.0760944
6 months    MAL-ED           INDIA                          6                    1                 -0.0755263   -0.7268055    0.5757529
6 months    MAL-ED           INDIA                          7                    1                 -0.0864111   -0.6955385    0.5227162
6 months    MAL-ED           INDIA                          8                    1                  0.3762041   -0.2231698    0.9755781
6 months    MAL-ED           INDIA                          9                    1                  0.0401776   -0.4672223    0.5475776
6 months    MAL-ED           INDIA                          10                   1                  0.0952193   -0.4757308    0.6661694
6 months    MAL-ED           INDIA                          11                   1                 -0.3920807   -0.9462784    0.1621170
6 months    MAL-ED           INDIA                          12                   1                  0.0045614   -0.5762688    0.5853916
6 months    MAL-ED           NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          2                    1                  0.1626711   -0.4600081    0.7853502
6 months    MAL-ED           NEPAL                          3                    1                  0.5169951   -0.2372424    1.2712326
6 months    MAL-ED           NEPAL                          4                    1                  0.0312955   -0.6556859    0.7182768
6 months    MAL-ED           NEPAL                          5                    1                 -0.0356667   -0.7063243    0.6349910
6 months    MAL-ED           NEPAL                          6                    1                  0.1686944   -0.5282398    0.8656286
6 months    MAL-ED           NEPAL                          7                    1                  0.0611019   -0.7229282    0.8451319
6 months    MAL-ED           NEPAL                          8                    1                  0.0280000   -0.5844034    0.6404034
6 months    MAL-ED           NEPAL                          9                    1                  0.2564375   -0.3884573    0.9013323
6 months    MAL-ED           NEPAL                          10                   1                  0.4938532   -0.1277140    1.1154204
6 months    MAL-ED           NEPAL                          11                   1                  0.0211944   -0.5624317    0.6048206
6 months    MAL-ED           NEPAL                          12                   1                  0.3320931   -0.4214205    1.0856068
6 months    MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           2                    1                  0.2166667   -0.3489826    0.7823159
6 months    MAL-ED           PERU                           3                    1                  0.4735965   -0.1053552    1.0525482
6 months    MAL-ED           PERU                           4                    1                 -0.1682368   -0.7098026    0.3733289
6 months    MAL-ED           PERU                           5                    1                 -0.1775146   -0.7458847    0.3908555
6 months    MAL-ED           PERU                           6                    1                  0.0290409   -0.4602979    0.5183798
6 months    MAL-ED           PERU                           7                    1                  0.0007177   -0.5824749    0.5839103
6 months    MAL-ED           PERU                           8                    1                  0.1810965   -0.4297640    0.7919570
6 months    MAL-ED           PERU                           9                    1                 -0.0278890   -0.5502830    0.4945050
6 months    MAL-ED           PERU                           10                   1                  0.0697215   -0.4903353    0.6297783
6 months    MAL-ED           PERU                           11                   1                  0.1397944   -0.3413779    0.6209668
6 months    MAL-ED           PERU                           12                   1                 -0.2389474   -0.6773643    0.1994696
6 months    MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   2                    1                  0.2734706   -0.3103972    0.8573384
6 months    MAL-ED           SOUTH AFRICA                   3                    1                 -0.0065439   -0.6764041    0.6633164
6 months    MAL-ED           SOUTH AFRICA                   4                    1                  0.1034818   -0.6028580    0.8098216
6 months    MAL-ED           SOUTH AFRICA                   5                    1                 -0.3015182   -1.1033514    0.5003150
6 months    MAL-ED           SOUTH AFRICA                   6                    1                 -0.3975439   -1.0748817    0.2797940
6 months    MAL-ED           SOUTH AFRICA                   7                    1                 -0.0342105   -0.7199729    0.6515518
6 months    MAL-ED           SOUTH AFRICA                   8                    1                  0.2559747   -0.6449655    1.1569148
6 months    MAL-ED           SOUTH AFRICA                   9                    1                 -0.3618031   -0.9733573    0.2497511
6 months    MAL-ED           SOUTH AFRICA                   10                   1                 -0.5951080   -1.2816700    0.0914541
6 months    MAL-ED           SOUTH AFRICA                   11                   1                  0.0557895   -0.7833994    0.8949783
6 months    MAL-ED           SOUTH AFRICA                   12                   1                 -0.2752105   -0.8474741    0.2970531
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2872500   -0.2887495    0.8632495
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1583611   -0.4905914    0.8073136
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1                  0.3436389   -0.6346217    1.3218995
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    1                  0.2425625   -0.4623876    0.9475126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0581711   -0.6929687    0.8093108
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2843152   -0.3561312    0.9247617
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    1                  0.9740556    0.2580788    1.6900323
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2378452   -0.4891255    0.9648160
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   1                  0.4433864   -0.1404023    1.0271750
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0762994   -0.7493976    0.5967988
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0686389   -0.6775090    0.5402312
6 months    NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     2                    1                  0.1516601   -0.2634219    0.5667421
6 months    NIH-Birth        BANGLADESH                     3                    1                  0.2180513   -0.1664374    0.6025400
6 months    NIH-Birth        BANGLADESH                     4                    1                  0.3195314   -0.1032228    0.7422857
6 months    NIH-Birth        BANGLADESH                     5                    1                  0.2307418   -0.1939558    0.6554393
6 months    NIH-Birth        BANGLADESH                     6                    1                  0.5838342    0.1823634    0.9853051
6 months    NIH-Birth        BANGLADESH                     7                    1                  0.7359615    0.3089281    1.1629950
6 months    NIH-Birth        BANGLADESH                     8                    1                  0.2882656   -0.1109301    0.6874613
6 months    NIH-Birth        BANGLADESH                     9                    1                  0.6070116    0.1761628    1.0378604
6 months    NIH-Birth        BANGLADESH                     10                   1                  0.1878449   -0.2294408    0.6051307
6 months    NIH-Birth        BANGLADESH                     11                   1                  0.2592013   -0.1238996    0.6423022
6 months    NIH-Birth        BANGLADESH                     12                   1                  0.2422964   -0.1561704    0.6407632
6 months    PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        2                    1                 -0.0127861   -0.1025111    0.0769390
6 months    PROBIT           BELARUS                        3                    1                 -0.0035108   -0.1150085    0.1079868
6 months    PROBIT           BELARUS                        4                    1                  0.0245034   -0.0845216    0.1335283
6 months    PROBIT           BELARUS                        5                    1                 -0.0216645   -0.1279051    0.0845762
6 months    PROBIT           BELARUS                        6                    1                  0.0183490   -0.1229290    0.1596271
6 months    PROBIT           BELARUS                        7                    1                  0.0042973   -0.1380515    0.1466461
6 months    PROBIT           BELARUS                        8                    1                 -0.0092641   -0.1440208    0.1254925
6 months    PROBIT           BELARUS                        9                    1                 -0.0280718   -0.1477436    0.0915999
6 months    PROBIT           BELARUS                        10                   1                 -0.0274939   -0.1509001    0.0959124
6 months    PROBIT           BELARUS                        11                   1                 -0.0035442   -0.1410611    0.1339727
6 months    PROBIT           BELARUS                        12                   1                  0.0084909   -0.1112956    0.1282774
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                  0.2097619   -0.2899531    0.7094769
6 months    PROVIDE          BANGLADESH                     3                    1                  0.1802270   -0.2965738    0.6570279
6 months    PROVIDE          BANGLADESH                     4                    1                  0.3317063   -0.1917476    0.8551603
6 months    PROVIDE          BANGLADESH                     5                    1                  0.0917619   -0.4089282    0.5924520
6 months    PROVIDE          BANGLADESH                     6                    1                  0.2099567   -0.2454682    0.6653816
6 months    PROVIDE          BANGLADESH                     7                    1                  0.3264066   -0.1154598    0.7682731
6 months    PROVIDE          BANGLADESH                     8                    1                  0.2727127   -0.1954053    0.7408307
6 months    PROVIDE          BANGLADESH                     9                    1                  0.6073377    0.1601187    1.0545566
6 months    PROVIDE          BANGLADESH                     10                   1                  0.4453589    0.0040349    0.8866830
6 months    PROVIDE          BANGLADESH                     11                   1                  0.1498839   -0.3133002    0.6130679
6 months    PROVIDE          BANGLADESH                     12                   1                  0.0854516   -0.4455007    0.6164038
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                  0.2527171    0.0477537    0.4576805
6 months    SAS-CompFeed     INDIA                          3                    1                  0.2425396   -0.1461884    0.6312676
6 months    SAS-CompFeed     INDIA                          4                    1                  0.3194019    0.1432241    0.4955798
6 months    SAS-CompFeed     INDIA                          5                    1                  0.5289655   -0.0164531    1.0743842
6 months    SAS-CompFeed     INDIA                          6                    1                  0.6459124    0.3961216    0.8957031
6 months    SAS-CompFeed     INDIA                          7                    1                  0.9080469    0.7216764    1.0944174
6 months    SAS-CompFeed     INDIA                          8                    1                  0.6889602    0.4010393    0.9768811
6 months    SAS-CompFeed     INDIA                          9                    1                  0.5900658    0.3928660    0.7872656
6 months    SAS-CompFeed     INDIA                          10                   1                  0.2478153    0.0721246    0.4235060
6 months    SAS-CompFeed     INDIA                          11                   1                 -0.0995306   -0.3708917    0.1718305
6 months    SAS-CompFeed     INDIA                          12                   1                  0.1740444   -0.0589044    0.4069933
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1976256   -0.0874868    0.4827379
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.4657560    0.1978988    0.7336133
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.5554217    0.2799634    0.8308800
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                  0.4882128    0.2154356    0.7609900
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                  0.3285343    0.0358427    0.6212260
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                  0.3197612    0.0576395    0.5818829
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                  0.2153270   -0.0526648    0.4833188
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2164673   -0.0586219    0.4915564
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                  0.2156271   -0.0477674    0.4790217
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0128980   -0.2508855    0.2766815
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0467868   -0.2297783    0.3233518
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0855528   -0.2122048    0.0410993
6 months    ZVITAMBO         ZIMBABWE                       3                    1                  0.0324336   -0.0946107    0.1594779
6 months    ZVITAMBO         ZIMBABWE                       4                    1                 -0.0561767   -0.1786549    0.0663015
6 months    ZVITAMBO         ZIMBABWE                       5                    1                 -0.0723975   -0.1988990    0.0541041
6 months    ZVITAMBO         ZIMBABWE                       6                    1                 -0.1663684   -0.2955308   -0.0372060
6 months    ZVITAMBO         ZIMBABWE                       7                    1                 -0.0875164   -0.2142134    0.0391806
6 months    ZVITAMBO         ZIMBABWE                       8                    1                 -0.0771423   -0.1991434    0.0448587
6 months    ZVITAMBO         ZIMBABWE                       9                    1                 -0.0586570   -0.1795141    0.0622000
6 months    ZVITAMBO         ZIMBABWE                       10                   1                 -0.1068467   -0.2308758    0.0171824
6 months    ZVITAMBO         ZIMBABWE                       11                   1                 -0.1066791   -0.2257190    0.0123609
6 months    ZVITAMBO         ZIMBABWE                       12                   1                 -0.0148567   -0.1333128    0.1035994
24 months   CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          2                    1                  0.1036275   -0.4413956    0.6486505
24 months   CMC-V-BCS-2002   INDIA                          3                    1                  0.2558855   -0.1687348    0.6805058
24 months   CMC-V-BCS-2002   INDIA                          4                    1                  0.1997259   -0.2251844    0.6246363
24 months   CMC-V-BCS-2002   INDIA                          5                    1                 -0.0078540   -0.4960657    0.4803577
24 months   CMC-V-BCS-2002   INDIA                          6                    1                 -0.0807419   -0.5052122    0.3437283
24 months   CMC-V-BCS-2002   INDIA                          7                    1                  0.0765334   -0.4447519    0.5978188
24 months   CMC-V-BCS-2002   INDIA                          8                    1                 -0.0491176   -0.5865918    0.4883565
24 months   CMC-V-BCS-2002   INDIA                          9                    1                 -0.0761345   -0.5079600    0.3556911
24 months   CMC-V-BCS-2002   INDIA                          10                   1                 -0.2786139   -0.7278624    0.1706346
24 months   CMC-V-BCS-2002   INDIA                          11                   1                 -0.0191245   -0.4231841    0.3849351
24 months   CMC-V-BCS-2002   INDIA                          12                   1                 -0.3723059   -0.8452738    0.1006620
24 months   CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     2                    1                 -0.1514583   -0.4976723    0.1947557
24 months   CMIN             BANGLADESH                     3                    1                  0.0277778   -0.3787862    0.4343417
24 months   CMIN             BANGLADESH                     4                    1                 -0.1520455   -0.6345378    0.3304469
24 months   CMIN             BANGLADESH                     5                    1                  0.2187500   -0.2608926    0.6983926
24 months   CMIN             BANGLADESH                     6                    1                  0.2387500   -0.0543912    0.5318912
24 months   CMIN             BANGLADESH                     7                    1                 -0.1710000   -0.6475277    0.3055277
24 months   CMIN             BANGLADESH                     8                    1                 -0.1166667   -0.6109234    0.3775900
24 months   CMIN             BANGLADESH                     9                    1                 -0.3470000   -0.8777110    0.1837110
24 months   CMIN             BANGLADESH                     10                   1                 -0.4643750   -0.8952019   -0.0335481
24 months   CMIN             BANGLADESH                     11                   1                 -0.4070000   -0.8979053    0.0839053
24 months   CMIN             BANGLADESH                     12                   1                 -0.3927778   -0.8160239    0.0304683
24 months   CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           2                    1                  0.6700000    0.0530017    1.2869983
24 months   CONTENT          PERU                           3                    1                  0.7613312    0.1729318    1.3497306
24 months   CONTENT          PERU                           4                    1                  0.4492857    0.0286516    0.8699198
24 months   CONTENT          PERU                           5                    1                  0.5985714    0.0104684    1.1866745
24 months   CONTENT          PERU                           6                    1                  0.0324675   -0.3686116    0.4335466
24 months   CONTENT          PERU                           7                    1                  0.4803727    0.0403193    0.9204260
24 months   CONTENT          PERU                           8                    1                  0.4950000   -0.0587180    1.0487180
24 months   CONTENT          PERU                           9                    1                  0.7236975    0.3006342    1.1467608
24 months   CONTENT          PERU                           10                   1                  0.8161039    0.2983805    1.3338273
24 months   CONTENT          PERU                           11                   1                  0.6776190    0.0061208    1.3491173
24 months   CONTENT          PERU                           12                   1                  0.6012857   -0.1416282    1.3441996
24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          2                    1                  0.0201974   -0.4537038    0.4940985
24 months   IRC              INDIA                          3                    1                  0.0217560   -0.3801248    0.4236368
24 months   IRC              INDIA                          4                    1                 -0.3083939   -0.7272886    0.1105008
24 months   IRC              INDIA                          5                    1                 -0.4559011   -0.9526164    0.0408142
24 months   IRC              INDIA                          6                    1                 -0.3039130   -0.7390839    0.1312579
24 months   IRC              INDIA                          7                    1                 -0.2042934   -0.6116282    0.2030415
24 months   IRC              INDIA                          8                    1                 -0.3630223   -0.7954999    0.0694552
24 months   IRC              INDIA                          9                    1                 -0.3311452   -0.8285551    0.1662646
24 months   IRC              INDIA                          10                   1                 -0.2621112   -0.7114834    0.1872610
24 months   IRC              INDIA                          11                   1                 -0.2362610   -0.6544159    0.1818940
24 months   IRC              INDIA                          12                   1                 -0.2120142   -0.5924038    0.1683754
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 -0.0883152   -0.1945604    0.0179300
24 months   JiVitA-3         BANGLADESH                     3                    1                 -0.2186870   -0.3228410   -0.1145330
24 months   JiVitA-3         BANGLADESH                     4                    1                 -0.3142041   -0.4311522   -0.1972559
24 months   JiVitA-3         BANGLADESH                     5                    1                 -0.3327282   -0.4597159   -0.2057404
24 months   JiVitA-3         BANGLADESH                     6                    1                 -0.4427023   -0.5471112   -0.3382933
24 months   JiVitA-3         BANGLADESH                     7                    1                 -0.4234550   -0.5381794   -0.3087306
24 months   JiVitA-3         BANGLADESH                     8                    1                 -0.4927036   -0.6024523   -0.3829549
24 months   JiVitA-3         BANGLADESH                     9                    1                 -0.4072342   -0.5147393   -0.2997292
24 months   JiVitA-3         BANGLADESH                     10                   1                 -0.3499565   -0.4514055   -0.2485076
24 months   JiVitA-3         BANGLADESH                     11                   1                 -0.2499903   -0.3463233   -0.1536573
24 months   JiVitA-3         BANGLADESH                     12                   1                 -0.0703233   -0.1630337    0.0223871
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                  0.2555794    0.0600695    0.4510892
24 months   Keneba           GAMBIA                         3                    1                  0.1166050   -0.0834518    0.3166619
24 months   Keneba           GAMBIA                         4                    1                  0.0760843   -0.1508149    0.3029835
24 months   Keneba           GAMBIA                         5                    1                 -0.0018858   -0.2054513    0.2016797
24 months   Keneba           GAMBIA                         6                    1                 -0.0004101   -0.2533495    0.2525293
24 months   Keneba           GAMBIA                         7                    1                 -0.3045244   -0.5644149   -0.0446340
24 months   Keneba           GAMBIA                         8                    1                 -0.3802735   -0.5772451   -0.1833019
24 months   Keneba           GAMBIA                         9                    1                 -0.2718578   -0.4774649   -0.0662508
24 months   Keneba           GAMBIA                         10                   1                 -0.2345996   -0.4352048   -0.0339943
24 months   Keneba           GAMBIA                         11                   1                 -0.0979212   -0.3220204    0.1261780
24 months   Keneba           GAMBIA                         12                   1                 -0.1342081   -0.3369059    0.0684897
24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         2                    1                  0.1506667   -0.2380719    0.5394053
24 months   LCNI-5           MALAWI                         3                    1                 -0.6822807   -1.1367758   -0.2277856
24 months   LCNI-5           MALAWI                         4                    1                  0.4863095    0.0356024    0.9370166
24 months   LCNI-5           MALAWI                         5                    1                  0.2540000   -0.2477956    0.7557956
24 months   LCNI-5           MALAWI                         6                    1                  0.2733333   -0.2547431    0.8014097
24 months   LCNI-5           MALAWI                         7                    1                  0.3366667   -0.0413952    0.7147285
24 months   LCNI-5           MALAWI                         8                    1                  0.1905238   -0.1902847    0.5713323
24 months   LCNI-5           MALAWI                         9                    1                  0.3741270    0.0054208    0.7428331
24 months   LCNI-5           MALAWI                         10                   1                  0.2540262   -0.1063811    0.6144335
24 months   LCNI-5           MALAWI                         11                   1                  0.1950538   -0.2254082    0.6155157
24 months   LCNI-5           MALAWI                         12                   1                 -0.0842708   -0.4588738    0.2903322
24 months   MAL-ED           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     2                    1                 -0.2932143   -0.9447285    0.3582999
24 months   MAL-ED           BANGLADESH                     3                    1                 -0.3176880   -0.9754393    0.3400633
24 months   MAL-ED           BANGLADESH                     4                    1                 -0.1912143   -0.8883632    0.5059347
24 months   MAL-ED           BANGLADESH                     5                    1                 -0.4142669   -1.0997594    0.2712256
24 months   MAL-ED           BANGLADESH                     6                    1                  0.1082143   -0.7561264    0.9725550
24 months   MAL-ED           BANGLADESH                     7                    1                 -0.3007143   -0.9956865    0.3942579
24 months   MAL-ED           BANGLADESH                     8                    1                 -0.2320779   -0.8386275    0.3744717
24 months   MAL-ED           BANGLADESH                     9                    1                 -0.4657143   -1.1456536    0.2142250
24 months   MAL-ED           BANGLADESH                     10                   1                  0.0110357   -0.6737171    0.6957885
24 months   MAL-ED           BANGLADESH                     11                   1                 -0.3123052   -1.0540967    0.4294863
24 months   MAL-ED           BANGLADESH                     12                   1                  0.1993783   -0.4280965    0.8268531
24 months   MAL-ED           BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         2                    1                 -0.1133125   -1.0048382    0.7782132
24 months   MAL-ED           BRAZIL                         3                    1                  0.0448571   -0.9478557    1.0375700
24 months   MAL-ED           BRAZIL                         4                    1                  0.2833333   -1.0145633    1.5812300
24 months   MAL-ED           BRAZIL                         5                    1                 -0.2954444   -1.0640909    0.4732020
24 months   MAL-ED           BRAZIL                         6                    1                 -0.5280000   -1.5599288    0.5039288
24 months   MAL-ED           BRAZIL                         7                    1                  1.2170000    0.3069735    2.1270265
24 months   MAL-ED           BRAZIL                         8                    1                  0.2927692   -0.6906773    1.2762158
24 months   MAL-ED           BRAZIL                         9                    1                 -0.2672593   -1.0266284    0.4921099
24 months   MAL-ED           BRAZIL                         10                   1                  0.4462857   -0.4962335    1.3888049
24 months   MAL-ED           BRAZIL                         11                   1                 -0.2834630   -1.1850406    0.6181147
24 months   MAL-ED           BRAZIL                         12                   1                  0.2492727   -0.6030506    1.1015960
24 months   MAL-ED           INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          2                    1                  0.4729240   -0.1054661    1.0513141
24 months   MAL-ED           INDIA                          3                    1                  0.1734211   -0.2945556    0.6413977
24 months   MAL-ED           INDIA                          4                    1                  0.4266541   -0.2093650    1.0626733
24 months   MAL-ED           INDIA                          5                    1                 -0.1676316   -0.6906989    0.3554357
24 months   MAL-ED           INDIA                          6                    1                 -0.1440205   -0.8510450    0.5630040
24 months   MAL-ED           INDIA                          7                    1                  0.0936728   -0.4171679    0.6045135
24 months   MAL-ED           INDIA                          8                    1                  0.3395113   -0.1794223    0.8584449
24 months   MAL-ED           INDIA                          9                    1                 -0.1159649   -0.5841657    0.3522359
24 months   MAL-ED           INDIA                          10                   1                  0.1948684   -0.3052238    0.6949606
24 months   MAL-ED           INDIA                          11                   1                 -0.2132566   -0.6720729    0.2455597
24 months   MAL-ED           INDIA                          12                   1                  0.4568421   -0.0393058    0.9529900
24 months   MAL-ED           NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          2                    1                 -0.0007740   -0.4894629    0.4879149
24 months   MAL-ED           NEPAL                          3                    1                  0.1192260   -0.3858887    0.6243407
24 months   MAL-ED           NEPAL                          4                    1                 -0.1181938   -0.6385904    0.4022028
24 months   MAL-ED           NEPAL                          5                    1                 -0.5063158   -1.0076738   -0.0049578
24 months   MAL-ED           NEPAL                          6                    1                 -0.2736988   -0.7833813    0.2359837
24 months   MAL-ED           NEPAL                          7                    1                 -0.1334211   -0.6789364    0.4120943
24 months   MAL-ED           NEPAL                          8                    1                 -0.3519627   -0.8847811    0.1808557
24 months   MAL-ED           NEPAL                          9                    1                 -0.3654211   -0.8565807    0.1257386
24 months   MAL-ED           NEPAL                          10                   1                  0.1185789   -0.2957777    0.5329356
24 months   MAL-ED           NEPAL                          11                   1                 -0.1317544   -0.6556152    0.3921064
24 months   MAL-ED           NEPAL                          12                   1                  0.2500164   -0.3826054    0.8826383
24 months   MAL-ED           PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           2                    1                  0.2235229   -0.2634764    0.7105221
24 months   MAL-ED           PERU                           3                    1                  0.2311111   -0.3777041    0.8399263
24 months   MAL-ED           PERU                           4                    1                  0.2697929   -0.2730333    0.8126191
24 months   MAL-ED           PERU                           5                    1                  0.0798129   -0.3937364    0.5533621
24 months   MAL-ED           PERU                           6                    1                  0.1201717   -0.7506801    0.9910236
24 months   MAL-ED           PERU                           7                    1                 -0.1411111   -0.6327134    0.3504912
24 months   MAL-ED           PERU                           8                    1                 -0.0308889   -0.7228980    0.6611202
24 months   MAL-ED           PERU                           9                    1                 -0.0304921   -0.4692346    0.4082504
24 months   MAL-ED           PERU                           10                   1                  0.1918492   -0.3277711    0.7114695
24 months   MAL-ED           PERU                           11                   1                  0.1052222   -0.4599965    0.6704409
24 months   MAL-ED           PERU                           12                   1                  0.0421111   -0.4445996    0.5288218
24 months   MAL-ED           SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   2                    1                  0.2496257   -0.2512459    0.7504973
24 months   MAL-ED           SOUTH AFRICA                   3                    1                  0.4384244   -0.0716307    0.9484794
24 months   MAL-ED           SOUTH AFRICA                   4                    1                  0.3861029   -0.3794402    1.1516461
24 months   MAL-ED           SOUTH AFRICA                   5                    1                  0.0481863   -0.5407686    0.6371412
24 months   MAL-ED           SOUTH AFRICA                   6                    1                  0.3651654   -0.1846079    0.9149387
24 months   MAL-ED           SOUTH AFRICA                   7                    1                  0.5148529   -0.0722729    1.1019787
24 months   MAL-ED           SOUTH AFRICA                   8                    1                  0.4661029   -0.2759475    1.2081534
24 months   MAL-ED           SOUTH AFRICA                   9                    1                  0.3485372   -0.1644059    0.8614802
24 months   MAL-ED           SOUTH AFRICA                   10                   1                  0.0142863   -0.5323138    0.5608863
24 months   MAL-ED           SOUTH AFRICA                   11                   1                  0.4968095   -0.0444737    1.0380926
24 months   MAL-ED           SOUTH AFRICA                   12                   1                  0.0612508   -0.4131231    0.5356247
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2461667   -0.4636556    0.9559889
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1                  0.5497778   -0.1708393    1.2703948
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1                  0.4061667   -0.5258237    1.3381570
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    1                  0.6667222    0.0343962    1.2990482
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    1                  0.4858889   -0.1444702    1.1162480
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    1                  0.8727971    0.1662406    1.5793536
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    1                  0.5059394   -0.4303777    1.4422565
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    1                  0.5958889   -0.1109354    1.3027132
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   1                  0.8293333    0.1440062    1.5146604
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   1                  0.5940833   -0.0908050    1.2789716
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   1                  0.7727692    0.0734734    1.4720651
24 months   NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     2                    1                  0.0285551   -0.3727392    0.4298494
24 months   NIH-Birth        BANGLADESH                     3                    1                  0.0475224   -0.4094131    0.5044578
24 months   NIH-Birth        BANGLADESH                     4                    1                 -0.2023136   -0.6146927    0.2100655
24 months   NIH-Birth        BANGLADESH                     5                    1                 -0.1014264   -0.4887242    0.2858715
24 months   NIH-Birth        BANGLADESH                     6                    1                  0.3037151   -0.0937763    0.7012065
24 months   NIH-Birth        BANGLADESH                     7                    1                  0.2475638   -0.2333160    0.7284436
24 months   NIH-Birth        BANGLADESH                     8                    1                  0.0100057   -0.4726379    0.4926494
24 months   NIH-Birth        BANGLADESH                     9                    1                  0.0460480   -0.4160013    0.5080973
24 months   NIH-Birth        BANGLADESH                     10                   1                  0.0701797   -0.4614971    0.6018566
24 months   NIH-Birth        BANGLADESH                     11                   1                  0.1353871   -0.2835432    0.5543174
24 months   NIH-Birth        BANGLADESH                     12                   1                  0.1589758   -0.2176076    0.5355592
24 months   PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        2                    1                  0.1416880   -0.2276299    0.5110059
24 months   PROBIT           BELARUS                        3                    1                  0.0780526   -0.2562960    0.4124013
24 months   PROBIT           BELARUS                        4                    1                  0.0720606   -0.2243565    0.3684777
24 months   PROBIT           BELARUS                        5                    1                  0.1569360   -0.0838064    0.3976785
24 months   PROBIT           BELARUS                        6                    1                 -0.0355576   -0.8059332    0.7348179
24 months   PROBIT           BELARUS                        7                    1                  0.0231588   -0.2890805    0.3353981
24 months   PROBIT           BELARUS                        8                    1                  0.0984037   -0.1977331    0.3945404
24 months   PROBIT           BELARUS                        9                    1                  0.0461505   -0.2502289    0.3425298
24 months   PROBIT           BELARUS                        10                   1                  0.0778311   -0.1787495    0.3344116
24 months   PROBIT           BELARUS                        11                   1                  0.1380182   -0.0880374    0.3640738
24 months   PROBIT           BELARUS                        12                   1                  0.0797681   -0.1466584    0.3061946
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                 -0.0076667   -0.4279982    0.4126648
24 months   PROVIDE          BANGLADESH                     3                    1                 -0.1505000   -0.6180617    0.3170617
24 months   PROVIDE          BANGLADESH                     4                    1                  0.0004545   -0.5291194    0.5300285
24 months   PROVIDE          BANGLADESH                     5                    1                 -0.4080952   -0.9406728    0.1244823
24 months   PROVIDE          BANGLADESH                     6                    1                 -0.3555333   -0.7394232    0.0283566
24 months   PROVIDE          BANGLADESH                     7                    1                 -0.3655714   -0.7489625    0.0178197
24 months   PROVIDE          BANGLADESH                     8                    1                 -0.2711667   -0.6985046    0.1561712
24 months   PROVIDE          BANGLADESH                     9                    1                  0.0441791   -0.3603265    0.4486847
24 months   PROVIDE          BANGLADESH                     10                   1                 -0.1022656   -0.4955545    0.2910233
24 months   PROVIDE          BANGLADESH                     11                   1                  0.0136842   -0.3571139    0.3844823
24 months   PROVIDE          BANGLADESH                     12                   1                 -0.0796429   -0.5488771    0.3895914


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.8041315   -1.3935851   -0.2146779
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.1460343   -0.1992204   -0.0928481
Birth       Keneba           GAMBIA                         1                    NA                 0.1139435   -0.0689579    0.2968448
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.0971236   -0.5075955    0.3133483
Birth       MAL-ED           PERU                           1                    NA                 0.2686721    0.0199024    0.5174418
Birth       NIH-Birth        BANGLADESH                     1                    NA                -0.0050065   -0.3264809    0.3164679
Birth       PROBIT           BELARUS                        1                    NA                 0.0264058   -0.2077549    0.2605664
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.5854586   -0.8393820   -0.3315353
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.1363310   -0.3989775    0.1263155
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.1340704   -0.2146538   -0.0534870
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                 0.2137449   -0.2855054    0.7129953
6 months    CMIN             BANGLADESH                     1                    NA                 0.1152240   -0.2521263    0.4825742
6 months    CONTENT          PERU                           1                    NA                 0.0266279   -0.3688778    0.4221337
6 months    Guatemala BSC    GUATEMALA                      1                    NA                 0.3428914   -0.0067083    0.6924911
6 months    IRC              INDIA                          1                    NA                -0.1470876   -0.5682331    0.2740578
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0772737    0.0226108    0.1319366
6 months    Keneba           GAMBIA                         1                    NA                -0.0015530   -0.1439229    0.1408170
6 months    LCNI-5           MALAWI                         1                    NA                -0.0169714   -0.2609751    0.2270324
6 months    MAL-ED           BANGLADESH                     1                    NA                 0.1098237   -0.2012249    0.4208722
6 months    MAL-ED           BRAZIL                         1                    NA                -0.2321449   -0.8239730    0.3596833
6 months    MAL-ED           INDIA                          1                    NA                -0.0019452   -0.4048914    0.4010009
6 months    MAL-ED           NEPAL                          1                    NA                 0.1580141   -0.3189934    0.6350217
6 months    MAL-ED           PERU                           1                    NA                 0.0381447   -0.2795383    0.3558277
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -0.1270320   -0.5480524    0.2939883
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1959713   -0.2827324    0.6746751
6 months    NIH-Birth        BANGLADESH                     1                    NA                 0.3054808    0.0510766    0.5598851
6 months    PROBIT           BELARUS                        1                    NA                -0.0050388   -0.1010455    0.0909679
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.2756712   -0.0909635    0.6423060
6 months    SAS-CompFeed     INDIA                          1                    NA                 0.4029123    0.2298669    0.5759577
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2463440    0.0484046    0.4442833
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0638683   -0.1453439    0.0176073
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0068564   -0.3021094    0.2883966
24 months   CMIN             BANGLADESH                     1                    NA                -0.1835391   -0.4320527    0.0649745
24 months   CONTENT          PERU                           1                    NA                 0.5545296    0.2297694    0.8792898
24 months   IRC              INDIA                          1                    NA                -0.2177010   -0.5057191    0.0703172
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.2694873   -0.3400068   -0.1989678
24 months   Keneba           GAMBIA                         1                    NA                -0.0802847   -0.2097834    0.0492139
24 months   LCNI-5           MALAWI                         1                    NA                 0.1788958   -0.1097962    0.4675878
24 months   MAL-ED           BANGLADESH                     1                    NA                -0.1825067   -0.7022012    0.3371877
24 months   MAL-ED           BRAZIL                         1                    NA                 0.0396233   -0.5480451    0.6272916
24 months   MAL-ED           INDIA                          1                    NA                 0.1307164   -0.2241943    0.4856271
24 months   MAL-ED           NEPAL                          1                    NA                -0.1233333   -0.4608670    0.2142003
24 months   MAL-ED           PERU                           1                    NA                 0.0769760   -0.2307587    0.3847106
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.2438831   -0.0989926    0.5867587
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5684642    0.0124817    1.1244466
24 months   NIH-Birth        BANGLADESH                     1                    NA                 0.0646613   -0.1928321    0.3221546
24 months   PROBIT           BELARUS                        1                    NA                 0.0737253   -0.1532240    0.3006747
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.1678670   -0.4824412    0.1467072
