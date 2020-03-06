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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        feducyrs    n_cell       n
-------------  ---------------  -----------------------------  ---------  -------  ------
0-3 months     COHORTS          GUATEMALA                      0              331     760
0-3 months     COHORTS          GUATEMALA                      1               34     760
0-3 months     COHORTS          GUATEMALA                      2              147     760
0-3 months     COHORTS          GUATEMALA                      3              106     760
0-3 months     COHORTS          GUATEMALA                      4               50     760
0-3 months     COHORTS          GUATEMALA                      5               17     760
0-3 months     COHORTS          GUATEMALA                      6               67     760
0-3 months     COHORTS          GUATEMALA                      7                4     760
0-3 months     COHORTS          GUATEMALA                      8                1     760
0-3 months     COHORTS          GUATEMALA                      9                1     760
0-3 months     COHORTS          GUATEMALA                      10               0     760
0-3 months     COHORTS          GUATEMALA                      11               0     760
0-3 months     COHORTS          GUATEMALA                      12               1     760
0-3 months     COHORTS          GUATEMALA                      13               0     760
0-3 months     COHORTS          GUATEMALA                      14               1     760
0-3 months     COHORTS          GUATEMALA                      15               0     760
0-3 months     COHORTS          GUATEMALA                      16               0     760
0-3 months     COHORTS          GUATEMALA                      17               0     760
0-3 months     COHORTS          GUATEMALA                      18               0     760
0-3 months     COHORTS          GUATEMALA                      19               0     760
0-3 months     COHORTS          GUATEMALA                      20               0     760
0-3 months     COHORTS          GUATEMALA                      24               0     760
0-3 months     COHORTS          GUATEMALA                      25               0     760
0-3 months     COHORTS          GUATEMALA                      27               0     760
0-3 months     COHORTS          INDIA                          0              114    1343
0-3 months     COHORTS          INDIA                          1                0    1343
0-3 months     COHORTS          INDIA                          2                0    1343
0-3 months     COHORTS          INDIA                          3              126    1343
0-3 months     COHORTS          INDIA                          4                0    1343
0-3 months     COHORTS          INDIA                          5                0    1343
0-3 months     COHORTS          INDIA                          6                0    1343
0-3 months     COHORTS          INDIA                          7                0    1343
0-3 months     COHORTS          INDIA                          8              200    1343
0-3 months     COHORTS          INDIA                          9                0    1343
0-3 months     COHORTS          INDIA                          10               0    1343
0-3 months     COHORTS          INDIA                          11               0    1343
0-3 months     COHORTS          INDIA                          12             383    1343
0-3 months     COHORTS          INDIA                          13               0    1343
0-3 months     COHORTS          INDIA                          14             142    1343
0-3 months     COHORTS          INDIA                          15             265    1343
0-3 months     COHORTS          INDIA                          16               0    1343
0-3 months     COHORTS          INDIA                          17             113    1343
0-3 months     COHORTS          INDIA                          18               0    1343
0-3 months     COHORTS          INDIA                          19               0    1343
0-3 months     COHORTS          INDIA                          20               0    1343
0-3 months     COHORTS          INDIA                          24               0    1343
0-3 months     COHORTS          INDIA                          25               0    1343
0-3 months     COHORTS          INDIA                          27               0    1343
0-3 months     GMS-Nepal        NEPAL                          0              227     508
0-3 months     GMS-Nepal        NEPAL                          1                0     508
0-3 months     GMS-Nepal        NEPAL                          2                0     508
0-3 months     GMS-Nepal        NEPAL                          3                0     508
0-3 months     GMS-Nepal        NEPAL                          4                0     508
0-3 months     GMS-Nepal        NEPAL                          5               76     508
0-3 months     GMS-Nepal        NEPAL                          6                0     508
0-3 months     GMS-Nepal        NEPAL                          7                0     508
0-3 months     GMS-Nepal        NEPAL                          8               78     508
0-3 months     GMS-Nepal        NEPAL                          9                0     508
0-3 months     GMS-Nepal        NEPAL                          10              98     508
0-3 months     GMS-Nepal        NEPAL                          11               0     508
0-3 months     GMS-Nepal        NEPAL                          12              29     508
0-3 months     GMS-Nepal        NEPAL                          13               0     508
0-3 months     GMS-Nepal        NEPAL                          14               0     508
0-3 months     GMS-Nepal        NEPAL                          15               0     508
0-3 months     GMS-Nepal        NEPAL                          16               0     508
0-3 months     GMS-Nepal        NEPAL                          17               0     508
0-3 months     GMS-Nepal        NEPAL                          18               0     508
0-3 months     GMS-Nepal        NEPAL                          19               0     508
0-3 months     GMS-Nepal        NEPAL                          20               0     508
0-3 months     GMS-Nepal        NEPAL                          24               0     508
0-3 months     GMS-Nepal        NEPAL                          25               0     508
0-3 months     GMS-Nepal        NEPAL                          27               0     508
0-3 months     MAL-ED           BANGLADESH                     0                0     138
0-3 months     MAL-ED           BANGLADESH                     1                7     138
0-3 months     MAL-ED           BANGLADESH                     2               12     138
0-3 months     MAL-ED           BANGLADESH                     3               12     138
0-3 months     MAL-ED           BANGLADESH                     4                7     138
0-3 months     MAL-ED           BANGLADESH                     5               32     138
0-3 months     MAL-ED           BANGLADESH                     6                8     138
0-3 months     MAL-ED           BANGLADESH                     7               10     138
0-3 months     MAL-ED           BANGLADESH                     8               17     138
0-3 months     MAL-ED           BANGLADESH                     9               13     138
0-3 months     MAL-ED           BANGLADESH                     10               9     138
0-3 months     MAL-ED           BANGLADESH                     11               0     138
0-3 months     MAL-ED           BANGLADESH                     12               9     138
0-3 months     MAL-ED           BANGLADESH                     13               0     138
0-3 months     MAL-ED           BANGLADESH                     14               0     138
0-3 months     MAL-ED           BANGLADESH                     15               0     138
0-3 months     MAL-ED           BANGLADESH                     16               2     138
0-3 months     MAL-ED           BANGLADESH                     17               0     138
0-3 months     MAL-ED           BANGLADESH                     18               0     138
0-3 months     MAL-ED           BANGLADESH                     19               0     138
0-3 months     MAL-ED           BANGLADESH                     20               0     138
0-3 months     MAL-ED           BANGLADESH                     24               0     138
0-3 months     MAL-ED           BANGLADESH                     25               0     138
0-3 months     MAL-ED           BANGLADESH                     27               0     138
0-3 months     MAL-ED           INDIA                          0                0     136
0-3 months     MAL-ED           INDIA                          1                0     136
0-3 months     MAL-ED           INDIA                          2                6     136
0-3 months     MAL-ED           INDIA                          3               10     136
0-3 months     MAL-ED           INDIA                          4                6     136
0-3 months     MAL-ED           INDIA                          5               33     136
0-3 months     MAL-ED           INDIA                          6               10     136
0-3 months     MAL-ED           INDIA                          7               11     136
0-3 months     MAL-ED           INDIA                          8               18     136
0-3 months     MAL-ED           INDIA                          9               26     136
0-3 months     MAL-ED           INDIA                          10               6     136
0-3 months     MAL-ED           INDIA                          11               2     136
0-3 months     MAL-ED           INDIA                          12               2     136
0-3 months     MAL-ED           INDIA                          13               1     136
0-3 months     MAL-ED           INDIA                          14               2     136
0-3 months     MAL-ED           INDIA                          15               2     136
0-3 months     MAL-ED           INDIA                          16               0     136
0-3 months     MAL-ED           INDIA                          17               0     136
0-3 months     MAL-ED           INDIA                          18               1     136
0-3 months     MAL-ED           INDIA                          19               0     136
0-3 months     MAL-ED           INDIA                          20               0     136
0-3 months     MAL-ED           INDIA                          24               0     136
0-3 months     MAL-ED           INDIA                          25               0     136
0-3 months     MAL-ED           INDIA                          27               0     136
0-3 months     MAL-ED           NEPAL                          0                0      92
0-3 months     MAL-ED           NEPAL                          1                0      92
0-3 months     MAL-ED           NEPAL                          2                4      92
0-3 months     MAL-ED           NEPAL                          3                3      92
0-3 months     MAL-ED           NEPAL                          4               10      92
0-3 months     MAL-ED           NEPAL                          5                6      92
0-3 months     MAL-ED           NEPAL                          6                4      92
0-3 months     MAL-ED           NEPAL                          7                8      92
0-3 months     MAL-ED           NEPAL                          8               12      92
0-3 months     MAL-ED           NEPAL                          9                7      92
0-3 months     MAL-ED           NEPAL                          10              25      92
0-3 months     MAL-ED           NEPAL                          11               1      92
0-3 months     MAL-ED           NEPAL                          12               7      92
0-3 months     MAL-ED           NEPAL                          13               0      92
0-3 months     MAL-ED           NEPAL                          14               0      92
0-3 months     MAL-ED           NEPAL                          15               1      92
0-3 months     MAL-ED           NEPAL                          16               1      92
0-3 months     MAL-ED           NEPAL                          17               2      92
0-3 months     MAL-ED           NEPAL                          18               1      92
0-3 months     MAL-ED           NEPAL                          19               0      92
0-3 months     MAL-ED           NEPAL                          20               0      92
0-3 months     MAL-ED           NEPAL                          24               0      92
0-3 months     MAL-ED           NEPAL                          25               0      92
0-3 months     MAL-ED           NEPAL                          27               0      92
0-3 months     MAL-ED           PERU                           0                1     232
0-3 months     MAL-ED           PERU                           1                2     232
0-3 months     MAL-ED           PERU                           2                1     232
0-3 months     MAL-ED           PERU                           3                8     232
0-3 months     MAL-ED           PERU                           4                4     232
0-3 months     MAL-ED           PERU                           5                7     232
0-3 months     MAL-ED           PERU                           6               24     232
0-3 months     MAL-ED           PERU                           7               16     232
0-3 months     MAL-ED           PERU                           8               21     232
0-3 months     MAL-ED           PERU                           9               26     232
0-3 months     MAL-ED           PERU                           10              11     232
0-3 months     MAL-ED           PERU                           11              92     232
0-3 months     MAL-ED           PERU                           12               1     232
0-3 months     MAL-ED           PERU                           13               4     232
0-3 months     MAL-ED           PERU                           14               4     232
0-3 months     MAL-ED           PERU                           15               1     232
0-3 months     MAL-ED           PERU                           16               1     232
0-3 months     MAL-ED           PERU                           17               1     232
0-3 months     MAL-ED           PERU                           18               5     232
0-3 months     MAL-ED           PERU                           19               0     232
0-3 months     MAL-ED           PERU                           20               2     232
0-3 months     MAL-ED           PERU                           24               0     232
0-3 months     MAL-ED           PERU                           25               0     232
0-3 months     MAL-ED           PERU                           27               0     232
0-3 months     MAL-ED           SOUTH AFRICA                   0                0      98
0-3 months     MAL-ED           SOUTH AFRICA                   1                0      98
0-3 months     MAL-ED           SOUTH AFRICA                   2                1      98
0-3 months     MAL-ED           SOUTH AFRICA                   3                0      98
0-3 months     MAL-ED           SOUTH AFRICA                   4                4      98
0-3 months     MAL-ED           SOUTH AFRICA                   5                2      98
0-3 months     MAL-ED           SOUTH AFRICA                   6                6      98
0-3 months     MAL-ED           SOUTH AFRICA                   7                6      98
0-3 months     MAL-ED           SOUTH AFRICA                   8               11      98
0-3 months     MAL-ED           SOUTH AFRICA                   9                6      98
0-3 months     MAL-ED           SOUTH AFRICA                   10               9      98
0-3 months     MAL-ED           SOUTH AFRICA                   11              16      98
0-3 months     MAL-ED           SOUTH AFRICA                   12              32      98
0-3 months     MAL-ED           SOUTH AFRICA                   13               0      98
0-3 months     MAL-ED           SOUTH AFRICA                   14               2      98
0-3 months     MAL-ED           SOUTH AFRICA                   15               2      98
0-3 months     MAL-ED           SOUTH AFRICA                   16               1      98
0-3 months     MAL-ED           SOUTH AFRICA                   17               0      98
0-3 months     MAL-ED           SOUTH AFRICA                   18               0      98
0-3 months     MAL-ED           SOUTH AFRICA                   19               0      98
0-3 months     MAL-ED           SOUTH AFRICA                   20               0      98
0-3 months     MAL-ED           SOUTH AFRICA                   24               0      98
0-3 months     MAL-ED           SOUTH AFRICA                   25               0      98
0-3 months     MAL-ED           SOUTH AFRICA                   27               0      98
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               12     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               16     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                9     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              112     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     192
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     192
0-3 months     NIH-Crypto       BANGLADESH                     0              169     725
0-3 months     NIH-Crypto       BANGLADESH                     1               19     725
0-3 months     NIH-Crypto       BANGLADESH                     2               13     725
0-3 months     NIH-Crypto       BANGLADESH                     3               31     725
0-3 months     NIH-Crypto       BANGLADESH                     4               38     725
0-3 months     NIH-Crypto       BANGLADESH                     5               83     725
0-3 months     NIH-Crypto       BANGLADESH                     6               34     725
0-3 months     NIH-Crypto       BANGLADESH                     7               55     725
0-3 months     NIH-Crypto       BANGLADESH                     8               88     725
0-3 months     NIH-Crypto       BANGLADESH                     9               79     725
0-3 months     NIH-Crypto       BANGLADESH                     10              53     725
0-3 months     NIH-Crypto       BANGLADESH                     11               0     725
0-3 months     NIH-Crypto       BANGLADESH                     12              33     725
0-3 months     NIH-Crypto       BANGLADESH                     13               0     725
0-3 months     NIH-Crypto       BANGLADESH                     14               8     725
0-3 months     NIH-Crypto       BANGLADESH                     15              15     725
0-3 months     NIH-Crypto       BANGLADESH                     16               0     725
0-3 months     NIH-Crypto       BANGLADESH                     17               7     725
0-3 months     NIH-Crypto       BANGLADESH                     18               0     725
0-3 months     NIH-Crypto       BANGLADESH                     19               0     725
0-3 months     NIH-Crypto       BANGLADESH                     20               0     725
0-3 months     NIH-Crypto       BANGLADESH                     24               0     725
0-3 months     NIH-Crypto       BANGLADESH                     25               0     725
0-3 months     NIH-Crypto       BANGLADESH                     27               0     725
0-3 months     PROBIT           BELARUS                        0                0   14792
0-3 months     PROBIT           BELARUS                        1                0   14792
0-3 months     PROBIT           BELARUS                        2                0   14792
0-3 months     PROBIT           BELARUS                        3                0   14792
0-3 months     PROBIT           BELARUS                        4                0   14792
0-3 months     PROBIT           BELARUS                        5                0   14792
0-3 months     PROBIT           BELARUS                        6                0   14792
0-3 months     PROBIT           BELARUS                        7                0   14792
0-3 months     PROBIT           BELARUS                        8               25   14792
0-3 months     PROBIT           BELARUS                        9                0   14792
0-3 months     PROBIT           BELARUS                        10             333   14792
0-3 months     PROBIT           BELARUS                        11               0   14792
0-3 months     PROBIT           BELARUS                        12            5435   14792
0-3 months     PROBIT           BELARUS                        13            6551   14792
0-3 months     PROBIT           BELARUS                        14             400   14792
0-3 months     PROBIT           BELARUS                        15               0   14792
0-3 months     PROBIT           BELARUS                        16            2048   14792
0-3 months     PROBIT           BELARUS                        17               0   14792
0-3 months     PROBIT           BELARUS                        18               0   14792
0-3 months     PROBIT           BELARUS                        19               0   14792
0-3 months     PROBIT           BELARUS                        20               0   14792
0-3 months     PROBIT           BELARUS                        24               0   14792
0-3 months     PROBIT           BELARUS                        25               0   14792
0-3 months     PROBIT           BELARUS                        27               0   14792
0-3 months     PROVIDE          BANGLADESH                     0              186     640
0-3 months     PROVIDE          BANGLADESH                     1               13     640
0-3 months     PROVIDE          BANGLADESH                     2               18     640
0-3 months     PROVIDE          BANGLADESH                     3               25     640
0-3 months     PROVIDE          BANGLADESH                     4               47     640
0-3 months     PROVIDE          BANGLADESH                     5               68     640
0-3 months     PROVIDE          BANGLADESH                     6               28     640
0-3 months     PROVIDE          BANGLADESH                     7               36     640
0-3 months     PROVIDE          BANGLADESH                     8               61     640
0-3 months     PROVIDE          BANGLADESH                     9               59     640
0-3 months     PROVIDE          BANGLADESH                     10              34     640
0-3 months     PROVIDE          BANGLADESH                     11              25     640
0-3 months     PROVIDE          BANGLADESH                     12               4     640
0-3 months     PROVIDE          BANGLADESH                     13               0     640
0-3 months     PROVIDE          BANGLADESH                     14              19     640
0-3 months     PROVIDE          BANGLADESH                     15               8     640
0-3 months     PROVIDE          BANGLADESH                     16               8     640
0-3 months     PROVIDE          BANGLADESH                     17               0     640
0-3 months     PROVIDE          BANGLADESH                     18               0     640
0-3 months     PROVIDE          BANGLADESH                     19               1     640
0-3 months     PROVIDE          BANGLADESH                     20               0     640
0-3 months     PROVIDE          BANGLADESH                     24               0     640
0-3 months     PROVIDE          BANGLADESH                     25               0     640
0-3 months     PROVIDE          BANGLADESH                     27               0     640
0-3 months     SAS-CompFeed     INDIA                          0              164    1262
0-3 months     SAS-CompFeed     INDIA                          1                0    1262
0-3 months     SAS-CompFeed     INDIA                          2                5    1262
0-3 months     SAS-CompFeed     INDIA                          3               12    1262
0-3 months     SAS-CompFeed     INDIA                          4               24    1262
0-3 months     SAS-CompFeed     INDIA                          5               75    1262
0-3 months     SAS-CompFeed     INDIA                          6               20    1262
0-3 months     SAS-CompFeed     INDIA                          7               96    1262
0-3 months     SAS-CompFeed     INDIA                          8              144    1262
0-3 months     SAS-CompFeed     INDIA                          9               76    1262
0-3 months     SAS-CompFeed     INDIA                          10             322    1262
0-3 months     SAS-CompFeed     INDIA                          11              36    1262
0-3 months     SAS-CompFeed     INDIA                          12             182    1262
0-3 months     SAS-CompFeed     INDIA                          13               6    1262
0-3 months     SAS-CompFeed     INDIA                          14              13    1262
0-3 months     SAS-CompFeed     INDIA                          15              60    1262
0-3 months     SAS-CompFeed     INDIA                          16               9    1262
0-3 months     SAS-CompFeed     INDIA                          17              13    1262
0-3 months     SAS-CompFeed     INDIA                          18               3    1262
0-3 months     SAS-CompFeed     INDIA                          19               1    1262
0-3 months     SAS-CompFeed     INDIA                          20               1    1262
0-3 months     SAS-CompFeed     INDIA                          24               0    1262
0-3 months     SAS-CompFeed     INDIA                          25               0    1262
0-3 months     SAS-CompFeed     INDIA                          27               0    1262
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                4    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                4    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1064    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                7    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               45    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              19    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             496    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              14    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              95    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14              13    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15              18    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16              24    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17              18    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               4    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24              13    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0    2012
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27             173    2012
0-3 months     ZVITAMBO         ZIMBABWE                       0               38    7928
0-3 months     ZVITAMBO         ZIMBABWE                       1                1    7928
0-3 months     ZVITAMBO         ZIMBABWE                       2                4    7928
0-3 months     ZVITAMBO         ZIMBABWE                       3                7    7928
0-3 months     ZVITAMBO         ZIMBABWE                       4               15    7928
0-3 months     ZVITAMBO         ZIMBABWE                       5               22    7928
0-3 months     ZVITAMBO         ZIMBABWE                       6               27    7928
0-3 months     ZVITAMBO         ZIMBABWE                       7              487    7928
0-3 months     ZVITAMBO         ZIMBABWE                       8               60    7928
0-3 months     ZVITAMBO         ZIMBABWE                       9              554    7928
0-3 months     ZVITAMBO         ZIMBABWE                       10             204    7928
0-3 months     ZVITAMBO         ZIMBABWE                       11            5951    7928
0-3 months     ZVITAMBO         ZIMBABWE                       12              36    7928
0-3 months     ZVITAMBO         ZIMBABWE                       13             522    7928
0-3 months     ZVITAMBO         ZIMBABWE                       14               0    7928
0-3 months     ZVITAMBO         ZIMBABWE                       15               0    7928
0-3 months     ZVITAMBO         ZIMBABWE                       16               0    7928
0-3 months     ZVITAMBO         ZIMBABWE                       17               0    7928
0-3 months     ZVITAMBO         ZIMBABWE                       18               0    7928
0-3 months     ZVITAMBO         ZIMBABWE                       19               0    7928
0-3 months     ZVITAMBO         ZIMBABWE                       20               0    7928
0-3 months     ZVITAMBO         ZIMBABWE                       24               0    7928
0-3 months     ZVITAMBO         ZIMBABWE                       25               0    7928
0-3 months     ZVITAMBO         ZIMBABWE                       27               0    7928
3-6 months     COHORTS          GUATEMALA                      0              337     765
3-6 months     COHORTS          GUATEMALA                      1               34     765
3-6 months     COHORTS          GUATEMALA                      2              147     765
3-6 months     COHORTS          GUATEMALA                      3              105     765
3-6 months     COHORTS          GUATEMALA                      4               54     765
3-6 months     COHORTS          GUATEMALA                      5               11     765
3-6 months     COHORTS          GUATEMALA                      6               68     765
3-6 months     COHORTS          GUATEMALA                      7                3     765
3-6 months     COHORTS          GUATEMALA                      8                1     765
3-6 months     COHORTS          GUATEMALA                      9                0     765
3-6 months     COHORTS          GUATEMALA                      10               1     765
3-6 months     COHORTS          GUATEMALA                      11               0     765
3-6 months     COHORTS          GUATEMALA                      12               3     765
3-6 months     COHORTS          GUATEMALA                      13               0     765
3-6 months     COHORTS          GUATEMALA                      14               1     765
3-6 months     COHORTS          GUATEMALA                      15               0     765
3-6 months     COHORTS          GUATEMALA                      16               0     765
3-6 months     COHORTS          GUATEMALA                      17               0     765
3-6 months     COHORTS          GUATEMALA                      18               0     765
3-6 months     COHORTS          GUATEMALA                      19               0     765
3-6 months     COHORTS          GUATEMALA                      20               0     765
3-6 months     COHORTS          GUATEMALA                      24               0     765
3-6 months     COHORTS          GUATEMALA                      25               0     765
3-6 months     COHORTS          GUATEMALA                      27               0     765
3-6 months     COHORTS          INDIA                          0              117    1358
3-6 months     COHORTS          INDIA                          1                0    1358
3-6 months     COHORTS          INDIA                          2                0    1358
3-6 months     COHORTS          INDIA                          3              127    1358
3-6 months     COHORTS          INDIA                          4                0    1358
3-6 months     COHORTS          INDIA                          5                0    1358
3-6 months     COHORTS          INDIA                          6                0    1358
3-6 months     COHORTS          INDIA                          7                0    1358
3-6 months     COHORTS          INDIA                          8              198    1358
3-6 months     COHORTS          INDIA                          9                0    1358
3-6 months     COHORTS          INDIA                          10               0    1358
3-6 months     COHORTS          INDIA                          11               0    1358
3-6 months     COHORTS          INDIA                          12             383    1358
3-6 months     COHORTS          INDIA                          13               0    1358
3-6 months     COHORTS          INDIA                          14             149    1358
3-6 months     COHORTS          INDIA                          15             269    1358
3-6 months     COHORTS          INDIA                          16               0    1358
3-6 months     COHORTS          INDIA                          17             115    1358
3-6 months     COHORTS          INDIA                          18               0    1358
3-6 months     COHORTS          INDIA                          19               0    1358
3-6 months     COHORTS          INDIA                          20               0    1358
3-6 months     COHORTS          INDIA                          24               0    1358
3-6 months     COHORTS          INDIA                          25               0    1358
3-6 months     COHORTS          INDIA                          27               0    1358
3-6 months     GMS-Nepal        NEPAL                          0              210     468
3-6 months     GMS-Nepal        NEPAL                          1                0     468
3-6 months     GMS-Nepal        NEPAL                          2                0     468
3-6 months     GMS-Nepal        NEPAL                          3                0     468
3-6 months     GMS-Nepal        NEPAL                          4                0     468
3-6 months     GMS-Nepal        NEPAL                          5               73     468
3-6 months     GMS-Nepal        NEPAL                          6                0     468
3-6 months     GMS-Nepal        NEPAL                          7                0     468
3-6 months     GMS-Nepal        NEPAL                          8               68     468
3-6 months     GMS-Nepal        NEPAL                          9                0     468
3-6 months     GMS-Nepal        NEPAL                          10              90     468
3-6 months     GMS-Nepal        NEPAL                          11               0     468
3-6 months     GMS-Nepal        NEPAL                          12              27     468
3-6 months     GMS-Nepal        NEPAL                          13               0     468
3-6 months     GMS-Nepal        NEPAL                          14               0     468
3-6 months     GMS-Nepal        NEPAL                          15               0     468
3-6 months     GMS-Nepal        NEPAL                          16               0     468
3-6 months     GMS-Nepal        NEPAL                          17               0     468
3-6 months     GMS-Nepal        NEPAL                          18               0     468
3-6 months     GMS-Nepal        NEPAL                          19               0     468
3-6 months     GMS-Nepal        NEPAL                          20               0     468
3-6 months     GMS-Nepal        NEPAL                          24               0     468
3-6 months     GMS-Nepal        NEPAL                          25               0     468
3-6 months     GMS-Nepal        NEPAL                          27               0     468
3-6 months     MAL-ED           BANGLADESH                     0                0     129
3-6 months     MAL-ED           BANGLADESH                     1                6     129
3-6 months     MAL-ED           BANGLADESH                     2               12     129
3-6 months     MAL-ED           BANGLADESH                     3               11     129
3-6 months     MAL-ED           BANGLADESH                     4                5     129
3-6 months     MAL-ED           BANGLADESH                     5               29     129
3-6 months     MAL-ED           BANGLADESH                     6                7     129
3-6 months     MAL-ED           BANGLADESH                     7                9     129
3-6 months     MAL-ED           BANGLADESH                     8               16     129
3-6 months     MAL-ED           BANGLADESH                     9               13     129
3-6 months     MAL-ED           BANGLADESH                     10               9     129
3-6 months     MAL-ED           BANGLADESH                     11               0     129
3-6 months     MAL-ED           BANGLADESH                     12              10     129
3-6 months     MAL-ED           BANGLADESH                     13               0     129
3-6 months     MAL-ED           BANGLADESH                     14               0     129
3-6 months     MAL-ED           BANGLADESH                     15               0     129
3-6 months     MAL-ED           BANGLADESH                     16               2     129
3-6 months     MAL-ED           BANGLADESH                     17               0     129
3-6 months     MAL-ED           BANGLADESH                     18               0     129
3-6 months     MAL-ED           BANGLADESH                     19               0     129
3-6 months     MAL-ED           BANGLADESH                     20               0     129
3-6 months     MAL-ED           BANGLADESH                     24               0     129
3-6 months     MAL-ED           BANGLADESH                     25               0     129
3-6 months     MAL-ED           BANGLADESH                     27               0     129
3-6 months     MAL-ED           INDIA                          0                0     132
3-6 months     MAL-ED           INDIA                          1                0     132
3-6 months     MAL-ED           INDIA                          2                6     132
3-6 months     MAL-ED           INDIA                          3                8     132
3-6 months     MAL-ED           INDIA                          4                6     132
3-6 months     MAL-ED           INDIA                          5               33     132
3-6 months     MAL-ED           INDIA                          6                9     132
3-6 months     MAL-ED           INDIA                          7               10     132
3-6 months     MAL-ED           INDIA                          8               18     132
3-6 months     MAL-ED           INDIA                          9               26     132
3-6 months     MAL-ED           INDIA                          10               6     132
3-6 months     MAL-ED           INDIA                          11               2     132
3-6 months     MAL-ED           INDIA                          12               2     132
3-6 months     MAL-ED           INDIA                          13               1     132
3-6 months     MAL-ED           INDIA                          14               2     132
3-6 months     MAL-ED           INDIA                          15               2     132
3-6 months     MAL-ED           INDIA                          16               0     132
3-6 months     MAL-ED           INDIA                          17               0     132
3-6 months     MAL-ED           INDIA                          18               1     132
3-6 months     MAL-ED           INDIA                          19               0     132
3-6 months     MAL-ED           INDIA                          20               0     132
3-6 months     MAL-ED           INDIA                          24               0     132
3-6 months     MAL-ED           INDIA                          25               0     132
3-6 months     MAL-ED           INDIA                          27               0     132
3-6 months     MAL-ED           NEPAL                          0                0      93
3-6 months     MAL-ED           NEPAL                          1                0      93
3-6 months     MAL-ED           NEPAL                          2                4      93
3-6 months     MAL-ED           NEPAL                          3                3      93
3-6 months     MAL-ED           NEPAL                          4               10      93
3-6 months     MAL-ED           NEPAL                          5                6      93
3-6 months     MAL-ED           NEPAL                          6                4      93
3-6 months     MAL-ED           NEPAL                          7                9      93
3-6 months     MAL-ED           NEPAL                          8               12      93
3-6 months     MAL-ED           NEPAL                          9                7      93
3-6 months     MAL-ED           NEPAL                          10              25      93
3-6 months     MAL-ED           NEPAL                          11               1      93
3-6 months     MAL-ED           NEPAL                          12               7      93
3-6 months     MAL-ED           NEPAL                          13               0      93
3-6 months     MAL-ED           NEPAL                          14               0      93
3-6 months     MAL-ED           NEPAL                          15               1      93
3-6 months     MAL-ED           NEPAL                          16               1      93
3-6 months     MAL-ED           NEPAL                          17               2      93
3-6 months     MAL-ED           NEPAL                          18               1      93
3-6 months     MAL-ED           NEPAL                          19               0      93
3-6 months     MAL-ED           NEPAL                          20               0      93
3-6 months     MAL-ED           NEPAL                          24               0      93
3-6 months     MAL-ED           NEPAL                          25               0      93
3-6 months     MAL-ED           NEPAL                          27               0      93
3-6 months     MAL-ED           PERU                           0                1     220
3-6 months     MAL-ED           PERU                           1                1     220
3-6 months     MAL-ED           PERU                           2                0     220
3-6 months     MAL-ED           PERU                           3                8     220
3-6 months     MAL-ED           PERU                           4                4     220
3-6 months     MAL-ED           PERU                           5                7     220
3-6 months     MAL-ED           PERU                           6               23     220
3-6 months     MAL-ED           PERU                           7               16     220
3-6 months     MAL-ED           PERU                           8               20     220
3-6 months     MAL-ED           PERU                           9               26     220
3-6 months     MAL-ED           PERU                           10               9     220
3-6 months     MAL-ED           PERU                           11              87     220
3-6 months     MAL-ED           PERU                           12               1     220
3-6 months     MAL-ED           PERU                           13               3     220
3-6 months     MAL-ED           PERU                           14               4     220
3-6 months     MAL-ED           PERU                           15               1     220
3-6 months     MAL-ED           PERU                           16               1     220
3-6 months     MAL-ED           PERU                           17               1     220
3-6 months     MAL-ED           PERU                           18               5     220
3-6 months     MAL-ED           PERU                           19               0     220
3-6 months     MAL-ED           PERU                           20               2     220
3-6 months     MAL-ED           PERU                           24               0     220
3-6 months     MAL-ED           PERU                           25               0     220
3-6 months     MAL-ED           PERU                           27               0     220
3-6 months     MAL-ED           SOUTH AFRICA                   0                0      89
3-6 months     MAL-ED           SOUTH AFRICA                   1                0      89
3-6 months     MAL-ED           SOUTH AFRICA                   2                1      89
3-6 months     MAL-ED           SOUTH AFRICA                   3                0      89
3-6 months     MAL-ED           SOUTH AFRICA                   4                4      89
3-6 months     MAL-ED           SOUTH AFRICA                   5                1      89
3-6 months     MAL-ED           SOUTH AFRICA                   6                6      89
3-6 months     MAL-ED           SOUTH AFRICA                   7                6      89
3-6 months     MAL-ED           SOUTH AFRICA                   8               10      89
3-6 months     MAL-ED           SOUTH AFRICA                   9                6      89
3-6 months     MAL-ED           SOUTH AFRICA                   10               8      89
3-6 months     MAL-ED           SOUTH AFRICA                   11              15      89
3-6 months     MAL-ED           SOUTH AFRICA                   12              27      89
3-6 months     MAL-ED           SOUTH AFRICA                   13               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   14               2      89
3-6 months     MAL-ED           SOUTH AFRICA                   15               2      89
3-6 months     MAL-ED           SOUTH AFRICA                   16               1      89
3-6 months     MAL-ED           SOUTH AFRICA                   17               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   18               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   19               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   20               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   24               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   25               0      89
3-6 months     MAL-ED           SOUTH AFRICA                   27               0      89
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               12     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               17     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                9     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              112     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               3     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     194
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     194
3-6 months     NIH-Crypto       BANGLADESH                     0              161     702
3-6 months     NIH-Crypto       BANGLADESH                     1               18     702
3-6 months     NIH-Crypto       BANGLADESH                     2               12     702
3-6 months     NIH-Crypto       BANGLADESH                     3               29     702
3-6 months     NIH-Crypto       BANGLADESH                     4               38     702
3-6 months     NIH-Crypto       BANGLADESH                     5               83     702
3-6 months     NIH-Crypto       BANGLADESH                     6               34     702
3-6 months     NIH-Crypto       BANGLADESH                     7               53     702
3-6 months     NIH-Crypto       BANGLADESH                     8               86     702
3-6 months     NIH-Crypto       BANGLADESH                     9               78     702
3-6 months     NIH-Crypto       BANGLADESH                     10              49     702
3-6 months     NIH-Crypto       BANGLADESH                     11               0     702
3-6 months     NIH-Crypto       BANGLADESH                     12              33     702
3-6 months     NIH-Crypto       BANGLADESH                     13               0     702
3-6 months     NIH-Crypto       BANGLADESH                     14               8     702
3-6 months     NIH-Crypto       BANGLADESH                     15              13     702
3-6 months     NIH-Crypto       BANGLADESH                     16               0     702
3-6 months     NIH-Crypto       BANGLADESH                     17               7     702
3-6 months     NIH-Crypto       BANGLADESH                     18               0     702
3-6 months     NIH-Crypto       BANGLADESH                     19               0     702
3-6 months     NIH-Crypto       BANGLADESH                     20               0     702
3-6 months     NIH-Crypto       BANGLADESH                     24               0     702
3-6 months     NIH-Crypto       BANGLADESH                     25               0     702
3-6 months     NIH-Crypto       BANGLADESH                     27               0     702
3-6 months     PROBIT           BELARUS                        0                0   12842
3-6 months     PROBIT           BELARUS                        1                0   12842
3-6 months     PROBIT           BELARUS                        2                0   12842
3-6 months     PROBIT           BELARUS                        3                0   12842
3-6 months     PROBIT           BELARUS                        4                0   12842
3-6 months     PROBIT           BELARUS                        5                0   12842
3-6 months     PROBIT           BELARUS                        6                0   12842
3-6 months     PROBIT           BELARUS                        7                0   12842
3-6 months     PROBIT           BELARUS                        8               21   12842
3-6 months     PROBIT           BELARUS                        9                0   12842
3-6 months     PROBIT           BELARUS                        10             288   12842
3-6 months     PROBIT           BELARUS                        11               0   12842
3-6 months     PROBIT           BELARUS                        12            4730   12842
3-6 months     PROBIT           BELARUS                        13            5694   12842
3-6 months     PROBIT           BELARUS                        14             350   12842
3-6 months     PROBIT           BELARUS                        15               0   12842
3-6 months     PROBIT           BELARUS                        16            1759   12842
3-6 months     PROBIT           BELARUS                        17               0   12842
3-6 months     PROBIT           BELARUS                        18               0   12842
3-6 months     PROBIT           BELARUS                        19               0   12842
3-6 months     PROBIT           BELARUS                        20               0   12842
3-6 months     PROBIT           BELARUS                        24               0   12842
3-6 months     PROBIT           BELARUS                        25               0   12842
3-6 months     PROBIT           BELARUS                        27               0   12842
3-6 months     PROVIDE          BANGLADESH                     0              179     601
3-6 months     PROVIDE          BANGLADESH                     1               13     601
3-6 months     PROVIDE          BANGLADESH                     2               17     601
3-6 months     PROVIDE          BANGLADESH                     3               21     601
3-6 months     PROVIDE          BANGLADESH                     4               41     601
3-6 months     PROVIDE          BANGLADESH                     5               63     601
3-6 months     PROVIDE          BANGLADESH                     6               25     601
3-6 months     PROVIDE          BANGLADESH                     7               33     601
3-6 months     PROVIDE          BANGLADESH                     8               59     601
3-6 months     PROVIDE          BANGLADESH                     9               58     601
3-6 months     PROVIDE          BANGLADESH                     10              31     601
3-6 months     PROVIDE          BANGLADESH                     11              24     601
3-6 months     PROVIDE          BANGLADESH                     12               4     601
3-6 months     PROVIDE          BANGLADESH                     13               0     601
3-6 months     PROVIDE          BANGLADESH                     14              17     601
3-6 months     PROVIDE          BANGLADESH                     15               7     601
3-6 months     PROVIDE          BANGLADESH                     16               8     601
3-6 months     PROVIDE          BANGLADESH                     17               0     601
3-6 months     PROVIDE          BANGLADESH                     18               0     601
3-6 months     PROVIDE          BANGLADESH                     19               1     601
3-6 months     PROVIDE          BANGLADESH                     20               0     601
3-6 months     PROVIDE          BANGLADESH                     24               0     601
3-6 months     PROVIDE          BANGLADESH                     25               0     601
3-6 months     PROVIDE          BANGLADESH                     27               0     601
3-6 months     SAS-CompFeed     INDIA                          0              137    1115
3-6 months     SAS-CompFeed     INDIA                          1                0    1115
3-6 months     SAS-CompFeed     INDIA                          2                5    1115
3-6 months     SAS-CompFeed     INDIA                          3               11    1115
3-6 months     SAS-CompFeed     INDIA                          4               20    1115
3-6 months     SAS-CompFeed     INDIA                          5               69    1115
3-6 months     SAS-CompFeed     INDIA                          6               20    1115
3-6 months     SAS-CompFeed     INDIA                          7               84    1115
3-6 months     SAS-CompFeed     INDIA                          8              121    1115
3-6 months     SAS-CompFeed     INDIA                          9               64    1115
3-6 months     SAS-CompFeed     INDIA                          10             297    1115
3-6 months     SAS-CompFeed     INDIA                          11              32    1115
3-6 months     SAS-CompFeed     INDIA                          12             158    1115
3-6 months     SAS-CompFeed     INDIA                          13               6    1115
3-6 months     SAS-CompFeed     INDIA                          14              13    1115
3-6 months     SAS-CompFeed     INDIA                          15              52    1115
3-6 months     SAS-CompFeed     INDIA                          16               9    1115
3-6 months     SAS-CompFeed     INDIA                          17              12    1115
3-6 months     SAS-CompFeed     INDIA                          18               3    1115
3-6 months     SAS-CompFeed     INDIA                          19               1    1115
3-6 months     SAS-CompFeed     INDIA                          20               1    1115
3-6 months     SAS-CompFeed     INDIA                          24               0    1115
3-6 months     SAS-CompFeed     INDIA                          25               0    1115
3-6 months     SAS-CompFeed     INDIA                          27               0    1115
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                3    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                2    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              880    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                6    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               36    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              16    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             407    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              13    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              84    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14              10    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15              14    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16              21    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17              15    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               4    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24              12    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27             136    1659
3-6 months     ZVITAMBO         ZIMBABWE                       0               33    5953
3-6 months     ZVITAMBO         ZIMBABWE                       1                1    5953
3-6 months     ZVITAMBO         ZIMBABWE                       2                3    5953
3-6 months     ZVITAMBO         ZIMBABWE                       3                6    5953
3-6 months     ZVITAMBO         ZIMBABWE                       4               11    5953
3-6 months     ZVITAMBO         ZIMBABWE                       5               18    5953
3-6 months     ZVITAMBO         ZIMBABWE                       6               20    5953
3-6 months     ZVITAMBO         ZIMBABWE                       7              366    5953
3-6 months     ZVITAMBO         ZIMBABWE                       8               50    5953
3-6 months     ZVITAMBO         ZIMBABWE                       9              418    5953
3-6 months     ZVITAMBO         ZIMBABWE                       10             150    5953
3-6 months     ZVITAMBO         ZIMBABWE                       11            4470    5953
3-6 months     ZVITAMBO         ZIMBABWE                       12              24    5953
3-6 months     ZVITAMBO         ZIMBABWE                       13             383    5953
3-6 months     ZVITAMBO         ZIMBABWE                       14               0    5953
3-6 months     ZVITAMBO         ZIMBABWE                       15               0    5953
3-6 months     ZVITAMBO         ZIMBABWE                       16               0    5953
3-6 months     ZVITAMBO         ZIMBABWE                       17               0    5953
3-6 months     ZVITAMBO         ZIMBABWE                       18               0    5953
3-6 months     ZVITAMBO         ZIMBABWE                       19               0    5953
3-6 months     ZVITAMBO         ZIMBABWE                       20               0    5953
3-6 months     ZVITAMBO         ZIMBABWE                       24               0    5953
3-6 months     ZVITAMBO         ZIMBABWE                       25               0    5953
3-6 months     ZVITAMBO         ZIMBABWE                       27               0    5953
6-9 months     COHORTS          GUATEMALA                      0              350     783
6-9 months     COHORTS          GUATEMALA                      1               40     783
6-9 months     COHORTS          GUATEMALA                      2              150     783
6-9 months     COHORTS          GUATEMALA                      3              101     783
6-9 months     COHORTS          GUATEMALA                      4               52     783
6-9 months     COHORTS          GUATEMALA                      5               14     783
6-9 months     COHORTS          GUATEMALA                      6               66     783
6-9 months     COHORTS          GUATEMALA                      7                3     783
6-9 months     COHORTS          GUATEMALA                      8                1     783
6-9 months     COHORTS          GUATEMALA                      9                0     783
6-9 months     COHORTS          GUATEMALA                      10               1     783
6-9 months     COHORTS          GUATEMALA                      11               0     783
6-9 months     COHORTS          GUATEMALA                      12               4     783
6-9 months     COHORTS          GUATEMALA                      13               0     783
6-9 months     COHORTS          GUATEMALA                      14               1     783
6-9 months     COHORTS          GUATEMALA                      15               0     783
6-9 months     COHORTS          GUATEMALA                      16               0     783
6-9 months     COHORTS          GUATEMALA                      17               0     783
6-9 months     COHORTS          GUATEMALA                      18               0     783
6-9 months     COHORTS          GUATEMALA                      19               0     783
6-9 months     COHORTS          GUATEMALA                      20               0     783
6-9 months     COHORTS          GUATEMALA                      24               0     783
6-9 months     COHORTS          GUATEMALA                      25               0     783
6-9 months     COHORTS          GUATEMALA                      27               0     783
6-9 months     COHORTS          INDIA                          0              106    1252
6-9 months     COHORTS          INDIA                          1                0    1252
6-9 months     COHORTS          INDIA                          2                0    1252
6-9 months     COHORTS          INDIA                          3              119    1252
6-9 months     COHORTS          INDIA                          4                0    1252
6-9 months     COHORTS          INDIA                          5                0    1252
6-9 months     COHORTS          INDIA                          6                0    1252
6-9 months     COHORTS          INDIA                          7                0    1252
6-9 months     COHORTS          INDIA                          8              187    1252
6-9 months     COHORTS          INDIA                          9                0    1252
6-9 months     COHORTS          INDIA                          10               0    1252
6-9 months     COHORTS          INDIA                          11               0    1252
6-9 months     COHORTS          INDIA                          12             351    1252
6-9 months     COHORTS          INDIA                          13               0    1252
6-9 months     COHORTS          INDIA                          14             134    1252
6-9 months     COHORTS          INDIA                          15             247    1252
6-9 months     COHORTS          INDIA                          16               0    1252
6-9 months     COHORTS          INDIA                          17             108    1252
6-9 months     COHORTS          INDIA                          18               0    1252
6-9 months     COHORTS          INDIA                          19               0    1252
6-9 months     COHORTS          INDIA                          20               0    1252
6-9 months     COHORTS          INDIA                          24               0    1252
6-9 months     COHORTS          INDIA                          25               0    1252
6-9 months     COHORTS          INDIA                          27               0    1252
6-9 months     GMS-Nepal        NEPAL                          0              210     476
6-9 months     GMS-Nepal        NEPAL                          1                0     476
6-9 months     GMS-Nepal        NEPAL                          2                0     476
6-9 months     GMS-Nepal        NEPAL                          3                0     476
6-9 months     GMS-Nepal        NEPAL                          4                0     476
6-9 months     GMS-Nepal        NEPAL                          5               77     476
6-9 months     GMS-Nepal        NEPAL                          6                0     476
6-9 months     GMS-Nepal        NEPAL                          7                0     476
6-9 months     GMS-Nepal        NEPAL                          8               75     476
6-9 months     GMS-Nepal        NEPAL                          9                0     476
6-9 months     GMS-Nepal        NEPAL                          10              85     476
6-9 months     GMS-Nepal        NEPAL                          11               0     476
6-9 months     GMS-Nepal        NEPAL                          12              29     476
6-9 months     GMS-Nepal        NEPAL                          13               0     476
6-9 months     GMS-Nepal        NEPAL                          14               0     476
6-9 months     GMS-Nepal        NEPAL                          15               0     476
6-9 months     GMS-Nepal        NEPAL                          16               0     476
6-9 months     GMS-Nepal        NEPAL                          17               0     476
6-9 months     GMS-Nepal        NEPAL                          18               0     476
6-9 months     GMS-Nepal        NEPAL                          19               0     476
6-9 months     GMS-Nepal        NEPAL                          20               0     476
6-9 months     GMS-Nepal        NEPAL                          24               0     476
6-9 months     GMS-Nepal        NEPAL                          25               0     476
6-9 months     GMS-Nepal        NEPAL                          27               0     476
6-9 months     LCNI-5           MALAWI                         0              190     554
6-9 months     LCNI-5           MALAWI                         1                7     554
6-9 months     LCNI-5           MALAWI                         2               25     554
6-9 months     LCNI-5           MALAWI                         3               30     554
6-9 months     LCNI-5           MALAWI                         4               36     554
6-9 months     LCNI-5           MALAWI                         5               42     554
6-9 months     LCNI-5           MALAWI                         6               48     554
6-9 months     LCNI-5           MALAWI                         7               44     554
6-9 months     LCNI-5           MALAWI                         8               63     554
6-9 months     LCNI-5           MALAWI                         9               11     554
6-9 months     LCNI-5           MALAWI                         10              12     554
6-9 months     LCNI-5           MALAWI                         11               4     554
6-9 months     LCNI-5           MALAWI                         12              38     554
6-9 months     LCNI-5           MALAWI                         13               1     554
6-9 months     LCNI-5           MALAWI                         14               2     554
6-9 months     LCNI-5           MALAWI                         15               0     554
6-9 months     LCNI-5           MALAWI                         16               1     554
6-9 months     LCNI-5           MALAWI                         17               0     554
6-9 months     LCNI-5           MALAWI                         18               0     554
6-9 months     LCNI-5           MALAWI                         19               0     554
6-9 months     LCNI-5           MALAWI                         20               0     554
6-9 months     LCNI-5           MALAWI                         24               0     554
6-9 months     LCNI-5           MALAWI                         25               0     554
6-9 months     LCNI-5           MALAWI                         27               0     554
6-9 months     MAL-ED           BANGLADESH                     0                0     123
6-9 months     MAL-ED           BANGLADESH                     1                6     123
6-9 months     MAL-ED           BANGLADESH                     2               10     123
6-9 months     MAL-ED           BANGLADESH                     3               11     123
6-9 months     MAL-ED           BANGLADESH                     4                5     123
6-9 months     MAL-ED           BANGLADESH                     5               29     123
6-9 months     MAL-ED           BANGLADESH                     6                6     123
6-9 months     MAL-ED           BANGLADESH                     7                9     123
6-9 months     MAL-ED           BANGLADESH                     8               16     123
6-9 months     MAL-ED           BANGLADESH                     9               13     123
6-9 months     MAL-ED           BANGLADESH                     10               8     123
6-9 months     MAL-ED           BANGLADESH                     11               0     123
6-9 months     MAL-ED           BANGLADESH                     12               8     123
6-9 months     MAL-ED           BANGLADESH                     13               0     123
6-9 months     MAL-ED           BANGLADESH                     14               0     123
6-9 months     MAL-ED           BANGLADESH                     15               0     123
6-9 months     MAL-ED           BANGLADESH                     16               2     123
6-9 months     MAL-ED           BANGLADESH                     17               0     123
6-9 months     MAL-ED           BANGLADESH                     18               0     123
6-9 months     MAL-ED           BANGLADESH                     19               0     123
6-9 months     MAL-ED           BANGLADESH                     20               0     123
6-9 months     MAL-ED           BANGLADESH                     24               0     123
6-9 months     MAL-ED           BANGLADESH                     25               0     123
6-9 months     MAL-ED           BANGLADESH                     27               0     123
6-9 months     MAL-ED           INDIA                          0                0     133
6-9 months     MAL-ED           INDIA                          1                0     133
6-9 months     MAL-ED           INDIA                          2                6     133
6-9 months     MAL-ED           INDIA                          3                8     133
6-9 months     MAL-ED           INDIA                          4                6     133
6-9 months     MAL-ED           INDIA                          5               31     133
6-9 months     MAL-ED           INDIA                          6               10     133
6-9 months     MAL-ED           INDIA                          7               10     133
6-9 months     MAL-ED           INDIA                          8               19     133
6-9 months     MAL-ED           INDIA                          9               26     133
6-9 months     MAL-ED           INDIA                          10               6     133
6-9 months     MAL-ED           INDIA                          11               2     133
6-9 months     MAL-ED           INDIA                          12               3     133
6-9 months     MAL-ED           INDIA                          13               1     133
6-9 months     MAL-ED           INDIA                          14               2     133
6-9 months     MAL-ED           INDIA                          15               2     133
6-9 months     MAL-ED           INDIA                          16               0     133
6-9 months     MAL-ED           INDIA                          17               0     133
6-9 months     MAL-ED           INDIA                          18               1     133
6-9 months     MAL-ED           INDIA                          19               0     133
6-9 months     MAL-ED           INDIA                          20               0     133
6-9 months     MAL-ED           INDIA                          24               0     133
6-9 months     MAL-ED           INDIA                          25               0     133
6-9 months     MAL-ED           INDIA                          27               0     133
6-9 months     MAL-ED           NEPAL                          0                0      91
6-9 months     MAL-ED           NEPAL                          1                0      91
6-9 months     MAL-ED           NEPAL                          2                4      91
6-9 months     MAL-ED           NEPAL                          3                3      91
6-9 months     MAL-ED           NEPAL                          4               10      91
6-9 months     MAL-ED           NEPAL                          5                6      91
6-9 months     MAL-ED           NEPAL                          6                4      91
6-9 months     MAL-ED           NEPAL                          7                8      91
6-9 months     MAL-ED           NEPAL                          8               11      91
6-9 months     MAL-ED           NEPAL                          9                7      91
6-9 months     MAL-ED           NEPAL                          10              25      91
6-9 months     MAL-ED           NEPAL                          11               1      91
6-9 months     MAL-ED           NEPAL                          12               7      91
6-9 months     MAL-ED           NEPAL                          13               0      91
6-9 months     MAL-ED           NEPAL                          14               0      91
6-9 months     MAL-ED           NEPAL                          15               1      91
6-9 months     MAL-ED           NEPAL                          16               1      91
6-9 months     MAL-ED           NEPAL                          17               2      91
6-9 months     MAL-ED           NEPAL                          18               1      91
6-9 months     MAL-ED           NEPAL                          19               0      91
6-9 months     MAL-ED           NEPAL                          20               0      91
6-9 months     MAL-ED           NEPAL                          24               0      91
6-9 months     MAL-ED           NEPAL                          25               0      91
6-9 months     MAL-ED           NEPAL                          27               0      91
6-9 months     MAL-ED           PERU                           0                1     199
6-9 months     MAL-ED           PERU                           1                1     199
6-9 months     MAL-ED           PERU                           2                0     199
6-9 months     MAL-ED           PERU                           3                7     199
6-9 months     MAL-ED           PERU                           4                4     199
6-9 months     MAL-ED           PERU                           5                7     199
6-9 months     MAL-ED           PERU                           6               20     199
6-9 months     MAL-ED           PERU                           7               14     199
6-9 months     MAL-ED           PERU                           8               18     199
6-9 months     MAL-ED           PERU                           9               24     199
6-9 months     MAL-ED           PERU                           10               9     199
6-9 months     MAL-ED           PERU                           11              80     199
6-9 months     MAL-ED           PERU                           12               1     199
6-9 months     MAL-ED           PERU                           13               3     199
6-9 months     MAL-ED           PERU                           14               4     199
6-9 months     MAL-ED           PERU                           15               0     199
6-9 months     MAL-ED           PERU                           16               1     199
6-9 months     MAL-ED           PERU                           17               1     199
6-9 months     MAL-ED           PERU                           18               3     199
6-9 months     MAL-ED           PERU                           19               0     199
6-9 months     MAL-ED           PERU                           20               1     199
6-9 months     MAL-ED           PERU                           24               0     199
6-9 months     MAL-ED           PERU                           25               0     199
6-9 months     MAL-ED           PERU                           27               0     199
6-9 months     MAL-ED           SOUTH AFRICA                   0                0      85
6-9 months     MAL-ED           SOUTH AFRICA                   1                0      85
6-9 months     MAL-ED           SOUTH AFRICA                   2                1      85
6-9 months     MAL-ED           SOUTH AFRICA                   3                0      85
6-9 months     MAL-ED           SOUTH AFRICA                   4                4      85
6-9 months     MAL-ED           SOUTH AFRICA                   5                1      85
6-9 months     MAL-ED           SOUTH AFRICA                   6                6      85
6-9 months     MAL-ED           SOUTH AFRICA                   7                6      85
6-9 months     MAL-ED           SOUTH AFRICA                   8                9      85
6-9 months     MAL-ED           SOUTH AFRICA                   9                6      85
6-9 months     MAL-ED           SOUTH AFRICA                   10               8      85
6-9 months     MAL-ED           SOUTH AFRICA                   11              13      85
6-9 months     MAL-ED           SOUTH AFRICA                   12              26      85
6-9 months     MAL-ED           SOUTH AFRICA                   13               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   14               2      85
6-9 months     MAL-ED           SOUTH AFRICA                   15               2      85
6-9 months     MAL-ED           SOUTH AFRICA                   16               1      85
6-9 months     MAL-ED           SOUTH AFRICA                   17               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   18               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   19               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   20               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   24               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   25               0      85
6-9 months     MAL-ED           SOUTH AFRICA                   27               0      85
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               11     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               16     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                8     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              107     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               3     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     185
6-9 months     NIH-Crypto       BANGLADESH                     0              159     693
6-9 months     NIH-Crypto       BANGLADESH                     1               16     693
6-9 months     NIH-Crypto       BANGLADESH                     2               12     693
6-9 months     NIH-Crypto       BANGLADESH                     3               29     693
6-9 months     NIH-Crypto       BANGLADESH                     4               38     693
6-9 months     NIH-Crypto       BANGLADESH                     5               84     693
6-9 months     NIH-Crypto       BANGLADESH                     6               33     693
6-9 months     NIH-Crypto       BANGLADESH                     7               51     693
6-9 months     NIH-Crypto       BANGLADESH                     8               82     693
6-9 months     NIH-Crypto       BANGLADESH                     9               79     693
6-9 months     NIH-Crypto       BANGLADESH                     10              48     693
6-9 months     NIH-Crypto       BANGLADESH                     11               0     693
6-9 months     NIH-Crypto       BANGLADESH                     12              33     693
6-9 months     NIH-Crypto       BANGLADESH                     13               0     693
6-9 months     NIH-Crypto       BANGLADESH                     14               8     693
6-9 months     NIH-Crypto       BANGLADESH                     15              14     693
6-9 months     NIH-Crypto       BANGLADESH                     16               0     693
6-9 months     NIH-Crypto       BANGLADESH                     17               7     693
6-9 months     NIH-Crypto       BANGLADESH                     18               0     693
6-9 months     NIH-Crypto       BANGLADESH                     19               0     693
6-9 months     NIH-Crypto       BANGLADESH                     20               0     693
6-9 months     NIH-Crypto       BANGLADESH                     24               0     693
6-9 months     NIH-Crypto       BANGLADESH                     25               0     693
6-9 months     NIH-Crypto       BANGLADESH                     27               0     693
6-9 months     PROBIT           BELARUS                        0                0   12010
6-9 months     PROBIT           BELARUS                        1                0   12010
6-9 months     PROBIT           BELARUS                        2                0   12010
6-9 months     PROBIT           BELARUS                        3                0   12010
6-9 months     PROBIT           BELARUS                        4                0   12010
6-9 months     PROBIT           BELARUS                        5                0   12010
6-9 months     PROBIT           BELARUS                        6                0   12010
6-9 months     PROBIT           BELARUS                        7                0   12010
6-9 months     PROBIT           BELARUS                        8               20   12010
6-9 months     PROBIT           BELARUS                        9                0   12010
6-9 months     PROBIT           BELARUS                        10             261   12010
6-9 months     PROBIT           BELARUS                        11               0   12010
6-9 months     PROBIT           BELARUS                        12            4456   12010
6-9 months     PROBIT           BELARUS                        13            5325   12010
6-9 months     PROBIT           BELARUS                        14             327   12010
6-9 months     PROBIT           BELARUS                        15               0   12010
6-9 months     PROBIT           BELARUS                        16            1621   12010
6-9 months     PROBIT           BELARUS                        17               0   12010
6-9 months     PROBIT           BELARUS                        18               0   12010
6-9 months     PROBIT           BELARUS                        19               0   12010
6-9 months     PROBIT           BELARUS                        20               0   12010
6-9 months     PROBIT           BELARUS                        24               0   12010
6-9 months     PROBIT           BELARUS                        25               0   12010
6-9 months     PROBIT           BELARUS                        27               0   12010
6-9 months     PROVIDE          BANGLADESH                     0              170     576
6-9 months     PROVIDE          BANGLADESH                     1               12     576
6-9 months     PROVIDE          BANGLADESH                     2               17     576
6-9 months     PROVIDE          BANGLADESH                     3               21     576
6-9 months     PROVIDE          BANGLADESH                     4               40     576
6-9 months     PROVIDE          BANGLADESH                     5               61     576
6-9 months     PROVIDE          BANGLADESH                     6               25     576
6-9 months     PROVIDE          BANGLADESH                     7               32     576
6-9 months     PROVIDE          BANGLADESH                     8               55     576
6-9 months     PROVIDE          BANGLADESH                     9               53     576
6-9 months     PROVIDE          BANGLADESH                     10              30     576
6-9 months     PROVIDE          BANGLADESH                     11              24     576
6-9 months     PROVIDE          BANGLADESH                     12               3     576
6-9 months     PROVIDE          BANGLADESH                     13               0     576
6-9 months     PROVIDE          BANGLADESH                     14              17     576
6-9 months     PROVIDE          BANGLADESH                     15               7     576
6-9 months     PROVIDE          BANGLADESH                     16               8     576
6-9 months     PROVIDE          BANGLADESH                     17               0     576
6-9 months     PROVIDE          BANGLADESH                     18               0     576
6-9 months     PROVIDE          BANGLADESH                     19               1     576
6-9 months     PROVIDE          BANGLADESH                     20               0     576
6-9 months     PROVIDE          BANGLADESH                     24               0     576
6-9 months     PROVIDE          BANGLADESH                     25               0     576
6-9 months     PROVIDE          BANGLADESH                     27               0     576
6-9 months     SAS-CompFeed     INDIA                          0              137    1135
6-9 months     SAS-CompFeed     INDIA                          1                0    1135
6-9 months     SAS-CompFeed     INDIA                          2                4    1135
6-9 months     SAS-CompFeed     INDIA                          3               11    1135
6-9 months     SAS-CompFeed     INDIA                          4               18    1135
6-9 months     SAS-CompFeed     INDIA                          5               72    1135
6-9 months     SAS-CompFeed     INDIA                          6               24    1135
6-9 months     SAS-CompFeed     INDIA                          7               93    1135
6-9 months     SAS-CompFeed     INDIA                          8              124    1135
6-9 months     SAS-CompFeed     INDIA                          9               70    1135
6-9 months     SAS-CompFeed     INDIA                          10             291    1135
6-9 months     SAS-CompFeed     INDIA                          11              29    1135
6-9 months     SAS-CompFeed     INDIA                          12             170    1135
6-9 months     SAS-CompFeed     INDIA                          13               7    1135
6-9 months     SAS-CompFeed     INDIA                          14              14    1135
6-9 months     SAS-CompFeed     INDIA                          15              47    1135
6-9 months     SAS-CompFeed     INDIA                          16              10    1135
6-9 months     SAS-CompFeed     INDIA                          17              11    1135
6-9 months     SAS-CompFeed     INDIA                          18               2    1135
6-9 months     SAS-CompFeed     INDIA                          19               0    1135
6-9 months     SAS-CompFeed     INDIA                          20               1    1135
6-9 months     SAS-CompFeed     INDIA                          24               0    1135
6-9 months     SAS-CompFeed     INDIA                          25               0    1135
6-9 months     SAS-CompFeed     INDIA                          27               0    1135
6-9 months     SAS-FoodSuppl    INDIA                          0              112     309
6-9 months     SAS-FoodSuppl    INDIA                          1                1     309
6-9 months     SAS-FoodSuppl    INDIA                          2                9     309
6-9 months     SAS-FoodSuppl    INDIA                          3                5     309
6-9 months     SAS-FoodSuppl    INDIA                          4                8     309
6-9 months     SAS-FoodSuppl    INDIA                          5               42     309
6-9 months     SAS-FoodSuppl    INDIA                          6                9     309
6-9 months     SAS-FoodSuppl    INDIA                          7               13     309
6-9 months     SAS-FoodSuppl    INDIA                          8               33     309
6-9 months     SAS-FoodSuppl    INDIA                          9               21     309
6-9 months     SAS-FoodSuppl    INDIA                          10              39     309
6-9 months     SAS-FoodSuppl    INDIA                          11               2     309
6-9 months     SAS-FoodSuppl    INDIA                          12               9     309
6-9 months     SAS-FoodSuppl    INDIA                          13               0     309
6-9 months     SAS-FoodSuppl    INDIA                          14               3     309
6-9 months     SAS-FoodSuppl    INDIA                          15               3     309
6-9 months     SAS-FoodSuppl    INDIA                          16               0     309
6-9 months     SAS-FoodSuppl    INDIA                          17               0     309
6-9 months     SAS-FoodSuppl    INDIA                          18               0     309
6-9 months     SAS-FoodSuppl    INDIA                          19               0     309
6-9 months     SAS-FoodSuppl    INDIA                          20               0     309
6-9 months     SAS-FoodSuppl    INDIA                          24               0     309
6-9 months     SAS-FoodSuppl    INDIA                          25               0     309
6-9 months     SAS-FoodSuppl    INDIA                          27               0     309
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                3    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              790    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                6    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               34    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              15    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             361    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              11    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              79    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               8    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15              12    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16              19    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17              16    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               2    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24              12    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27             119    1488
6-9 months     ZVITAMBO         ZIMBABWE                       0               30    5409
6-9 months     ZVITAMBO         ZIMBABWE                       1                1    5409
6-9 months     ZVITAMBO         ZIMBABWE                       2                2    5409
6-9 months     ZVITAMBO         ZIMBABWE                       3                8    5409
6-9 months     ZVITAMBO         ZIMBABWE                       4               11    5409
6-9 months     ZVITAMBO         ZIMBABWE                       5               14    5409
6-9 months     ZVITAMBO         ZIMBABWE                       6               18    5409
6-9 months     ZVITAMBO         ZIMBABWE                       7              346    5409
6-9 months     ZVITAMBO         ZIMBABWE                       8               48    5409
6-9 months     ZVITAMBO         ZIMBABWE                       9              382    5409
6-9 months     ZVITAMBO         ZIMBABWE                       10             129    5409
6-9 months     ZVITAMBO         ZIMBABWE                       11            4055    5409
6-9 months     ZVITAMBO         ZIMBABWE                       12              25    5409
6-9 months     ZVITAMBO         ZIMBABWE                       13             340    5409
6-9 months     ZVITAMBO         ZIMBABWE                       14               0    5409
6-9 months     ZVITAMBO         ZIMBABWE                       15               0    5409
6-9 months     ZVITAMBO         ZIMBABWE                       16               0    5409
6-9 months     ZVITAMBO         ZIMBABWE                       17               0    5409
6-9 months     ZVITAMBO         ZIMBABWE                       18               0    5409
6-9 months     ZVITAMBO         ZIMBABWE                       19               0    5409
6-9 months     ZVITAMBO         ZIMBABWE                       20               0    5409
6-9 months     ZVITAMBO         ZIMBABWE                       24               0    5409
6-9 months     ZVITAMBO         ZIMBABWE                       25               0    5409
6-9 months     ZVITAMBO         ZIMBABWE                       27               0    5409
9-12 months    COHORTS          GUATEMALA                      0              389     883
9-12 months    COHORTS          GUATEMALA                      1               47     883
9-12 months    COHORTS          GUATEMALA                      2              163     883
9-12 months    COHORTS          GUATEMALA                      3              121     883
9-12 months    COHORTS          GUATEMALA                      4               59     883
9-12 months    COHORTS          GUATEMALA                      5               20     883
9-12 months    COHORTS          GUATEMALA                      6               73     883
9-12 months    COHORTS          GUATEMALA                      7                4     883
9-12 months    COHORTS          GUATEMALA                      8                1     883
9-12 months    COHORTS          GUATEMALA                      9                1     883
9-12 months    COHORTS          GUATEMALA                      10               1     883
9-12 months    COHORTS          GUATEMALA                      11               0     883
9-12 months    COHORTS          GUATEMALA                      12               4     883
9-12 months    COHORTS          GUATEMALA                      13               0     883
9-12 months    COHORTS          GUATEMALA                      14               0     883
9-12 months    COHORTS          GUATEMALA                      15               0     883
9-12 months    COHORTS          GUATEMALA                      16               0     883
9-12 months    COHORTS          GUATEMALA                      17               0     883
9-12 months    COHORTS          GUATEMALA                      18               0     883
9-12 months    COHORTS          GUATEMALA                      19               0     883
9-12 months    COHORTS          GUATEMALA                      20               0     883
9-12 months    COHORTS          GUATEMALA                      24               0     883
9-12 months    COHORTS          GUATEMALA                      25               0     883
9-12 months    COHORTS          GUATEMALA                      27               0     883
9-12 months    COHORTS          INDIA                          0               87    1128
9-12 months    COHORTS          INDIA                          1                0    1128
9-12 months    COHORTS          INDIA                          2                0    1128
9-12 months    COHORTS          INDIA                          3              106    1128
9-12 months    COHORTS          INDIA                          4                0    1128
9-12 months    COHORTS          INDIA                          5                0    1128
9-12 months    COHORTS          INDIA                          6                0    1128
9-12 months    COHORTS          INDIA                          7                0    1128
9-12 months    COHORTS          INDIA                          8              171    1128
9-12 months    COHORTS          INDIA                          9                0    1128
9-12 months    COHORTS          INDIA                          10               0    1128
9-12 months    COHORTS          INDIA                          11               0    1128
9-12 months    COHORTS          INDIA                          12             318    1128
9-12 months    COHORTS          INDIA                          13               0    1128
9-12 months    COHORTS          INDIA                          14             119    1128
9-12 months    COHORTS          INDIA                          15             229    1128
9-12 months    COHORTS          INDIA                          16               0    1128
9-12 months    COHORTS          INDIA                          17              98    1128
9-12 months    COHORTS          INDIA                          18               0    1128
9-12 months    COHORTS          INDIA                          19               0    1128
9-12 months    COHORTS          INDIA                          20               0    1128
9-12 months    COHORTS          INDIA                          24               0    1128
9-12 months    COHORTS          INDIA                          25               0    1128
9-12 months    COHORTS          INDIA                          27               0    1128
9-12 months    GMS-Nepal        NEPAL                          0              201     453
9-12 months    GMS-Nepal        NEPAL                          1                0     453
9-12 months    GMS-Nepal        NEPAL                          2                0     453
9-12 months    GMS-Nepal        NEPAL                          3                0     453
9-12 months    GMS-Nepal        NEPAL                          4                0     453
9-12 months    GMS-Nepal        NEPAL                          5               69     453
9-12 months    GMS-Nepal        NEPAL                          6                0     453
9-12 months    GMS-Nepal        NEPAL                          7                0     453
9-12 months    GMS-Nepal        NEPAL                          8               74     453
9-12 months    GMS-Nepal        NEPAL                          9                0     453
9-12 months    GMS-Nepal        NEPAL                          10              81     453
9-12 months    GMS-Nepal        NEPAL                          11               0     453
9-12 months    GMS-Nepal        NEPAL                          12              28     453
9-12 months    GMS-Nepal        NEPAL                          13               0     453
9-12 months    GMS-Nepal        NEPAL                          14               0     453
9-12 months    GMS-Nepal        NEPAL                          15               0     453
9-12 months    GMS-Nepal        NEPAL                          16               0     453
9-12 months    GMS-Nepal        NEPAL                          17               0     453
9-12 months    GMS-Nepal        NEPAL                          18               0     453
9-12 months    GMS-Nepal        NEPAL                          19               0     453
9-12 months    GMS-Nepal        NEPAL                          20               0     453
9-12 months    GMS-Nepal        NEPAL                          24               0     453
9-12 months    GMS-Nepal        NEPAL                          25               0     453
9-12 months    GMS-Nepal        NEPAL                          27               0     453
9-12 months    LCNI-5           MALAWI                         0              129     379
9-12 months    LCNI-5           MALAWI                         1                5     379
9-12 months    LCNI-5           MALAWI                         2               21     379
9-12 months    LCNI-5           MALAWI                         3               23     379
9-12 months    LCNI-5           MALAWI                         4               26     379
9-12 months    LCNI-5           MALAWI                         5               29     379
9-12 months    LCNI-5           MALAWI                         6               36     379
9-12 months    LCNI-5           MALAWI                         7               29     379
9-12 months    LCNI-5           MALAWI                         8               46     379
9-12 months    LCNI-5           MALAWI                         9                6     379
9-12 months    LCNI-5           MALAWI                         10               9     379
9-12 months    LCNI-5           MALAWI                         11               1     379
9-12 months    LCNI-5           MALAWI                         12              18     379
9-12 months    LCNI-5           MALAWI                         13               0     379
9-12 months    LCNI-5           MALAWI                         14               1     379
9-12 months    LCNI-5           MALAWI                         15               0     379
9-12 months    LCNI-5           MALAWI                         16               0     379
9-12 months    LCNI-5           MALAWI                         17               0     379
9-12 months    LCNI-5           MALAWI                         18               0     379
9-12 months    LCNI-5           MALAWI                         19               0     379
9-12 months    LCNI-5           MALAWI                         20               0     379
9-12 months    LCNI-5           MALAWI                         24               0     379
9-12 months    LCNI-5           MALAWI                         25               0     379
9-12 months    LCNI-5           MALAWI                         27               0     379
9-12 months    MAL-ED           BANGLADESH                     0                0     124
9-12 months    MAL-ED           BANGLADESH                     1                7     124
9-12 months    MAL-ED           BANGLADESH                     2                9     124
9-12 months    MAL-ED           BANGLADESH                     3               12     124
9-12 months    MAL-ED           BANGLADESH                     4                6     124
9-12 months    MAL-ED           BANGLADESH                     5               28     124
9-12 months    MAL-ED           BANGLADESH                     6                7     124
9-12 months    MAL-ED           BANGLADESH                     7                9     124
9-12 months    MAL-ED           BANGLADESH                     8               16     124
9-12 months    MAL-ED           BANGLADESH                     9               13     124
9-12 months    MAL-ED           BANGLADESH                     10               7     124
9-12 months    MAL-ED           BANGLADESH                     11               0     124
9-12 months    MAL-ED           BANGLADESH                     12               8     124
9-12 months    MAL-ED           BANGLADESH                     13               0     124
9-12 months    MAL-ED           BANGLADESH                     14               0     124
9-12 months    MAL-ED           BANGLADESH                     15               0     124
9-12 months    MAL-ED           BANGLADESH                     16               2     124
9-12 months    MAL-ED           BANGLADESH                     17               0     124
9-12 months    MAL-ED           BANGLADESH                     18               0     124
9-12 months    MAL-ED           BANGLADESH                     19               0     124
9-12 months    MAL-ED           BANGLADESH                     20               0     124
9-12 months    MAL-ED           BANGLADESH                     24               0     124
9-12 months    MAL-ED           BANGLADESH                     25               0     124
9-12 months    MAL-ED           BANGLADESH                     27               0     124
9-12 months    MAL-ED           INDIA                          0                0     132
9-12 months    MAL-ED           INDIA                          1                0     132
9-12 months    MAL-ED           INDIA                          2                6     132
9-12 months    MAL-ED           INDIA                          3                9     132
9-12 months    MAL-ED           INDIA                          4                6     132
9-12 months    MAL-ED           INDIA                          5               31     132
9-12 months    MAL-ED           INDIA                          6               10     132
9-12 months    MAL-ED           INDIA                          7                9     132
9-12 months    MAL-ED           INDIA                          8               19     132
9-12 months    MAL-ED           INDIA                          9               25     132
9-12 months    MAL-ED           INDIA                          10               6     132
9-12 months    MAL-ED           INDIA                          11               2     132
9-12 months    MAL-ED           INDIA                          12               3     132
9-12 months    MAL-ED           INDIA                          13               1     132
9-12 months    MAL-ED           INDIA                          14               2     132
9-12 months    MAL-ED           INDIA                          15               2     132
9-12 months    MAL-ED           INDIA                          16               0     132
9-12 months    MAL-ED           INDIA                          17               0     132
9-12 months    MAL-ED           INDIA                          18               1     132
9-12 months    MAL-ED           INDIA                          19               0     132
9-12 months    MAL-ED           INDIA                          20               0     132
9-12 months    MAL-ED           INDIA                          24               0     132
9-12 months    MAL-ED           INDIA                          25               0     132
9-12 months    MAL-ED           INDIA                          27               0     132
9-12 months    MAL-ED           NEPAL                          0                0      90
9-12 months    MAL-ED           NEPAL                          1                0      90
9-12 months    MAL-ED           NEPAL                          2                3      90
9-12 months    MAL-ED           NEPAL                          3                3      90
9-12 months    MAL-ED           NEPAL                          4               10      90
9-12 months    MAL-ED           NEPAL                          5                6      90
9-12 months    MAL-ED           NEPAL                          6                4      90
9-12 months    MAL-ED           NEPAL                          7                8      90
9-12 months    MAL-ED           NEPAL                          8               11      90
9-12 months    MAL-ED           NEPAL                          9                7      90
9-12 months    MAL-ED           NEPAL                          10              25      90
9-12 months    MAL-ED           NEPAL                          11               1      90
9-12 months    MAL-ED           NEPAL                          12               7      90
9-12 months    MAL-ED           NEPAL                          13               0      90
9-12 months    MAL-ED           NEPAL                          14               0      90
9-12 months    MAL-ED           NEPAL                          15               1      90
9-12 months    MAL-ED           NEPAL                          16               1      90
9-12 months    MAL-ED           NEPAL                          17               2      90
9-12 months    MAL-ED           NEPAL                          18               1      90
9-12 months    MAL-ED           NEPAL                          19               0      90
9-12 months    MAL-ED           NEPAL                          20               0      90
9-12 months    MAL-ED           NEPAL                          24               0      90
9-12 months    MAL-ED           NEPAL                          25               0      90
9-12 months    MAL-ED           NEPAL                          27               0      90
9-12 months    MAL-ED           PERU                           0                1     191
9-12 months    MAL-ED           PERU                           1                1     191
9-12 months    MAL-ED           PERU                           2                0     191
9-12 months    MAL-ED           PERU                           3                7     191
9-12 months    MAL-ED           PERU                           4                4     191
9-12 months    MAL-ED           PERU                           5                7     191
9-12 months    MAL-ED           PERU                           6               19     191
9-12 months    MAL-ED           PERU                           7               14     191
9-12 months    MAL-ED           PERU                           8               18     191
9-12 months    MAL-ED           PERU                           9               21     191
9-12 months    MAL-ED           PERU                           10              10     191
9-12 months    MAL-ED           PERU                           11              77     191
9-12 months    MAL-ED           PERU                           12               1     191
9-12 months    MAL-ED           PERU                           13               2     191
9-12 months    MAL-ED           PERU                           14               4     191
9-12 months    MAL-ED           PERU                           15               0     191
9-12 months    MAL-ED           PERU                           16               1     191
9-12 months    MAL-ED           PERU                           17               1     191
9-12 months    MAL-ED           PERU                           18               2     191
9-12 months    MAL-ED           PERU                           19               0     191
9-12 months    MAL-ED           PERU                           20               1     191
9-12 months    MAL-ED           PERU                           24               0     191
9-12 months    MAL-ED           PERU                           25               0     191
9-12 months    MAL-ED           PERU                           27               0     191
9-12 months    MAL-ED           SOUTH AFRICA                   0                0      87
9-12 months    MAL-ED           SOUTH AFRICA                   1                0      87
9-12 months    MAL-ED           SOUTH AFRICA                   2                1      87
9-12 months    MAL-ED           SOUTH AFRICA                   3                0      87
9-12 months    MAL-ED           SOUTH AFRICA                   4                4      87
9-12 months    MAL-ED           SOUTH AFRICA                   5                2      87
9-12 months    MAL-ED           SOUTH AFRICA                   6                6      87
9-12 months    MAL-ED           SOUTH AFRICA                   7                6      87
9-12 months    MAL-ED           SOUTH AFRICA                   8                8      87
9-12 months    MAL-ED           SOUTH AFRICA                   9                6      87
9-12 months    MAL-ED           SOUTH AFRICA                   10               8      87
9-12 months    MAL-ED           SOUTH AFRICA                   11              14      87
9-12 months    MAL-ED           SOUTH AFRICA                   12              27      87
9-12 months    MAL-ED           SOUTH AFRICA                   13               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   14               2      87
9-12 months    MAL-ED           SOUTH AFRICA                   15               2      87
9-12 months    MAL-ED           SOUTH AFRICA                   16               1      87
9-12 months    MAL-ED           SOUTH AFRICA                   17               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   18               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   19               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   20               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   24               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   25               0      87
9-12 months    MAL-ED           SOUTH AFRICA                   27               0      87
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               11     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               15     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                9     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                7     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              107     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     184
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     184
9-12 months    NIH-Crypto       BANGLADESH                     0              154     683
9-12 months    NIH-Crypto       BANGLADESH                     1               15     683
9-12 months    NIH-Crypto       BANGLADESH                     2               12     683
9-12 months    NIH-Crypto       BANGLADESH                     3               29     683
9-12 months    NIH-Crypto       BANGLADESH                     4               38     683
9-12 months    NIH-Crypto       BANGLADESH                     5               82     683
9-12 months    NIH-Crypto       BANGLADESH                     6               33     683
9-12 months    NIH-Crypto       BANGLADESH                     7               52     683
9-12 months    NIH-Crypto       BANGLADESH                     8               80     683
9-12 months    NIH-Crypto       BANGLADESH                     9               79     683
9-12 months    NIH-Crypto       BANGLADESH                     10              47     683
9-12 months    NIH-Crypto       BANGLADESH                     11               0     683
9-12 months    NIH-Crypto       BANGLADESH                     12              32     683
9-12 months    NIH-Crypto       BANGLADESH                     13               0     683
9-12 months    NIH-Crypto       BANGLADESH                     14               7     683
9-12 months    NIH-Crypto       BANGLADESH                     15              16     683
9-12 months    NIH-Crypto       BANGLADESH                     16               0     683
9-12 months    NIH-Crypto       BANGLADESH                     17               7     683
9-12 months    NIH-Crypto       BANGLADESH                     18               0     683
9-12 months    NIH-Crypto       BANGLADESH                     19               0     683
9-12 months    NIH-Crypto       BANGLADESH                     20               0     683
9-12 months    NIH-Crypto       BANGLADESH                     24               0     683
9-12 months    NIH-Crypto       BANGLADESH                     25               0     683
9-12 months    NIH-Crypto       BANGLADESH                     27               0     683
9-12 months    PROBIT           BELARUS                        0                0   12263
9-12 months    PROBIT           BELARUS                        1                0   12263
9-12 months    PROBIT           BELARUS                        2                0   12263
9-12 months    PROBIT           BELARUS                        3                0   12263
9-12 months    PROBIT           BELARUS                        4                0   12263
9-12 months    PROBIT           BELARUS                        5                0   12263
9-12 months    PROBIT           BELARUS                        6                0   12263
9-12 months    PROBIT           BELARUS                        7                0   12263
9-12 months    PROBIT           BELARUS                        8               19   12263
9-12 months    PROBIT           BELARUS                        9                0   12263
9-12 months    PROBIT           BELARUS                        10             272   12263
9-12 months    PROBIT           BELARUS                        11               0   12263
9-12 months    PROBIT           BELARUS                        12            4536   12263
9-12 months    PROBIT           BELARUS                        13            5435   12263
9-12 months    PROBIT           BELARUS                        14             330   12263
9-12 months    PROBIT           BELARUS                        15               0   12263
9-12 months    PROBIT           BELARUS                        16            1671   12263
9-12 months    PROBIT           BELARUS                        17               0   12263
9-12 months    PROBIT           BELARUS                        18               0   12263
9-12 months    PROBIT           BELARUS                        19               0   12263
9-12 months    PROBIT           BELARUS                        20               0   12263
9-12 months    PROBIT           BELARUS                        24               0   12263
9-12 months    PROBIT           BELARUS                        25               0   12263
9-12 months    PROBIT           BELARUS                        27               0   12263
9-12 months    PROVIDE          BANGLADESH                     0              166     569
9-12 months    PROVIDE          BANGLADESH                     1                9     569
9-12 months    PROVIDE          BANGLADESH                     2               16     569
9-12 months    PROVIDE          BANGLADESH                     3               22     569
9-12 months    PROVIDE          BANGLADESH                     4               40     569
9-12 months    PROVIDE          BANGLADESH                     5               61     569
9-12 months    PROVIDE          BANGLADESH                     6               27     569
9-12 months    PROVIDE          BANGLADESH                     7               32     569
9-12 months    PROVIDE          BANGLADESH                     8               54     569
9-12 months    PROVIDE          BANGLADESH                     9               53     569
9-12 months    PROVIDE          BANGLADESH                     10              29     569
9-12 months    PROVIDE          BANGLADESH                     11              25     569
9-12 months    PROVIDE          BANGLADESH                     12               3     569
9-12 months    PROVIDE          BANGLADESH                     13               0     569
9-12 months    PROVIDE          BANGLADESH                     14              18     569
9-12 months    PROVIDE          BANGLADESH                     15               6     569
9-12 months    PROVIDE          BANGLADESH                     16               7     569
9-12 months    PROVIDE          BANGLADESH                     17               0     569
9-12 months    PROVIDE          BANGLADESH                     18               0     569
9-12 months    PROVIDE          BANGLADESH                     19               1     569
9-12 months    PROVIDE          BANGLADESH                     20               0     569
9-12 months    PROVIDE          BANGLADESH                     24               0     569
9-12 months    PROVIDE          BANGLADESH                     25               0     569
9-12 months    PROVIDE          BANGLADESH                     27               0     569
9-12 months    SAS-CompFeed     INDIA                          0              136    1138
9-12 months    SAS-CompFeed     INDIA                          1                0    1138
9-12 months    SAS-CompFeed     INDIA                          2                4    1138
9-12 months    SAS-CompFeed     INDIA                          3               10    1138
9-12 months    SAS-CompFeed     INDIA                          4               19    1138
9-12 months    SAS-CompFeed     INDIA                          5               73    1138
9-12 months    SAS-CompFeed     INDIA                          6               22    1138
9-12 months    SAS-CompFeed     INDIA                          7               91    1138
9-12 months    SAS-CompFeed     INDIA                          8              127    1138
9-12 months    SAS-CompFeed     INDIA                          9               77    1138
9-12 months    SAS-CompFeed     INDIA                          10             291    1138
9-12 months    SAS-CompFeed     INDIA                          11              28    1138
9-12 months    SAS-CompFeed     INDIA                          12             167    1138
9-12 months    SAS-CompFeed     INDIA                          13               5    1138
9-12 months    SAS-CompFeed     INDIA                          14              15    1138
9-12 months    SAS-CompFeed     INDIA                          15              48    1138
9-12 months    SAS-CompFeed     INDIA                          16              10    1138
9-12 months    SAS-CompFeed     INDIA                          17              12    1138
9-12 months    SAS-CompFeed     INDIA                          18               2    1138
9-12 months    SAS-CompFeed     INDIA                          19               0    1138
9-12 months    SAS-CompFeed     INDIA                          20               1    1138
9-12 months    SAS-CompFeed     INDIA                          24               0    1138
9-12 months    SAS-CompFeed     INDIA                          25               0    1138
9-12 months    SAS-CompFeed     INDIA                          27               0    1138
9-12 months    SAS-FoodSuppl    INDIA                          0              106     298
9-12 months    SAS-FoodSuppl    INDIA                          1                1     298
9-12 months    SAS-FoodSuppl    INDIA                          2                9     298
9-12 months    SAS-FoodSuppl    INDIA                          3                5     298
9-12 months    SAS-FoodSuppl    INDIA                          4                7     298
9-12 months    SAS-FoodSuppl    INDIA                          5               43     298
9-12 months    SAS-FoodSuppl    INDIA                          6                9     298
9-12 months    SAS-FoodSuppl    INDIA                          7               10     298
9-12 months    SAS-FoodSuppl    INDIA                          8               33     298
9-12 months    SAS-FoodSuppl    INDIA                          9               22     298
9-12 months    SAS-FoodSuppl    INDIA                          10              37     298
9-12 months    SAS-FoodSuppl    INDIA                          11               2     298
9-12 months    SAS-FoodSuppl    INDIA                          12               8     298
9-12 months    SAS-FoodSuppl    INDIA                          13               0     298
9-12 months    SAS-FoodSuppl    INDIA                          14               3     298
9-12 months    SAS-FoodSuppl    INDIA                          15               3     298
9-12 months    SAS-FoodSuppl    INDIA                          16               0     298
9-12 months    SAS-FoodSuppl    INDIA                          17               0     298
9-12 months    SAS-FoodSuppl    INDIA                          18               0     298
9-12 months    SAS-FoodSuppl    INDIA                          19               0     298
9-12 months    SAS-FoodSuppl    INDIA                          20               0     298
9-12 months    SAS-FoodSuppl    INDIA                          24               0     298
9-12 months    SAS-FoodSuppl    INDIA                          25               0     298
9-12 months    SAS-FoodSuppl    INDIA                          27               0     298
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                2    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              558    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                4    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               23    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               9    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             273    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              10    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              55    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               6    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15              13    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16              11    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17              11    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               1    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               8    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1    1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27              91    1078
9-12 months    ZVITAMBO         ZIMBABWE                       0               25    4906
9-12 months    ZVITAMBO         ZIMBABWE                       1                2    4906
9-12 months    ZVITAMBO         ZIMBABWE                       2                0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       3                8    4906
9-12 months    ZVITAMBO         ZIMBABWE                       4                9    4906
9-12 months    ZVITAMBO         ZIMBABWE                       5               11    4906
9-12 months    ZVITAMBO         ZIMBABWE                       6               13    4906
9-12 months    ZVITAMBO         ZIMBABWE                       7              333    4906
9-12 months    ZVITAMBO         ZIMBABWE                       8               38    4906
9-12 months    ZVITAMBO         ZIMBABWE                       9              339    4906
9-12 months    ZVITAMBO         ZIMBABWE                       10             109    4906
9-12 months    ZVITAMBO         ZIMBABWE                       11            3710    4906
9-12 months    ZVITAMBO         ZIMBABWE                       12              21    4906
9-12 months    ZVITAMBO         ZIMBABWE                       13             288    4906
9-12 months    ZVITAMBO         ZIMBABWE                       14               0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       15               0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       16               0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       17               0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       18               0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       19               0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       20               0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       24               0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       25               0    4906
9-12 months    ZVITAMBO         ZIMBABWE                       27               0    4906
12-15 months   COHORTS          GUATEMALA                      0              382     838
12-15 months   COHORTS          GUATEMALA                      1               48     838
12-15 months   COHORTS          GUATEMALA                      2              143     838
12-15 months   COHORTS          GUATEMALA                      3              106     838
12-15 months   COHORTS          GUATEMALA                      4               58     838
12-15 months   COHORTS          GUATEMALA                      5               23     838
12-15 months   COHORTS          GUATEMALA                      6               69     838
12-15 months   COHORTS          GUATEMALA                      7                3     838
12-15 months   COHORTS          GUATEMALA                      8                1     838
12-15 months   COHORTS          GUATEMALA                      9                0     838
12-15 months   COHORTS          GUATEMALA                      10               1     838
12-15 months   COHORTS          GUATEMALA                      11               0     838
12-15 months   COHORTS          GUATEMALA                      12               4     838
12-15 months   COHORTS          GUATEMALA                      13               0     838
12-15 months   COHORTS          GUATEMALA                      14               0     838
12-15 months   COHORTS          GUATEMALA                      15               0     838
12-15 months   COHORTS          GUATEMALA                      16               0     838
12-15 months   COHORTS          GUATEMALA                      17               0     838
12-15 months   COHORTS          GUATEMALA                      18               0     838
12-15 months   COHORTS          GUATEMALA                      19               0     838
12-15 months   COHORTS          GUATEMALA                      20               0     838
12-15 months   COHORTS          GUATEMALA                      24               0     838
12-15 months   COHORTS          GUATEMALA                      25               0     838
12-15 months   COHORTS          GUATEMALA                      27               0     838
12-15 months   GMS-Nepal        NEPAL                          0              200     451
12-15 months   GMS-Nepal        NEPAL                          1                0     451
12-15 months   GMS-Nepal        NEPAL                          2                0     451
12-15 months   GMS-Nepal        NEPAL                          3                0     451
12-15 months   GMS-Nepal        NEPAL                          4                0     451
12-15 months   GMS-Nepal        NEPAL                          5               71     451
12-15 months   GMS-Nepal        NEPAL                          6                0     451
12-15 months   GMS-Nepal        NEPAL                          7                0     451
12-15 months   GMS-Nepal        NEPAL                          8               77     451
12-15 months   GMS-Nepal        NEPAL                          9                0     451
12-15 months   GMS-Nepal        NEPAL                          10              77     451
12-15 months   GMS-Nepal        NEPAL                          11               0     451
12-15 months   GMS-Nepal        NEPAL                          12              26     451
12-15 months   GMS-Nepal        NEPAL                          13               0     451
12-15 months   GMS-Nepal        NEPAL                          14               0     451
12-15 months   GMS-Nepal        NEPAL                          15               0     451
12-15 months   GMS-Nepal        NEPAL                          16               0     451
12-15 months   GMS-Nepal        NEPAL                          17               0     451
12-15 months   GMS-Nepal        NEPAL                          18               0     451
12-15 months   GMS-Nepal        NEPAL                          19               0     451
12-15 months   GMS-Nepal        NEPAL                          20               0     451
12-15 months   GMS-Nepal        NEPAL                          24               0     451
12-15 months   GMS-Nepal        NEPAL                          25               0     451
12-15 months   GMS-Nepal        NEPAL                          27               0     451
12-15 months   LCNI-5           MALAWI                         0               46     125
12-15 months   LCNI-5           MALAWI                         1                0     125
12-15 months   LCNI-5           MALAWI                         2                4     125
12-15 months   LCNI-5           MALAWI                         3                6     125
12-15 months   LCNI-5           MALAWI                         4                8     125
12-15 months   LCNI-5           MALAWI                         5               11     125
12-15 months   LCNI-5           MALAWI                         6               13     125
12-15 months   LCNI-5           MALAWI                         7               16     125
12-15 months   LCNI-5           MALAWI                         8               11     125
12-15 months   LCNI-5           MALAWI                         9                4     125
12-15 months   LCNI-5           MALAWI                         10               2     125
12-15 months   LCNI-5           MALAWI                         11               0     125
12-15 months   LCNI-5           MALAWI                         12               4     125
12-15 months   LCNI-5           MALAWI                         13               0     125
12-15 months   LCNI-5           MALAWI                         14               0     125
12-15 months   LCNI-5           MALAWI                         15               0     125
12-15 months   LCNI-5           MALAWI                         16               0     125
12-15 months   LCNI-5           MALAWI                         17               0     125
12-15 months   LCNI-5           MALAWI                         18               0     125
12-15 months   LCNI-5           MALAWI                         19               0     125
12-15 months   LCNI-5           MALAWI                         20               0     125
12-15 months   LCNI-5           MALAWI                         24               0     125
12-15 months   LCNI-5           MALAWI                         25               0     125
12-15 months   LCNI-5           MALAWI                         27               0     125
12-15 months   MAL-ED           BANGLADESH                     0                0     119
12-15 months   MAL-ED           BANGLADESH                     1                7     119
12-15 months   MAL-ED           BANGLADESH                     2               10     119
12-15 months   MAL-ED           BANGLADESH                     3               12     119
12-15 months   MAL-ED           BANGLADESH                     4                6     119
12-15 months   MAL-ED           BANGLADESH                     5               27     119
12-15 months   MAL-ED           BANGLADESH                     6                7     119
12-15 months   MAL-ED           BANGLADESH                     7                9     119
12-15 months   MAL-ED           BANGLADESH                     8               14     119
12-15 months   MAL-ED           BANGLADESH                     9               12     119
12-15 months   MAL-ED           BANGLADESH                     10               7     119
12-15 months   MAL-ED           BANGLADESH                     11               0     119
12-15 months   MAL-ED           BANGLADESH                     12               6     119
12-15 months   MAL-ED           BANGLADESH                     13               0     119
12-15 months   MAL-ED           BANGLADESH                     14               0     119
12-15 months   MAL-ED           BANGLADESH                     15               0     119
12-15 months   MAL-ED           BANGLADESH                     16               2     119
12-15 months   MAL-ED           BANGLADESH                     17               0     119
12-15 months   MAL-ED           BANGLADESH                     18               0     119
12-15 months   MAL-ED           BANGLADESH                     19               0     119
12-15 months   MAL-ED           BANGLADESH                     20               0     119
12-15 months   MAL-ED           BANGLADESH                     24               0     119
12-15 months   MAL-ED           BANGLADESH                     25               0     119
12-15 months   MAL-ED           BANGLADESH                     27               0     119
12-15 months   MAL-ED           INDIA                          0                0     131
12-15 months   MAL-ED           INDIA                          1                0     131
12-15 months   MAL-ED           INDIA                          2                6     131
12-15 months   MAL-ED           INDIA                          3                9     131
12-15 months   MAL-ED           INDIA                          4                6     131
12-15 months   MAL-ED           INDIA                          5               30     131
12-15 months   MAL-ED           INDIA                          6               10     131
12-15 months   MAL-ED           INDIA                          7                9     131
12-15 months   MAL-ED           INDIA                          8               19     131
12-15 months   MAL-ED           INDIA                          9               25     131
12-15 months   MAL-ED           INDIA                          10               6     131
12-15 months   MAL-ED           INDIA                          11               2     131
12-15 months   MAL-ED           INDIA                          12               3     131
12-15 months   MAL-ED           INDIA                          13               1     131
12-15 months   MAL-ED           INDIA                          14               2     131
12-15 months   MAL-ED           INDIA                          15               2     131
12-15 months   MAL-ED           INDIA                          16               0     131
12-15 months   MAL-ED           INDIA                          17               0     131
12-15 months   MAL-ED           INDIA                          18               1     131
12-15 months   MAL-ED           INDIA                          19               0     131
12-15 months   MAL-ED           INDIA                          20               0     131
12-15 months   MAL-ED           INDIA                          24               0     131
12-15 months   MAL-ED           INDIA                          25               0     131
12-15 months   MAL-ED           INDIA                          27               0     131
12-15 months   MAL-ED           NEPAL                          0                0      91
12-15 months   MAL-ED           NEPAL                          1                0      91
12-15 months   MAL-ED           NEPAL                          2                3      91
12-15 months   MAL-ED           NEPAL                          3                3      91
12-15 months   MAL-ED           NEPAL                          4               10      91
12-15 months   MAL-ED           NEPAL                          5                6      91
12-15 months   MAL-ED           NEPAL                          6                4      91
12-15 months   MAL-ED           NEPAL                          7                8      91
12-15 months   MAL-ED           NEPAL                          8               11      91
12-15 months   MAL-ED           NEPAL                          9                7      91
12-15 months   MAL-ED           NEPAL                          10              25      91
12-15 months   MAL-ED           NEPAL                          11               1      91
12-15 months   MAL-ED           NEPAL                          12               7      91
12-15 months   MAL-ED           NEPAL                          13               0      91
12-15 months   MAL-ED           NEPAL                          14               0      91
12-15 months   MAL-ED           NEPAL                          15               1      91
12-15 months   MAL-ED           NEPAL                          16               1      91
12-15 months   MAL-ED           NEPAL                          17               3      91
12-15 months   MAL-ED           NEPAL                          18               1      91
12-15 months   MAL-ED           NEPAL                          19               0      91
12-15 months   MAL-ED           NEPAL                          20               0      91
12-15 months   MAL-ED           NEPAL                          24               0      91
12-15 months   MAL-ED           NEPAL                          25               0      91
12-15 months   MAL-ED           NEPAL                          27               0      91
12-15 months   MAL-ED           PERU                           0                1     182
12-15 months   MAL-ED           PERU                           1                1     182
12-15 months   MAL-ED           PERU                           2                0     182
12-15 months   MAL-ED           PERU                           3                6     182
12-15 months   MAL-ED           PERU                           4                4     182
12-15 months   MAL-ED           PERU                           5                7     182
12-15 months   MAL-ED           PERU                           6               16     182
12-15 months   MAL-ED           PERU                           7               14     182
12-15 months   MAL-ED           PERU                           8               15     182
12-15 months   MAL-ED           PERU                           9               22     182
12-15 months   MAL-ED           PERU                           10               7     182
12-15 months   MAL-ED           PERU                           11              77     182
12-15 months   MAL-ED           PERU                           12               1     182
12-15 months   MAL-ED           PERU                           13               2     182
12-15 months   MAL-ED           PERU                           14               4     182
12-15 months   MAL-ED           PERU                           15               0     182
12-15 months   MAL-ED           PERU                           16               1     182
12-15 months   MAL-ED           PERU                           17               1     182
12-15 months   MAL-ED           PERU                           18               2     182
12-15 months   MAL-ED           PERU                           19               0     182
12-15 months   MAL-ED           PERU                           20               1     182
12-15 months   MAL-ED           PERU                           24               0     182
12-15 months   MAL-ED           PERU                           25               0     182
12-15 months   MAL-ED           PERU                           27               0     182
12-15 months   MAL-ED           SOUTH AFRICA                   0                0      86
12-15 months   MAL-ED           SOUTH AFRICA                   1                0      86
12-15 months   MAL-ED           SOUTH AFRICA                   2                1      86
12-15 months   MAL-ED           SOUTH AFRICA                   3                0      86
12-15 months   MAL-ED           SOUTH AFRICA                   4                4      86
12-15 months   MAL-ED           SOUTH AFRICA                   5                2      86
12-15 months   MAL-ED           SOUTH AFRICA                   6                6      86
12-15 months   MAL-ED           SOUTH AFRICA                   7                6      86
12-15 months   MAL-ED           SOUTH AFRICA                   8                8      86
12-15 months   MAL-ED           SOUTH AFRICA                   9                6      86
12-15 months   MAL-ED           SOUTH AFRICA                   10               6      86
12-15 months   MAL-ED           SOUTH AFRICA                   11              15      86
12-15 months   MAL-ED           SOUTH AFRICA                   12              27      86
12-15 months   MAL-ED           SOUTH AFRICA                   13               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   14               2      86
12-15 months   MAL-ED           SOUTH AFRICA                   15               2      86
12-15 months   MAL-ED           SOUTH AFRICA                   16               1      86
12-15 months   MAL-ED           SOUTH AFRICA                   17               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   18               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   19               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   20               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   24               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   25               0      86
12-15 months   MAL-ED           SOUTH AFRICA                   27               0      86
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               11     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               16     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                8     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                7     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              109     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               4     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     185
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     185
12-15 months   NIH-Crypto       BANGLADESH                     0              149     666
12-15 months   NIH-Crypto       BANGLADESH                     1               15     666
12-15 months   NIH-Crypto       BANGLADESH                     2               12     666
12-15 months   NIH-Crypto       BANGLADESH                     3               28     666
12-15 months   NIH-Crypto       BANGLADESH                     4               37     666
12-15 months   NIH-Crypto       BANGLADESH                     5               80     666
12-15 months   NIH-Crypto       BANGLADESH                     6               34     666
12-15 months   NIH-Crypto       BANGLADESH                     7               50     666
12-15 months   NIH-Crypto       BANGLADESH                     8               81     666
12-15 months   NIH-Crypto       BANGLADESH                     9               76     666
12-15 months   NIH-Crypto       BANGLADESH                     10              44     666
12-15 months   NIH-Crypto       BANGLADESH                     11               0     666
12-15 months   NIH-Crypto       BANGLADESH                     12              31     666
12-15 months   NIH-Crypto       BANGLADESH                     13               0     666
12-15 months   NIH-Crypto       BANGLADESH                     14               7     666
12-15 months   NIH-Crypto       BANGLADESH                     15              15     666
12-15 months   NIH-Crypto       BANGLADESH                     16               0     666
12-15 months   NIH-Crypto       BANGLADESH                     17               7     666
12-15 months   NIH-Crypto       BANGLADESH                     18               0     666
12-15 months   NIH-Crypto       BANGLADESH                     19               0     666
12-15 months   NIH-Crypto       BANGLADESH                     20               0     666
12-15 months   NIH-Crypto       BANGLADESH                     24               0     666
12-15 months   NIH-Crypto       BANGLADESH                     25               0     666
12-15 months   NIH-Crypto       BANGLADESH                     27               0     666
12-15 months   PROBIT           BELARUS                        0                0     967
12-15 months   PROBIT           BELARUS                        1                0     967
12-15 months   PROBIT           BELARUS                        2                0     967
12-15 months   PROBIT           BELARUS                        3                0     967
12-15 months   PROBIT           BELARUS                        4                0     967
12-15 months   PROBIT           BELARUS                        5                0     967
12-15 months   PROBIT           BELARUS                        6                0     967
12-15 months   PROBIT           BELARUS                        7                0     967
12-15 months   PROBIT           BELARUS                        8                1     967
12-15 months   PROBIT           BELARUS                        9                0     967
12-15 months   PROBIT           BELARUS                        10              24     967
12-15 months   PROBIT           BELARUS                        11               0     967
12-15 months   PROBIT           BELARUS                        12             346     967
12-15 months   PROBIT           BELARUS                        13             416     967
12-15 months   PROBIT           BELARUS                        14              24     967
12-15 months   PROBIT           BELARUS                        15               0     967
12-15 months   PROBIT           BELARUS                        16             156     967
12-15 months   PROBIT           BELARUS                        17               0     967
12-15 months   PROBIT           BELARUS                        18               0     967
12-15 months   PROBIT           BELARUS                        19               0     967
12-15 months   PROBIT           BELARUS                        20               0     967
12-15 months   PROBIT           BELARUS                        24               0     967
12-15 months   PROBIT           BELARUS                        25               0     967
12-15 months   PROBIT           BELARUS                        27               0     967
12-15 months   PROVIDE          BANGLADESH                     0              155     537
12-15 months   PROVIDE          BANGLADESH                     1                8     537
12-15 months   PROVIDE          BANGLADESH                     2               16     537
12-15 months   PROVIDE          BANGLADESH                     3               20     537
12-15 months   PROVIDE          BANGLADESH                     4               37     537
12-15 months   PROVIDE          BANGLADESH                     5               55     537
12-15 months   PROVIDE          BANGLADESH                     6               26     537
12-15 months   PROVIDE          BANGLADESH                     7               27     537
12-15 months   PROVIDE          BANGLADESH                     8               52     537
12-15 months   PROVIDE          BANGLADESH                     9               55     537
12-15 months   PROVIDE          BANGLADESH                     10              28     537
12-15 months   PROVIDE          BANGLADESH                     11              24     537
12-15 months   PROVIDE          BANGLADESH                     12               3     537
12-15 months   PROVIDE          BANGLADESH                     13               0     537
12-15 months   PROVIDE          BANGLADESH                     14              18     537
12-15 months   PROVIDE          BANGLADESH                     15               6     537
12-15 months   PROVIDE          BANGLADESH                     16               6     537
12-15 months   PROVIDE          BANGLADESH                     17               0     537
12-15 months   PROVIDE          BANGLADESH                     18               0     537
12-15 months   PROVIDE          BANGLADESH                     19               1     537
12-15 months   PROVIDE          BANGLADESH                     20               0     537
12-15 months   PROVIDE          BANGLADESH                     24               0     537
12-15 months   PROVIDE          BANGLADESH                     25               0     537
12-15 months   PROVIDE          BANGLADESH                     27               0     537
12-15 months   SAS-CompFeed     INDIA                          0              136    1162
12-15 months   SAS-CompFeed     INDIA                          1                0    1162
12-15 months   SAS-CompFeed     INDIA                          2                5    1162
12-15 months   SAS-CompFeed     INDIA                          3                9    1162
12-15 months   SAS-CompFeed     INDIA                          4               21    1162
12-15 months   SAS-CompFeed     INDIA                          5               72    1162
12-15 months   SAS-CompFeed     INDIA                          6               21    1162
12-15 months   SAS-CompFeed     INDIA                          7               89    1162
12-15 months   SAS-CompFeed     INDIA                          8              129    1162
12-15 months   SAS-CompFeed     INDIA                          9               75    1162
12-15 months   SAS-CompFeed     INDIA                          10             303    1162
12-15 months   SAS-CompFeed     INDIA                          11              30    1162
12-15 months   SAS-CompFeed     INDIA                          12             172    1162
12-15 months   SAS-CompFeed     INDIA                          13               5    1162
12-15 months   SAS-CompFeed     INDIA                          14              15    1162
12-15 months   SAS-CompFeed     INDIA                          15              55    1162
12-15 months   SAS-CompFeed     INDIA                          16               9    1162
12-15 months   SAS-CompFeed     INDIA                          17              13    1162
12-15 months   SAS-CompFeed     INDIA                          18               2    1162
12-15 months   SAS-CompFeed     INDIA                          19               1    1162
12-15 months   SAS-CompFeed     INDIA                          20               0    1162
12-15 months   SAS-CompFeed     INDIA                          24               0    1162
12-15 months   SAS-CompFeed     INDIA                          25               0    1162
12-15 months   SAS-CompFeed     INDIA                          27               0    1162
12-15 months   SAS-FoodSuppl    INDIA                          0              102     300
12-15 months   SAS-FoodSuppl    INDIA                          1                1     300
12-15 months   SAS-FoodSuppl    INDIA                          2                6     300
12-15 months   SAS-FoodSuppl    INDIA                          3                5     300
12-15 months   SAS-FoodSuppl    INDIA                          4                5     300
12-15 months   SAS-FoodSuppl    INDIA                          5               43     300
12-15 months   SAS-FoodSuppl    INDIA                          6               10     300
12-15 months   SAS-FoodSuppl    INDIA                          7               10     300
12-15 months   SAS-FoodSuppl    INDIA                          8               36     300
12-15 months   SAS-FoodSuppl    INDIA                          9               23     300
12-15 months   SAS-FoodSuppl    INDIA                          10              39     300
12-15 months   SAS-FoodSuppl    INDIA                          11               2     300
12-15 months   SAS-FoodSuppl    INDIA                          12               9     300
12-15 months   SAS-FoodSuppl    INDIA                          13               1     300
12-15 months   SAS-FoodSuppl    INDIA                          14               5     300
12-15 months   SAS-FoodSuppl    INDIA                          15               3     300
12-15 months   SAS-FoodSuppl    INDIA                          16               0     300
12-15 months   SAS-FoodSuppl    INDIA                          17               0     300
12-15 months   SAS-FoodSuppl    INDIA                          18               0     300
12-15 months   SAS-FoodSuppl    INDIA                          19               0     300
12-15 months   SAS-FoodSuppl    INDIA                          20               0     300
12-15 months   SAS-FoodSuppl    INDIA                          24               0     300
12-15 months   SAS-FoodSuppl    INDIA                          25               0     300
12-15 months   SAS-FoodSuppl    INDIA                          27               0     300
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                2     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              411     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                3     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               16     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               6     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             193     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               9     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              37     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               6     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               8     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               9     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               8     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               1     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               6     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               1     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27              68     786
12-15 months   ZVITAMBO         ZIMBABWE                       0               11    1783
12-15 months   ZVITAMBO         ZIMBABWE                       1                1    1783
12-15 months   ZVITAMBO         ZIMBABWE                       2                0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       3                4    1783
12-15 months   ZVITAMBO         ZIMBABWE                       4                6    1783
12-15 months   ZVITAMBO         ZIMBABWE                       5                5    1783
12-15 months   ZVITAMBO         ZIMBABWE                       6                4    1783
12-15 months   ZVITAMBO         ZIMBABWE                       7              140    1783
12-15 months   ZVITAMBO         ZIMBABWE                       8               12    1783
12-15 months   ZVITAMBO         ZIMBABWE                       9              140    1783
12-15 months   ZVITAMBO         ZIMBABWE                       10              59    1783
12-15 months   ZVITAMBO         ZIMBABWE                       11            1311    1783
12-15 months   ZVITAMBO         ZIMBABWE                       12               7    1783
12-15 months   ZVITAMBO         ZIMBABWE                       13              83    1783
12-15 months   ZVITAMBO         ZIMBABWE                       14               0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       15               0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       16               0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       17               0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       18               0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       19               0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       20               0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       24               0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       25               0    1783
12-15 months   ZVITAMBO         ZIMBABWE                       27               0    1783
15-18 months   COHORTS          GUATEMALA                      0              349     758
15-18 months   COHORTS          GUATEMALA                      1               41     758
15-18 months   COHORTS          GUATEMALA                      2              137     758
15-18 months   COHORTS          GUATEMALA                      3               95     758
15-18 months   COHORTS          GUATEMALA                      4               51     758
15-18 months   COHORTS          GUATEMALA                      5               18     758
15-18 months   COHORTS          GUATEMALA                      6               59     758
15-18 months   COHORTS          GUATEMALA                      7                2     758
15-18 months   COHORTS          GUATEMALA                      8                1     758
15-18 months   COHORTS          GUATEMALA                      9                0     758
15-18 months   COHORTS          GUATEMALA                      10               1     758
15-18 months   COHORTS          GUATEMALA                      11               0     758
15-18 months   COHORTS          GUATEMALA                      12               4     758
15-18 months   COHORTS          GUATEMALA                      13               0     758
15-18 months   COHORTS          GUATEMALA                      14               0     758
15-18 months   COHORTS          GUATEMALA                      15               0     758
15-18 months   COHORTS          GUATEMALA                      16               0     758
15-18 months   COHORTS          GUATEMALA                      17               0     758
15-18 months   COHORTS          GUATEMALA                      18               0     758
15-18 months   COHORTS          GUATEMALA                      19               0     758
15-18 months   COHORTS          GUATEMALA                      20               0     758
15-18 months   COHORTS          GUATEMALA                      24               0     758
15-18 months   COHORTS          GUATEMALA                      25               0     758
15-18 months   COHORTS          GUATEMALA                      27               0     758
15-18 months   GMS-Nepal        NEPAL                          0              210     476
15-18 months   GMS-Nepal        NEPAL                          1                0     476
15-18 months   GMS-Nepal        NEPAL                          2                0     476
15-18 months   GMS-Nepal        NEPAL                          3                0     476
15-18 months   GMS-Nepal        NEPAL                          4                0     476
15-18 months   GMS-Nepal        NEPAL                          5               72     476
15-18 months   GMS-Nepal        NEPAL                          6                0     476
15-18 months   GMS-Nepal        NEPAL                          7                0     476
15-18 months   GMS-Nepal        NEPAL                          8               82     476
15-18 months   GMS-Nepal        NEPAL                          9                0     476
15-18 months   GMS-Nepal        NEPAL                          10              83     476
15-18 months   GMS-Nepal        NEPAL                          11               0     476
15-18 months   GMS-Nepal        NEPAL                          12              29     476
15-18 months   GMS-Nepal        NEPAL                          13               0     476
15-18 months   GMS-Nepal        NEPAL                          14               0     476
15-18 months   GMS-Nepal        NEPAL                          15               0     476
15-18 months   GMS-Nepal        NEPAL                          16               0     476
15-18 months   GMS-Nepal        NEPAL                          17               0     476
15-18 months   GMS-Nepal        NEPAL                          18               0     476
15-18 months   GMS-Nepal        NEPAL                          19               0     476
15-18 months   GMS-Nepal        NEPAL                          20               0     476
15-18 months   GMS-Nepal        NEPAL                          24               0     476
15-18 months   GMS-Nepal        NEPAL                          25               0     476
15-18 months   GMS-Nepal        NEPAL                          27               0     476
15-18 months   LCNI-5           MALAWI                         0               43     118
15-18 months   LCNI-5           MALAWI                         1                0     118
15-18 months   LCNI-5           MALAWI                         2                4     118
15-18 months   LCNI-5           MALAWI                         3                6     118
15-18 months   LCNI-5           MALAWI                         4                6     118
15-18 months   LCNI-5           MALAWI                         5               12     118
15-18 months   LCNI-5           MALAWI                         6               12     118
15-18 months   LCNI-5           MALAWI                         7               13     118
15-18 months   LCNI-5           MALAWI                         8               11     118
15-18 months   LCNI-5           MALAWI                         9                3     118
15-18 months   LCNI-5           MALAWI                         10               1     118
15-18 months   LCNI-5           MALAWI                         11               0     118
15-18 months   LCNI-5           MALAWI                         12               7     118
15-18 months   LCNI-5           MALAWI                         13               0     118
15-18 months   LCNI-5           MALAWI                         14               0     118
15-18 months   LCNI-5           MALAWI                         15               0     118
15-18 months   LCNI-5           MALAWI                         16               0     118
15-18 months   LCNI-5           MALAWI                         17               0     118
15-18 months   LCNI-5           MALAWI                         18               0     118
15-18 months   LCNI-5           MALAWI                         19               0     118
15-18 months   LCNI-5           MALAWI                         20               0     118
15-18 months   LCNI-5           MALAWI                         24               0     118
15-18 months   LCNI-5           MALAWI                         25               0     118
15-18 months   LCNI-5           MALAWI                         27               0     118
15-18 months   MAL-ED           BANGLADESH                     0                0     117
15-18 months   MAL-ED           BANGLADESH                     1                7     117
15-18 months   MAL-ED           BANGLADESH                     2               11     117
15-18 months   MAL-ED           BANGLADESH                     3               11     117
15-18 months   MAL-ED           BANGLADESH                     4                6     117
15-18 months   MAL-ED           BANGLADESH                     5               26     117
15-18 months   MAL-ED           BANGLADESH                     6                7     117
15-18 months   MAL-ED           BANGLADESH                     7                9     117
15-18 months   MAL-ED           BANGLADESH                     8               14     117
15-18 months   MAL-ED           BANGLADESH                     9               10     117
15-18 months   MAL-ED           BANGLADESH                     10               8     117
15-18 months   MAL-ED           BANGLADESH                     11               0     117
15-18 months   MAL-ED           BANGLADESH                     12               6     117
15-18 months   MAL-ED           BANGLADESH                     13               0     117
15-18 months   MAL-ED           BANGLADESH                     14               0     117
15-18 months   MAL-ED           BANGLADESH                     15               0     117
15-18 months   MAL-ED           BANGLADESH                     16               2     117
15-18 months   MAL-ED           BANGLADESH                     17               0     117
15-18 months   MAL-ED           BANGLADESH                     18               0     117
15-18 months   MAL-ED           BANGLADESH                     19               0     117
15-18 months   MAL-ED           BANGLADESH                     20               0     117
15-18 months   MAL-ED           BANGLADESH                     24               0     117
15-18 months   MAL-ED           BANGLADESH                     25               0     117
15-18 months   MAL-ED           BANGLADESH                     27               0     117
15-18 months   MAL-ED           INDIA                          0                0     130
15-18 months   MAL-ED           INDIA                          1                0     130
15-18 months   MAL-ED           INDIA                          2                5     130
15-18 months   MAL-ED           INDIA                          3                9     130
15-18 months   MAL-ED           INDIA                          4                6     130
15-18 months   MAL-ED           INDIA                          5               30     130
15-18 months   MAL-ED           INDIA                          6               10     130
15-18 months   MAL-ED           INDIA                          7                9     130
15-18 months   MAL-ED           INDIA                          8               19     130
15-18 months   MAL-ED           INDIA                          9               25     130
15-18 months   MAL-ED           INDIA                          10               6     130
15-18 months   MAL-ED           INDIA                          11               2     130
15-18 months   MAL-ED           INDIA                          12               3     130
15-18 months   MAL-ED           INDIA                          13               1     130
15-18 months   MAL-ED           INDIA                          14               2     130
15-18 months   MAL-ED           INDIA                          15               2     130
15-18 months   MAL-ED           INDIA                          16               0     130
15-18 months   MAL-ED           INDIA                          17               0     130
15-18 months   MAL-ED           INDIA                          18               1     130
15-18 months   MAL-ED           INDIA                          19               0     130
15-18 months   MAL-ED           INDIA                          20               0     130
15-18 months   MAL-ED           INDIA                          24               0     130
15-18 months   MAL-ED           INDIA                          25               0     130
15-18 months   MAL-ED           INDIA                          27               0     130
15-18 months   MAL-ED           NEPAL                          0                0      90
15-18 months   MAL-ED           NEPAL                          1                0      90
15-18 months   MAL-ED           NEPAL                          2                4      90
15-18 months   MAL-ED           NEPAL                          3                3      90
15-18 months   MAL-ED           NEPAL                          4               10      90
15-18 months   MAL-ED           NEPAL                          5                6      90
15-18 months   MAL-ED           NEPAL                          6                4      90
15-18 months   MAL-ED           NEPAL                          7                8      90
15-18 months   MAL-ED           NEPAL                          8               11      90
15-18 months   MAL-ED           NEPAL                          9                7      90
15-18 months   MAL-ED           NEPAL                          10              23      90
15-18 months   MAL-ED           NEPAL                          11               1      90
15-18 months   MAL-ED           NEPAL                          12               7      90
15-18 months   MAL-ED           NEPAL                          13               0      90
15-18 months   MAL-ED           NEPAL                          14               0      90
15-18 months   MAL-ED           NEPAL                          15               1      90
15-18 months   MAL-ED           NEPAL                          16               1      90
15-18 months   MAL-ED           NEPAL                          17               3      90
15-18 months   MAL-ED           NEPAL                          18               1      90
15-18 months   MAL-ED           NEPAL                          19               0      90
15-18 months   MAL-ED           NEPAL                          20               0      90
15-18 months   MAL-ED           NEPAL                          24               0      90
15-18 months   MAL-ED           NEPAL                          25               0      90
15-18 months   MAL-ED           NEPAL                          27               0      90
15-18 months   MAL-ED           PERU                           0                1     174
15-18 months   MAL-ED           PERU                           1                1     174
15-18 months   MAL-ED           PERU                           2                0     174
15-18 months   MAL-ED           PERU                           3                6     174
15-18 months   MAL-ED           PERU                           4                4     174
15-18 months   MAL-ED           PERU                           5                7     174
15-18 months   MAL-ED           PERU                           6               15     174
15-18 months   MAL-ED           PERU                           7               12     174
15-18 months   MAL-ED           PERU                           8               14     174
15-18 months   MAL-ED           PERU                           9               22     174
15-18 months   MAL-ED           PERU                           10               7     174
15-18 months   MAL-ED           PERU                           11              73     174
15-18 months   MAL-ED           PERU                           12               1     174
15-18 months   MAL-ED           PERU                           13               2     174
15-18 months   MAL-ED           PERU                           14               4     174
15-18 months   MAL-ED           PERU                           15               0     174
15-18 months   MAL-ED           PERU                           16               1     174
15-18 months   MAL-ED           PERU                           17               1     174
15-18 months   MAL-ED           PERU                           18               2     174
15-18 months   MAL-ED           PERU                           19               0     174
15-18 months   MAL-ED           PERU                           20               1     174
15-18 months   MAL-ED           PERU                           24               0     174
15-18 months   MAL-ED           PERU                           25               0     174
15-18 months   MAL-ED           PERU                           27               0     174
15-18 months   MAL-ED           SOUTH AFRICA                   0                0      87
15-18 months   MAL-ED           SOUTH AFRICA                   1                0      87
15-18 months   MAL-ED           SOUTH AFRICA                   2                1      87
15-18 months   MAL-ED           SOUTH AFRICA                   3                0      87
15-18 months   MAL-ED           SOUTH AFRICA                   4                4      87
15-18 months   MAL-ED           SOUTH AFRICA                   5                2      87
15-18 months   MAL-ED           SOUTH AFRICA                   6                6      87
15-18 months   MAL-ED           SOUTH AFRICA                   7                5      87
15-18 months   MAL-ED           SOUTH AFRICA                   8                9      87
15-18 months   MAL-ED           SOUTH AFRICA                   9                6      87
15-18 months   MAL-ED           SOUTH AFRICA                   10               6      87
15-18 months   MAL-ED           SOUTH AFRICA                   11              15      87
15-18 months   MAL-ED           SOUTH AFRICA                   12              28      87
15-18 months   MAL-ED           SOUTH AFRICA                   13               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   14               2      87
15-18 months   MAL-ED           SOUTH AFRICA                   15               2      87
15-18 months   MAL-ED           SOUTH AFRICA                   16               1      87
15-18 months   MAL-ED           SOUTH AFRICA                   17               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   18               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   19               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   20               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   24               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   25               0      87
15-18 months   MAL-ED           SOUTH AFRICA                   27               0      87
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               10     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               15     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               12     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                7     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              107     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               3     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     180
15-18 months   NIH-Crypto       BANGLADESH                     0              128     605
15-18 months   NIH-Crypto       BANGLADESH                     1               14     605
15-18 months   NIH-Crypto       BANGLADESH                     2               11     605
15-18 months   NIH-Crypto       BANGLADESH                     3               28     605
15-18 months   NIH-Crypto       BANGLADESH                     4               35     605
15-18 months   NIH-Crypto       BANGLADESH                     5               73     605
15-18 months   NIH-Crypto       BANGLADESH                     6               33     605
15-18 months   NIH-Crypto       BANGLADESH                     7               43     605
15-18 months   NIH-Crypto       BANGLADESH                     8               70     605
15-18 months   NIH-Crypto       BANGLADESH                     9               69     605
15-18 months   NIH-Crypto       BANGLADESH                     10              43     605
15-18 months   NIH-Crypto       BANGLADESH                     11               0     605
15-18 months   NIH-Crypto       BANGLADESH                     12              31     605
15-18 months   NIH-Crypto       BANGLADESH                     13               0     605
15-18 months   NIH-Crypto       BANGLADESH                     14               8     605
15-18 months   NIH-Crypto       BANGLADESH                     15              15     605
15-18 months   NIH-Crypto       BANGLADESH                     16               0     605
15-18 months   NIH-Crypto       BANGLADESH                     17               4     605
15-18 months   NIH-Crypto       BANGLADESH                     18               0     605
15-18 months   NIH-Crypto       BANGLADESH                     19               0     605
15-18 months   NIH-Crypto       BANGLADESH                     20               0     605
15-18 months   NIH-Crypto       BANGLADESH                     24               0     605
15-18 months   NIH-Crypto       BANGLADESH                     25               0     605
15-18 months   NIH-Crypto       BANGLADESH                     27               0     605
15-18 months   PROBIT           BELARUS                        0                0     264
15-18 months   PROBIT           BELARUS                        1                0     264
15-18 months   PROBIT           BELARUS                        2                0     264
15-18 months   PROBIT           BELARUS                        3                0     264
15-18 months   PROBIT           BELARUS                        4                0     264
15-18 months   PROBIT           BELARUS                        5                0     264
15-18 months   PROBIT           BELARUS                        6                0     264
15-18 months   PROBIT           BELARUS                        7                0     264
15-18 months   PROBIT           BELARUS                        8                0     264
15-18 months   PROBIT           BELARUS                        9                0     264
15-18 months   PROBIT           BELARUS                        10               8     264
15-18 months   PROBIT           BELARUS                        11               0     264
15-18 months   PROBIT           BELARUS                        12              87     264
15-18 months   PROBIT           BELARUS                        13             110     264
15-18 months   PROBIT           BELARUS                        14               8     264
15-18 months   PROBIT           BELARUS                        15               0     264
15-18 months   PROBIT           BELARUS                        16              51     264
15-18 months   PROBIT           BELARUS                        17               0     264
15-18 months   PROBIT           BELARUS                        18               0     264
15-18 months   PROBIT           BELARUS                        19               0     264
15-18 months   PROBIT           BELARUS                        20               0     264
15-18 months   PROBIT           BELARUS                        24               0     264
15-18 months   PROBIT           BELARUS                        25               0     264
15-18 months   PROBIT           BELARUS                        27               0     264
15-18 months   PROVIDE          BANGLADESH                     0              155     533
15-18 months   PROVIDE          BANGLADESH                     1                9     533
15-18 months   PROVIDE          BANGLADESH                     2               17     533
15-18 months   PROVIDE          BANGLADESH                     3               19     533
15-18 months   PROVIDE          BANGLADESH                     4               38     533
15-18 months   PROVIDE          BANGLADESH                     5               56     533
15-18 months   PROVIDE          BANGLADESH                     6               23     533
15-18 months   PROVIDE          BANGLADESH                     7               27     533
15-18 months   PROVIDE          BANGLADESH                     8               52     533
15-18 months   PROVIDE          BANGLADESH                     9               52     533
15-18 months   PROVIDE          BANGLADESH                     10              29     533
15-18 months   PROVIDE          BANGLADESH                     11              22     533
15-18 months   PROVIDE          BANGLADESH                     12               2     533
15-18 months   PROVIDE          BANGLADESH                     13               0     533
15-18 months   PROVIDE          BANGLADESH                     14              17     533
15-18 months   PROVIDE          BANGLADESH                     15               7     533
15-18 months   PROVIDE          BANGLADESH                     16               7     533
15-18 months   PROVIDE          BANGLADESH                     17               0     533
15-18 months   PROVIDE          BANGLADESH                     18               0     533
15-18 months   PROVIDE          BANGLADESH                     19               1     533
15-18 months   PROVIDE          BANGLADESH                     20               0     533
15-18 months   PROVIDE          BANGLADESH                     24               0     533
15-18 months   PROVIDE          BANGLADESH                     25               0     533
15-18 months   PROVIDE          BANGLADESH                     27               0     533
15-18 months   SAS-CompFeed     INDIA                          0              137    1168
15-18 months   SAS-CompFeed     INDIA                          1                0    1168
15-18 months   SAS-CompFeed     INDIA                          2                5    1168
15-18 months   SAS-CompFeed     INDIA                          3                9    1168
15-18 months   SAS-CompFeed     INDIA                          4               22    1168
15-18 months   SAS-CompFeed     INDIA                          5               70    1168
15-18 months   SAS-CompFeed     INDIA                          6               19    1168
15-18 months   SAS-CompFeed     INDIA                          7               96    1168
15-18 months   SAS-CompFeed     INDIA                          8              129    1168
15-18 months   SAS-CompFeed     INDIA                          9               72    1168
15-18 months   SAS-CompFeed     INDIA                          10             306    1168
15-18 months   SAS-CompFeed     INDIA                          11              34    1168
15-18 months   SAS-CompFeed     INDIA                          12             174    1168
15-18 months   SAS-CompFeed     INDIA                          13               5    1168
15-18 months   SAS-CompFeed     INDIA                          14              14    1168
15-18 months   SAS-CompFeed     INDIA                          15              53    1168
15-18 months   SAS-CompFeed     INDIA                          16               9    1168
15-18 months   SAS-CompFeed     INDIA                          17              11    1168
15-18 months   SAS-CompFeed     INDIA                          18               2    1168
15-18 months   SAS-CompFeed     INDIA                          19               1    1168
15-18 months   SAS-CompFeed     INDIA                          20               0    1168
15-18 months   SAS-CompFeed     INDIA                          24               0    1168
15-18 months   SAS-CompFeed     INDIA                          25               0    1168
15-18 months   SAS-CompFeed     INDIA                          27               0    1168
15-18 months   SAS-FoodSuppl    INDIA                          0              100     290
15-18 months   SAS-FoodSuppl    INDIA                          1                1     290
15-18 months   SAS-FoodSuppl    INDIA                          2                6     290
15-18 months   SAS-FoodSuppl    INDIA                          3                5     290
15-18 months   SAS-FoodSuppl    INDIA                          4                4     290
15-18 months   SAS-FoodSuppl    INDIA                          5               41     290
15-18 months   SAS-FoodSuppl    INDIA                          6                9     290
15-18 months   SAS-FoodSuppl    INDIA                          7               11     290
15-18 months   SAS-FoodSuppl    INDIA                          8               37     290
15-18 months   SAS-FoodSuppl    INDIA                          9               21     290
15-18 months   SAS-FoodSuppl    INDIA                          10              37     290
15-18 months   SAS-FoodSuppl    INDIA                          11               2     290
15-18 months   SAS-FoodSuppl    INDIA                          12               8     290
15-18 months   SAS-FoodSuppl    INDIA                          13               1     290
15-18 months   SAS-FoodSuppl    INDIA                          14               4     290
15-18 months   SAS-FoodSuppl    INDIA                          15               3     290
15-18 months   SAS-FoodSuppl    INDIA                          16               0     290
15-18 months   SAS-FoodSuppl    INDIA                          17               0     290
15-18 months   SAS-FoodSuppl    INDIA                          18               0     290
15-18 months   SAS-FoodSuppl    INDIA                          19               0     290
15-18 months   SAS-FoodSuppl    INDIA                          20               0     290
15-18 months   SAS-FoodSuppl    INDIA                          24               0     290
15-18 months   SAS-FoodSuppl    INDIA                          25               0     290
15-18 months   SAS-FoodSuppl    INDIA                          27               0     290
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                4     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              346     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                3     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               15     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               5     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             153     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               9     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13              34     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               4     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               6     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               7     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               6     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               2     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               4     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27              62     662
15-18 months   ZVITAMBO         ZIMBABWE                       0                9    1140
15-18 months   ZVITAMBO         ZIMBABWE                       1                0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       2                0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       3                3    1140
15-18 months   ZVITAMBO         ZIMBABWE                       4                4    1140
15-18 months   ZVITAMBO         ZIMBABWE                       5                3    1140
15-18 months   ZVITAMBO         ZIMBABWE                       6                5    1140
15-18 months   ZVITAMBO         ZIMBABWE                       7               91    1140
15-18 months   ZVITAMBO         ZIMBABWE                       8               11    1140
15-18 months   ZVITAMBO         ZIMBABWE                       9               97    1140
15-18 months   ZVITAMBO         ZIMBABWE                       10              35    1140
15-18 months   ZVITAMBO         ZIMBABWE                       11             829    1140
15-18 months   ZVITAMBO         ZIMBABWE                       12               7    1140
15-18 months   ZVITAMBO         ZIMBABWE                       13              46    1140
15-18 months   ZVITAMBO         ZIMBABWE                       14               0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       15               0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       16               0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       17               0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       18               0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       19               0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       20               0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       24               0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       25               0    1140
15-18 months   ZVITAMBO         ZIMBABWE                       27               0    1140
18-21 months   COHORTS          GUATEMALA                      0              342     755
18-21 months   COHORTS          GUATEMALA                      1               40     755
18-21 months   COHORTS          GUATEMALA                      2              138     755
18-21 months   COHORTS          GUATEMALA                      3              101     755
18-21 months   COHORTS          GUATEMALA                      4               51     755
18-21 months   COHORTS          GUATEMALA                      5               18     755
18-21 months   COHORTS          GUATEMALA                      6               57     755
18-21 months   COHORTS          GUATEMALA                      7                1     755
18-21 months   COHORTS          GUATEMALA                      8                1     755
18-21 months   COHORTS          GUATEMALA                      9                0     755
18-21 months   COHORTS          GUATEMALA                      10               1     755
18-21 months   COHORTS          GUATEMALA                      11               0     755
18-21 months   COHORTS          GUATEMALA                      12               4     755
18-21 months   COHORTS          GUATEMALA                      13               0     755
18-21 months   COHORTS          GUATEMALA                      14               0     755
18-21 months   COHORTS          GUATEMALA                      15               1     755
18-21 months   COHORTS          GUATEMALA                      16               0     755
18-21 months   COHORTS          GUATEMALA                      17               0     755
18-21 months   COHORTS          GUATEMALA                      18               0     755
18-21 months   COHORTS          GUATEMALA                      19               0     755
18-21 months   COHORTS          GUATEMALA                      20               0     755
18-21 months   COHORTS          GUATEMALA                      24               0     755
18-21 months   COHORTS          GUATEMALA                      25               0     755
18-21 months   COHORTS          GUATEMALA                      27               0     755
18-21 months   GMS-Nepal        NEPAL                          0              194     446
18-21 months   GMS-Nepal        NEPAL                          1                0     446
18-21 months   GMS-Nepal        NEPAL                          2                0     446
18-21 months   GMS-Nepal        NEPAL                          3                0     446
18-21 months   GMS-Nepal        NEPAL                          4                0     446
18-21 months   GMS-Nepal        NEPAL                          5               65     446
18-21 months   GMS-Nepal        NEPAL                          6                0     446
18-21 months   GMS-Nepal        NEPAL                          7                0     446
18-21 months   GMS-Nepal        NEPAL                          8               76     446
18-21 months   GMS-Nepal        NEPAL                          9                0     446
18-21 months   GMS-Nepal        NEPAL                          10              83     446
18-21 months   GMS-Nepal        NEPAL                          11               0     446
18-21 months   GMS-Nepal        NEPAL                          12              28     446
18-21 months   GMS-Nepal        NEPAL                          13               0     446
18-21 months   GMS-Nepal        NEPAL                          14               0     446
18-21 months   GMS-Nepal        NEPAL                          15               0     446
18-21 months   GMS-Nepal        NEPAL                          16               0     446
18-21 months   GMS-Nepal        NEPAL                          17               0     446
18-21 months   GMS-Nepal        NEPAL                          18               0     446
18-21 months   GMS-Nepal        NEPAL                          19               0     446
18-21 months   GMS-Nepal        NEPAL                          20               0     446
18-21 months   GMS-Nepal        NEPAL                          24               0     446
18-21 months   GMS-Nepal        NEPAL                          25               0     446
18-21 months   GMS-Nepal        NEPAL                          27               0     446
18-21 months   LCNI-5           MALAWI                         0              153     450
18-21 months   LCNI-5           MALAWI                         1                5     450
18-21 months   LCNI-5           MALAWI                         2               18     450
18-21 months   LCNI-5           MALAWI                         3               24     450
18-21 months   LCNI-5           MALAWI                         4               32     450
18-21 months   LCNI-5           MALAWI                         5               37     450
18-21 months   LCNI-5           MALAWI                         6               41     450
18-21 months   LCNI-5           MALAWI                         7               40     450
18-21 months   LCNI-5           MALAWI                         8               49     450
18-21 months   LCNI-5           MALAWI                         9                3     450
18-21 months   LCNI-5           MALAWI                         10               9     450
18-21 months   LCNI-5           MALAWI                         11               4     450
18-21 months   LCNI-5           MALAWI                         12              31     450
18-21 months   LCNI-5           MALAWI                         13               1     450
18-21 months   LCNI-5           MALAWI                         14               2     450
18-21 months   LCNI-5           MALAWI                         15               0     450
18-21 months   LCNI-5           MALAWI                         16               1     450
18-21 months   LCNI-5           MALAWI                         17               0     450
18-21 months   LCNI-5           MALAWI                         18               0     450
18-21 months   LCNI-5           MALAWI                         19               0     450
18-21 months   LCNI-5           MALAWI                         20               0     450
18-21 months   LCNI-5           MALAWI                         24               0     450
18-21 months   LCNI-5           MALAWI                         25               0     450
18-21 months   LCNI-5           MALAWI                         27               0     450
18-21 months   MAL-ED           BANGLADESH                     0                0     116
18-21 months   MAL-ED           BANGLADESH                     1                7     116
18-21 months   MAL-ED           BANGLADESH                     2               11     116
18-21 months   MAL-ED           BANGLADESH                     3               10     116
18-21 months   MAL-ED           BANGLADESH                     4                6     116
18-21 months   MAL-ED           BANGLADESH                     5               27     116
18-21 months   MAL-ED           BANGLADESH                     6                7     116
18-21 months   MAL-ED           BANGLADESH                     7                8     116
18-21 months   MAL-ED           BANGLADESH                     8               13     116
18-21 months   MAL-ED           BANGLADESH                     9               10     116
18-21 months   MAL-ED           BANGLADESH                     10               8     116
18-21 months   MAL-ED           BANGLADESH                     11               0     116
18-21 months   MAL-ED           BANGLADESH                     12               7     116
18-21 months   MAL-ED           BANGLADESH                     13               0     116
18-21 months   MAL-ED           BANGLADESH                     14               0     116
18-21 months   MAL-ED           BANGLADESH                     15               0     116
18-21 months   MAL-ED           BANGLADESH                     16               2     116
18-21 months   MAL-ED           BANGLADESH                     17               0     116
18-21 months   MAL-ED           BANGLADESH                     18               0     116
18-21 months   MAL-ED           BANGLADESH                     19               0     116
18-21 months   MAL-ED           BANGLADESH                     20               0     116
18-21 months   MAL-ED           BANGLADESH                     24               0     116
18-21 months   MAL-ED           BANGLADESH                     25               0     116
18-21 months   MAL-ED           BANGLADESH                     27               0     116
18-21 months   MAL-ED           INDIA                          0                0     130
18-21 months   MAL-ED           INDIA                          1                0     130
18-21 months   MAL-ED           INDIA                          2                5     130
18-21 months   MAL-ED           INDIA                          3                9     130
18-21 months   MAL-ED           INDIA                          4                5     130
18-21 months   MAL-ED           INDIA                          5               31     130
18-21 months   MAL-ED           INDIA                          6               10     130
18-21 months   MAL-ED           INDIA                          7                9     130
18-21 months   MAL-ED           INDIA                          8               19     130
18-21 months   MAL-ED           INDIA                          9               25     130
18-21 months   MAL-ED           INDIA                          10               6     130
18-21 months   MAL-ED           INDIA                          11               2     130
18-21 months   MAL-ED           INDIA                          12               3     130
18-21 months   MAL-ED           INDIA                          13               1     130
18-21 months   MAL-ED           INDIA                          14               2     130
18-21 months   MAL-ED           INDIA                          15               2     130
18-21 months   MAL-ED           INDIA                          16               0     130
18-21 months   MAL-ED           INDIA                          17               0     130
18-21 months   MAL-ED           INDIA                          18               1     130
18-21 months   MAL-ED           INDIA                          19               0     130
18-21 months   MAL-ED           INDIA                          20               0     130
18-21 months   MAL-ED           INDIA                          24               0     130
18-21 months   MAL-ED           INDIA                          25               0     130
18-21 months   MAL-ED           INDIA                          27               0     130
18-21 months   MAL-ED           NEPAL                          0                0      90
18-21 months   MAL-ED           NEPAL                          1                0      90
18-21 months   MAL-ED           NEPAL                          2                4      90
18-21 months   MAL-ED           NEPAL                          3                3      90
18-21 months   MAL-ED           NEPAL                          4               10      90
18-21 months   MAL-ED           NEPAL                          5                6      90
18-21 months   MAL-ED           NEPAL                          6                4      90
18-21 months   MAL-ED           NEPAL                          7                8      90
18-21 months   MAL-ED           NEPAL                          8               11      90
18-21 months   MAL-ED           NEPAL                          9                7      90
18-21 months   MAL-ED           NEPAL                          10              23      90
18-21 months   MAL-ED           NEPAL                          11               1      90
18-21 months   MAL-ED           NEPAL                          12               7      90
18-21 months   MAL-ED           NEPAL                          13               0      90
18-21 months   MAL-ED           NEPAL                          14               0      90
18-21 months   MAL-ED           NEPAL                          15               1      90
18-21 months   MAL-ED           NEPAL                          16               1      90
18-21 months   MAL-ED           NEPAL                          17               3      90
18-21 months   MAL-ED           NEPAL                          18               1      90
18-21 months   MAL-ED           NEPAL                          19               0      90
18-21 months   MAL-ED           NEPAL                          20               0      90
18-21 months   MAL-ED           NEPAL                          24               0      90
18-21 months   MAL-ED           NEPAL                          25               0      90
18-21 months   MAL-ED           NEPAL                          27               0      90
18-21 months   MAL-ED           PERU                           0                1     164
18-21 months   MAL-ED           PERU                           1                1     164
18-21 months   MAL-ED           PERU                           2                0     164
18-21 months   MAL-ED           PERU                           3                6     164
18-21 months   MAL-ED           PERU                           4                4     164
18-21 months   MAL-ED           PERU                           5                7     164
18-21 months   MAL-ED           PERU                           6               14     164
18-21 months   MAL-ED           PERU                           7               12     164
18-21 months   MAL-ED           PERU                           8               15     164
18-21 months   MAL-ED           PERU                           9               20     164
18-21 months   MAL-ED           PERU                           10               7     164
18-21 months   MAL-ED           PERU                           11              66     164
18-21 months   MAL-ED           PERU                           12               1     164
18-21 months   MAL-ED           PERU                           13               2     164
18-21 months   MAL-ED           PERU                           14               4     164
18-21 months   MAL-ED           PERU                           15               0     164
18-21 months   MAL-ED           PERU                           16               1     164
18-21 months   MAL-ED           PERU                           17               1     164
18-21 months   MAL-ED           PERU                           18               1     164
18-21 months   MAL-ED           PERU                           19               0     164
18-21 months   MAL-ED           PERU                           20               1     164
18-21 months   MAL-ED           PERU                           24               0     164
18-21 months   MAL-ED           PERU                           25               0     164
18-21 months   MAL-ED           PERU                           27               0     164
18-21 months   MAL-ED           SOUTH AFRICA                   0                0      90
18-21 months   MAL-ED           SOUTH AFRICA                   1                0      90
18-21 months   MAL-ED           SOUTH AFRICA                   2                1      90
18-21 months   MAL-ED           SOUTH AFRICA                   3                0      90
18-21 months   MAL-ED           SOUTH AFRICA                   4                4      90
18-21 months   MAL-ED           SOUTH AFRICA                   5                2      90
18-21 months   MAL-ED           SOUTH AFRICA                   6                6      90
18-21 months   MAL-ED           SOUTH AFRICA                   7                5      90
18-21 months   MAL-ED           SOUTH AFRICA                   8               10      90
18-21 months   MAL-ED           SOUTH AFRICA                   9                6      90
18-21 months   MAL-ED           SOUTH AFRICA                   10               7      90
18-21 months   MAL-ED           SOUTH AFRICA                   11              15      90
18-21 months   MAL-ED           SOUTH AFRICA                   12              29      90
18-21 months   MAL-ED           SOUTH AFRICA                   13               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   14               2      90
18-21 months   MAL-ED           SOUTH AFRICA                   15               2      90
18-21 months   MAL-ED           SOUTH AFRICA                   16               1      90
18-21 months   MAL-ED           SOUTH AFRICA                   17               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   18               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   19               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   20               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   24               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   25               0      90
18-21 months   MAL-ED           SOUTH AFRICA                   27               0      90
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               10     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               14     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                9     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                7     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              101     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               3     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     170
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     170
18-21 months   NIH-Crypto       BANGLADESH                     0              108     547
18-21 months   NIH-Crypto       BANGLADESH                     1               12     547
18-21 months   NIH-Crypto       BANGLADESH                     2               11     547
18-21 months   NIH-Crypto       BANGLADESH                     3               22     547
18-21 months   NIH-Crypto       BANGLADESH                     4               34     547
18-21 months   NIH-Crypto       BANGLADESH                     5               67     547
18-21 months   NIH-Crypto       BANGLADESH                     6               26     547
18-21 months   NIH-Crypto       BANGLADESH                     7               39     547
18-21 months   NIH-Crypto       BANGLADESH                     8               68     547
18-21 months   NIH-Crypto       BANGLADESH                     9               66     547
18-21 months   NIH-Crypto       BANGLADESH                     10              42     547
18-21 months   NIH-Crypto       BANGLADESH                     11               0     547
18-21 months   NIH-Crypto       BANGLADESH                     12              29     547
18-21 months   NIH-Crypto       BANGLADESH                     13               0     547
18-21 months   NIH-Crypto       BANGLADESH                     14               8     547
18-21 months   NIH-Crypto       BANGLADESH                     15              12     547
18-21 months   NIH-Crypto       BANGLADESH                     16               0     547
18-21 months   NIH-Crypto       BANGLADESH                     17               3     547
18-21 months   NIH-Crypto       BANGLADESH                     18               0     547
18-21 months   NIH-Crypto       BANGLADESH                     19               0     547
18-21 months   NIH-Crypto       BANGLADESH                     20               0     547
18-21 months   NIH-Crypto       BANGLADESH                     24               0     547
18-21 months   NIH-Crypto       BANGLADESH                     25               0     547
18-21 months   NIH-Crypto       BANGLADESH                     27               0     547
18-21 months   PROBIT           BELARUS                        0                0     207
18-21 months   PROBIT           BELARUS                        1                0     207
18-21 months   PROBIT           BELARUS                        2                0     207
18-21 months   PROBIT           BELARUS                        3                0     207
18-21 months   PROBIT           BELARUS                        4                0     207
18-21 months   PROBIT           BELARUS                        5                0     207
18-21 months   PROBIT           BELARUS                        6                0     207
18-21 months   PROBIT           BELARUS                        7                0     207
18-21 months   PROBIT           BELARUS                        8                0     207
18-21 months   PROBIT           BELARUS                        9                0     207
18-21 months   PROBIT           BELARUS                        10               6     207
18-21 months   PROBIT           BELARUS                        11               0     207
18-21 months   PROBIT           BELARUS                        12              78     207
18-21 months   PROBIT           BELARUS                        13              90     207
18-21 months   PROBIT           BELARUS                        14               6     207
18-21 months   PROBIT           BELARUS                        15               0     207
18-21 months   PROBIT           BELARUS                        16              27     207
18-21 months   PROBIT           BELARUS                        17               0     207
18-21 months   PROBIT           BELARUS                        18               0     207
18-21 months   PROBIT           BELARUS                        19               0     207
18-21 months   PROBIT           BELARUS                        20               0     207
18-21 months   PROBIT           BELARUS                        24               0     207
18-21 months   PROBIT           BELARUS                        25               0     207
18-21 months   PROBIT           BELARUS                        27               0     207
18-21 months   PROVIDE          BANGLADESH                     0              161     542
18-21 months   PROVIDE          BANGLADESH                     1               11     542
18-21 months   PROVIDE          BANGLADESH                     2               17     542
18-21 months   PROVIDE          BANGLADESH                     3               21     542
18-21 months   PROVIDE          BANGLADESH                     4               39     542
18-21 months   PROVIDE          BANGLADESH                     5               59     542
18-21 months   PROVIDE          BANGLADESH                     6               24     542
18-21 months   PROVIDE          BANGLADESH                     7               28     542
18-21 months   PROVIDE          BANGLADESH                     8               50     542
18-21 months   PROVIDE          BANGLADESH                     9               50     542
18-21 months   PROVIDE          BANGLADESH                     10              26     542
18-21 months   PROVIDE          BANGLADESH                     11              23     542
18-21 months   PROVIDE          BANGLADESH                     12               1     542
18-21 months   PROVIDE          BANGLADESH                     13               0     542
18-21 months   PROVIDE          BANGLADESH                     14              17     542
18-21 months   PROVIDE          BANGLADESH                     15               6     542
18-21 months   PROVIDE          BANGLADESH                     16               8     542
18-21 months   PROVIDE          BANGLADESH                     17               0     542
18-21 months   PROVIDE          BANGLADESH                     18               0     542
18-21 months   PROVIDE          BANGLADESH                     19               1     542
18-21 months   PROVIDE          BANGLADESH                     20               0     542
18-21 months   PROVIDE          BANGLADESH                     24               0     542
18-21 months   PROVIDE          BANGLADESH                     25               0     542
18-21 months   PROVIDE          BANGLADESH                     27               0     542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                3      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               7      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   13               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   14               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   15               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   16               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   17               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   18               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   19               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   20               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   24               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   25               0      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   27               1      11
18-21 months   ZVITAMBO         ZIMBABWE                       0                7     625
18-21 months   ZVITAMBO         ZIMBABWE                       1                0     625
18-21 months   ZVITAMBO         ZIMBABWE                       2                0     625
18-21 months   ZVITAMBO         ZIMBABWE                       3                2     625
18-21 months   ZVITAMBO         ZIMBABWE                       4                2     625
18-21 months   ZVITAMBO         ZIMBABWE                       5                1     625
18-21 months   ZVITAMBO         ZIMBABWE                       6                1     625
18-21 months   ZVITAMBO         ZIMBABWE                       7               54     625
18-21 months   ZVITAMBO         ZIMBABWE                       8                6     625
18-21 months   ZVITAMBO         ZIMBABWE                       9               51     625
18-21 months   ZVITAMBO         ZIMBABWE                       10              17     625
18-21 months   ZVITAMBO         ZIMBABWE                       11             457     625
18-21 months   ZVITAMBO         ZIMBABWE                       12               2     625
18-21 months   ZVITAMBO         ZIMBABWE                       13              25     625
18-21 months   ZVITAMBO         ZIMBABWE                       14               0     625
18-21 months   ZVITAMBO         ZIMBABWE                       15               0     625
18-21 months   ZVITAMBO         ZIMBABWE                       16               0     625
18-21 months   ZVITAMBO         ZIMBABWE                       17               0     625
18-21 months   ZVITAMBO         ZIMBABWE                       18               0     625
18-21 months   ZVITAMBO         ZIMBABWE                       19               0     625
18-21 months   ZVITAMBO         ZIMBABWE                       20               0     625
18-21 months   ZVITAMBO         ZIMBABWE                       24               0     625
18-21 months   ZVITAMBO         ZIMBABWE                       25               0     625
18-21 months   ZVITAMBO         ZIMBABWE                       27               0     625
21-24 months   COHORTS          GUATEMALA                      0              377     826
21-24 months   COHORTS          GUATEMALA                      1               46     826
21-24 months   COHORTS          GUATEMALA                      2              146     826
21-24 months   COHORTS          GUATEMALA                      3              112     826
21-24 months   COHORTS          GUATEMALA                      4               54     826
21-24 months   COHORTS          GUATEMALA                      5               21     826
21-24 months   COHORTS          GUATEMALA                      6               62     826
21-24 months   COHORTS          GUATEMALA                      7                1     826
21-24 months   COHORTS          GUATEMALA                      8                1     826
21-24 months   COHORTS          GUATEMALA                      9                0     826
21-24 months   COHORTS          GUATEMALA                      10               1     826
21-24 months   COHORTS          GUATEMALA                      11               0     826
21-24 months   COHORTS          GUATEMALA                      12               4     826
21-24 months   COHORTS          GUATEMALA                      13               0     826
21-24 months   COHORTS          GUATEMALA                      14               0     826
21-24 months   COHORTS          GUATEMALA                      15               1     826
21-24 months   COHORTS          GUATEMALA                      16               0     826
21-24 months   COHORTS          GUATEMALA                      17               0     826
21-24 months   COHORTS          GUATEMALA                      18               0     826
21-24 months   COHORTS          GUATEMALA                      19               0     826
21-24 months   COHORTS          GUATEMALA                      20               0     826
21-24 months   COHORTS          GUATEMALA                      24               0     826
21-24 months   COHORTS          GUATEMALA                      25               0     826
21-24 months   COHORTS          GUATEMALA                      27               0     826
21-24 months   GMS-Nepal        NEPAL                          0              151     343
21-24 months   GMS-Nepal        NEPAL                          1                0     343
21-24 months   GMS-Nepal        NEPAL                          2                0     343
21-24 months   GMS-Nepal        NEPAL                          3                0     343
21-24 months   GMS-Nepal        NEPAL                          4                0     343
21-24 months   GMS-Nepal        NEPAL                          5               46     343
21-24 months   GMS-Nepal        NEPAL                          6                0     343
21-24 months   GMS-Nepal        NEPAL                          7                0     343
21-24 months   GMS-Nepal        NEPAL                          8               60     343
21-24 months   GMS-Nepal        NEPAL                          9                0     343
21-24 months   GMS-Nepal        NEPAL                          10              65     343
21-24 months   GMS-Nepal        NEPAL                          11               0     343
21-24 months   GMS-Nepal        NEPAL                          12              21     343
21-24 months   GMS-Nepal        NEPAL                          13               0     343
21-24 months   GMS-Nepal        NEPAL                          14               0     343
21-24 months   GMS-Nepal        NEPAL                          15               0     343
21-24 months   GMS-Nepal        NEPAL                          16               0     343
21-24 months   GMS-Nepal        NEPAL                          17               0     343
21-24 months   GMS-Nepal        NEPAL                          18               0     343
21-24 months   GMS-Nepal        NEPAL                          19               0     343
21-24 months   GMS-Nepal        NEPAL                          20               0     343
21-24 months   GMS-Nepal        NEPAL                          24               0     343
21-24 months   GMS-Nepal        NEPAL                          25               0     343
21-24 months   GMS-Nepal        NEPAL                          27               0     343
21-24 months   LCNI-5           MALAWI                         0              133     380
21-24 months   LCNI-5           MALAWI                         1                5     380
21-24 months   LCNI-5           MALAWI                         2               14     380
21-24 months   LCNI-5           MALAWI                         3               25     380
21-24 months   LCNI-5           MALAWI                         4               25     380
21-24 months   LCNI-5           MALAWI                         5               27     380
21-24 months   LCNI-5           MALAWI                         6               35     380
21-24 months   LCNI-5           MALAWI                         7               30     380
21-24 months   LCNI-5           MALAWI                         8               42     380
21-24 months   LCNI-5           MALAWI                         9                4     380
21-24 months   LCNI-5           MALAWI                         10               9     380
21-24 months   LCNI-5           MALAWI                         11               3     380
21-24 months   LCNI-5           MALAWI                         12              26     380
21-24 months   LCNI-5           MALAWI                         13               1     380
21-24 months   LCNI-5           MALAWI                         14               1     380
21-24 months   LCNI-5           MALAWI                         15               0     380
21-24 months   LCNI-5           MALAWI                         16               0     380
21-24 months   LCNI-5           MALAWI                         17               0     380
21-24 months   LCNI-5           MALAWI                         18               0     380
21-24 months   LCNI-5           MALAWI                         19               0     380
21-24 months   LCNI-5           MALAWI                         20               0     380
21-24 months   LCNI-5           MALAWI                         24               0     380
21-24 months   LCNI-5           MALAWI                         25               0     380
21-24 months   LCNI-5           MALAWI                         27               0     380
21-24 months   MAL-ED           BANGLADESH                     0                0     115
21-24 months   MAL-ED           BANGLADESH                     1                7     115
21-24 months   MAL-ED           BANGLADESH                     2               11     115
21-24 months   MAL-ED           BANGLADESH                     3               11     115
21-24 months   MAL-ED           BANGLADESH                     4                5     115
21-24 months   MAL-ED           BANGLADESH                     5               27     115
21-24 months   MAL-ED           BANGLADESH                     6                7     115
21-24 months   MAL-ED           BANGLADESH                     7                7     115
21-24 months   MAL-ED           BANGLADESH                     8               13     115
21-24 months   MAL-ED           BANGLADESH                     9               10     115
21-24 months   MAL-ED           BANGLADESH                     10               8     115
21-24 months   MAL-ED           BANGLADESH                     11               0     115
21-24 months   MAL-ED           BANGLADESH                     12               7     115
21-24 months   MAL-ED           BANGLADESH                     13               0     115
21-24 months   MAL-ED           BANGLADESH                     14               0     115
21-24 months   MAL-ED           BANGLADESH                     15               0     115
21-24 months   MAL-ED           BANGLADESH                     16               2     115
21-24 months   MAL-ED           BANGLADESH                     17               0     115
21-24 months   MAL-ED           BANGLADESH                     18               0     115
21-24 months   MAL-ED           BANGLADESH                     19               0     115
21-24 months   MAL-ED           BANGLADESH                     20               0     115
21-24 months   MAL-ED           BANGLADESH                     24               0     115
21-24 months   MAL-ED           BANGLADESH                     25               0     115
21-24 months   MAL-ED           BANGLADESH                     27               0     115
21-24 months   MAL-ED           INDIA                          0                0     131
21-24 months   MAL-ED           INDIA                          1                0     131
21-24 months   MAL-ED           INDIA                          2                5     131
21-24 months   MAL-ED           INDIA                          3                9     131
21-24 months   MAL-ED           INDIA                          4                5     131
21-24 months   MAL-ED           INDIA                          5               31     131
21-24 months   MAL-ED           INDIA                          6               10     131
21-24 months   MAL-ED           INDIA                          7               10     131
21-24 months   MAL-ED           INDIA                          8               19     131
21-24 months   MAL-ED           INDIA                          9               25     131
21-24 months   MAL-ED           INDIA                          10               6     131
21-24 months   MAL-ED           INDIA                          11               2     131
21-24 months   MAL-ED           INDIA                          12               3     131
21-24 months   MAL-ED           INDIA                          13               1     131
21-24 months   MAL-ED           INDIA                          14               2     131
21-24 months   MAL-ED           INDIA                          15               2     131
21-24 months   MAL-ED           INDIA                          16               0     131
21-24 months   MAL-ED           INDIA                          17               0     131
21-24 months   MAL-ED           INDIA                          18               1     131
21-24 months   MAL-ED           INDIA                          19               0     131
21-24 months   MAL-ED           INDIA                          20               0     131
21-24 months   MAL-ED           INDIA                          24               0     131
21-24 months   MAL-ED           INDIA                          25               0     131
21-24 months   MAL-ED           INDIA                          27               0     131
21-24 months   MAL-ED           NEPAL                          0                0      90
21-24 months   MAL-ED           NEPAL                          1                0      90
21-24 months   MAL-ED           NEPAL                          2                4      90
21-24 months   MAL-ED           NEPAL                          3                3      90
21-24 months   MAL-ED           NEPAL                          4               10      90
21-24 months   MAL-ED           NEPAL                          5                6      90
21-24 months   MAL-ED           NEPAL                          6                4      90
21-24 months   MAL-ED           NEPAL                          7                8      90
21-24 months   MAL-ED           NEPAL                          8               11      90
21-24 months   MAL-ED           NEPAL                          9                7      90
21-24 months   MAL-ED           NEPAL                          10              23      90
21-24 months   MAL-ED           NEPAL                          11               1      90
21-24 months   MAL-ED           NEPAL                          12               7      90
21-24 months   MAL-ED           NEPAL                          13               0      90
21-24 months   MAL-ED           NEPAL                          14               0      90
21-24 months   MAL-ED           NEPAL                          15               1      90
21-24 months   MAL-ED           NEPAL                          16               1      90
21-24 months   MAL-ED           NEPAL                          17               3      90
21-24 months   MAL-ED           NEPAL                          18               1      90
21-24 months   MAL-ED           NEPAL                          19               0      90
21-24 months   MAL-ED           NEPAL                          20               0      90
21-24 months   MAL-ED           NEPAL                          24               0      90
21-24 months   MAL-ED           NEPAL                          25               0      90
21-24 months   MAL-ED           NEPAL                          27               0      90
21-24 months   MAL-ED           PERU                           0                1     154
21-24 months   MAL-ED           PERU                           1                1     154
21-24 months   MAL-ED           PERU                           2                0     154
21-24 months   MAL-ED           PERU                           3                6     154
21-24 months   MAL-ED           PERU                           4                3     154
21-24 months   MAL-ED           PERU                           5                7     154
21-24 months   MAL-ED           PERU                           6               13     154
21-24 months   MAL-ED           PERU                           7               12     154
21-24 months   MAL-ED           PERU                           8               15     154
21-24 months   MAL-ED           PERU                           9               19     154
21-24 months   MAL-ED           PERU                           10               7     154
21-24 months   MAL-ED           PERU                           11              59     154
21-24 months   MAL-ED           PERU                           12               1     154
21-24 months   MAL-ED           PERU                           13               2     154
21-24 months   MAL-ED           PERU                           14               4     154
21-24 months   MAL-ED           PERU                           15               0     154
21-24 months   MAL-ED           PERU                           16               1     154
21-24 months   MAL-ED           PERU                           17               1     154
21-24 months   MAL-ED           PERU                           18               1     154
21-24 months   MAL-ED           PERU                           19               0     154
21-24 months   MAL-ED           PERU                           20               1     154
21-24 months   MAL-ED           PERU                           24               0     154
21-24 months   MAL-ED           PERU                           25               0     154
21-24 months   MAL-ED           PERU                           27               0     154
21-24 months   MAL-ED           SOUTH AFRICA                   0                0      91
21-24 months   MAL-ED           SOUTH AFRICA                   1                0      91
21-24 months   MAL-ED           SOUTH AFRICA                   2                1      91
21-24 months   MAL-ED           SOUTH AFRICA                   3                0      91
21-24 months   MAL-ED           SOUTH AFRICA                   4                4      91
21-24 months   MAL-ED           SOUTH AFRICA                   5                2      91
21-24 months   MAL-ED           SOUTH AFRICA                   6                6      91
21-24 months   MAL-ED           SOUTH AFRICA                   7                6      91
21-24 months   MAL-ED           SOUTH AFRICA                   8               10      91
21-24 months   MAL-ED           SOUTH AFRICA                   9                5      91
21-24 months   MAL-ED           SOUTH AFRICA                   10               8      91
21-24 months   MAL-ED           SOUTH AFRICA                   11              15      91
21-24 months   MAL-ED           SOUTH AFRICA                   12              29      91
21-24 months   MAL-ED           SOUTH AFRICA                   13               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   14               2      91
21-24 months   MAL-ED           SOUTH AFRICA                   15               2      91
21-24 months   MAL-ED           SOUTH AFRICA                   16               1      91
21-24 months   MAL-ED           SOUTH AFRICA                   17               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   18               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   19               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   20               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   24               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   25               0      91
21-24 months   MAL-ED           SOUTH AFRICA                   27               0      91
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               11     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               13     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                9     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                7     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                8     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7               99     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                2     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               3     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               2     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   13               1     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   14               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   15               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   16               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   17               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   18               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   19               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   20               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   24               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   25               0     168
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   27               0     168
21-24 months   NIH-Crypto       BANGLADESH                     0               95     493
21-24 months   NIH-Crypto       BANGLADESH                     1               11     493
21-24 months   NIH-Crypto       BANGLADESH                     2               10     493
21-24 months   NIH-Crypto       BANGLADESH                     3               20     493
21-24 months   NIH-Crypto       BANGLADESH                     4               30     493
21-24 months   NIH-Crypto       BANGLADESH                     5               62     493
21-24 months   NIH-Crypto       BANGLADESH                     6               22     493
21-24 months   NIH-Crypto       BANGLADESH                     7               37     493
21-24 months   NIH-Crypto       BANGLADESH                     8               57     493
21-24 months   NIH-Crypto       BANGLADESH                     9               63     493
21-24 months   NIH-Crypto       BANGLADESH                     10              39     493
21-24 months   NIH-Crypto       BANGLADESH                     11               0     493
21-24 months   NIH-Crypto       BANGLADESH                     12              27     493
21-24 months   NIH-Crypto       BANGLADESH                     13               0     493
21-24 months   NIH-Crypto       BANGLADESH                     14               5     493
21-24 months   NIH-Crypto       BANGLADESH                     15              10     493
21-24 months   NIH-Crypto       BANGLADESH                     16               0     493
21-24 months   NIH-Crypto       BANGLADESH                     17               5     493
21-24 months   NIH-Crypto       BANGLADESH                     18               0     493
21-24 months   NIH-Crypto       BANGLADESH                     19               0     493
21-24 months   NIH-Crypto       BANGLADESH                     20               0     493
21-24 months   NIH-Crypto       BANGLADESH                     24               0     493
21-24 months   NIH-Crypto       BANGLADESH                     25               0     493
21-24 months   NIH-Crypto       BANGLADESH                     27               0     493
21-24 months   PROBIT           BELARUS                        0                0     205
21-24 months   PROBIT           BELARUS                        1                0     205
21-24 months   PROBIT           BELARUS                        2                0     205
21-24 months   PROBIT           BELARUS                        3                0     205
21-24 months   PROBIT           BELARUS                        4                0     205
21-24 months   PROBIT           BELARUS                        5                0     205
21-24 months   PROBIT           BELARUS                        6                0     205
21-24 months   PROBIT           BELARUS                        7                0     205
21-24 months   PROBIT           BELARUS                        8                0     205
21-24 months   PROBIT           BELARUS                        9                0     205
21-24 months   PROBIT           BELARUS                        10               6     205
21-24 months   PROBIT           BELARUS                        11               0     205
21-24 months   PROBIT           BELARUS                        12              78     205
21-24 months   PROBIT           BELARUS                        13              89     205
21-24 months   PROBIT           BELARUS                        14               6     205
21-24 months   PROBIT           BELARUS                        15               0     205
21-24 months   PROBIT           BELARUS                        16              26     205
21-24 months   PROBIT           BELARUS                        17               0     205
21-24 months   PROBIT           BELARUS                        18               0     205
21-24 months   PROBIT           BELARUS                        19               0     205
21-24 months   PROBIT           BELARUS                        20               0     205
21-24 months   PROBIT           BELARUS                        24               0     205
21-24 months   PROBIT           BELARUS                        25               0     205
21-24 months   PROBIT           BELARUS                        27               0     205
21-24 months   PROVIDE          BANGLADESH                     0              151     485
21-24 months   PROVIDE          BANGLADESH                     1                9     485
21-24 months   PROVIDE          BANGLADESH                     2               15     485
21-24 months   PROVIDE          BANGLADESH                     3               19     485
21-24 months   PROVIDE          BANGLADESH                     4               35     485
21-24 months   PROVIDE          BANGLADESH                     5               52     485
21-24 months   PROVIDE          BANGLADESH                     6               19     485
21-24 months   PROVIDE          BANGLADESH                     7               29     485
21-24 months   PROVIDE          BANGLADESH                     8               44     485
21-24 months   PROVIDE          BANGLADESH                     9               42     485
21-24 months   PROVIDE          BANGLADESH                     10              21     485
21-24 months   PROVIDE          BANGLADESH                     11              20     485
21-24 months   PROVIDE          BANGLADESH                     12               2     485
21-24 months   PROVIDE          BANGLADESH                     13               0     485
21-24 months   PROVIDE          BANGLADESH                     14              14     485
21-24 months   PROVIDE          BANGLADESH                     15               5     485
21-24 months   PROVIDE          BANGLADESH                     16               7     485
21-24 months   PROVIDE          BANGLADESH                     17               0     485
21-24 months   PROVIDE          BANGLADESH                     18               0     485
21-24 months   PROVIDE          BANGLADESH                     19               1     485
21-24 months   PROVIDE          BANGLADESH                     20               0     485
21-24 months   PROVIDE          BANGLADESH                     24               0     485
21-24 months   PROVIDE          BANGLADESH                     25               0     485
21-24 months   PROVIDE          BANGLADESH                     27               0     485
21-24 months   ZVITAMBO         ZIMBABWE                       0                5     283
21-24 months   ZVITAMBO         ZIMBABWE                       1                0     283
21-24 months   ZVITAMBO         ZIMBABWE                       2                0     283
21-24 months   ZVITAMBO         ZIMBABWE                       3                1     283
21-24 months   ZVITAMBO         ZIMBABWE                       4                1     283
21-24 months   ZVITAMBO         ZIMBABWE                       5                2     283
21-24 months   ZVITAMBO         ZIMBABWE                       6                0     283
21-24 months   ZVITAMBO         ZIMBABWE                       7               25     283
21-24 months   ZVITAMBO         ZIMBABWE                       8                4     283
21-24 months   ZVITAMBO         ZIMBABWE                       9               28     283
21-24 months   ZVITAMBO         ZIMBABWE                       10              11     283
21-24 months   ZVITAMBO         ZIMBABWE                       11             195     283
21-24 months   ZVITAMBO         ZIMBABWE                       12               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       13              11     283
21-24 months   ZVITAMBO         ZIMBABWE                       14               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       15               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       16               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       17               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       18               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       19               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       20               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       24               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       25               0     283
21-24 months   ZVITAMBO         ZIMBABWE                       27               0     283


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE


ALL STRATA DROPPED. JOB FINISHED
















