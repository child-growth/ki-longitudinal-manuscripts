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

**Outcome Variable:** pers_wast

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

agecat        studyid          country                        month    pers_wast   n_cell       n
------------  ---------------  -----------------------------  ------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1                0       27     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                0       21     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                1        3     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                0       23     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                1        3     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                0       28     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                0       41     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                1        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                0       33     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                1        4     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                0       31     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                1        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                0       40     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                0       22     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          10               0       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          10               1        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          11               0       40     373
0-24 months   CMC-V-BCS-2002   INDIA                          11               1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          12               0       27     373
0-24 months   CMC-V-BCS-2002   INDIA                          12               1        2     373
0-24 months   CMIN             BANGLADESH                     1                0       25     257
0-24 months   CMIN             BANGLADESH                     1                1        3     257
0-24 months   CMIN             BANGLADESH                     2                0       30     257
0-24 months   CMIN             BANGLADESH                     2                1        2     257
0-24 months   CMIN             BANGLADESH                     3                0       20     257
0-24 months   CMIN             BANGLADESH                     3                1        0     257
0-24 months   CMIN             BANGLADESH                     4                0       16     257
0-24 months   CMIN             BANGLADESH                     4                1        3     257
0-24 months   CMIN             BANGLADESH                     5                0       20     257
0-24 months   CMIN             BANGLADESH                     5                1        0     257
0-24 months   CMIN             BANGLADESH                     6                0       20     257
0-24 months   CMIN             BANGLADESH                     6                1        3     257
0-24 months   CMIN             BANGLADESH                     7                0       12     257
0-24 months   CMIN             BANGLADESH                     7                1        1     257
0-24 months   CMIN             BANGLADESH                     8                0       13     257
0-24 months   CMIN             BANGLADESH                     8                1        1     257
0-24 months   CMIN             BANGLADESH                     9                0       18     257
0-24 months   CMIN             BANGLADESH                     9                1        1     257
0-24 months   CMIN             BANGLADESH                     10               0       21     257
0-24 months   CMIN             BANGLADESH                     10               1        0     257
0-24 months   CMIN             BANGLADESH                     11               0        2     257
0-24 months   CMIN             BANGLADESH                     11               1        0     257
0-24 months   CMIN             BANGLADESH                     12               0       40     257
0-24 months   CMIN             BANGLADESH                     12               1        6     257
0-24 months   CONTENT          PERU                           1                0        9     215
0-24 months   CONTENT          PERU                           1                1        0     215
0-24 months   CONTENT          PERU                           2                0       13     215
0-24 months   CONTENT          PERU                           2                1        0     215
0-24 months   CONTENT          PERU                           3                0       27     215
0-24 months   CONTENT          PERU                           3                1        0     215
0-24 months   CONTENT          PERU                           4                0       18     215
0-24 months   CONTENT          PERU                           4                1        0     215
0-24 months   CONTENT          PERU                           5                0       25     215
0-24 months   CONTENT          PERU                           5                1        0     215
0-24 months   CONTENT          PERU                           6                0       14     215
0-24 months   CONTENT          PERU                           6                1        0     215
0-24 months   CONTENT          PERU                           7                0       16     215
0-24 months   CONTENT          PERU                           7                1        0     215
0-24 months   CONTENT          PERU                           8                0       26     215
0-24 months   CONTENT          PERU                           8                1        0     215
0-24 months   CONTENT          PERU                           9                0       19     215
0-24 months   CONTENT          PERU                           9                1        0     215
0-24 months   CONTENT          PERU                           10               0       23     215
0-24 months   CONTENT          PERU                           10               1        0     215
0-24 months   CONTENT          PERU                           11               0       18     215
0-24 months   CONTENT          PERU                           11               1        0     215
0-24 months   CONTENT          PERU                           12               0        7     215
0-24 months   CONTENT          PERU                           12               1        0     215
0-24 months   EE               PAKISTAN                       1                0       84     377
0-24 months   EE               PAKISTAN                       1                1        7     377
0-24 months   EE               PAKISTAN                       2                0       68     377
0-24 months   EE               PAKISTAN                       2                1        5     377
0-24 months   EE               PAKISTAN                       3                0       37     377
0-24 months   EE               PAKISTAN                       3                1       10     377
0-24 months   EE               PAKISTAN                       4                0       21     377
0-24 months   EE               PAKISTAN                       4                1        1     377
0-24 months   EE               PAKISTAN                       5                0        0     377
0-24 months   EE               PAKISTAN                       5                1        0     377
0-24 months   EE               PAKISTAN                       6                0        0     377
0-24 months   EE               PAKISTAN                       6                1        0     377
0-24 months   EE               PAKISTAN                       7                0        0     377
0-24 months   EE               PAKISTAN                       7                1        0     377
0-24 months   EE               PAKISTAN                       8                0        0     377
0-24 months   EE               PAKISTAN                       8                1        0     377
0-24 months   EE               PAKISTAN                       9                0        0     377
0-24 months   EE               PAKISTAN                       9                1        0     377
0-24 months   EE               PAKISTAN                       10               0        0     377
0-24 months   EE               PAKISTAN                       10               1        0     377
0-24 months   EE               PAKISTAN                       11               0       55     377
0-24 months   EE               PAKISTAN                       11               1        5     377
0-24 months   EE               PAKISTAN                       12               0       79     377
0-24 months   EE               PAKISTAN                       12               1        5     377
0-24 months   GMS-Nepal        NEPAL                          1                0        0     597
0-24 months   GMS-Nepal        NEPAL                          1                1        0     597
0-24 months   GMS-Nepal        NEPAL                          2                0        0     597
0-24 months   GMS-Nepal        NEPAL                          2                1        0     597
0-24 months   GMS-Nepal        NEPAL                          3                0        0     597
0-24 months   GMS-Nepal        NEPAL                          3                1        0     597
0-24 months   GMS-Nepal        NEPAL                          4                0        1     597
0-24 months   GMS-Nepal        NEPAL                          4                1        0     597
0-24 months   GMS-Nepal        NEPAL                          5                0        0     597
0-24 months   GMS-Nepal        NEPAL                          5                1        0     597
0-24 months   GMS-Nepal        NEPAL                          6                0      106     597
0-24 months   GMS-Nepal        NEPAL                          6                1       14     597
0-24 months   GMS-Nepal        NEPAL                          7                0      196     597
0-24 months   GMS-Nepal        NEPAL                          7                1       32     597
0-24 months   GMS-Nepal        NEPAL                          8                0      214     597
0-24 months   GMS-Nepal        NEPAL                          8                1       34     597
0-24 months   GMS-Nepal        NEPAL                          9                0        0     597
0-24 months   GMS-Nepal        NEPAL                          9                1        0     597
0-24 months   GMS-Nepal        NEPAL                          10               0        0     597
0-24 months   GMS-Nepal        NEPAL                          10               1        0     597
0-24 months   GMS-Nepal        NEPAL                          11               0        0     597
0-24 months   GMS-Nepal        NEPAL                          11               1        0     597
0-24 months   GMS-Nepal        NEPAL                          12               0        0     597
0-24 months   GMS-Nepal        NEPAL                          12               1        0     597
0-24 months   Guatemala BSC    GUATEMALA                      1                0       14     256
0-24 months   Guatemala BSC    GUATEMALA                      1                1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      2                0       18     256
0-24 months   Guatemala BSC    GUATEMALA                      2                1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      3                0       18     256
0-24 months   Guatemala BSC    GUATEMALA                      3                1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      4                0       19     256
0-24 months   Guatemala BSC    GUATEMALA                      4                1        1     256
0-24 months   Guatemala BSC    GUATEMALA                      5                0       28     256
0-24 months   Guatemala BSC    GUATEMALA                      5                1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      6                0       35     256
0-24 months   Guatemala BSC    GUATEMALA                      6                1        1     256
0-24 months   Guatemala BSC    GUATEMALA                      7                0       23     256
0-24 months   Guatemala BSC    GUATEMALA                      7                1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      8                0       17     256
0-24 months   Guatemala BSC    GUATEMALA                      8                1        1     256
0-24 months   Guatemala BSC    GUATEMALA                      9                0       30     256
0-24 months   Guatemala BSC    GUATEMALA                      9                1        1     256
0-24 months   Guatemala BSC    GUATEMALA                      10               0       21     256
0-24 months   Guatemala BSC    GUATEMALA                      10               1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      11               0       22     256
0-24 months   Guatemala BSC    GUATEMALA                      11               1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      12               0        7     256
0-24 months   Guatemala BSC    GUATEMALA                      12               1        0     256
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                0      113    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                1       13    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                0       95    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                1        9    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                0       89    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                1       14    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                0       87    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                1       12    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                0       96    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                1       17    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                0      171    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                1       20    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                0      194    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                1       20    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                0      176    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                1       34    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                0      134    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                1       17    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   10               0      181    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   10               1       19    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   11               0       77    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   11               1       11    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   12               0       56    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   12               1       14    1669
0-24 months   IRC              INDIA                          1                0       32     410
0-24 months   IRC              INDIA                          1                1        3     410
0-24 months   IRC              INDIA                          2                0       29     410
0-24 months   IRC              INDIA                          2                1        1     410
0-24 months   IRC              INDIA                          3                0       27     410
0-24 months   IRC              INDIA                          3                1        2     410
0-24 months   IRC              INDIA                          4                0       22     410
0-24 months   IRC              INDIA                          4                1        2     410
0-24 months   IRC              INDIA                          5                0       19     410
0-24 months   IRC              INDIA                          5                1        2     410
0-24 months   IRC              INDIA                          6                0       31     410
0-24 months   IRC              INDIA                          6                1        4     410
0-24 months   IRC              INDIA                          7                0       30     410
0-24 months   IRC              INDIA                          7                1        6     410
0-24 months   IRC              INDIA                          8                0       32     410
0-24 months   IRC              INDIA                          8                1        9     410
0-24 months   IRC              INDIA                          9                0       25     410
0-24 months   IRC              INDIA                          9                1        5     410
0-24 months   IRC              INDIA                          10               0       33     410
0-24 months   IRC              INDIA                          10               1        6     410
0-24 months   IRC              INDIA                          11               0       38     410
0-24 months   IRC              INDIA                          11               1        3     410
0-24 months   IRC              INDIA                          12               0       44     410
0-24 months   IRC              INDIA                          12               1        5     410
0-24 months   JiVitA-3         BANGLADESH                     1                0     1228   15803
0-24 months   JiVitA-3         BANGLADESH                     1                1       58   15803
0-24 months   JiVitA-3         BANGLADESH                     2                0     1078   15803
0-24 months   JiVitA-3         BANGLADESH                     2                1       55   15803
0-24 months   JiVitA-3         BANGLADESH                     3                0     1303   15803
0-24 months   JiVitA-3         BANGLADESH                     3                1       75   15803
0-24 months   JiVitA-3         BANGLADESH                     4                0     1059   15803
0-24 months   JiVitA-3         BANGLADESH                     4                1       79   15803
0-24 months   JiVitA-3         BANGLADESH                     5                0     1035   15803
0-24 months   JiVitA-3         BANGLADESH                     5                1       58   15803
0-24 months   JiVitA-3         BANGLADESH                     6                0     1022   15803
0-24 months   JiVitA-3         BANGLADESH                     6                1       74   15803
0-24 months   JiVitA-3         BANGLADESH                     7                0     1126   15803
0-24 months   JiVitA-3         BANGLADESH                     7                1       72   15803
0-24 months   JiVitA-3         BANGLADESH                     8                0     1280   15803
0-24 months   JiVitA-3         BANGLADESH                     8                1       80   15803
0-24 months   JiVitA-3         BANGLADESH                     9                0     1353   15803
0-24 months   JiVitA-3         BANGLADESH                     9                1       86   15803
0-24 months   JiVitA-3         BANGLADESH                     10               0     1474   15803
0-24 months   JiVitA-3         BANGLADESH                     10               1      108   15803
0-24 months   JiVitA-3         BANGLADESH                     11               0     1454   15803
0-24 months   JiVitA-3         BANGLADESH                     11               1       79   15803
0-24 months   JiVitA-3         BANGLADESH                     12               0     1493   15803
0-24 months   JiVitA-3         BANGLADESH                     12               1       74   15803
0-24 months   JiVitA-4         BANGLADESH                     1                0       53    5281
0-24 months   JiVitA-4         BANGLADESH                     1                1        3    5281
0-24 months   JiVitA-4         BANGLADESH                     2                0      340    5281
0-24 months   JiVitA-4         BANGLADESH                     2                1       19    5281
0-24 months   JiVitA-4         BANGLADESH                     3                0      426    5281
0-24 months   JiVitA-4         BANGLADESH                     3                1       36    5281
0-24 months   JiVitA-4         BANGLADESH                     4                0      835    5281
0-24 months   JiVitA-4         BANGLADESH                     4                1       72    5281
0-24 months   JiVitA-4         BANGLADESH                     5                0      559    5281
0-24 months   JiVitA-4         BANGLADESH                     5                1       55    5281
0-24 months   JiVitA-4         BANGLADESH                     6                0      411    5281
0-24 months   JiVitA-4         BANGLADESH                     6                1       44    5281
0-24 months   JiVitA-4         BANGLADESH                     7                0      774    5281
0-24 months   JiVitA-4         BANGLADESH                     7                1       89    5281
0-24 months   JiVitA-4         BANGLADESH                     8                0      489    5281
0-24 months   JiVitA-4         BANGLADESH                     8                1       34    5281
0-24 months   JiVitA-4         BANGLADESH                     9                0      453    5281
0-24 months   JiVitA-4         BANGLADESH                     9                1       34    5281
0-24 months   JiVitA-4         BANGLADESH                     10               0      295    5281
0-24 months   JiVitA-4         BANGLADESH                     10               1       19    5281
0-24 months   JiVitA-4         BANGLADESH                     11               0      146    5281
0-24 months   JiVitA-4         BANGLADESH                     11               1       16    5281
0-24 months   JiVitA-4         BANGLADESH                     12               0       74    5281
0-24 months   JiVitA-4         BANGLADESH                     12               1        5    5281
0-24 months   Keneba           GAMBIA                         1                0      197    2444
0-24 months   Keneba           GAMBIA                         1                1        7    2444
0-24 months   Keneba           GAMBIA                         2                0      222    2444
0-24 months   Keneba           GAMBIA                         2                1       18    2444
0-24 months   Keneba           GAMBIA                         3                0      206    2444
0-24 months   Keneba           GAMBIA                         3                1        6    2444
0-24 months   Keneba           GAMBIA                         4                0      239    2444
0-24 months   Keneba           GAMBIA                         4                1       20    2444
0-24 months   Keneba           GAMBIA                         5                0      217    2444
0-24 months   Keneba           GAMBIA                         5                1       13    2444
0-24 months   Keneba           GAMBIA                         6                0      174    2444
0-24 months   Keneba           GAMBIA                         6                1       11    2444
0-24 months   Keneba           GAMBIA                         7                0      134    2444
0-24 months   Keneba           GAMBIA                         7                1        8    2444
0-24 months   Keneba           GAMBIA                         8                0      127    2444
0-24 months   Keneba           GAMBIA                         8                1       14    2444
0-24 months   Keneba           GAMBIA                         9                0      168    2444
0-24 months   Keneba           GAMBIA                         9                1        8    2444
0-24 months   Keneba           GAMBIA                         10               0      191    2444
0-24 months   Keneba           GAMBIA                         10               1       12    2444
0-24 months   Keneba           GAMBIA                         11               0      254    2444
0-24 months   Keneba           GAMBIA                         11               1       16    2444
0-24 months   Keneba           GAMBIA                         12               0      170    2444
0-24 months   Keneba           GAMBIA                         12               1       12    2444
0-24 months   LCNI-5           MALAWI                         1                0       49     719
0-24 months   LCNI-5           MALAWI                         1                1        0     719
0-24 months   LCNI-5           MALAWI                         2                0      100     719
0-24 months   LCNI-5           MALAWI                         2                1        2     719
0-24 months   LCNI-5           MALAWI                         3                0       88     719
0-24 months   LCNI-5           MALAWI                         3                1        1     719
0-24 months   LCNI-5           MALAWI                         4                0       97     719
0-24 months   LCNI-5           MALAWI                         4                1        0     719
0-24 months   LCNI-5           MALAWI                         5                0       85     719
0-24 months   LCNI-5           MALAWI                         5                1        0     719
0-24 months   LCNI-5           MALAWI                         6                0       75     719
0-24 months   LCNI-5           MALAWI                         6                1        1     719
0-24 months   LCNI-5           MALAWI                         7                0       60     719
0-24 months   LCNI-5           MALAWI                         7                1        0     719
0-24 months   LCNI-5           MALAWI                         8                0       38     719
0-24 months   LCNI-5           MALAWI                         8                1        0     719
0-24 months   LCNI-5           MALAWI                         9                0       24     719
0-24 months   LCNI-5           MALAWI                         9                1        0     719
0-24 months   LCNI-5           MALAWI                         10               0       30     719
0-24 months   LCNI-5           MALAWI                         10               1        0     719
0-24 months   LCNI-5           MALAWI                         11               0       41     719
0-24 months   LCNI-5           MALAWI                         11               1        0     719
0-24 months   LCNI-5           MALAWI                         12               0       26     719
0-24 months   LCNI-5           MALAWI                         12               1        2     719
0-24 months   MAL-ED           BANGLADESH                     1                0       22     248
0-24 months   MAL-ED           BANGLADESH                     1                1        0     248
0-24 months   MAL-ED           BANGLADESH                     2                0       19     248
0-24 months   MAL-ED           BANGLADESH                     2                1        1     248
0-24 months   MAL-ED           BANGLADESH                     3                0       24     248
0-24 months   MAL-ED           BANGLADESH                     3                1        0     248
0-24 months   MAL-ED           BANGLADESH                     4                0       22     248
0-24 months   MAL-ED           BANGLADESH                     4                1        2     248
0-24 months   MAL-ED           BANGLADESH                     5                0       15     248
0-24 months   MAL-ED           BANGLADESH                     5                1        2     248
0-24 months   MAL-ED           BANGLADESH                     6                0       11     248
0-24 months   MAL-ED           BANGLADESH                     6                1        1     248
0-24 months   MAL-ED           BANGLADESH                     7                0       16     248
0-24 months   MAL-ED           BANGLADESH                     7                1        1     248
0-24 months   MAL-ED           BANGLADESH                     8                0       27     248
0-24 months   MAL-ED           BANGLADESH                     8                1        0     248
0-24 months   MAL-ED           BANGLADESH                     9                0       19     248
0-24 months   MAL-ED           BANGLADESH                     9                1        2     248
0-24 months   MAL-ED           BANGLADESH                     10               0       20     248
0-24 months   MAL-ED           BANGLADESH                     10               1        2     248
0-24 months   MAL-ED           BANGLADESH                     11               0       14     248
0-24 months   MAL-ED           BANGLADESH                     11               1        1     248
0-24 months   MAL-ED           BANGLADESH                     12               0       26     248
0-24 months   MAL-ED           BANGLADESH                     12               1        1     248
0-24 months   MAL-ED           BRAZIL                         1                0       15     218
0-24 months   MAL-ED           BRAZIL                         1                1        0     218
0-24 months   MAL-ED           BRAZIL                         2                0       25     218
0-24 months   MAL-ED           BRAZIL                         2                1        0     218
0-24 months   MAL-ED           BRAZIL                         3                0       16     218
0-24 months   MAL-ED           BRAZIL                         3                1        0     218
0-24 months   MAL-ED           BRAZIL                         4                0       12     218
0-24 months   MAL-ED           BRAZIL                         4                1        0     218
0-24 months   MAL-ED           BRAZIL                         5                0       17     218
0-24 months   MAL-ED           BRAZIL                         5                1        0     218
0-24 months   MAL-ED           BRAZIL                         6                0       15     218
0-24 months   MAL-ED           BRAZIL                         6                1        0     218
0-24 months   MAL-ED           BRAZIL                         7                0       16     218
0-24 months   MAL-ED           BRAZIL                         7                1        0     218
0-24 months   MAL-ED           BRAZIL                         8                0       16     218
0-24 months   MAL-ED           BRAZIL                         8                1        0     218
0-24 months   MAL-ED           BRAZIL                         9                0       23     218
0-24 months   MAL-ED           BRAZIL                         9                1        0     218
0-24 months   MAL-ED           BRAZIL                         10               0       25     218
0-24 months   MAL-ED           BRAZIL                         10               1        1     218
0-24 months   MAL-ED           BRAZIL                         11               0       19     218
0-24 months   MAL-ED           BRAZIL                         11               1        0     218
0-24 months   MAL-ED           BRAZIL                         12               0       17     218
0-24 months   MAL-ED           BRAZIL                         12               1        1     218
0-24 months   MAL-ED           INDIA                          1                0       15     241
0-24 months   MAL-ED           INDIA                          1                1        1     241
0-24 months   MAL-ED           INDIA                          2                0       22     241
0-24 months   MAL-ED           INDIA                          2                1        2     241
0-24 months   MAL-ED           INDIA                          3                0       20     241
0-24 months   MAL-ED           INDIA                          3                1        1     241
0-24 months   MAL-ED           INDIA                          4                0       16     241
0-24 months   MAL-ED           INDIA                          4                1        2     241
0-24 months   MAL-ED           INDIA                          5                0        7     241
0-24 months   MAL-ED           INDIA                          5                1        1     241
0-24 months   MAL-ED           INDIA                          6                0       14     241
0-24 months   MAL-ED           INDIA                          6                1        4     241
0-24 months   MAL-ED           INDIA                          7                0       21     241
0-24 months   MAL-ED           INDIA                          7                1        0     241
0-24 months   MAL-ED           INDIA                          8                0       19     241
0-24 months   MAL-ED           INDIA                          8                1        5     241
0-24 months   MAL-ED           INDIA                          9                0       21     241
0-24 months   MAL-ED           INDIA                          9                1        0     241
0-24 months   MAL-ED           INDIA                          10               0       23     241
0-24 months   MAL-ED           INDIA                          10               1        1     241
0-24 months   MAL-ED           INDIA                          11               0       22     241
0-24 months   MAL-ED           INDIA                          11               1        2     241
0-24 months   MAL-ED           INDIA                          12               0       20     241
0-24 months   MAL-ED           INDIA                          12               1        2     241
0-24 months   MAL-ED           NEPAL                          1                0       19     238
0-24 months   MAL-ED           NEPAL                          1                1        1     238
0-24 months   MAL-ED           NEPAL                          2                0       20     238
0-24 months   MAL-ED           NEPAL                          2                1        0     238
0-24 months   MAL-ED           NEPAL                          3                0       20     238
0-24 months   MAL-ED           NEPAL                          3                1        0     238
0-24 months   MAL-ED           NEPAL                          4                0       20     238
0-24 months   MAL-ED           NEPAL                          4                1        0     238
0-24 months   MAL-ED           NEPAL                          5                0       19     238
0-24 months   MAL-ED           NEPAL                          5                1        1     238
0-24 months   MAL-ED           NEPAL                          6                0       19     238
0-24 months   MAL-ED           NEPAL                          6                1        1     238
0-24 months   MAL-ED           NEPAL                          7                0       19     238
0-24 months   MAL-ED           NEPAL                          7                1        0     238
0-24 months   MAL-ED           NEPAL                          8                0       18     238
0-24 months   MAL-ED           NEPAL                          8                1        1     238
0-24 months   MAL-ED           NEPAL                          9                0       20     238
0-24 months   MAL-ED           NEPAL                          9                1        0     238
0-24 months   MAL-ED           NEPAL                          10               0       20     238
0-24 months   MAL-ED           NEPAL                          10               1        0     238
0-24 months   MAL-ED           NEPAL                          11               0       20     238
0-24 months   MAL-ED           NEPAL                          11               1        0     238
0-24 months   MAL-ED           NEPAL                          12               0       20     238
0-24 months   MAL-ED           NEPAL                          12               1        0     238
0-24 months   MAL-ED           PERU                           1                0       36     284
0-24 months   MAL-ED           PERU                           1                1        0     284
0-24 months   MAL-ED           PERU                           2                0       29     284
0-24 months   MAL-ED           PERU                           2                1        0     284
0-24 months   MAL-ED           PERU                           3                0       22     284
0-24 months   MAL-ED           PERU                           3                1        0     284
0-24 months   MAL-ED           PERU                           4                0       18     284
0-24 months   MAL-ED           PERU                           4                1        0     284
0-24 months   MAL-ED           PERU                           5                0       24     284
0-24 months   MAL-ED           PERU                           5                1        0     284
0-24 months   MAL-ED           PERU                           6                0       20     284
0-24 months   MAL-ED           PERU                           6                1        0     284
0-24 months   MAL-ED           PERU                           7                0       23     284
0-24 months   MAL-ED           PERU                           7                1        0     284
0-24 months   MAL-ED           PERU                           8                0       15     284
0-24 months   MAL-ED           PERU                           8                1        1     284
0-24 months   MAL-ED           PERU                           9                0       22     284
0-24 months   MAL-ED           PERU                           9                1        0     284
0-24 months   MAL-ED           PERU                           10               0       21     284
0-24 months   MAL-ED           PERU                           10               1        0     284
0-24 months   MAL-ED           PERU                           11               0       35     284
0-24 months   MAL-ED           PERU                           11               1        0     284
0-24 months   MAL-ED           PERU                           12               0       18     284
0-24 months   MAL-ED           PERU                           12               1        0     284
0-24 months   MAL-ED           SOUTH AFRICA                   1                0       31     275
0-24 months   MAL-ED           SOUTH AFRICA                   1                1        1     275
0-24 months   MAL-ED           SOUTH AFRICA                   2                0       34     275
0-24 months   MAL-ED           SOUTH AFRICA                   2                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   3                0       17     275
0-24 months   MAL-ED           SOUTH AFRICA                   3                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   4                0       12     275
0-24 months   MAL-ED           SOUTH AFRICA                   4                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   5                0       11     275
0-24 months   MAL-ED           SOUTH AFRICA                   5                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   6                0       21     275
0-24 months   MAL-ED           SOUTH AFRICA                   6                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   7                0       27     275
0-24 months   MAL-ED           SOUTH AFRICA                   7                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   8                0       10     275
0-24 months   MAL-ED           SOUTH AFRICA                   8                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   9                0       22     275
0-24 months   MAL-ED           SOUTH AFRICA                   9                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   10               0       24     275
0-24 months   MAL-ED           SOUTH AFRICA                   10               1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   11               0       31     275
0-24 months   MAL-ED           SOUTH AFRICA                   11               1        1     275
0-24 months   MAL-ED           SOUTH AFRICA                   12               0       33     275
0-24 months   MAL-ED           SOUTH AFRICA                   12               1        0     275
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       21     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       28     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       23     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0       10     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0       16     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0       16     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       28     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0       12     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0       18     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0       19     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       29     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0       33     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        0     253
0-24 months   NIH-Birth        BANGLADESH                     1                0       49     534
0-24 months   NIH-Birth        BANGLADESH                     1                1        5     534
0-24 months   NIH-Birth        BANGLADESH                     2                0       44     534
0-24 months   NIH-Birth        BANGLADESH                     2                1        2     534
0-24 months   NIH-Birth        BANGLADESH                     3                0       45     534
0-24 months   NIH-Birth        BANGLADESH                     3                1        5     534
0-24 months   NIH-Birth        BANGLADESH                     4                0       40     534
0-24 months   NIH-Birth        BANGLADESH                     4                1        5     534
0-24 months   NIH-Birth        BANGLADESH                     5                0       34     534
0-24 months   NIH-Birth        BANGLADESH                     5                1        6     534
0-24 months   NIH-Birth        BANGLADESH                     6                0       36     534
0-24 months   NIH-Birth        BANGLADESH                     6                1        4     534
0-24 months   NIH-Birth        BANGLADESH                     7                0       42     534
0-24 months   NIH-Birth        BANGLADESH                     7                1        3     534
0-24 months   NIH-Birth        BANGLADESH                     8                0       32     534
0-24 months   NIH-Birth        BANGLADESH                     8                1        3     534
0-24 months   NIH-Birth        BANGLADESH                     9                0       27     534
0-24 months   NIH-Birth        BANGLADESH                     9                1        2     534
0-24 months   NIH-Birth        BANGLADESH                     10               0       47     534
0-24 months   NIH-Birth        BANGLADESH                     10               1        5     534
0-24 months   NIH-Birth        BANGLADESH                     11               0       44     534
0-24 months   NIH-Birth        BANGLADESH                     11               1        4     534
0-24 months   NIH-Birth        BANGLADESH                     12               0       47     534
0-24 months   NIH-Birth        BANGLADESH                     12               1        3     534
0-24 months   PROBIT           BELARUS                        1                0     1131   16583
0-24 months   PROBIT           BELARUS                        1                1       17   16583
0-24 months   PROBIT           BELARUS                        2                0      980   16583
0-24 months   PROBIT           BELARUS                        2                1        6   16583
0-24 months   PROBIT           BELARUS                        3                0     1164   16583
0-24 months   PROBIT           BELARUS                        3                1        5   16583
0-24 months   PROBIT           BELARUS                        4                0     1111   16583
0-24 months   PROBIT           BELARUS                        4                1        7   16583
0-24 months   PROBIT           BELARUS                        5                0     1125   16583
0-24 months   PROBIT           BELARUS                        5                1        7   16583
0-24 months   PROBIT           BELARUS                        6                0     1177   16583
0-24 months   PROBIT           BELARUS                        6                1       14   16583
0-24 months   PROBIT           BELARUS                        7                0     1439   16583
0-24 months   PROBIT           BELARUS                        7                1       14   16583
0-24 months   PROBIT           BELARUS                        8                0     1572   16583
0-24 months   PROBIT           BELARUS                        8                1        9   16583
0-24 months   PROBIT           BELARUS                        9                0     1543   16583
0-24 months   PROBIT           BELARUS                        9                1       15   16583
0-24 months   PROBIT           BELARUS                        10               0     1753   16583
0-24 months   PROBIT           BELARUS                        10               1       12   16583
0-24 months   PROBIT           BELARUS                        11               0     1662   16583
0-24 months   PROBIT           BELARUS                        11               1       18   16583
0-24 months   PROBIT           BELARUS                        12               0     1792   16583
0-24 months   PROBIT           BELARUS                        12               1       10   16583
0-24 months   ResPak           PAKISTAN                       1                0        2     256
0-24 months   ResPak           PAKISTAN                       1                1        0     256
0-24 months   ResPak           PAKISTAN                       2                0        6     256
0-24 months   ResPak           PAKISTAN                       2                1        3     256
0-24 months   ResPak           PAKISTAN                       3                0        9     256
0-24 months   ResPak           PAKISTAN                       3                1        1     256
0-24 months   ResPak           PAKISTAN                       4                0       19     256
0-24 months   ResPak           PAKISTAN                       4                1        2     256
0-24 months   ResPak           PAKISTAN                       5                0       27     256
0-24 months   ResPak           PAKISTAN                       5                1        5     256
0-24 months   ResPak           PAKISTAN                       6                0       41     256
0-24 months   ResPak           PAKISTAN                       6                1        3     256
0-24 months   ResPak           PAKISTAN                       7                0       40     256
0-24 months   ResPak           PAKISTAN                       7                1        4     256
0-24 months   ResPak           PAKISTAN                       8                0       23     256
0-24 months   ResPak           PAKISTAN                       8                1        4     256
0-24 months   ResPak           PAKISTAN                       9                0       31     256
0-24 months   ResPak           PAKISTAN                       9                1        9     256
0-24 months   ResPak           PAKISTAN                       10               0       14     256
0-24 months   ResPak           PAKISTAN                       10               1        1     256
0-24 months   ResPak           PAKISTAN                       11               0        5     256
0-24 months   ResPak           PAKISTAN                       11               1        2     256
0-24 months   ResPak           PAKISTAN                       12               0        5     256
0-24 months   ResPak           PAKISTAN                       12               1        0     256
0-24 months   SAS-CompFeed     INDIA                          1                0       81    1366
0-24 months   SAS-CompFeed     INDIA                          1                1       13    1366
0-24 months   SAS-CompFeed     INDIA                          2                0       74    1366
0-24 months   SAS-CompFeed     INDIA                          2                1        6    1366
0-24 months   SAS-CompFeed     INDIA                          3                0       73    1366
0-24 months   SAS-CompFeed     INDIA                          3                1        7    1366
0-24 months   SAS-CompFeed     INDIA                          4                0       71    1366
0-24 months   SAS-CompFeed     INDIA                          4                1        7    1366
0-24 months   SAS-CompFeed     INDIA                          5                0       70    1366
0-24 months   SAS-CompFeed     INDIA                          5                1        9    1366
0-24 months   SAS-CompFeed     INDIA                          6                0      102    1366
0-24 months   SAS-CompFeed     INDIA                          6                1        4    1366
0-24 months   SAS-CompFeed     INDIA                          7                0      105    1366
0-24 months   SAS-CompFeed     INDIA                          7                1       11    1366
0-24 months   SAS-CompFeed     INDIA                          8                0      138    1366
0-24 months   SAS-CompFeed     INDIA                          8                1       15    1366
0-24 months   SAS-CompFeed     INDIA                          9                0      154    1366
0-24 months   SAS-CompFeed     INDIA                          9                1       14    1366
0-24 months   SAS-CompFeed     INDIA                          10               0      139    1366
0-24 months   SAS-CompFeed     INDIA                          10               1        9    1366
0-24 months   SAS-CompFeed     INDIA                          11               0      117    1366
0-24 months   SAS-CompFeed     INDIA                          11               1       12    1366
0-24 months   SAS-CompFeed     INDIA                          12               0      128    1366
0-24 months   SAS-CompFeed     INDIA                          12               1        7    1366
0-24 months   SAS-FoodSuppl    INDIA                          1                0       50     375
0-24 months   SAS-FoodSuppl    INDIA                          1                1        6     375
0-24 months   SAS-FoodSuppl    INDIA                          2                0       33     375
0-24 months   SAS-FoodSuppl    INDIA                          2                1        5     375
0-24 months   SAS-FoodSuppl    INDIA                          3                0       26     375
0-24 months   SAS-FoodSuppl    INDIA                          3                1        8     375
0-24 months   SAS-FoodSuppl    INDIA                          4                0       19     375
0-24 months   SAS-FoodSuppl    INDIA                          4                1        8     375
0-24 months   SAS-FoodSuppl    INDIA                          5                0       24     375
0-24 months   SAS-FoodSuppl    INDIA                          5                1        4     375
0-24 months   SAS-FoodSuppl    INDIA                          6                0       24     375
0-24 months   SAS-FoodSuppl    INDIA                          6                1        5     375
0-24 months   SAS-FoodSuppl    INDIA                          7                0       14     375
0-24 months   SAS-FoodSuppl    INDIA                          7                1        3     375
0-24 months   SAS-FoodSuppl    INDIA                          8                0        0     375
0-24 months   SAS-FoodSuppl    INDIA                          8                1        0     375
0-24 months   SAS-FoodSuppl    INDIA                          9                0        9     375
0-24 months   SAS-FoodSuppl    INDIA                          9                1        3     375
0-24 months   SAS-FoodSuppl    INDIA                          10               0       23     375
0-24 months   SAS-FoodSuppl    INDIA                          10               1        3     375
0-24 months   SAS-FoodSuppl    INDIA                          11               0       42     375
0-24 months   SAS-FoodSuppl    INDIA                          11               1        5     375
0-24 months   SAS-FoodSuppl    INDIA                          12               0       46     375
0-24 months   SAS-FoodSuppl    INDIA                          12               1       15     375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      199    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        8    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      136    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        4    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      162    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      148    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        2    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      169    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      148    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        6    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      157    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      177    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        5    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      202    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      207    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      197    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      206    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       10    2166
0-24 months   ZVITAMBO         ZIMBABWE                       1                0      917    9527
0-24 months   ZVITAMBO         ZIMBABWE                       1                1       24    9527
0-24 months   ZVITAMBO         ZIMBABWE                       2                0      684    9527
0-24 months   ZVITAMBO         ZIMBABWE                       2                1        9    9527
0-24 months   ZVITAMBO         ZIMBABWE                       3                0      760    9527
0-24 months   ZVITAMBO         ZIMBABWE                       3                1       22    9527
0-24 months   ZVITAMBO         ZIMBABWE                       4                0      725    9527
0-24 months   ZVITAMBO         ZIMBABWE                       4                1        8    9527
0-24 months   ZVITAMBO         ZIMBABWE                       5                0      689    9527
0-24 months   ZVITAMBO         ZIMBABWE                       5                1        8    9527
0-24 months   ZVITAMBO         ZIMBABWE                       6                0      778    9527
0-24 months   ZVITAMBO         ZIMBABWE                       6                1       13    9527
0-24 months   ZVITAMBO         ZIMBABWE                       7                0      783    9527
0-24 months   ZVITAMBO         ZIMBABWE                       7                1       16    9527
0-24 months   ZVITAMBO         ZIMBABWE                       8                0      823    9527
0-24 months   ZVITAMBO         ZIMBABWE                       8                1       13    9527
0-24 months   ZVITAMBO         ZIMBABWE                       9                0      873    9527
0-24 months   ZVITAMBO         ZIMBABWE                       9                1       14    9527
0-24 months   ZVITAMBO         ZIMBABWE                       10               0      656    9527
0-24 months   ZVITAMBO         ZIMBABWE                       10               1       14    9527
0-24 months   ZVITAMBO         ZIMBABWE                       11               0      781    9527
0-24 months   ZVITAMBO         ZIMBABWE                       11               1       11    9527
0-24 months   ZVITAMBO         ZIMBABWE                       12               0      890    9527
0-24 months   ZVITAMBO         ZIMBABWE                       12               1       16    9527
0-6 months    CMC-V-BCS-2002   INDIA                          1                0       27     358
0-6 months    CMC-V-BCS-2002   INDIA                          1                1        0     358
0-6 months    CMC-V-BCS-2002   INDIA                          2                0       18     358
0-6 months    CMC-V-BCS-2002   INDIA                          2                1        6     358
0-6 months    CMC-V-BCS-2002   INDIA                          3                0       21     358
0-6 months    CMC-V-BCS-2002   INDIA                          3                1        5     358
0-6 months    CMC-V-BCS-2002   INDIA                          4                0       22     358
0-6 months    CMC-V-BCS-2002   INDIA                          4                1        6     358
0-6 months    CMC-V-BCS-2002   INDIA                          5                0       33     358
0-6 months    CMC-V-BCS-2002   INDIA                          5                1        7     358
0-6 months    CMC-V-BCS-2002   INDIA                          6                0       31     358
0-6 months    CMC-V-BCS-2002   INDIA                          6                1        3     358
0-6 months    CMC-V-BCS-2002   INDIA                          7                0       28     358
0-6 months    CMC-V-BCS-2002   INDIA                          7                1        5     358
0-6 months    CMC-V-BCS-2002   INDIA                          8                0       37     358
0-6 months    CMC-V-BCS-2002   INDIA                          8                1        3     358
0-6 months    CMC-V-BCS-2002   INDIA                          9                0       15     358
0-6 months    CMC-V-BCS-2002   INDIA                          9                1        4     358
0-6 months    CMC-V-BCS-2002   INDIA                          10               0       17     358
0-6 months    CMC-V-BCS-2002   INDIA                          10               1        2     358
0-6 months    CMC-V-BCS-2002   INDIA                          11               0       35     358
0-6 months    CMC-V-BCS-2002   INDIA                          11               1        4     358
0-6 months    CMC-V-BCS-2002   INDIA                          12               0       24     358
0-6 months    CMC-V-BCS-2002   INDIA                          12               1        5     358
0-6 months    CMIN             BANGLADESH                     1                0       24     234
0-6 months    CMIN             BANGLADESH                     1                1        3     234
0-6 months    CMIN             BANGLADESH                     2                0       27     234
0-6 months    CMIN             BANGLADESH                     2                1        1     234
0-6 months    CMIN             BANGLADESH                     3                0       18     234
0-6 months    CMIN             BANGLADESH                     3                1        0     234
0-6 months    CMIN             BANGLADESH                     4                0       17     234
0-6 months    CMIN             BANGLADESH                     4                1        1     234
0-6 months    CMIN             BANGLADESH                     5                0       15     234
0-6 months    CMIN             BANGLADESH                     5                1        2     234
0-6 months    CMIN             BANGLADESH                     6                0       20     234
0-6 months    CMIN             BANGLADESH                     6                1        1     234
0-6 months    CMIN             BANGLADESH                     7                0       10     234
0-6 months    CMIN             BANGLADESH                     7                1        0     234
0-6 months    CMIN             BANGLADESH                     8                0       14     234
0-6 months    CMIN             BANGLADESH                     8                1        0     234
0-6 months    CMIN             BANGLADESH                     9                0       18     234
0-6 months    CMIN             BANGLADESH                     9                1        0     234
0-6 months    CMIN             BANGLADESH                     10               0       18     234
0-6 months    CMIN             BANGLADESH                     10               1        1     234
0-6 months    CMIN             BANGLADESH                     11               0        1     234
0-6 months    CMIN             BANGLADESH                     11               1        0     234
0-6 months    CMIN             BANGLADESH                     12               0       43     234
0-6 months    CMIN             BANGLADESH                     12               1        0     234
0-6 months    CONTENT          PERU                           1                0        9     215
0-6 months    CONTENT          PERU                           1                1        0     215
0-6 months    CONTENT          PERU                           2                0       13     215
0-6 months    CONTENT          PERU                           2                1        0     215
0-6 months    CONTENT          PERU                           3                0       27     215
0-6 months    CONTENT          PERU                           3                1        0     215
0-6 months    CONTENT          PERU                           4                0       18     215
0-6 months    CONTENT          PERU                           4                1        0     215
0-6 months    CONTENT          PERU                           5                0       25     215
0-6 months    CONTENT          PERU                           5                1        0     215
0-6 months    CONTENT          PERU                           6                0       14     215
0-6 months    CONTENT          PERU                           6                1        0     215
0-6 months    CONTENT          PERU                           7                0       16     215
0-6 months    CONTENT          PERU                           7                1        0     215
0-6 months    CONTENT          PERU                           8                0       26     215
0-6 months    CONTENT          PERU                           8                1        0     215
0-6 months    CONTENT          PERU                           9                0       19     215
0-6 months    CONTENT          PERU                           9                1        0     215
0-6 months    CONTENT          PERU                           10               0       23     215
0-6 months    CONTENT          PERU                           10               1        0     215
0-6 months    CONTENT          PERU                           11               0       18     215
0-6 months    CONTENT          PERU                           11               1        0     215
0-6 months    CONTENT          PERU                           12               0        7     215
0-6 months    CONTENT          PERU                           12               1        0     215
0-6 months    EE               PAKISTAN                       1                0       83     371
0-6 months    EE               PAKISTAN                       1                1        7     371
0-6 months    EE               PAKISTAN                       2                0       64     371
0-6 months    EE               PAKISTAN                       2                1        7     371
0-6 months    EE               PAKISTAN                       3                0       43     371
0-6 months    EE               PAKISTAN                       3                1        4     371
0-6 months    EE               PAKISTAN                       4                0       21     371
0-6 months    EE               PAKISTAN                       4                1        0     371
0-6 months    EE               PAKISTAN                       5                0        0     371
0-6 months    EE               PAKISTAN                       5                1        0     371
0-6 months    EE               PAKISTAN                       6                0        0     371
0-6 months    EE               PAKISTAN                       6                1        0     371
0-6 months    EE               PAKISTAN                       7                0        0     371
0-6 months    EE               PAKISTAN                       7                1        0     371
0-6 months    EE               PAKISTAN                       8                0        0     371
0-6 months    EE               PAKISTAN                       8                1        0     371
0-6 months    EE               PAKISTAN                       9                0        0     371
0-6 months    EE               PAKISTAN                       9                1        0     371
0-6 months    EE               PAKISTAN                       10               0        0     371
0-6 months    EE               PAKISTAN                       10               1        0     371
0-6 months    EE               PAKISTAN                       11               0       56     371
0-6 months    EE               PAKISTAN                       11               1        4     371
0-6 months    EE               PAKISTAN                       12               0       79     371
0-6 months    EE               PAKISTAN                       12               1        3     371
0-6 months    GMS-Nepal        NEPAL                          1                0        0     567
0-6 months    GMS-Nepal        NEPAL                          1                1        0     567
0-6 months    GMS-Nepal        NEPAL                          2                0        0     567
0-6 months    GMS-Nepal        NEPAL                          2                1        0     567
0-6 months    GMS-Nepal        NEPAL                          3                0        0     567
0-6 months    GMS-Nepal        NEPAL                          3                1        0     567
0-6 months    GMS-Nepal        NEPAL                          4                0        1     567
0-6 months    GMS-Nepal        NEPAL                          4                1        0     567
0-6 months    GMS-Nepal        NEPAL                          5                0        0     567
0-6 months    GMS-Nepal        NEPAL                          5                1        0     567
0-6 months    GMS-Nepal        NEPAL                          6                0      100     567
0-6 months    GMS-Nepal        NEPAL                          6                1       14     567
0-6 months    GMS-Nepal        NEPAL                          7                0      188     567
0-6 months    GMS-Nepal        NEPAL                          7                1       22     567
0-6 months    GMS-Nepal        NEPAL                          8                0      216     567
0-6 months    GMS-Nepal        NEPAL                          8                1       26     567
0-6 months    GMS-Nepal        NEPAL                          9                0        0     567
0-6 months    GMS-Nepal        NEPAL                          9                1        0     567
0-6 months    GMS-Nepal        NEPAL                          10               0        0     567
0-6 months    GMS-Nepal        NEPAL                          10               1        0     567
0-6 months    GMS-Nepal        NEPAL                          11               0        0     567
0-6 months    GMS-Nepal        NEPAL                          11               1        0     567
0-6 months    GMS-Nepal        NEPAL                          12               0        0     567
0-6 months    GMS-Nepal        NEPAL                          12               1        0     567
0-6 months    IRC              INDIA                          1                0       29     402
0-6 months    IRC              INDIA                          1                1        5     402
0-6 months    IRC              INDIA                          2                0       25     402
0-6 months    IRC              INDIA                          2                1        4     402
0-6 months    IRC              INDIA                          3                0       24     402
0-6 months    IRC              INDIA                          3                1        5     402
0-6 months    IRC              INDIA                          4                0       22     402
0-6 months    IRC              INDIA                          4                1        2     402
0-6 months    IRC              INDIA                          5                0       18     402
0-6 months    IRC              INDIA                          5                1        2     402
0-6 months    IRC              INDIA                          6                0       29     402
0-6 months    IRC              INDIA                          6                1        6     402
0-6 months    IRC              INDIA                          7                0       28     402
0-6 months    IRC              INDIA                          7                1        7     402
0-6 months    IRC              INDIA                          8                0       32     402
0-6 months    IRC              INDIA                          8                1        9     402
0-6 months    IRC              INDIA                          9                0       25     402
0-6 months    IRC              INDIA                          9                1        2     402
0-6 months    IRC              INDIA                          10               0       31     402
0-6 months    IRC              INDIA                          10               1        8     402
0-6 months    IRC              INDIA                          11               0       37     402
0-6 months    IRC              INDIA                          11               1        4     402
0-6 months    IRC              INDIA                          12               0       38     402
0-6 months    IRC              INDIA                          12               1       10     402
0-6 months    JiVitA-3         BANGLADESH                     1                0       12      50
0-6 months    JiVitA-3         BANGLADESH                     1                1        0      50
0-6 months    JiVitA-3         BANGLADESH                     2                0       13      50
0-6 months    JiVitA-3         BANGLADESH                     2                1        1      50
0-6 months    JiVitA-3         BANGLADESH                     3                0        2      50
0-6 months    JiVitA-3         BANGLADESH                     3                1        0      50
0-6 months    JiVitA-3         BANGLADESH                     4                0        1      50
0-6 months    JiVitA-3         BANGLADESH                     4                1        0      50
0-6 months    JiVitA-3         BANGLADESH                     5                0        0      50
0-6 months    JiVitA-3         BANGLADESH                     5                1        0      50
0-6 months    JiVitA-3         BANGLADESH                     6                0        0      50
0-6 months    JiVitA-3         BANGLADESH                     6                1        0      50
0-6 months    JiVitA-3         BANGLADESH                     7                0        0      50
0-6 months    JiVitA-3         BANGLADESH                     7                1        0      50
0-6 months    JiVitA-3         BANGLADESH                     8                0        0      50
0-6 months    JiVitA-3         BANGLADESH                     8                1        0      50
0-6 months    JiVitA-3         BANGLADESH                     9                0       11      50
0-6 months    JiVitA-3         BANGLADESH                     9                1        0      50
0-6 months    JiVitA-3         BANGLADESH                     10               0        3      50
0-6 months    JiVitA-3         BANGLADESH                     10               1        0      50
0-6 months    JiVitA-3         BANGLADESH                     11               0        6      50
0-6 months    JiVitA-3         BANGLADESH                     11               1        1      50
0-6 months    JiVitA-3         BANGLADESH                     12               0        0      50
0-6 months    JiVitA-3         BANGLADESH                     12               1        0      50
0-6 months    Keneba           GAMBIA                         1                0      171    2045
0-6 months    Keneba           GAMBIA                         1                1        5    2045
0-6 months    Keneba           GAMBIA                         2                0      206    2045
0-6 months    Keneba           GAMBIA                         2                1        4    2045
0-6 months    Keneba           GAMBIA                         3                0      170    2045
0-6 months    Keneba           GAMBIA                         3                1        7    2045
0-6 months    Keneba           GAMBIA                         4                0      203    2045
0-6 months    Keneba           GAMBIA                         4                1        5    2045
0-6 months    Keneba           GAMBIA                         5                0      152    2045
0-6 months    Keneba           GAMBIA                         5                1        7    2045
0-6 months    Keneba           GAMBIA                         6                0      145    2045
0-6 months    Keneba           GAMBIA                         6                1        4    2045
0-6 months    Keneba           GAMBIA                         7                0      121    2045
0-6 months    Keneba           GAMBIA                         7                1        4    2045
0-6 months    Keneba           GAMBIA                         8                0      106    2045
0-6 months    Keneba           GAMBIA                         8                1        8    2045
0-6 months    Keneba           GAMBIA                         9                0      150    2045
0-6 months    Keneba           GAMBIA                         9                1        4    2045
0-6 months    Keneba           GAMBIA                         10               0      172    2045
0-6 months    Keneba           GAMBIA                         10               1        9    2045
0-6 months    Keneba           GAMBIA                         11               0      230    2045
0-6 months    Keneba           GAMBIA                         11               1        4    2045
0-6 months    Keneba           GAMBIA                         12               0      156    2045
0-6 months    Keneba           GAMBIA                         12               1        2    2045
0-6 months    MAL-ED           BANGLADESH                     1                0       22     248
0-6 months    MAL-ED           BANGLADESH                     1                1        0     248
0-6 months    MAL-ED           BANGLADESH                     2                0       20     248
0-6 months    MAL-ED           BANGLADESH                     2                1        0     248
0-6 months    MAL-ED           BANGLADESH                     3                0       24     248
0-6 months    MAL-ED           BANGLADESH                     3                1        0     248
0-6 months    MAL-ED           BANGLADESH                     4                0       21     248
0-6 months    MAL-ED           BANGLADESH                     4                1        3     248
0-6 months    MAL-ED           BANGLADESH                     5                0       16     248
0-6 months    MAL-ED           BANGLADESH                     5                1        1     248
0-6 months    MAL-ED           BANGLADESH                     6                0       12     248
0-6 months    MAL-ED           BANGLADESH                     6                1        0     248
0-6 months    MAL-ED           BANGLADESH                     7                0       16     248
0-6 months    MAL-ED           BANGLADESH                     7                1        1     248
0-6 months    MAL-ED           BANGLADESH                     8                0       27     248
0-6 months    MAL-ED           BANGLADESH                     8                1        0     248
0-6 months    MAL-ED           BANGLADESH                     9                0       21     248
0-6 months    MAL-ED           BANGLADESH                     9                1        0     248
0-6 months    MAL-ED           BANGLADESH                     10               0       21     248
0-6 months    MAL-ED           BANGLADESH                     10               1        1     248
0-6 months    MAL-ED           BANGLADESH                     11               0       15     248
0-6 months    MAL-ED           BANGLADESH                     11               1        0     248
0-6 months    MAL-ED           BANGLADESH                     12               0       26     248
0-6 months    MAL-ED           BANGLADESH                     12               1        1     248
0-6 months    MAL-ED           BRAZIL                         1                0       15     218
0-6 months    MAL-ED           BRAZIL                         1                1        0     218
0-6 months    MAL-ED           BRAZIL                         2                0       25     218
0-6 months    MAL-ED           BRAZIL                         2                1        0     218
0-6 months    MAL-ED           BRAZIL                         3                0       16     218
0-6 months    MAL-ED           BRAZIL                         3                1        0     218
0-6 months    MAL-ED           BRAZIL                         4                0       12     218
0-6 months    MAL-ED           BRAZIL                         4                1        0     218
0-6 months    MAL-ED           BRAZIL                         5                0       17     218
0-6 months    MAL-ED           BRAZIL                         5                1        0     218
0-6 months    MAL-ED           BRAZIL                         6                0       15     218
0-6 months    MAL-ED           BRAZIL                         6                1        0     218
0-6 months    MAL-ED           BRAZIL                         7                0       16     218
0-6 months    MAL-ED           BRAZIL                         7                1        0     218
0-6 months    MAL-ED           BRAZIL                         8                0       16     218
0-6 months    MAL-ED           BRAZIL                         8                1        0     218
0-6 months    MAL-ED           BRAZIL                         9                0       23     218
0-6 months    MAL-ED           BRAZIL                         9                1        0     218
0-6 months    MAL-ED           BRAZIL                         10               0       26     218
0-6 months    MAL-ED           BRAZIL                         10               1        0     218
0-6 months    MAL-ED           BRAZIL                         11               0       19     218
0-6 months    MAL-ED           BRAZIL                         11               1        0     218
0-6 months    MAL-ED           BRAZIL                         12               0       17     218
0-6 months    MAL-ED           BRAZIL                         12               1        1     218
0-6 months    MAL-ED           INDIA                          1                0       15     240
0-6 months    MAL-ED           INDIA                          1                1        1     240
0-6 months    MAL-ED           INDIA                          2                0       22     240
0-6 months    MAL-ED           INDIA                          2                1        2     240
0-6 months    MAL-ED           INDIA                          3                0       18     240
0-6 months    MAL-ED           INDIA                          3                1        3     240
0-6 months    MAL-ED           INDIA                          4                0       18     240
0-6 months    MAL-ED           INDIA                          4                1        0     240
0-6 months    MAL-ED           INDIA                          5                0        7     240
0-6 months    MAL-ED           INDIA                          5                1        1     240
0-6 months    MAL-ED           INDIA                          6                0       14     240
0-6 months    MAL-ED           INDIA                          6                1        3     240
0-6 months    MAL-ED           INDIA                          7                0       20     240
0-6 months    MAL-ED           INDIA                          7                1        1     240
0-6 months    MAL-ED           INDIA                          8                0       21     240
0-6 months    MAL-ED           INDIA                          8                1        3     240
0-6 months    MAL-ED           INDIA                          9                0       21     240
0-6 months    MAL-ED           INDIA                          9                1        0     240
0-6 months    MAL-ED           INDIA                          10               0       21     240
0-6 months    MAL-ED           INDIA                          10               1        3     240
0-6 months    MAL-ED           INDIA                          11               0       23     240
0-6 months    MAL-ED           INDIA                          11               1        1     240
0-6 months    MAL-ED           INDIA                          12               0       21     240
0-6 months    MAL-ED           INDIA                          12               1        1     240
0-6 months    MAL-ED           NEPAL                          1                0       19     238
0-6 months    MAL-ED           NEPAL                          1                1        1     238
0-6 months    MAL-ED           NEPAL                          2                0       20     238
0-6 months    MAL-ED           NEPAL                          2                1        0     238
0-6 months    MAL-ED           NEPAL                          3                0       20     238
0-6 months    MAL-ED           NEPAL                          3                1        0     238
0-6 months    MAL-ED           NEPAL                          4                0       19     238
0-6 months    MAL-ED           NEPAL                          4                1        1     238
0-6 months    MAL-ED           NEPAL                          5                0       19     238
0-6 months    MAL-ED           NEPAL                          5                1        1     238
0-6 months    MAL-ED           NEPAL                          6                0       20     238
0-6 months    MAL-ED           NEPAL                          6                1        0     238
0-6 months    MAL-ED           NEPAL                          7                0       19     238
0-6 months    MAL-ED           NEPAL                          7                1        0     238
0-6 months    MAL-ED           NEPAL                          8                0       16     238
0-6 months    MAL-ED           NEPAL                          8                1        3     238
0-6 months    MAL-ED           NEPAL                          9                0       19     238
0-6 months    MAL-ED           NEPAL                          9                1        1     238
0-6 months    MAL-ED           NEPAL                          10               0       20     238
0-6 months    MAL-ED           NEPAL                          10               1        0     238
0-6 months    MAL-ED           NEPAL                          11               0       20     238
0-6 months    MAL-ED           NEPAL                          11               1        0     238
0-6 months    MAL-ED           NEPAL                          12               0       20     238
0-6 months    MAL-ED           NEPAL                          12               1        0     238
0-6 months    MAL-ED           PERU                           1                0       36     284
0-6 months    MAL-ED           PERU                           1                1        0     284
0-6 months    MAL-ED           PERU                           2                0       29     284
0-6 months    MAL-ED           PERU                           2                1        0     284
0-6 months    MAL-ED           PERU                           3                0       22     284
0-6 months    MAL-ED           PERU                           3                1        0     284
0-6 months    MAL-ED           PERU                           4                0       18     284
0-6 months    MAL-ED           PERU                           4                1        0     284
0-6 months    MAL-ED           PERU                           5                0       24     284
0-6 months    MAL-ED           PERU                           5                1        0     284
0-6 months    MAL-ED           PERU                           6                0       20     284
0-6 months    MAL-ED           PERU                           6                1        0     284
0-6 months    MAL-ED           PERU                           7                0       23     284
0-6 months    MAL-ED           PERU                           7                1        0     284
0-6 months    MAL-ED           PERU                           8                0       16     284
0-6 months    MAL-ED           PERU                           8                1        0     284
0-6 months    MAL-ED           PERU                           9                0       22     284
0-6 months    MAL-ED           PERU                           9                1        0     284
0-6 months    MAL-ED           PERU                           10               0       21     284
0-6 months    MAL-ED           PERU                           10               1        0     284
0-6 months    MAL-ED           PERU                           11               0       35     284
0-6 months    MAL-ED           PERU                           11               1        0     284
0-6 months    MAL-ED           PERU                           12               0       18     284
0-6 months    MAL-ED           PERU                           12               1        0     284
0-6 months    MAL-ED           SOUTH AFRICA                   1                0       30     274
0-6 months    MAL-ED           SOUTH AFRICA                   1                1        1     274
0-6 months    MAL-ED           SOUTH AFRICA                   2                0       34     274
0-6 months    MAL-ED           SOUTH AFRICA                   2                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   3                0       17     274
0-6 months    MAL-ED           SOUTH AFRICA                   3                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   4                0       12     274
0-6 months    MAL-ED           SOUTH AFRICA                   4                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   5                0       11     274
0-6 months    MAL-ED           SOUTH AFRICA                   5                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   6                0       21     274
0-6 months    MAL-ED           SOUTH AFRICA                   6                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   7                0       27     274
0-6 months    MAL-ED           SOUTH AFRICA                   7                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   8                0       10     274
0-6 months    MAL-ED           SOUTH AFRICA                   8                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   9                0       22     274
0-6 months    MAL-ED           SOUTH AFRICA                   9                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   10               0       24     274
0-6 months    MAL-ED           SOUTH AFRICA                   10               1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   11               0       31     274
0-6 months    MAL-ED           SOUTH AFRICA                   11               1        1     274
0-6 months    MAL-ED           SOUTH AFRICA                   12               0       33     274
0-6 months    MAL-ED           SOUTH AFRICA                   12               1        0     274
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       21     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       28     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       23     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0       10     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0       16     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0       16     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       28     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0       12     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0       18     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0       19     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       29     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0       33     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        0     253
0-6 months    NIH-Birth        BANGLADESH                     1                0       17     169
0-6 months    NIH-Birth        BANGLADESH                     1                1        4     169
0-6 months    NIH-Birth        BANGLADESH                     2                0       18     169
0-6 months    NIH-Birth        BANGLADESH                     2                1        1     169
0-6 months    NIH-Birth        BANGLADESH                     3                0       17     169
0-6 months    NIH-Birth        BANGLADESH                     3                1        1     169
0-6 months    NIH-Birth        BANGLADESH                     4                0       15     169
0-6 months    NIH-Birth        BANGLADESH                     4                1        0     169
0-6 months    NIH-Birth        BANGLADESH                     5                0        7     169
0-6 months    NIH-Birth        BANGLADESH                     5                1        1     169
0-6 months    NIH-Birth        BANGLADESH                     6                0       13     169
0-6 months    NIH-Birth        BANGLADESH                     6                1        0     169
0-6 months    NIH-Birth        BANGLADESH                     7                0       10     169
0-6 months    NIH-Birth        BANGLADESH                     7                1        0     169
0-6 months    NIH-Birth        BANGLADESH                     8                0        7     169
0-6 months    NIH-Birth        BANGLADESH                     8                1        1     169
0-6 months    NIH-Birth        BANGLADESH                     9                0        6     169
0-6 months    NIH-Birth        BANGLADESH                     9                1        0     169
0-6 months    NIH-Birth        BANGLADESH                     10               0       15     169
0-6 months    NIH-Birth        BANGLADESH                     10               1        1     169
0-6 months    NIH-Birth        BANGLADESH                     11               0       19     169
0-6 months    NIH-Birth        BANGLADESH                     11               1        2     169
0-6 months    NIH-Birth        BANGLADESH                     12               0       14     169
0-6 months    NIH-Birth        BANGLADESH                     12               1        0     169
0-6 months    PROBIT           BELARUS                        1                0      787   13534
0-6 months    PROBIT           BELARUS                        1                1       64   13534
0-6 months    PROBIT           BELARUS                        2                0      716   13534
0-6 months    PROBIT           BELARUS                        2                1       66   13534
0-6 months    PROBIT           BELARUS                        3                0      859   13534
0-6 months    PROBIT           BELARUS                        3                1       75   13534
0-6 months    PROBIT           BELARUS                        4                0      845   13534
0-6 months    PROBIT           BELARUS                        4                1       76   13534
0-6 months    PROBIT           BELARUS                        5                0      843   13534
0-6 months    PROBIT           BELARUS                        5                1       93   13534
0-6 months    PROBIT           BELARUS                        6                0      887   13534
0-6 months    PROBIT           BELARUS                        6                1      100   13534
0-6 months    PROBIT           BELARUS                        7                0     1133   13534
0-6 months    PROBIT           BELARUS                        7                1      119   13534
0-6 months    PROBIT           BELARUS                        8                0     1177   13534
0-6 months    PROBIT           BELARUS                        8                1      112   13534
0-6 months    PROBIT           BELARUS                        9                0     1173   13534
0-6 months    PROBIT           BELARUS                        9                1      112   13534
0-6 months    PROBIT           BELARUS                        10               0     1370   13534
0-6 months    PROBIT           BELARUS                        10               1      102   13534
0-6 months    PROBIT           BELARUS                        11               0     1275   13534
0-6 months    PROBIT           BELARUS                        11               1       83   13534
0-6 months    PROBIT           BELARUS                        12               0     1372   13534
0-6 months    PROBIT           BELARUS                        12               1       95   13534
0-6 months    ResPak           PAKISTAN                       1                0        2     243
0-6 months    ResPak           PAKISTAN                       1                1        0     243
0-6 months    ResPak           PAKISTAN                       2                0        7     243
0-6 months    ResPak           PAKISTAN                       2                1        1     243
0-6 months    ResPak           PAKISTAN                       3                0        8     243
0-6 months    ResPak           PAKISTAN                       3                1        1     243
0-6 months    ResPak           PAKISTAN                       4                0       17     243
0-6 months    ResPak           PAKISTAN                       4                1        3     243
0-6 months    ResPak           PAKISTAN                       5                0       28     243
0-6 months    ResPak           PAKISTAN                       5                1        4     243
0-6 months    ResPak           PAKISTAN                       6                0       37     243
0-6 months    ResPak           PAKISTAN                       6                1        4     243
0-6 months    ResPak           PAKISTAN                       7                0       39     243
0-6 months    ResPak           PAKISTAN                       7                1        4     243
0-6 months    ResPak           PAKISTAN                       8                0       22     243
0-6 months    ResPak           PAKISTAN                       8                1        3     243
0-6 months    ResPak           PAKISTAN                       9                0       33     243
0-6 months    ResPak           PAKISTAN                       9                1        4     243
0-6 months    ResPak           PAKISTAN                       10               0       13     243
0-6 months    ResPak           PAKISTAN                       10               1        1     243
0-6 months    ResPak           PAKISTAN                       11               0        7     243
0-6 months    ResPak           PAKISTAN                       11               1        0     243
0-6 months    ResPak           PAKISTAN                       12               0        5     243
0-6 months    ResPak           PAKISTAN                       12               1        0     243
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      193    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        9    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      130    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        5    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      155    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      135    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        3    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      157    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      144    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        2    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      147    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      171    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        4    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      191    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      195    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      192    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        4    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      199    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        9    2061
0-6 months    ZVITAMBO         ZIMBABWE                       1                0       83     632
0-6 months    ZVITAMBO         ZIMBABWE                       1                1        0     632
0-6 months    ZVITAMBO         ZIMBABWE                       2                0       61     632
0-6 months    ZVITAMBO         ZIMBABWE                       2                1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       3                0       29     632
0-6 months    ZVITAMBO         ZIMBABWE                       3                1        2     632
0-6 months    ZVITAMBO         ZIMBABWE                       4                0       35     632
0-6 months    ZVITAMBO         ZIMBABWE                       4                1        0     632
0-6 months    ZVITAMBO         ZIMBABWE                       5                0       34     632
0-6 months    ZVITAMBO         ZIMBABWE                       5                1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       6                0       64     632
0-6 months    ZVITAMBO         ZIMBABWE                       6                1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       7                0       25     632
0-6 months    ZVITAMBO         ZIMBABWE                       7                1        2     632
0-6 months    ZVITAMBO         ZIMBABWE                       8                0       46     632
0-6 months    ZVITAMBO         ZIMBABWE                       8                1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       9                0       80     632
0-6 months    ZVITAMBO         ZIMBABWE                       9                1        3     632
0-6 months    ZVITAMBO         ZIMBABWE                       10               0       43     632
0-6 months    ZVITAMBO         ZIMBABWE                       10               1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       11               0       69     632
0-6 months    ZVITAMBO         ZIMBABWE                       11               1        0     632
0-6 months    ZVITAMBO         ZIMBABWE                       12               0       49     632
0-6 months    ZVITAMBO         ZIMBABWE                       12               1        2     632
6-24 months   CMC-V-BCS-2002   INDIA                          1                0       27     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          2                0       21     373
6-24 months   CMC-V-BCS-2002   INDIA                          2                1        3     373
6-24 months   CMC-V-BCS-2002   INDIA                          3                0       23     373
6-24 months   CMC-V-BCS-2002   INDIA                          3                1        3     373
6-24 months   CMC-V-BCS-2002   INDIA                          4                0       28     373
6-24 months   CMC-V-BCS-2002   INDIA                          4                1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          5                0       41     373
6-24 months   CMC-V-BCS-2002   INDIA                          5                1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          6                0       33     373
6-24 months   CMC-V-BCS-2002   INDIA                          6                1        4     373
6-24 months   CMC-V-BCS-2002   INDIA                          7                0       31     373
6-24 months   CMC-V-BCS-2002   INDIA                          7                1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          8                0       40     373
6-24 months   CMC-V-BCS-2002   INDIA                          8                1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          9                0       22     373
6-24 months   CMC-V-BCS-2002   INDIA                          9                1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          10               0       17     373
6-24 months   CMC-V-BCS-2002   INDIA                          10               1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          11               0       40     373
6-24 months   CMC-V-BCS-2002   INDIA                          11               1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          12               0       27     373
6-24 months   CMC-V-BCS-2002   INDIA                          12               1        2     373
6-24 months   CMIN             BANGLADESH                     1                0       25     257
6-24 months   CMIN             BANGLADESH                     1                1        3     257
6-24 months   CMIN             BANGLADESH                     2                0       30     257
6-24 months   CMIN             BANGLADESH                     2                1        2     257
6-24 months   CMIN             BANGLADESH                     3                0       20     257
6-24 months   CMIN             BANGLADESH                     3                1        0     257
6-24 months   CMIN             BANGLADESH                     4                0       16     257
6-24 months   CMIN             BANGLADESH                     4                1        3     257
6-24 months   CMIN             BANGLADESH                     5                0       20     257
6-24 months   CMIN             BANGLADESH                     5                1        0     257
6-24 months   CMIN             BANGLADESH                     6                0       20     257
6-24 months   CMIN             BANGLADESH                     6                1        3     257
6-24 months   CMIN             BANGLADESH                     7                0       12     257
6-24 months   CMIN             BANGLADESH                     7                1        1     257
6-24 months   CMIN             BANGLADESH                     8                0       13     257
6-24 months   CMIN             BANGLADESH                     8                1        1     257
6-24 months   CMIN             BANGLADESH                     9                0       18     257
6-24 months   CMIN             BANGLADESH                     9                1        1     257
6-24 months   CMIN             BANGLADESH                     10               0       21     257
6-24 months   CMIN             BANGLADESH                     10               1        0     257
6-24 months   CMIN             BANGLADESH                     11               0        2     257
6-24 months   CMIN             BANGLADESH                     11               1        0     257
6-24 months   CMIN             BANGLADESH                     12               0       40     257
6-24 months   CMIN             BANGLADESH                     12               1        6     257
6-24 months   CONTENT          PERU                           1                0        9     215
6-24 months   CONTENT          PERU                           1                1        0     215
6-24 months   CONTENT          PERU                           2                0       13     215
6-24 months   CONTENT          PERU                           2                1        0     215
6-24 months   CONTENT          PERU                           3                0       27     215
6-24 months   CONTENT          PERU                           3                1        0     215
6-24 months   CONTENT          PERU                           4                0       18     215
6-24 months   CONTENT          PERU                           4                1        0     215
6-24 months   CONTENT          PERU                           5                0       25     215
6-24 months   CONTENT          PERU                           5                1        0     215
6-24 months   CONTENT          PERU                           6                0       14     215
6-24 months   CONTENT          PERU                           6                1        0     215
6-24 months   CONTENT          PERU                           7                0       16     215
6-24 months   CONTENT          PERU                           7                1        0     215
6-24 months   CONTENT          PERU                           8                0       26     215
6-24 months   CONTENT          PERU                           8                1        0     215
6-24 months   CONTENT          PERU                           9                0       19     215
6-24 months   CONTENT          PERU                           9                1        0     215
6-24 months   CONTENT          PERU                           10               0       23     215
6-24 months   CONTENT          PERU                           10               1        0     215
6-24 months   CONTENT          PERU                           11               0       18     215
6-24 months   CONTENT          PERU                           11               1        0     215
6-24 months   CONTENT          PERU                           12               0        7     215
6-24 months   CONTENT          PERU                           12               1        0     215
6-24 months   EE               PAKISTAN                       1                0       84     377
6-24 months   EE               PAKISTAN                       1                1        7     377
6-24 months   EE               PAKISTAN                       2                0       68     377
6-24 months   EE               PAKISTAN                       2                1        5     377
6-24 months   EE               PAKISTAN                       3                0       37     377
6-24 months   EE               PAKISTAN                       3                1       10     377
6-24 months   EE               PAKISTAN                       4                0       21     377
6-24 months   EE               PAKISTAN                       4                1        1     377
6-24 months   EE               PAKISTAN                       5                0        0     377
6-24 months   EE               PAKISTAN                       5                1        0     377
6-24 months   EE               PAKISTAN                       6                0        0     377
6-24 months   EE               PAKISTAN                       6                1        0     377
6-24 months   EE               PAKISTAN                       7                0        0     377
6-24 months   EE               PAKISTAN                       7                1        0     377
6-24 months   EE               PAKISTAN                       8                0        0     377
6-24 months   EE               PAKISTAN                       8                1        0     377
6-24 months   EE               PAKISTAN                       9                0        0     377
6-24 months   EE               PAKISTAN                       9                1        0     377
6-24 months   EE               PAKISTAN                       10               0        0     377
6-24 months   EE               PAKISTAN                       10               1        0     377
6-24 months   EE               PAKISTAN                       11               0       55     377
6-24 months   EE               PAKISTAN                       11               1        5     377
6-24 months   EE               PAKISTAN                       12               0       79     377
6-24 months   EE               PAKISTAN                       12               1        5     377
6-24 months   GMS-Nepal        NEPAL                          1                0        0     597
6-24 months   GMS-Nepal        NEPAL                          1                1        0     597
6-24 months   GMS-Nepal        NEPAL                          2                0        0     597
6-24 months   GMS-Nepal        NEPAL                          2                1        0     597
6-24 months   GMS-Nepal        NEPAL                          3                0        0     597
6-24 months   GMS-Nepal        NEPAL                          3                1        0     597
6-24 months   GMS-Nepal        NEPAL                          4                0        1     597
6-24 months   GMS-Nepal        NEPAL                          4                1        0     597
6-24 months   GMS-Nepal        NEPAL                          5                0        0     597
6-24 months   GMS-Nepal        NEPAL                          5                1        0     597
6-24 months   GMS-Nepal        NEPAL                          6                0      106     597
6-24 months   GMS-Nepal        NEPAL                          6                1       14     597
6-24 months   GMS-Nepal        NEPAL                          7                0      196     597
6-24 months   GMS-Nepal        NEPAL                          7                1       32     597
6-24 months   GMS-Nepal        NEPAL                          8                0      214     597
6-24 months   GMS-Nepal        NEPAL                          8                1       34     597
6-24 months   GMS-Nepal        NEPAL                          9                0        0     597
6-24 months   GMS-Nepal        NEPAL                          9                1        0     597
6-24 months   GMS-Nepal        NEPAL                          10               0        0     597
6-24 months   GMS-Nepal        NEPAL                          10               1        0     597
6-24 months   GMS-Nepal        NEPAL                          11               0        0     597
6-24 months   GMS-Nepal        NEPAL                          11               1        0     597
6-24 months   GMS-Nepal        NEPAL                          12               0        0     597
6-24 months   GMS-Nepal        NEPAL                          12               1        0     597
6-24 months   Guatemala BSC    GUATEMALA                      1                0       14     256
6-24 months   Guatemala BSC    GUATEMALA                      1                1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      2                0       18     256
6-24 months   Guatemala BSC    GUATEMALA                      2                1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      3                0       18     256
6-24 months   Guatemala BSC    GUATEMALA                      3                1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      4                0       19     256
6-24 months   Guatemala BSC    GUATEMALA                      4                1        1     256
6-24 months   Guatemala BSC    GUATEMALA                      5                0       28     256
6-24 months   Guatemala BSC    GUATEMALA                      5                1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      6                0       35     256
6-24 months   Guatemala BSC    GUATEMALA                      6                1        1     256
6-24 months   Guatemala BSC    GUATEMALA                      7                0       23     256
6-24 months   Guatemala BSC    GUATEMALA                      7                1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      8                0       17     256
6-24 months   Guatemala BSC    GUATEMALA                      8                1        1     256
6-24 months   Guatemala BSC    GUATEMALA                      9                0       30     256
6-24 months   Guatemala BSC    GUATEMALA                      9                1        1     256
6-24 months   Guatemala BSC    GUATEMALA                      10               0       21     256
6-24 months   Guatemala BSC    GUATEMALA                      10               1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      11               0       22     256
6-24 months   Guatemala BSC    GUATEMALA                      11               1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      12               0        7     256
6-24 months   Guatemala BSC    GUATEMALA                      12               1        0     256
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                0      113    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                1       13    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                0       95    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                1        9    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                0       89    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                1       14    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                0       87    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                1       12    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                0       96    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                1       17    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                0      171    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                1       20    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                0      194    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                1       20    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                0      176    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                1       34    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                0      134    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                1       17    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   10               0      181    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   10               1       19    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   11               0       77    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   11               1       11    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   12               0       56    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   12               1       14    1669
6-24 months   IRC              INDIA                          1                0       32     410
6-24 months   IRC              INDIA                          1                1        3     410
6-24 months   IRC              INDIA                          2                0       29     410
6-24 months   IRC              INDIA                          2                1        1     410
6-24 months   IRC              INDIA                          3                0       27     410
6-24 months   IRC              INDIA                          3                1        2     410
6-24 months   IRC              INDIA                          4                0       22     410
6-24 months   IRC              INDIA                          4                1        2     410
6-24 months   IRC              INDIA                          5                0       19     410
6-24 months   IRC              INDIA                          5                1        2     410
6-24 months   IRC              INDIA                          6                0       31     410
6-24 months   IRC              INDIA                          6                1        4     410
6-24 months   IRC              INDIA                          7                0       30     410
6-24 months   IRC              INDIA                          7                1        6     410
6-24 months   IRC              INDIA                          8                0       32     410
6-24 months   IRC              INDIA                          8                1        9     410
6-24 months   IRC              INDIA                          9                0       25     410
6-24 months   IRC              INDIA                          9                1        5     410
6-24 months   IRC              INDIA                          10               0       33     410
6-24 months   IRC              INDIA                          10               1        6     410
6-24 months   IRC              INDIA                          11               0       38     410
6-24 months   IRC              INDIA                          11               1        3     410
6-24 months   IRC              INDIA                          12               0       44     410
6-24 months   IRC              INDIA                          12               1        5     410
6-24 months   JiVitA-3         BANGLADESH                     1                0     1228   15803
6-24 months   JiVitA-3         BANGLADESH                     1                1       58   15803
6-24 months   JiVitA-3         BANGLADESH                     2                0     1078   15803
6-24 months   JiVitA-3         BANGLADESH                     2                1       55   15803
6-24 months   JiVitA-3         BANGLADESH                     3                0     1303   15803
6-24 months   JiVitA-3         BANGLADESH                     3                1       75   15803
6-24 months   JiVitA-3         BANGLADESH                     4                0     1059   15803
6-24 months   JiVitA-3         BANGLADESH                     4                1       79   15803
6-24 months   JiVitA-3         BANGLADESH                     5                0     1035   15803
6-24 months   JiVitA-3         BANGLADESH                     5                1       58   15803
6-24 months   JiVitA-3         BANGLADESH                     6                0     1022   15803
6-24 months   JiVitA-3         BANGLADESH                     6                1       74   15803
6-24 months   JiVitA-3         BANGLADESH                     7                0     1126   15803
6-24 months   JiVitA-3         BANGLADESH                     7                1       72   15803
6-24 months   JiVitA-3         BANGLADESH                     8                0     1280   15803
6-24 months   JiVitA-3         BANGLADESH                     8                1       80   15803
6-24 months   JiVitA-3         BANGLADESH                     9                0     1353   15803
6-24 months   JiVitA-3         BANGLADESH                     9                1       86   15803
6-24 months   JiVitA-3         BANGLADESH                     10               0     1474   15803
6-24 months   JiVitA-3         BANGLADESH                     10               1      108   15803
6-24 months   JiVitA-3         BANGLADESH                     11               0     1454   15803
6-24 months   JiVitA-3         BANGLADESH                     11               1       79   15803
6-24 months   JiVitA-3         BANGLADESH                     12               0     1493   15803
6-24 months   JiVitA-3         BANGLADESH                     12               1       74   15803
6-24 months   JiVitA-4         BANGLADESH                     1                0       53    5281
6-24 months   JiVitA-4         BANGLADESH                     1                1        3    5281
6-24 months   JiVitA-4         BANGLADESH                     2                0      340    5281
6-24 months   JiVitA-4         BANGLADESH                     2                1       19    5281
6-24 months   JiVitA-4         BANGLADESH                     3                0      426    5281
6-24 months   JiVitA-4         BANGLADESH                     3                1       36    5281
6-24 months   JiVitA-4         BANGLADESH                     4                0      835    5281
6-24 months   JiVitA-4         BANGLADESH                     4                1       72    5281
6-24 months   JiVitA-4         BANGLADESH                     5                0      559    5281
6-24 months   JiVitA-4         BANGLADESH                     5                1       55    5281
6-24 months   JiVitA-4         BANGLADESH                     6                0      411    5281
6-24 months   JiVitA-4         BANGLADESH                     6                1       44    5281
6-24 months   JiVitA-4         BANGLADESH                     7                0      774    5281
6-24 months   JiVitA-4         BANGLADESH                     7                1       89    5281
6-24 months   JiVitA-4         BANGLADESH                     8                0      489    5281
6-24 months   JiVitA-4         BANGLADESH                     8                1       34    5281
6-24 months   JiVitA-4         BANGLADESH                     9                0      453    5281
6-24 months   JiVitA-4         BANGLADESH                     9                1       34    5281
6-24 months   JiVitA-4         BANGLADESH                     10               0      295    5281
6-24 months   JiVitA-4         BANGLADESH                     10               1       19    5281
6-24 months   JiVitA-4         BANGLADESH                     11               0      146    5281
6-24 months   JiVitA-4         BANGLADESH                     11               1       16    5281
6-24 months   JiVitA-4         BANGLADESH                     12               0       74    5281
6-24 months   JiVitA-4         BANGLADESH                     12               1        5    5281
6-24 months   Keneba           GAMBIA                         1                0      197    2444
6-24 months   Keneba           GAMBIA                         1                1        7    2444
6-24 months   Keneba           GAMBIA                         2                0      222    2444
6-24 months   Keneba           GAMBIA                         2                1       18    2444
6-24 months   Keneba           GAMBIA                         3                0      206    2444
6-24 months   Keneba           GAMBIA                         3                1        6    2444
6-24 months   Keneba           GAMBIA                         4                0      239    2444
6-24 months   Keneba           GAMBIA                         4                1       20    2444
6-24 months   Keneba           GAMBIA                         5                0      217    2444
6-24 months   Keneba           GAMBIA                         5                1       13    2444
6-24 months   Keneba           GAMBIA                         6                0      174    2444
6-24 months   Keneba           GAMBIA                         6                1       11    2444
6-24 months   Keneba           GAMBIA                         7                0      134    2444
6-24 months   Keneba           GAMBIA                         7                1        8    2444
6-24 months   Keneba           GAMBIA                         8                0      127    2444
6-24 months   Keneba           GAMBIA                         8                1       14    2444
6-24 months   Keneba           GAMBIA                         9                0      168    2444
6-24 months   Keneba           GAMBIA                         9                1        8    2444
6-24 months   Keneba           GAMBIA                         10               0      191    2444
6-24 months   Keneba           GAMBIA                         10               1       12    2444
6-24 months   Keneba           GAMBIA                         11               0      254    2444
6-24 months   Keneba           GAMBIA                         11               1       16    2444
6-24 months   Keneba           GAMBIA                         12               0      170    2444
6-24 months   Keneba           GAMBIA                         12               1       12    2444
6-24 months   LCNI-5           MALAWI                         1                0       49     719
6-24 months   LCNI-5           MALAWI                         1                1        0     719
6-24 months   LCNI-5           MALAWI                         2                0      100     719
6-24 months   LCNI-5           MALAWI                         2                1        2     719
6-24 months   LCNI-5           MALAWI                         3                0       88     719
6-24 months   LCNI-5           MALAWI                         3                1        1     719
6-24 months   LCNI-5           MALAWI                         4                0       97     719
6-24 months   LCNI-5           MALAWI                         4                1        0     719
6-24 months   LCNI-5           MALAWI                         5                0       85     719
6-24 months   LCNI-5           MALAWI                         5                1        0     719
6-24 months   LCNI-5           MALAWI                         6                0       75     719
6-24 months   LCNI-5           MALAWI                         6                1        1     719
6-24 months   LCNI-5           MALAWI                         7                0       60     719
6-24 months   LCNI-5           MALAWI                         7                1        0     719
6-24 months   LCNI-5           MALAWI                         8                0       38     719
6-24 months   LCNI-5           MALAWI                         8                1        0     719
6-24 months   LCNI-5           MALAWI                         9                0       24     719
6-24 months   LCNI-5           MALAWI                         9                1        0     719
6-24 months   LCNI-5           MALAWI                         10               0       30     719
6-24 months   LCNI-5           MALAWI                         10               1        0     719
6-24 months   LCNI-5           MALAWI                         11               0       41     719
6-24 months   LCNI-5           MALAWI                         11               1        0     719
6-24 months   LCNI-5           MALAWI                         12               0       26     719
6-24 months   LCNI-5           MALAWI                         12               1        2     719
6-24 months   MAL-ED           BANGLADESH                     1                0       22     248
6-24 months   MAL-ED           BANGLADESH                     1                1        0     248
6-24 months   MAL-ED           BANGLADESH                     2                0       19     248
6-24 months   MAL-ED           BANGLADESH                     2                1        1     248
6-24 months   MAL-ED           BANGLADESH                     3                0       24     248
6-24 months   MAL-ED           BANGLADESH                     3                1        0     248
6-24 months   MAL-ED           BANGLADESH                     4                0       22     248
6-24 months   MAL-ED           BANGLADESH                     4                1        2     248
6-24 months   MAL-ED           BANGLADESH                     5                0       15     248
6-24 months   MAL-ED           BANGLADESH                     5                1        2     248
6-24 months   MAL-ED           BANGLADESH                     6                0       11     248
6-24 months   MAL-ED           BANGLADESH                     6                1        1     248
6-24 months   MAL-ED           BANGLADESH                     7                0       16     248
6-24 months   MAL-ED           BANGLADESH                     7                1        1     248
6-24 months   MAL-ED           BANGLADESH                     8                0       27     248
6-24 months   MAL-ED           BANGLADESH                     8                1        0     248
6-24 months   MAL-ED           BANGLADESH                     9                0       19     248
6-24 months   MAL-ED           BANGLADESH                     9                1        2     248
6-24 months   MAL-ED           BANGLADESH                     10               0       20     248
6-24 months   MAL-ED           BANGLADESH                     10               1        2     248
6-24 months   MAL-ED           BANGLADESH                     11               0       14     248
6-24 months   MAL-ED           BANGLADESH                     11               1        1     248
6-24 months   MAL-ED           BANGLADESH                     12               0       26     248
6-24 months   MAL-ED           BANGLADESH                     12               1        1     248
6-24 months   MAL-ED           BRAZIL                         1                0       15     218
6-24 months   MAL-ED           BRAZIL                         1                1        0     218
6-24 months   MAL-ED           BRAZIL                         2                0       25     218
6-24 months   MAL-ED           BRAZIL                         2                1        0     218
6-24 months   MAL-ED           BRAZIL                         3                0       16     218
6-24 months   MAL-ED           BRAZIL                         3                1        0     218
6-24 months   MAL-ED           BRAZIL                         4                0       12     218
6-24 months   MAL-ED           BRAZIL                         4                1        0     218
6-24 months   MAL-ED           BRAZIL                         5                0       17     218
6-24 months   MAL-ED           BRAZIL                         5                1        0     218
6-24 months   MAL-ED           BRAZIL                         6                0       15     218
6-24 months   MAL-ED           BRAZIL                         6                1        0     218
6-24 months   MAL-ED           BRAZIL                         7                0       16     218
6-24 months   MAL-ED           BRAZIL                         7                1        0     218
6-24 months   MAL-ED           BRAZIL                         8                0       16     218
6-24 months   MAL-ED           BRAZIL                         8                1        0     218
6-24 months   MAL-ED           BRAZIL                         9                0       23     218
6-24 months   MAL-ED           BRAZIL                         9                1        0     218
6-24 months   MAL-ED           BRAZIL                         10               0       25     218
6-24 months   MAL-ED           BRAZIL                         10               1        1     218
6-24 months   MAL-ED           BRAZIL                         11               0       19     218
6-24 months   MAL-ED           BRAZIL                         11               1        0     218
6-24 months   MAL-ED           BRAZIL                         12               0       17     218
6-24 months   MAL-ED           BRAZIL                         12               1        1     218
6-24 months   MAL-ED           INDIA                          1                0       15     241
6-24 months   MAL-ED           INDIA                          1                1        1     241
6-24 months   MAL-ED           INDIA                          2                0       22     241
6-24 months   MAL-ED           INDIA                          2                1        2     241
6-24 months   MAL-ED           INDIA                          3                0       20     241
6-24 months   MAL-ED           INDIA                          3                1        1     241
6-24 months   MAL-ED           INDIA                          4                0       16     241
6-24 months   MAL-ED           INDIA                          4                1        2     241
6-24 months   MAL-ED           INDIA                          5                0        7     241
6-24 months   MAL-ED           INDIA                          5                1        1     241
6-24 months   MAL-ED           INDIA                          6                0       14     241
6-24 months   MAL-ED           INDIA                          6                1        4     241
6-24 months   MAL-ED           INDIA                          7                0       21     241
6-24 months   MAL-ED           INDIA                          7                1        0     241
6-24 months   MAL-ED           INDIA                          8                0       19     241
6-24 months   MAL-ED           INDIA                          8                1        5     241
6-24 months   MAL-ED           INDIA                          9                0       21     241
6-24 months   MAL-ED           INDIA                          9                1        0     241
6-24 months   MAL-ED           INDIA                          10               0       23     241
6-24 months   MAL-ED           INDIA                          10               1        1     241
6-24 months   MAL-ED           INDIA                          11               0       22     241
6-24 months   MAL-ED           INDIA                          11               1        2     241
6-24 months   MAL-ED           INDIA                          12               0       20     241
6-24 months   MAL-ED           INDIA                          12               1        2     241
6-24 months   MAL-ED           NEPAL                          1                0       19     238
6-24 months   MAL-ED           NEPAL                          1                1        1     238
6-24 months   MAL-ED           NEPAL                          2                0       20     238
6-24 months   MAL-ED           NEPAL                          2                1        0     238
6-24 months   MAL-ED           NEPAL                          3                0       20     238
6-24 months   MAL-ED           NEPAL                          3                1        0     238
6-24 months   MAL-ED           NEPAL                          4                0       20     238
6-24 months   MAL-ED           NEPAL                          4                1        0     238
6-24 months   MAL-ED           NEPAL                          5                0       19     238
6-24 months   MAL-ED           NEPAL                          5                1        1     238
6-24 months   MAL-ED           NEPAL                          6                0       19     238
6-24 months   MAL-ED           NEPAL                          6                1        1     238
6-24 months   MAL-ED           NEPAL                          7                0       19     238
6-24 months   MAL-ED           NEPAL                          7                1        0     238
6-24 months   MAL-ED           NEPAL                          8                0       18     238
6-24 months   MAL-ED           NEPAL                          8                1        1     238
6-24 months   MAL-ED           NEPAL                          9                0       20     238
6-24 months   MAL-ED           NEPAL                          9                1        0     238
6-24 months   MAL-ED           NEPAL                          10               0       20     238
6-24 months   MAL-ED           NEPAL                          10               1        0     238
6-24 months   MAL-ED           NEPAL                          11               0       20     238
6-24 months   MAL-ED           NEPAL                          11               1        0     238
6-24 months   MAL-ED           NEPAL                          12               0       20     238
6-24 months   MAL-ED           NEPAL                          12               1        0     238
6-24 months   MAL-ED           PERU                           1                0       36     284
6-24 months   MAL-ED           PERU                           1                1        0     284
6-24 months   MAL-ED           PERU                           2                0       29     284
6-24 months   MAL-ED           PERU                           2                1        0     284
6-24 months   MAL-ED           PERU                           3                0       22     284
6-24 months   MAL-ED           PERU                           3                1        0     284
6-24 months   MAL-ED           PERU                           4                0       18     284
6-24 months   MAL-ED           PERU                           4                1        0     284
6-24 months   MAL-ED           PERU                           5                0       24     284
6-24 months   MAL-ED           PERU                           5                1        0     284
6-24 months   MAL-ED           PERU                           6                0       20     284
6-24 months   MAL-ED           PERU                           6                1        0     284
6-24 months   MAL-ED           PERU                           7                0       23     284
6-24 months   MAL-ED           PERU                           7                1        0     284
6-24 months   MAL-ED           PERU                           8                0       15     284
6-24 months   MAL-ED           PERU                           8                1        1     284
6-24 months   MAL-ED           PERU                           9                0       22     284
6-24 months   MAL-ED           PERU                           9                1        0     284
6-24 months   MAL-ED           PERU                           10               0       21     284
6-24 months   MAL-ED           PERU                           10               1        0     284
6-24 months   MAL-ED           PERU                           11               0       35     284
6-24 months   MAL-ED           PERU                           11               1        0     284
6-24 months   MAL-ED           PERU                           12               0       18     284
6-24 months   MAL-ED           PERU                           12               1        0     284
6-24 months   MAL-ED           SOUTH AFRICA                   1                0       31     275
6-24 months   MAL-ED           SOUTH AFRICA                   1                1        1     275
6-24 months   MAL-ED           SOUTH AFRICA                   2                0       34     275
6-24 months   MAL-ED           SOUTH AFRICA                   2                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   3                0       17     275
6-24 months   MAL-ED           SOUTH AFRICA                   3                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   4                0       12     275
6-24 months   MAL-ED           SOUTH AFRICA                   4                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   5                0       11     275
6-24 months   MAL-ED           SOUTH AFRICA                   5                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   6                0       21     275
6-24 months   MAL-ED           SOUTH AFRICA                   6                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   7                0       27     275
6-24 months   MAL-ED           SOUTH AFRICA                   7                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   8                0       10     275
6-24 months   MAL-ED           SOUTH AFRICA                   8                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   9                0       22     275
6-24 months   MAL-ED           SOUTH AFRICA                   9                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   10               0       24     275
6-24 months   MAL-ED           SOUTH AFRICA                   10               1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   11               0       31     275
6-24 months   MAL-ED           SOUTH AFRICA                   11               1        1     275
6-24 months   MAL-ED           SOUTH AFRICA                   12               0       33     275
6-24 months   MAL-ED           SOUTH AFRICA                   12               1        0     275
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       21     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       28     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       23     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                0       10     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                0       16     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                0       16     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                0       28     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                0       12     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                0       18     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               0       19     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10               1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               0       29     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11               1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               0       33     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12               1        0     253
6-24 months   NIH-Birth        BANGLADESH                     1                0       49     534
6-24 months   NIH-Birth        BANGLADESH                     1                1        5     534
6-24 months   NIH-Birth        BANGLADESH                     2                0       44     534
6-24 months   NIH-Birth        BANGLADESH                     2                1        2     534
6-24 months   NIH-Birth        BANGLADESH                     3                0       45     534
6-24 months   NIH-Birth        BANGLADESH                     3                1        5     534
6-24 months   NIH-Birth        BANGLADESH                     4                0       40     534
6-24 months   NIH-Birth        BANGLADESH                     4                1        5     534
6-24 months   NIH-Birth        BANGLADESH                     5                0       34     534
6-24 months   NIH-Birth        BANGLADESH                     5                1        6     534
6-24 months   NIH-Birth        BANGLADESH                     6                0       36     534
6-24 months   NIH-Birth        BANGLADESH                     6                1        4     534
6-24 months   NIH-Birth        BANGLADESH                     7                0       42     534
6-24 months   NIH-Birth        BANGLADESH                     7                1        3     534
6-24 months   NIH-Birth        BANGLADESH                     8                0       32     534
6-24 months   NIH-Birth        BANGLADESH                     8                1        3     534
6-24 months   NIH-Birth        BANGLADESH                     9                0       27     534
6-24 months   NIH-Birth        BANGLADESH                     9                1        2     534
6-24 months   NIH-Birth        BANGLADESH                     10               0       47     534
6-24 months   NIH-Birth        BANGLADESH                     10               1        5     534
6-24 months   NIH-Birth        BANGLADESH                     11               0       44     534
6-24 months   NIH-Birth        BANGLADESH                     11               1        4     534
6-24 months   NIH-Birth        BANGLADESH                     12               0       47     534
6-24 months   NIH-Birth        BANGLADESH                     12               1        3     534
6-24 months   PROBIT           BELARUS                        1                0     1131   16583
6-24 months   PROBIT           BELARUS                        1                1       17   16583
6-24 months   PROBIT           BELARUS                        2                0      980   16583
6-24 months   PROBIT           BELARUS                        2                1        6   16583
6-24 months   PROBIT           BELARUS                        3                0     1164   16583
6-24 months   PROBIT           BELARUS                        3                1        5   16583
6-24 months   PROBIT           BELARUS                        4                0     1111   16583
6-24 months   PROBIT           BELARUS                        4                1        7   16583
6-24 months   PROBIT           BELARUS                        5                0     1125   16583
6-24 months   PROBIT           BELARUS                        5                1        7   16583
6-24 months   PROBIT           BELARUS                        6                0     1177   16583
6-24 months   PROBIT           BELARUS                        6                1       14   16583
6-24 months   PROBIT           BELARUS                        7                0     1439   16583
6-24 months   PROBIT           BELARUS                        7                1       14   16583
6-24 months   PROBIT           BELARUS                        8                0     1572   16583
6-24 months   PROBIT           BELARUS                        8                1        9   16583
6-24 months   PROBIT           BELARUS                        9                0     1543   16583
6-24 months   PROBIT           BELARUS                        9                1       15   16583
6-24 months   PROBIT           BELARUS                        10               0     1753   16583
6-24 months   PROBIT           BELARUS                        10               1       12   16583
6-24 months   PROBIT           BELARUS                        11               0     1662   16583
6-24 months   PROBIT           BELARUS                        11               1       18   16583
6-24 months   PROBIT           BELARUS                        12               0     1792   16583
6-24 months   PROBIT           BELARUS                        12               1       10   16583
6-24 months   ResPak           PAKISTAN                       1                0        2     256
6-24 months   ResPak           PAKISTAN                       1                1        0     256
6-24 months   ResPak           PAKISTAN                       2                0        6     256
6-24 months   ResPak           PAKISTAN                       2                1        3     256
6-24 months   ResPak           PAKISTAN                       3                0        9     256
6-24 months   ResPak           PAKISTAN                       3                1        1     256
6-24 months   ResPak           PAKISTAN                       4                0       19     256
6-24 months   ResPak           PAKISTAN                       4                1        2     256
6-24 months   ResPak           PAKISTAN                       5                0       27     256
6-24 months   ResPak           PAKISTAN                       5                1        5     256
6-24 months   ResPak           PAKISTAN                       6                0       41     256
6-24 months   ResPak           PAKISTAN                       6                1        3     256
6-24 months   ResPak           PAKISTAN                       7                0       40     256
6-24 months   ResPak           PAKISTAN                       7                1        4     256
6-24 months   ResPak           PAKISTAN                       8                0       23     256
6-24 months   ResPak           PAKISTAN                       8                1        4     256
6-24 months   ResPak           PAKISTAN                       9                0       31     256
6-24 months   ResPak           PAKISTAN                       9                1        9     256
6-24 months   ResPak           PAKISTAN                       10               0       14     256
6-24 months   ResPak           PAKISTAN                       10               1        1     256
6-24 months   ResPak           PAKISTAN                       11               0        5     256
6-24 months   ResPak           PAKISTAN                       11               1        2     256
6-24 months   ResPak           PAKISTAN                       12               0        5     256
6-24 months   ResPak           PAKISTAN                       12               1        0     256
6-24 months   SAS-CompFeed     INDIA                          1                0       81    1366
6-24 months   SAS-CompFeed     INDIA                          1                1       13    1366
6-24 months   SAS-CompFeed     INDIA                          2                0       74    1366
6-24 months   SAS-CompFeed     INDIA                          2                1        6    1366
6-24 months   SAS-CompFeed     INDIA                          3                0       73    1366
6-24 months   SAS-CompFeed     INDIA                          3                1        7    1366
6-24 months   SAS-CompFeed     INDIA                          4                0       71    1366
6-24 months   SAS-CompFeed     INDIA                          4                1        7    1366
6-24 months   SAS-CompFeed     INDIA                          5                0       70    1366
6-24 months   SAS-CompFeed     INDIA                          5                1        9    1366
6-24 months   SAS-CompFeed     INDIA                          6                0      102    1366
6-24 months   SAS-CompFeed     INDIA                          6                1        4    1366
6-24 months   SAS-CompFeed     INDIA                          7                0      105    1366
6-24 months   SAS-CompFeed     INDIA                          7                1       11    1366
6-24 months   SAS-CompFeed     INDIA                          8                0      138    1366
6-24 months   SAS-CompFeed     INDIA                          8                1       15    1366
6-24 months   SAS-CompFeed     INDIA                          9                0      154    1366
6-24 months   SAS-CompFeed     INDIA                          9                1       14    1366
6-24 months   SAS-CompFeed     INDIA                          10               0      139    1366
6-24 months   SAS-CompFeed     INDIA                          10               1        9    1366
6-24 months   SAS-CompFeed     INDIA                          11               0      117    1366
6-24 months   SAS-CompFeed     INDIA                          11               1       12    1366
6-24 months   SAS-CompFeed     INDIA                          12               0      128    1366
6-24 months   SAS-CompFeed     INDIA                          12               1        7    1366
6-24 months   SAS-FoodSuppl    INDIA                          1                0       50     375
6-24 months   SAS-FoodSuppl    INDIA                          1                1        6     375
6-24 months   SAS-FoodSuppl    INDIA                          2                0       33     375
6-24 months   SAS-FoodSuppl    INDIA                          2                1        5     375
6-24 months   SAS-FoodSuppl    INDIA                          3                0       26     375
6-24 months   SAS-FoodSuppl    INDIA                          3                1        8     375
6-24 months   SAS-FoodSuppl    INDIA                          4                0       19     375
6-24 months   SAS-FoodSuppl    INDIA                          4                1        8     375
6-24 months   SAS-FoodSuppl    INDIA                          5                0       24     375
6-24 months   SAS-FoodSuppl    INDIA                          5                1        4     375
6-24 months   SAS-FoodSuppl    INDIA                          6                0       24     375
6-24 months   SAS-FoodSuppl    INDIA                          6                1        5     375
6-24 months   SAS-FoodSuppl    INDIA                          7                0       14     375
6-24 months   SAS-FoodSuppl    INDIA                          7                1        3     375
6-24 months   SAS-FoodSuppl    INDIA                          8                0        0     375
6-24 months   SAS-FoodSuppl    INDIA                          8                1        0     375
6-24 months   SAS-FoodSuppl    INDIA                          9                0        9     375
6-24 months   SAS-FoodSuppl    INDIA                          9                1        3     375
6-24 months   SAS-FoodSuppl    INDIA                          10               0       23     375
6-24 months   SAS-FoodSuppl    INDIA                          10               1        3     375
6-24 months   SAS-FoodSuppl    INDIA                          11               0       42     375
6-24 months   SAS-FoodSuppl    INDIA                          11               1        5     375
6-24 months   SAS-FoodSuppl    INDIA                          12               0       46     375
6-24 months   SAS-FoodSuppl    INDIA                          12               1       15     375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      199    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        8    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      136    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        4    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      162    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      148    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        2    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      169    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      148    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        6    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      157    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      177    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        5    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      202    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      207    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      197    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      206    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       10    2166
6-24 months   ZVITAMBO         ZIMBABWE                       1                0      917    9527
6-24 months   ZVITAMBO         ZIMBABWE                       1                1       24    9527
6-24 months   ZVITAMBO         ZIMBABWE                       2                0      684    9527
6-24 months   ZVITAMBO         ZIMBABWE                       2                1        9    9527
6-24 months   ZVITAMBO         ZIMBABWE                       3                0      760    9527
6-24 months   ZVITAMBO         ZIMBABWE                       3                1       22    9527
6-24 months   ZVITAMBO         ZIMBABWE                       4                0      725    9527
6-24 months   ZVITAMBO         ZIMBABWE                       4                1        8    9527
6-24 months   ZVITAMBO         ZIMBABWE                       5                0      689    9527
6-24 months   ZVITAMBO         ZIMBABWE                       5                1        8    9527
6-24 months   ZVITAMBO         ZIMBABWE                       6                0      778    9527
6-24 months   ZVITAMBO         ZIMBABWE                       6                1       13    9527
6-24 months   ZVITAMBO         ZIMBABWE                       7                0      783    9527
6-24 months   ZVITAMBO         ZIMBABWE                       7                1       16    9527
6-24 months   ZVITAMBO         ZIMBABWE                       8                0      823    9527
6-24 months   ZVITAMBO         ZIMBABWE                       8                1       13    9527
6-24 months   ZVITAMBO         ZIMBABWE                       9                0      873    9527
6-24 months   ZVITAMBO         ZIMBABWE                       9                1       14    9527
6-24 months   ZVITAMBO         ZIMBABWE                       10               0      656    9527
6-24 months   ZVITAMBO         ZIMBABWE                       10               1       14    9527
6-24 months   ZVITAMBO         ZIMBABWE                       11               0      781    9527
6-24 months   ZVITAMBO         ZIMBABWE                       11               1       11    9527
6-24 months   ZVITAMBO         ZIMBABWE                       12               0      890    9527
6-24 months   ZVITAMBO         ZIMBABWE                       12               1       16    9527


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
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
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/b38f2f65-bf0b-4a34-ad65-8a7e79057700/3f5fb6d7-621e-48c3-acbc-1949974c7854/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b38f2f65-bf0b-4a34-ad65-8a7e79057700/3f5fb6d7-621e-48c3-acbc-1949974c7854/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b38f2f65-bf0b-4a34-ad65-8a7e79057700/3f5fb6d7-621e-48c3-acbc-1949974c7854/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b38f2f65-bf0b-4a34-ad65-8a7e79057700/3f5fb6d7-621e-48c3-acbc-1949974c7854/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc   BURKINA FASO   1                    NA                0.1031746   -0.0251156   0.2314648
0-24 months   iLiNS-Zinc   BURKINA FASO   2                    NA                0.0865385    0.0041394   0.1689376
0-24 months   iLiNS-Zinc   BURKINA FASO   3                    NA                0.1359223    0.0632883   0.2085564
0-24 months   iLiNS-Zinc   BURKINA FASO   4                    NA                0.1212121   -0.0299747   0.2723989
0-24 months   iLiNS-Zinc   BURKINA FASO   5                    NA                0.1504425    0.0845608   0.2163241
0-24 months   iLiNS-Zinc   BURKINA FASO   6                    NA                0.1047120    0.0312439   0.1781802
0-24 months   iLiNS-Zinc   BURKINA FASO   7                    NA                0.0934579    0.0067666   0.1801493
0-24 months   iLiNS-Zinc   BURKINA FASO   8                    NA                0.1619048    0.1001995   0.2236101
0-24 months   iLiNS-Zinc   BURKINA FASO   9                    NA                0.1125828    0.0356469   0.1895187
0-24 months   iLiNS-Zinc   BURKINA FASO   10                   NA                0.0950000    0.0120340   0.1779660
0-24 months   iLiNS-Zinc   BURKINA FASO   11                   NA                0.1250000    0.0113568   0.2386432
0-24 months   iLiNS-Zinc   BURKINA FASO   12                   NA                0.2000000    0.1445744   0.2554256
0-24 months   JiVitA-3     BANGLADESH     1                    NA                0.0451011    0.0324160   0.0577862
0-24 months   JiVitA-3     BANGLADESH     2                    NA                0.0485437    0.0348611   0.0622263
0-24 months   JiVitA-3     BANGLADESH     3                    NA                0.0544267    0.0409496   0.0679038
0-24 months   JiVitA-3     BANGLADESH     4                    NA                0.0694200    0.0537513   0.0850888
0-24 months   JiVitA-3     BANGLADESH     5                    NA                0.0530650    0.0387686   0.0673614
0-24 months   JiVitA-3     BANGLADESH     6                    NA                0.0675182    0.0489831   0.0860534
0-24 months   JiVitA-3     BANGLADESH     7                    NA                0.0601002    0.0464182   0.0737822
0-24 months   JiVitA-3     BANGLADESH     8                    NA                0.0588235    0.0448552   0.0727918
0-24 months   JiVitA-3     BANGLADESH     9                    NA                0.0597637    0.0461479   0.0733795
0-24 months   JiVitA-3     BANGLADESH     10                   NA                0.0682680    0.0550786   0.0814574
0-24 months   JiVitA-3     BANGLADESH     11                   NA                0.0515329    0.0401541   0.0629118
0-24 months   JiVitA-3     BANGLADESH     12                   NA                0.0472240    0.0366115   0.0578365
0-24 months   Keneba       GAMBIA         1                    NA                0.0343137    0.0093290   0.0592984
0-24 months   Keneba       GAMBIA         2                    NA                0.0750000    0.0416702   0.1083298
0-24 months   Keneba       GAMBIA         3                    NA                0.0283019    0.0059743   0.0506295
0-24 months   Keneba       GAMBIA         4                    NA                0.0772201    0.0447038   0.1097364
0-24 months   Keneba       GAMBIA         5                    NA                0.0565217    0.0266716   0.0863719
0-24 months   Keneba       GAMBIA         6                    NA                0.0594595    0.0253755   0.0935434
0-24 months   Keneba       GAMBIA         7                    NA                0.0563380    0.0184064   0.0942697
0-24 months   Keneba       GAMBIA         8                    NA                0.0992908    0.0499195   0.1486620
0-24 months   Keneba       GAMBIA         9                    NA                0.0454545    0.0146746   0.0762345
0-24 months   Keneba       GAMBIA         10                   NA                0.0591133    0.0266644   0.0915622
0-24 months   Keneba       GAMBIA         11                   NA                0.0592593    0.0310905   0.0874280
0-24 months   Keneba       GAMBIA         12                   NA                0.0659341    0.0298725   0.1019957
0-24 months   PROBIT       BELARUS        1                    NA                0.0148084    0.0023870   0.0272298
0-24 months   PROBIT       BELARUS        2                    NA                0.0060852    0.0012619   0.0109085
0-24 months   PROBIT       BELARUS        3                    NA                0.0042772   -0.0012425   0.0097968
0-24 months   PROBIT       BELARUS        4                    NA                0.0062612    0.0020978   0.0104245
0-24 months   PROBIT       BELARUS        5                    NA                0.0061837   -0.0009440   0.0133115
0-24 months   PROBIT       BELARUS        6                    NA                0.0117548    0.0050145   0.0184951
0-24 months   PROBIT       BELARUS        7                    NA                0.0096352    0.0020740   0.0171964
0-24 months   PROBIT       BELARUS        8                    NA                0.0056926    0.0004294   0.0109558
0-24 months   PROBIT       BELARUS        9                    NA                0.0096277    0.0007611   0.0184943
0-24 months   PROBIT       BELARUS        10                   NA                0.0067989    0.0016656   0.0119321
0-24 months   PROBIT       BELARUS        11                   NA                0.0107143    0.0043527   0.0170758
0-24 months   PROBIT       BELARUS        12                   NA                0.0055494   -0.0004076   0.0115064
0-24 months   ZVITAMBO     ZIMBABWE       1                    NA                0.0255048    0.0154314   0.0355782
0-24 months   ZVITAMBO     ZIMBABWE       2                    NA                0.0129870    0.0045572   0.0214169
0-24 months   ZVITAMBO     ZIMBABWE       3                    NA                0.0281330    0.0165431   0.0397229
0-24 months   ZVITAMBO     ZIMBABWE       4                    NA                0.0109141    0.0033921   0.0184360
0-24 months   ZVITAMBO     ZIMBABWE       5                    NA                0.0114778    0.0035696   0.0193859
0-24 months   ZVITAMBO     ZIMBABWE       6                    NA                0.0164349    0.0075742   0.0252956
0-24 months   ZVITAMBO     ZIMBABWE       7                    NA                0.0200250    0.0103112   0.0297389
0-24 months   ZVITAMBO     ZIMBABWE       8                    NA                0.0155502    0.0071627   0.0239377
0-24 months   ZVITAMBO     ZIMBABWE       9                    NA                0.0157835    0.0075808   0.0239862
0-24 months   ZVITAMBO     ZIMBABWE       10                   NA                0.0208955    0.0100644   0.0317267
0-24 months   ZVITAMBO     ZIMBABWE       11                   NA                0.0138889    0.0057380   0.0220398
0-24 months   ZVITAMBO     ZIMBABWE       12                   NA                0.0176600    0.0090831   0.0262370
0-6 months    PROBIT       BELARUS        1                    NA                0.0752056    0.0442113   0.1062000
0-6 months    PROBIT       BELARUS        2                    NA                0.0843990    0.0415851   0.1272128
0-6 months    PROBIT       BELARUS        3                    NA                0.0802998    0.0482515   0.1123480
0-6 months    PROBIT       BELARUS        4                    NA                0.0825190    0.0472746   0.1177634
0-6 months    PROBIT       BELARUS        5                    NA                0.0993590    0.0461773   0.1525406
0-6 months    PROBIT       BELARUS        6                    NA                0.1013171    0.0704443   0.1321899
0-6 months    PROBIT       BELARUS        7                    NA                0.0950479    0.0587849   0.1313109
0-6 months    PROBIT       BELARUS        8                    NA                0.0868891    0.0575284   0.1162497
0-6 months    PROBIT       BELARUS        9                    NA                0.0871595    0.0515439   0.1227751
0-6 months    PROBIT       BELARUS        10                   NA                0.0692935    0.0436828   0.0949041
0-6 months    PROBIT       BELARUS        11                   NA                0.0611193    0.0414838   0.0807547
0-6 months    PROBIT       BELARUS        12                   NA                0.0647580    0.0422012   0.0873148
6-24 months   iLiNS-Zinc   BURKINA FASO   1                    NA                0.1031746   -0.0251156   0.2314648
6-24 months   iLiNS-Zinc   BURKINA FASO   2                    NA                0.0865385    0.0041394   0.1689376
6-24 months   iLiNS-Zinc   BURKINA FASO   3                    NA                0.1359223    0.0632883   0.2085564
6-24 months   iLiNS-Zinc   BURKINA FASO   4                    NA                0.1212121   -0.0299747   0.2723989
6-24 months   iLiNS-Zinc   BURKINA FASO   5                    NA                0.1504425    0.0845608   0.2163241
6-24 months   iLiNS-Zinc   BURKINA FASO   6                    NA                0.1047120    0.0312439   0.1781802
6-24 months   iLiNS-Zinc   BURKINA FASO   7                    NA                0.0934579    0.0067666   0.1801493
6-24 months   iLiNS-Zinc   BURKINA FASO   8                    NA                0.1619048    0.1001995   0.2236101
6-24 months   iLiNS-Zinc   BURKINA FASO   9                    NA                0.1125828    0.0356469   0.1895187
6-24 months   iLiNS-Zinc   BURKINA FASO   10                   NA                0.0950000    0.0120340   0.1779660
6-24 months   iLiNS-Zinc   BURKINA FASO   11                   NA                0.1250000    0.0113568   0.2386432
6-24 months   iLiNS-Zinc   BURKINA FASO   12                   NA                0.2000000    0.1445744   0.2554256
6-24 months   JiVitA-3     BANGLADESH     1                    NA                0.0451011    0.0324160   0.0577862
6-24 months   JiVitA-3     BANGLADESH     2                    NA                0.0485437    0.0348611   0.0622263
6-24 months   JiVitA-3     BANGLADESH     3                    NA                0.0544267    0.0409496   0.0679038
6-24 months   JiVitA-3     BANGLADESH     4                    NA                0.0694200    0.0537513   0.0850888
6-24 months   JiVitA-3     BANGLADESH     5                    NA                0.0530650    0.0387686   0.0673614
6-24 months   JiVitA-3     BANGLADESH     6                    NA                0.0675182    0.0489831   0.0860534
6-24 months   JiVitA-3     BANGLADESH     7                    NA                0.0601002    0.0464182   0.0737822
6-24 months   JiVitA-3     BANGLADESH     8                    NA                0.0588235    0.0448552   0.0727918
6-24 months   JiVitA-3     BANGLADESH     9                    NA                0.0597637    0.0461479   0.0733795
6-24 months   JiVitA-3     BANGLADESH     10                   NA                0.0682680    0.0550786   0.0814574
6-24 months   JiVitA-3     BANGLADESH     11                   NA                0.0515329    0.0401541   0.0629118
6-24 months   JiVitA-3     BANGLADESH     12                   NA                0.0472240    0.0366115   0.0578365
6-24 months   Keneba       GAMBIA         1                    NA                0.0343137    0.0093290   0.0592984
6-24 months   Keneba       GAMBIA         2                    NA                0.0750000    0.0416702   0.1083298
6-24 months   Keneba       GAMBIA         3                    NA                0.0283019    0.0059743   0.0506295
6-24 months   Keneba       GAMBIA         4                    NA                0.0772201    0.0447038   0.1097364
6-24 months   Keneba       GAMBIA         5                    NA                0.0565217    0.0266716   0.0863719
6-24 months   Keneba       GAMBIA         6                    NA                0.0594595    0.0253755   0.0935434
6-24 months   Keneba       GAMBIA         7                    NA                0.0563380    0.0184064   0.0942697
6-24 months   Keneba       GAMBIA         8                    NA                0.0992908    0.0499195   0.1486620
6-24 months   Keneba       GAMBIA         9                    NA                0.0454545    0.0146746   0.0762345
6-24 months   Keneba       GAMBIA         10                   NA                0.0591133    0.0266644   0.0915622
6-24 months   Keneba       GAMBIA         11                   NA                0.0592593    0.0310905   0.0874280
6-24 months   Keneba       GAMBIA         12                   NA                0.0659341    0.0298725   0.1019957
6-24 months   PROBIT       BELARUS        1                    NA                0.0148084    0.0023870   0.0272298
6-24 months   PROBIT       BELARUS        2                    NA                0.0060852    0.0012619   0.0109085
6-24 months   PROBIT       BELARUS        3                    NA                0.0042772   -0.0012425   0.0097968
6-24 months   PROBIT       BELARUS        4                    NA                0.0062612    0.0020978   0.0104245
6-24 months   PROBIT       BELARUS        5                    NA                0.0061837   -0.0009440   0.0133115
6-24 months   PROBIT       BELARUS        6                    NA                0.0117548    0.0050145   0.0184951
6-24 months   PROBIT       BELARUS        7                    NA                0.0096352    0.0020740   0.0171964
6-24 months   PROBIT       BELARUS        8                    NA                0.0056926    0.0004294   0.0109558
6-24 months   PROBIT       BELARUS        9                    NA                0.0096277    0.0007611   0.0184943
6-24 months   PROBIT       BELARUS        10                   NA                0.0067989    0.0016656   0.0119321
6-24 months   PROBIT       BELARUS        11                   NA                0.0107143    0.0043527   0.0170758
6-24 months   PROBIT       BELARUS        12                   NA                0.0055494   -0.0004076   0.0115064
6-24 months   ZVITAMBO     ZIMBABWE       1                    NA                0.0255048    0.0154314   0.0355782
6-24 months   ZVITAMBO     ZIMBABWE       2                    NA                0.0129870    0.0045572   0.0214169
6-24 months   ZVITAMBO     ZIMBABWE       3                    NA                0.0281330    0.0165431   0.0397229
6-24 months   ZVITAMBO     ZIMBABWE       4                    NA                0.0109141    0.0033921   0.0184360
6-24 months   ZVITAMBO     ZIMBABWE       5                    NA                0.0114778    0.0035696   0.0193859
6-24 months   ZVITAMBO     ZIMBABWE       6                    NA                0.0164349    0.0075742   0.0252956
6-24 months   ZVITAMBO     ZIMBABWE       7                    NA                0.0200250    0.0103112   0.0297389
6-24 months   ZVITAMBO     ZIMBABWE       8                    NA                0.0155502    0.0071627   0.0239377
6-24 months   ZVITAMBO     ZIMBABWE       9                    NA                0.0157835    0.0075808   0.0239862
6-24 months   ZVITAMBO     ZIMBABWE       10                   NA                0.0208955    0.0100644   0.0317267
6-24 months   ZVITAMBO     ZIMBABWE       11                   NA                0.0138889    0.0057380   0.0220398
6-24 months   ZVITAMBO     ZIMBABWE       12                   NA                0.0176600    0.0090831   0.0262370


### Parameter: E(Y)


agecat        studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   JiVitA-3     BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348
0-24 months   Keneba       GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
0-24 months   PROBIT       BELARUS        NA                   NA                0.0080806   0.0045539   0.0116073
0-24 months   ZVITAMBO     ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771
0-6 months    PROBIT       BELARUS        NA                   NA                0.0810551   0.0555982   0.1065120
6-24 months   iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   JiVitA-3     BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348
6-24 months   Keneba       GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
6-24 months   PROBIT       BELARUS        NA                   NA                0.0080806   0.0045539   0.0116073
6-24 months   ZVITAMBO     ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771


### Parameter: RR


agecat        studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc   BURKINA FASO   2                    1                 0.8387574   0.1688395   4.1667615
0-24 months   iLiNS-Zinc   BURKINA FASO   3                    1                 1.3174010   0.3363297   5.1602512
0-24 months   iLiNS-Zinc   BURKINA FASO   4                    1                 1.1748252   0.2005119   6.8834522
0-24 months   iLiNS-Zinc   BURKINA FASO   5                    1                 1.4581348   0.3738117   5.6877752
0-24 months   iLiNS-Zinc   BURKINA FASO   6                    1                 1.0149013   0.2242300   4.5936085
0-24 months   iLiNS-Zinc   BURKINA FASO   7                    1                 0.9058231   0.1805737   4.5439377
0-24 months   iLiNS-Zinc   BURKINA FASO   8                    1                 1.5692308   0.4238967   5.8091633
0-24 months   iLiNS-Zinc   BURKINA FASO   9                    1                 1.0911870   0.2082314   5.7181057
0-24 months   iLiNS-Zinc   BURKINA FASO   10                   1                 0.9207692   0.2024908   4.1869367
0-24 months   iLiNS-Zinc   BURKINA FASO   11                   1                 1.2115385   0.2162089   6.7889224
0-24 months   iLiNS-Zinc   BURKINA FASO   12                   1                 1.9384615   0.5414145   6.9404003
0-24 months   JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3     BANGLADESH     2                    1                 1.0763308   0.7262645   1.5951323
0-24 months   JiVitA-3     BANGLADESH     3                    1                 1.2067714   0.8436990   1.7260863
0-24 months   JiVitA-3     BANGLADESH     4                    1                 1.5392097   1.0737284   2.2064859
0-24 months   JiVitA-3     BANGLADESH     5                    1                 1.1765782   0.7928129   1.7461073
0-24 months   JiVitA-3     BANGLADESH     6                    1                 1.4970425   1.0041923   2.2317801
0-24 months   JiVitA-3     BANGLADESH     7                    1                 1.3325658   0.9296485   1.9101106
0-24 months   JiVitA-3     BANGLADESH     8                    1                 1.3042596   0.9093935   1.8705799
0-24 months   JiVitA-3     BANGLADESH     9                    1                 1.3251060   0.9183219   1.9120813
0-24 months   JiVitA-3     BANGLADESH     10                   1                 1.5136667   1.0758946   2.1295643
0-24 months   JiVitA-3     BANGLADESH     11                   1                 1.1426097   0.8035441   1.6247483
0-24 months   JiVitA-3     BANGLADESH     12                   1                 1.0470700   0.7328154   1.4960870
0-24 months   Keneba       GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba       GAMBIA         2                    1                 2.1857143   0.9313833   5.1293028
0-24 months   Keneba       GAMBIA         3                    1                 0.8247978   0.2819056   2.4131886
0-24 months   Keneba       GAMBIA         4                    1                 2.2504137   0.9704416   5.2186157
0-24 months   Keneba       GAMBIA         5                    1                 1.6472050   0.6700479   4.0493885
0-24 months   Keneba       GAMBIA         6                    1                 1.7328185   0.6859549   4.3773434
0-24 months   Keneba       GAMBIA         7                    1                 1.6418511   0.6090335   4.4261522
0-24 months   Keneba       GAMBIA         8                    1                 2.8936170   1.1981721   6.9881609
0-24 months   Keneba       GAMBIA         9                    1                 1.3246753   0.4900875   3.5805132
0-24 months   Keneba       GAMBIA         10                   1                 1.7227305   0.6921526   4.2877833
0-24 months   Keneba       GAMBIA         11                   1                 1.7269841   0.7238463   4.1203142
0-24 months   Keneba       GAMBIA         12                   1                 1.9215071   0.7729422   4.7767988
0-24 months   PROBIT       BELARUS        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT       BELARUS        2                    1                 0.4109295   0.2228558   0.7577234
0-24 months   PROBIT       BELARUS        3                    1                 0.2888341   0.0563384   1.4807855
0-24 months   PROBIT       BELARUS        4                    1                 0.4228138   0.1414522   1.2638303
0-24 months   PROBIT       BELARUS        5                    1                 0.4175847   0.1745407   0.9990618
0-24 months   PROBIT       BELARUS        6                    1                 0.7937966   0.2609658   2.4145431
0-24 months   PROBIT       BELARUS        7                    1                 0.6506619   0.2788013   1.5185042
0-24 months   PROBIT       BELARUS        8                    1                 0.3844179   0.1651877   0.8946015
0-24 months   PROBIT       BELARUS        9                    1                 0.6501548   0.1958897   2.1578530
0-24 months   PROBIT       BELARUS        10                   1                 0.4591235   0.2409501   0.8748467
0-24 months   PROBIT       BELARUS        11                   1                 0.7235294   0.3030198   1.7275927
0-24 months   PROBIT       BELARUS        12                   1                 0.3747470   0.1208093   1.1624544
0-24 months   ZVITAMBO     ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO     ZIMBABWE       2                    1                 0.5091991   0.2381785   1.0886111
0-24 months   ZVITAMBO     ZIMBABWE       3                    1                 1.1030477   0.6233576   1.9518720
0-24 months   ZVITAMBO     ZIMBABWE       4                    1                 0.4279218   0.1933678   0.9469885
0-24 months   ZVITAMBO     ZIMBABWE       5                    1                 0.4500239   0.2033899   0.9957306
0-24 months   ZVITAMBO     ZIMBABWE       6                    1                 0.6443847   0.3302881   1.2571802
0-24 months   ZVITAMBO     ZIMBABWE       7                    1                 0.7851481   0.4200317   1.4676451
0-24 months   ZVITAMBO     ZIMBABWE       8                    1                 0.6096990   0.3124484   1.1897416
0-24 months   ZVITAMBO     ZIMBABWE       9                    1                 0.6188463   0.3221790   1.1886895
0-24 months   ZVITAMBO     ZIMBABWE       10                   1                 0.8192786   0.4269854   1.5719915
0-24 months   ZVITAMBO     ZIMBABWE       11                   1                 0.5445602   0.2684289   1.1047463
0-24 months   ZVITAMBO     ZIMBABWE       12                   1                 0.6924209   0.3702573   1.2949014
0-6 months    PROBIT       BELARUS        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT       BELARUS        2                    1                 1.1222426   0.7553904   1.6672551
0-6 months    PROBIT       BELARUS        3                    1                 1.0677362   0.6792831   1.6783292
0-6 months    PROBIT       BELARUS        4                    1                 1.0972448   0.7265063   1.6571726
0-6 months    PROBIT       BELARUS        5                    1                 1.3211639   0.8494618   2.0547998
0-6 months    PROBIT       BELARUS        6                    1                 1.3472011   0.9629506   1.8847809
0-6 months    PROBIT       BELARUS        7                    1                 1.2638404   0.8624668   1.8520045
0-6 months    PROBIT       BELARUS        8                    1                 1.1553530   0.7798321   1.7117024
0-6 months    PROBIT       BELARUS        9                    1                 1.1589494   0.7771441   1.7283330
0-6 months    PROBIT       BELARUS        10                   1                 0.9213867   0.6259839   1.3561907
0-6 months    PROBIT       BELARUS        11                   1                 0.8126956   0.5791335   1.1404523
0-6 months    PROBIT       BELARUS        12                   1                 0.8610792   0.5817688   1.2744880
6-24 months   iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc   BURKINA FASO   2                    1                 0.8387574   0.1688395   4.1667615
6-24 months   iLiNS-Zinc   BURKINA FASO   3                    1                 1.3174010   0.3363297   5.1602512
6-24 months   iLiNS-Zinc   BURKINA FASO   4                    1                 1.1748252   0.2005119   6.8834522
6-24 months   iLiNS-Zinc   BURKINA FASO   5                    1                 1.4581348   0.3738117   5.6877752
6-24 months   iLiNS-Zinc   BURKINA FASO   6                    1                 1.0149013   0.2242300   4.5936085
6-24 months   iLiNS-Zinc   BURKINA FASO   7                    1                 0.9058231   0.1805737   4.5439377
6-24 months   iLiNS-Zinc   BURKINA FASO   8                    1                 1.5692308   0.4238967   5.8091633
6-24 months   iLiNS-Zinc   BURKINA FASO   9                    1                 1.0911870   0.2082314   5.7181057
6-24 months   iLiNS-Zinc   BURKINA FASO   10                   1                 0.9207692   0.2024908   4.1869367
6-24 months   iLiNS-Zinc   BURKINA FASO   11                   1                 1.2115385   0.2162089   6.7889224
6-24 months   iLiNS-Zinc   BURKINA FASO   12                   1                 1.9384615   0.5414145   6.9404003
6-24 months   JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3     BANGLADESH     2                    1                 1.0763308   0.7262645   1.5951323
6-24 months   JiVitA-3     BANGLADESH     3                    1                 1.2067714   0.8436990   1.7260863
6-24 months   JiVitA-3     BANGLADESH     4                    1                 1.5392097   1.0737284   2.2064859
6-24 months   JiVitA-3     BANGLADESH     5                    1                 1.1765782   0.7928129   1.7461073
6-24 months   JiVitA-3     BANGLADESH     6                    1                 1.4970425   1.0041923   2.2317801
6-24 months   JiVitA-3     BANGLADESH     7                    1                 1.3325658   0.9296485   1.9101106
6-24 months   JiVitA-3     BANGLADESH     8                    1                 1.3042596   0.9093935   1.8705799
6-24 months   JiVitA-3     BANGLADESH     9                    1                 1.3251060   0.9183219   1.9120813
6-24 months   JiVitA-3     BANGLADESH     10                   1                 1.5136667   1.0758946   2.1295643
6-24 months   JiVitA-3     BANGLADESH     11                   1                 1.1426097   0.8035441   1.6247483
6-24 months   JiVitA-3     BANGLADESH     12                   1                 1.0470700   0.7328154   1.4960870
6-24 months   Keneba       GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba       GAMBIA         2                    1                 2.1857143   0.9313833   5.1293028
6-24 months   Keneba       GAMBIA         3                    1                 0.8247978   0.2819056   2.4131886
6-24 months   Keneba       GAMBIA         4                    1                 2.2504137   0.9704416   5.2186157
6-24 months   Keneba       GAMBIA         5                    1                 1.6472050   0.6700479   4.0493885
6-24 months   Keneba       GAMBIA         6                    1                 1.7328185   0.6859549   4.3773434
6-24 months   Keneba       GAMBIA         7                    1                 1.6418511   0.6090335   4.4261522
6-24 months   Keneba       GAMBIA         8                    1                 2.8936170   1.1981721   6.9881609
6-24 months   Keneba       GAMBIA         9                    1                 1.3246753   0.4900875   3.5805132
6-24 months   Keneba       GAMBIA         10                   1                 1.7227305   0.6921526   4.2877833
6-24 months   Keneba       GAMBIA         11                   1                 1.7269841   0.7238463   4.1203142
6-24 months   Keneba       GAMBIA         12                   1                 1.9215071   0.7729422   4.7767988
6-24 months   PROBIT       BELARUS        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROBIT       BELARUS        2                    1                 0.4109295   0.2228558   0.7577234
6-24 months   PROBIT       BELARUS        3                    1                 0.2888341   0.0563384   1.4807855
6-24 months   PROBIT       BELARUS        4                    1                 0.4228138   0.1414522   1.2638303
6-24 months   PROBIT       BELARUS        5                    1                 0.4175847   0.1745407   0.9990618
6-24 months   PROBIT       BELARUS        6                    1                 0.7937966   0.2609658   2.4145431
6-24 months   PROBIT       BELARUS        7                    1                 0.6506619   0.2788013   1.5185042
6-24 months   PROBIT       BELARUS        8                    1                 0.3844179   0.1651877   0.8946015
6-24 months   PROBIT       BELARUS        9                    1                 0.6501548   0.1958897   2.1578530
6-24 months   PROBIT       BELARUS        10                   1                 0.4591235   0.2409501   0.8748467
6-24 months   PROBIT       BELARUS        11                   1                 0.7235294   0.3030198   1.7275927
6-24 months   PROBIT       BELARUS        12                   1                 0.3747470   0.1208093   1.1624544
6-24 months   ZVITAMBO     ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO     ZIMBABWE       2                    1                 0.5091991   0.2381785   1.0886111
6-24 months   ZVITAMBO     ZIMBABWE       3                    1                 1.1030477   0.6233576   1.9518720
6-24 months   ZVITAMBO     ZIMBABWE       4                    1                 0.4279218   0.1933678   0.9469885
6-24 months   ZVITAMBO     ZIMBABWE       5                    1                 0.4500239   0.2033899   0.9957306
6-24 months   ZVITAMBO     ZIMBABWE       6                    1                 0.6443847   0.3302881   1.2571802
6-24 months   ZVITAMBO     ZIMBABWE       7                    1                 0.7851481   0.4200317   1.4676451
6-24 months   ZVITAMBO     ZIMBABWE       8                    1                 0.6096990   0.3124484   1.1897416
6-24 months   ZVITAMBO     ZIMBABWE       9                    1                 0.6188463   0.3221790   1.1886895
6-24 months   ZVITAMBO     ZIMBABWE       10                   1                 0.8192786   0.4269854   1.5719915
6-24 months   ZVITAMBO     ZIMBABWE       11                   1                 0.5445602   0.2684289   1.1047463
6-24 months   ZVITAMBO     ZIMBABWE       12                   1                 0.6924209   0.3702573   1.2949014


### Parameter: PAR


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0166576   -0.1127007   0.1460159
0-24 months   JiVitA-3     BANGLADESH     1                    NA                 0.0117236   -0.0004460   0.0238932
0-24 months   Keneba       GAMBIA         1                    NA                 0.0250152    0.0003620   0.0496685
0-24 months   PROBIT       BELARUS        1                    NA                -0.0067278   -0.0168368   0.0033812
0-24 months   ZVITAMBO     ZIMBABWE       1                    NA                -0.0078707   -0.0172736   0.0015322
0-6 months    PROBIT       BELARUS        1                    NA                 0.0058495   -0.0166608   0.0283598
6-24 months   iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0166576   -0.1127007   0.1460159
6-24 months   JiVitA-3     BANGLADESH     1                    NA                 0.0117236   -0.0004460   0.0238932
6-24 months   Keneba       GAMBIA         1                    NA                 0.0250152    0.0003620   0.0496685
6-24 months   PROBIT       BELARUS        1                    NA                -0.0067278   -0.0168368   0.0033812
6-24 months   ZVITAMBO     ZIMBABWE       1                    NA                -0.0078707   -0.0172736   0.0015322


### Parameter: PAF


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1390079   -2.0034569    0.7531820
0-24 months   JiVitA-3     BANGLADESH     1                    NA                 0.2063112   -0.0394100    0.3939429
0-24 months   Keneba       GAMBIA         1                    NA                 0.4216362   -0.1762285    0.7156125
0-24 months   PROBIT       BELARUS        1                    NA                -0.8325901   -2.3245453   -0.0101792
0-24 months   ZVITAMBO     ZIMBABWE       1                    NA                -0.4463337   -1.0853600   -0.0031271
0-6 months    PROBIT       BELARUS        1                    NA                 0.0721667   -0.2476426    0.3099990
6-24 months   iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1390079   -2.0034569    0.7531820
6-24 months   JiVitA-3     BANGLADESH     1                    NA                 0.2063112   -0.0394100    0.3939429
6-24 months   Keneba       GAMBIA         1                    NA                 0.4216362   -0.1762285    0.7156125
6-24 months   PROBIT       BELARUS        1                    NA                -0.8325901   -2.3245453   -0.0101792
6-24 months   ZVITAMBO     ZIMBABWE       1                    NA                -0.4463337   -1.0853600   -0.0031271
