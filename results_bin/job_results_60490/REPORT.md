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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        brthmon    pers_wast   n_cell       n
------------  ---------------  -----------------------------  --------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1                  0       31     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                  1        3     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                  0       14     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                  1        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                  0       31     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                  1        0     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                  0       41     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                  1        3     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                  0       32     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                  1        4     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                  0       36     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                  1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                  0       37     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                  1        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                  0       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                  1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                  0       20     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                  1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          10                 0       27     373
0-24 months   CMC-V-BCS-2002   INDIA                          10                 1        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          11                 0       41     373
0-24 months   CMC-V-BCS-2002   INDIA                          11                 1        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          12                 0       23     373
0-24 months   CMC-V-BCS-2002   INDIA                          12                 1        2     373
0-24 months   CMIN             BANGLADESH                     1                  0       26     257
0-24 months   CMIN             BANGLADESH                     1                  1        2     257
0-24 months   CMIN             BANGLADESH                     2                  0       23     257
0-24 months   CMIN             BANGLADESH                     2                  1        2     257
0-24 months   CMIN             BANGLADESH                     3                  0       16     257
0-24 months   CMIN             BANGLADESH                     3                  1        3     257
0-24 months   CMIN             BANGLADESH                     4                  0       20     257
0-24 months   CMIN             BANGLADESH                     4                  1        2     257
0-24 months   CMIN             BANGLADESH                     5                  0       17     257
0-24 months   CMIN             BANGLADESH                     5                  1        0     257
0-24 months   CMIN             BANGLADESH                     6                  0        9     257
0-24 months   CMIN             BANGLADESH                     6                  1        0     257
0-24 months   CMIN             BANGLADESH                     7                  0       15     257
0-24 months   CMIN             BANGLADESH                     7                  1        2     257
0-24 months   CMIN             BANGLADESH                     8                  0       20     257
0-24 months   CMIN             BANGLADESH                     8                  1        0     257
0-24 months   CMIN             BANGLADESH                     9                  0       20     257
0-24 months   CMIN             BANGLADESH                     9                  1        0     257
0-24 months   CMIN             BANGLADESH                     10                 0       22     257
0-24 months   CMIN             BANGLADESH                     10                 1        4     257
0-24 months   CMIN             BANGLADESH                     11                 0       24     257
0-24 months   CMIN             BANGLADESH                     11                 1        2     257
0-24 months   CMIN             BANGLADESH                     12                 0       25     257
0-24 months   CMIN             BANGLADESH                     12                 1        3     257
0-24 months   CONTENT          PERU                           1                  0       10     215
0-24 months   CONTENT          PERU                           1                  1        0     215
0-24 months   CONTENT          PERU                           2                  0       18     215
0-24 months   CONTENT          PERU                           2                  1        0     215
0-24 months   CONTENT          PERU                           3                  0       30     215
0-24 months   CONTENT          PERU                           3                  1        0     215
0-24 months   CONTENT          PERU                           4                  0       19     215
0-24 months   CONTENT          PERU                           4                  1        0     215
0-24 months   CONTENT          PERU                           5                  0       14     215
0-24 months   CONTENT          PERU                           5                  1        0     215
0-24 months   CONTENT          PERU                           6                  0       13     215
0-24 months   CONTENT          PERU                           6                  1        0     215
0-24 months   CONTENT          PERU                           7                  0       28     215
0-24 months   CONTENT          PERU                           7                  1        0     215
0-24 months   CONTENT          PERU                           8                  0       23     215
0-24 months   CONTENT          PERU                           8                  1        0     215
0-24 months   CONTENT          PERU                           9                  0       26     215
0-24 months   CONTENT          PERU                           9                  1        0     215
0-24 months   CONTENT          PERU                           10                 0       14     215
0-24 months   CONTENT          PERU                           10                 1        0     215
0-24 months   CONTENT          PERU                           11                 0        9     215
0-24 months   CONTENT          PERU                           11                 1        0     215
0-24 months   CONTENT          PERU                           12                 0       11     215
0-24 months   CONTENT          PERU                           12                 1        0     215
0-24 months   EE               PAKISTAN                       1                  0       84     377
0-24 months   EE               PAKISTAN                       1                  1        8     377
0-24 months   EE               PAKISTAN                       2                  0       60     377
0-24 months   EE               PAKISTAN                       2                  1        7     377
0-24 months   EE               PAKISTAN                       3                  0       37     377
0-24 months   EE               PAKISTAN                       3                  1        6     377
0-24 months   EE               PAKISTAN                       4                  0       15     377
0-24 months   EE               PAKISTAN                       4                  1        1     377
0-24 months   EE               PAKISTAN                       5                  0        0     377
0-24 months   EE               PAKISTAN                       5                  1        0     377
0-24 months   EE               PAKISTAN                       6                  0        0     377
0-24 months   EE               PAKISTAN                       6                  1        0     377
0-24 months   EE               PAKISTAN                       7                  0        0     377
0-24 months   EE               PAKISTAN                       7                  1        0     377
0-24 months   EE               PAKISTAN                       8                  0        0     377
0-24 months   EE               PAKISTAN                       8                  1        0     377
0-24 months   EE               PAKISTAN                       9                  0        0     377
0-24 months   EE               PAKISTAN                       9                  1        0     377
0-24 months   EE               PAKISTAN                       10                 0        4     377
0-24 months   EE               PAKISTAN                       10                 1        0     377
0-24 months   EE               PAKISTAN                       11                 0       63     377
0-24 months   EE               PAKISTAN                       11                 1        8     377
0-24 months   EE               PAKISTAN                       12                 0       81     377
0-24 months   EE               PAKISTAN                       12                 1        3     377
0-24 months   GMS-Nepal        NEPAL                          1                  0        0     597
0-24 months   GMS-Nepal        NEPAL                          1                  1        0     597
0-24 months   GMS-Nepal        NEPAL                          2                  0        0     597
0-24 months   GMS-Nepal        NEPAL                          2                  1        0     597
0-24 months   GMS-Nepal        NEPAL                          3                  0        0     597
0-24 months   GMS-Nepal        NEPAL                          3                  1        0     597
0-24 months   GMS-Nepal        NEPAL                          4                  0        1     597
0-24 months   GMS-Nepal        NEPAL                          4                  1        0     597
0-24 months   GMS-Nepal        NEPAL                          5                  0        0     597
0-24 months   GMS-Nepal        NEPAL                          5                  1        0     597
0-24 months   GMS-Nepal        NEPAL                          6                  0      111     597
0-24 months   GMS-Nepal        NEPAL                          6                  1       17     597
0-24 months   GMS-Nepal        NEPAL                          7                  0      204     597
0-24 months   GMS-Nepal        NEPAL                          7                  1       30     597
0-24 months   GMS-Nepal        NEPAL                          8                  0      201     597
0-24 months   GMS-Nepal        NEPAL                          8                  1       33     597
0-24 months   GMS-Nepal        NEPAL                          9                  0        0     597
0-24 months   GMS-Nepal        NEPAL                          9                  1        0     597
0-24 months   GMS-Nepal        NEPAL                          10                 0        0     597
0-24 months   GMS-Nepal        NEPAL                          10                 1        0     597
0-24 months   GMS-Nepal        NEPAL                          11                 0        0     597
0-24 months   GMS-Nepal        NEPAL                          11                 1        0     597
0-24 months   GMS-Nepal        NEPAL                          12                 0        0     597
0-24 months   GMS-Nepal        NEPAL                          12                 1        0     597
0-24 months   Guatemala BSC    GUATEMALA                      1                  0       27     256
0-24 months   Guatemala BSC    GUATEMALA                      1                  1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      2                  0       23     256
0-24 months   Guatemala BSC    GUATEMALA                      2                  1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      3                  0       25     256
0-24 months   Guatemala BSC    GUATEMALA                      3                  1        1     256
0-24 months   Guatemala BSC    GUATEMALA                      4                  0       28     256
0-24 months   Guatemala BSC    GUATEMALA                      4                  1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      5                  0       24     256
0-24 months   Guatemala BSC    GUATEMALA                      5                  1        1     256
0-24 months   Guatemala BSC    GUATEMALA                      6                  0       17     256
0-24 months   Guatemala BSC    GUATEMALA                      6                  1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      7                  0       15     256
0-24 months   Guatemala BSC    GUATEMALA                      7                  1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      8                  0       11     256
0-24 months   Guatemala BSC    GUATEMALA                      8                  1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      9                  0       13     256
0-24 months   Guatemala BSC    GUATEMALA                      9                  1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      10                 0       24     256
0-24 months   Guatemala BSC    GUATEMALA                      10                 1        1     256
0-24 months   Guatemala BSC    GUATEMALA                      11                 0       20     256
0-24 months   Guatemala BSC    GUATEMALA                      11                 1        0     256
0-24 months   Guatemala BSC    GUATEMALA                      12                 0       25     256
0-24 months   Guatemala BSC    GUATEMALA                      12                 1        1     256
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                  0      148    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                  1       21    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                  0       67    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                  1        8    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                  0       83    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                  1       17    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                  0      108    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                  1       12    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                  0       93    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                  1       12    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                  0       82    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                  1       12    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                  0       80    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                  1       11    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                  0      121    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                  1       17    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                  0      198    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                  1       26    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                 0      178    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                 1       26    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                 0      161    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                 1       24    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                 0      150    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                 1       14    1669
0-24 months   IRC              INDIA                          1                  0       35     410
0-24 months   IRC              INDIA                          1                  1        3     410
0-24 months   IRC              INDIA                          2                  0       26     410
0-24 months   IRC              INDIA                          2                  1        2     410
0-24 months   IRC              INDIA                          3                  0       26     410
0-24 months   IRC              INDIA                          3                  1        1     410
0-24 months   IRC              INDIA                          4                  0       19     410
0-24 months   IRC              INDIA                          4                  1        2     410
0-24 months   IRC              INDIA                          5                  0       20     410
0-24 months   IRC              INDIA                          5                  1        2     410
0-24 months   IRC              INDIA                          6                  0       32     410
0-24 months   IRC              INDIA                          6                  1        5     410
0-24 months   IRC              INDIA                          7                  0       31     410
0-24 months   IRC              INDIA                          7                  1        5     410
0-24 months   IRC              INDIA                          8                  0       35     410
0-24 months   IRC              INDIA                          8                  1        9     410
0-24 months   IRC              INDIA                          9                  0       22     410
0-24 months   IRC              INDIA                          9                  1        5     410
0-24 months   IRC              INDIA                          10                 0       32     410
0-24 months   IRC              INDIA                          10                 1        6     410
0-24 months   IRC              INDIA                          11                 0       37     410
0-24 months   IRC              INDIA                          11                 1        3     410
0-24 months   IRC              INDIA                          12                 0       47     410
0-24 months   IRC              INDIA                          12                 1        5     410
0-24 months   JiVitA-3         BANGLADESH                     1                  0     1217   15803
0-24 months   JiVitA-3         BANGLADESH                     1                  1       59   15803
0-24 months   JiVitA-3         BANGLADESH                     2                  0     1047   15803
0-24 months   JiVitA-3         BANGLADESH                     2                  1       57   15803
0-24 months   JiVitA-3         BANGLADESH                     3                  0     1295   15803
0-24 months   JiVitA-3         BANGLADESH                     3                  1       76   15803
0-24 months   JiVitA-3         BANGLADESH                     4                  0     1051   15803
0-24 months   JiVitA-3         BANGLADESH                     4                  1       76   15803
0-24 months   JiVitA-3         BANGLADESH                     5                  0     1002   15803
0-24 months   JiVitA-3         BANGLADESH                     5                  1       56   15803
0-24 months   JiVitA-3         BANGLADESH                     6                  0     1057   15803
0-24 months   JiVitA-3         BANGLADESH                     6                  1       81   15803
0-24 months   JiVitA-3         BANGLADESH                     7                  0     1144   15803
0-24 months   JiVitA-3         BANGLADESH                     7                  1       65   15803
0-24 months   JiVitA-3         BANGLADESH                     8                  0     1295   15803
0-24 months   JiVitA-3         BANGLADESH                     8                  1       85   15803
0-24 months   JiVitA-3         BANGLADESH                     9                  0     1416   15803
0-24 months   JiVitA-3         BANGLADESH                     9                  1       86   15803
0-24 months   JiVitA-3         BANGLADESH                     10                 0     1456   15803
0-24 months   JiVitA-3         BANGLADESH                     10                 1      106   15803
0-24 months   JiVitA-3         BANGLADESH                     11                 0     1514   15803
0-24 months   JiVitA-3         BANGLADESH                     11                 1       82   15803
0-24 months   JiVitA-3         BANGLADESH                     12                 0     1411   15803
0-24 months   JiVitA-3         BANGLADESH                     12                 1       69   15803
0-24 months   JiVitA-4         BANGLADESH                     1                  0        0    5281
0-24 months   JiVitA-4         BANGLADESH                     1                  1        0    5281
0-24 months   JiVitA-4         BANGLADESH                     2                  0      805    5281
0-24 months   JiVitA-4         BANGLADESH                     2                  1       67    5281
0-24 months   JiVitA-4         BANGLADESH                     3                  0      901    5281
0-24 months   JiVitA-4         BANGLADESH                     3                  1       75    5281
0-24 months   JiVitA-4         BANGLADESH                     4                  0      685    5281
0-24 months   JiVitA-4         BANGLADESH                     4                  1       67    5281
0-24 months   JiVitA-4         BANGLADESH                     5                  0      566    5281
0-24 months   JiVitA-4         BANGLADESH                     5                  1       54    5281
0-24 months   JiVitA-4         BANGLADESH                     6                  0      404    5281
0-24 months   JiVitA-4         BANGLADESH                     6                  1       50    5281
0-24 months   JiVitA-4         BANGLADESH                     7                  0      487    5281
0-24 months   JiVitA-4         BANGLADESH                     7                  1       45    5281
0-24 months   JiVitA-4         BANGLADESH                     8                  0      521    5281
0-24 months   JiVitA-4         BANGLADESH                     8                  1       26    5281
0-24 months   JiVitA-4         BANGLADESH                     9                  0      363    5281
0-24 months   JiVitA-4         BANGLADESH                     9                  1       33    5281
0-24 months   JiVitA-4         BANGLADESH                     10                 0      123    5281
0-24 months   JiVitA-4         BANGLADESH                     10                 1        9    5281
0-24 months   JiVitA-4         BANGLADESH                     11                 0        0    5281
0-24 months   JiVitA-4         BANGLADESH                     11                 1        0    5281
0-24 months   JiVitA-4         BANGLADESH                     12                 0        0    5281
0-24 months   JiVitA-4         BANGLADESH                     12                 1        0    5281
0-24 months   Keneba           GAMBIA                         1                  0      227    2444
0-24 months   Keneba           GAMBIA                         1                  1       16    2444
0-24 months   Keneba           GAMBIA                         2                  0      207    2444
0-24 months   Keneba           GAMBIA                         2                  1       10    2444
0-24 months   Keneba           GAMBIA                         3                  0      237    2444
0-24 months   Keneba           GAMBIA                         3                  1       19    2444
0-24 months   Keneba           GAMBIA                         4                  0      155    2444
0-24 months   Keneba           GAMBIA                         4                  1        9    2444
0-24 months   Keneba           GAMBIA                         5                  0      163    2444
0-24 months   Keneba           GAMBIA                         5                  1       13    2444
0-24 months   Keneba           GAMBIA                         6                  0      133    2444
0-24 months   Keneba           GAMBIA                         6                  1        7    2444
0-24 months   Keneba           GAMBIA                         7                  0      104    2444
0-24 months   Keneba           GAMBIA                         7                  1       13    2444
0-24 months   Keneba           GAMBIA                         8                  0      198    2444
0-24 months   Keneba           GAMBIA                         8                  1        8    2444
0-24 months   Keneba           GAMBIA                         9                  0      204    2444
0-24 months   Keneba           GAMBIA                         9                  1       11    2444
0-24 months   Keneba           GAMBIA                         10                 0      274    2444
0-24 months   Keneba           GAMBIA                         10                 1       14    2444
0-24 months   Keneba           GAMBIA                         11                 0      191    2444
0-24 months   Keneba           GAMBIA                         11                 1       16    2444
0-24 months   Keneba           GAMBIA                         12                 0      206    2444
0-24 months   Keneba           GAMBIA                         12                 1        9    2444
0-24 months   LCNI-5           MALAWI                         1                  0       57     719
0-24 months   LCNI-5           MALAWI                         1                  1        0     719
0-24 months   LCNI-5           MALAWI                         2                  0       41     719
0-24 months   LCNI-5           MALAWI                         2                  1        0     719
0-24 months   LCNI-5           MALAWI                         3                  0       23     719
0-24 months   LCNI-5           MALAWI                         3                  1        0     719
0-24 months   LCNI-5           MALAWI                         4                  0       33     719
0-24 months   LCNI-5           MALAWI                         4                  1        0     719
0-24 months   LCNI-5           MALAWI                         5                  0       36     719
0-24 months   LCNI-5           MALAWI                         5                  1        0     719
0-24 months   LCNI-5           MALAWI                         6                  0       27     719
0-24 months   LCNI-5           MALAWI                         6                  1        2     719
0-24 months   LCNI-5           MALAWI                         7                  0       56     719
0-24 months   LCNI-5           MALAWI                         7                  1        0     719
0-24 months   LCNI-5           MALAWI                         8                  0       79     719
0-24 months   LCNI-5           MALAWI                         8                  1        1     719
0-24 months   LCNI-5           MALAWI                         9                  0       84     719
0-24 months   LCNI-5           MALAWI                         9                  1        1     719
0-24 months   LCNI-5           MALAWI                         10                 0      117     719
0-24 months   LCNI-5           MALAWI                         10                 1        1     719
0-24 months   LCNI-5           MALAWI                         11                 0       82     719
0-24 months   LCNI-5           MALAWI                         11                 1        0     719
0-24 months   LCNI-5           MALAWI                         12                 0       78     719
0-24 months   LCNI-5           MALAWI                         12                 1        1     719
0-24 months   MAL-ED           BANGLADESH                     1                  0       20     248
0-24 months   MAL-ED           BANGLADESH                     1                  1        0     248
0-24 months   MAL-ED           BANGLADESH                     2                  0       20     248
0-24 months   MAL-ED           BANGLADESH                     2                  1        1     248
0-24 months   MAL-ED           BANGLADESH                     3                  0       22     248
0-24 months   MAL-ED           BANGLADESH                     3                  1        1     248
0-24 months   MAL-ED           BANGLADESH                     4                  0       21     248
0-24 months   MAL-ED           BANGLADESH                     4                  1        1     248
0-24 months   MAL-ED           BANGLADESH                     5                  0       19     248
0-24 months   MAL-ED           BANGLADESH                     5                  1        2     248
0-24 months   MAL-ED           BANGLADESH                     6                  0        9     248
0-24 months   MAL-ED           BANGLADESH                     6                  1        1     248
0-24 months   MAL-ED           BANGLADESH                     7                  0       17     248
0-24 months   MAL-ED           BANGLADESH                     7                  1        1     248
0-24 months   MAL-ED           BANGLADESH                     8                  0       25     248
0-24 months   MAL-ED           BANGLADESH                     8                  1        0     248
0-24 months   MAL-ED           BANGLADESH                     9                  0       20     248
0-24 months   MAL-ED           BANGLADESH                     9                  1        2     248
0-24 months   MAL-ED           BANGLADESH                     10                 0       20     248
0-24 months   MAL-ED           BANGLADESH                     10                 1        2     248
0-24 months   MAL-ED           BANGLADESH                     11                 0       15     248
0-24 months   MAL-ED           BANGLADESH                     11                 1        1     248
0-24 months   MAL-ED           BANGLADESH                     12                 0       27     248
0-24 months   MAL-ED           BANGLADESH                     12                 1        1     248
0-24 months   MAL-ED           BRAZIL                         1                  0       15     218
0-24 months   MAL-ED           BRAZIL                         1                  1        0     218
0-24 months   MAL-ED           BRAZIL                         2                  0       25     218
0-24 months   MAL-ED           BRAZIL                         2                  1        0     218
0-24 months   MAL-ED           BRAZIL                         3                  0       16     218
0-24 months   MAL-ED           BRAZIL                         3                  1        0     218
0-24 months   MAL-ED           BRAZIL                         4                  0       11     218
0-24 months   MAL-ED           BRAZIL                         4                  1        0     218
0-24 months   MAL-ED           BRAZIL                         5                  0       22     218
0-24 months   MAL-ED           BRAZIL                         5                  1        0     218
0-24 months   MAL-ED           BRAZIL                         6                  0        8     218
0-24 months   MAL-ED           BRAZIL                         6                  1        0     218
0-24 months   MAL-ED           BRAZIL                         7                  0       16     218
0-24 months   MAL-ED           BRAZIL                         7                  1        0     218
0-24 months   MAL-ED           BRAZIL                         8                  0       19     218
0-24 months   MAL-ED           BRAZIL                         8                  1        0     218
0-24 months   MAL-ED           BRAZIL                         9                  0       30     218
0-24 months   MAL-ED           BRAZIL                         9                  1        0     218
0-24 months   MAL-ED           BRAZIL                         10                 0       20     218
0-24 months   MAL-ED           BRAZIL                         10                 1        1     218
0-24 months   MAL-ED           BRAZIL                         11                 0       21     218
0-24 months   MAL-ED           BRAZIL                         11                 1        1     218
0-24 months   MAL-ED           BRAZIL                         12                 0       13     218
0-24 months   MAL-ED           BRAZIL                         12                 1        0     218
0-24 months   MAL-ED           INDIA                          1                  0       18     241
0-24 months   MAL-ED           INDIA                          1                  1        2     241
0-24 months   MAL-ED           INDIA                          2                  0       17     241
0-24 months   MAL-ED           INDIA                          2                  1        2     241
0-24 months   MAL-ED           INDIA                          3                  0       20     241
0-24 months   MAL-ED           INDIA                          3                  1        2     241
0-24 months   MAL-ED           INDIA                          4                  0       14     241
0-24 months   MAL-ED           INDIA                          4                  1        1     241
0-24 months   MAL-ED           INDIA                          5                  0        7     241
0-24 months   MAL-ED           INDIA                          5                  1        1     241
0-24 months   MAL-ED           INDIA                          6                  0       16     241
0-24 months   MAL-ED           INDIA                          6                  1        3     241
0-24 months   MAL-ED           INDIA                          7                  0       21     241
0-24 months   MAL-ED           INDIA                          7                  1        4     241
0-24 months   MAL-ED           INDIA                          8                  0       22     241
0-24 months   MAL-ED           INDIA                          8                  1        1     241
0-24 months   MAL-ED           INDIA                          9                  0       20     241
0-24 months   MAL-ED           INDIA                          9                  1        0     241
0-24 months   MAL-ED           INDIA                          10                 0       24     241
0-24 months   MAL-ED           INDIA                          10                 1        2     241
0-24 months   MAL-ED           INDIA                          11                 0       23     241
0-24 months   MAL-ED           INDIA                          11                 1        2     241
0-24 months   MAL-ED           INDIA                          12                 0       18     241
0-24 months   MAL-ED           INDIA                          12                 1        1     241
0-24 months   MAL-ED           NEPAL                          1                  0       19     238
0-24 months   MAL-ED           NEPAL                          1                  1        1     238
0-24 months   MAL-ED           NEPAL                          2                  0       19     238
0-24 months   MAL-ED           NEPAL                          2                  1        0     238
0-24 months   MAL-ED           NEPAL                          3                  0       17     238
0-24 months   MAL-ED           NEPAL                          3                  1        0     238
0-24 months   MAL-ED           NEPAL                          4                  0       22     238
0-24 months   MAL-ED           NEPAL                          4                  1        0     238
0-24 months   MAL-ED           NEPAL                          5                  0       20     238
0-24 months   MAL-ED           NEPAL                          5                  1        2     238
0-24 months   MAL-ED           NEPAL                          6                  0       18     238
0-24 months   MAL-ED           NEPAL                          6                  1        0     238
0-24 months   MAL-ED           NEPAL                          7                  0       17     238
0-24 months   MAL-ED           NEPAL                          7                  1        1     238
0-24 months   MAL-ED           NEPAL                          8                  0       24     238
0-24 months   MAL-ED           NEPAL                          8                  1        0     238
0-24 months   MAL-ED           NEPAL                          9                  0       16     238
0-24 months   MAL-ED           NEPAL                          9                  1        0     238
0-24 months   MAL-ED           NEPAL                          10                 0       21     238
0-24 months   MAL-ED           NEPAL                          10                 1        0     238
0-24 months   MAL-ED           NEPAL                          11                 0       24     238
0-24 months   MAL-ED           NEPAL                          11                 1        0     238
0-24 months   MAL-ED           NEPAL                          12                 0       17     238
0-24 months   MAL-ED           NEPAL                          12                 1        0     238
0-24 months   MAL-ED           PERU                           1                  0       41     284
0-24 months   MAL-ED           PERU                           1                  1        0     284
0-24 months   MAL-ED           PERU                           2                  0       22     284
0-24 months   MAL-ED           PERU                           2                  1        0     284
0-24 months   MAL-ED           PERU                           3                  0       22     284
0-24 months   MAL-ED           PERU                           3                  1        0     284
0-24 months   MAL-ED           PERU                           4                  0       20     284
0-24 months   MAL-ED           PERU                           4                  1        0     284
0-24 months   MAL-ED           PERU                           5                  0       27     284
0-24 months   MAL-ED           PERU                           5                  1        0     284
0-24 months   MAL-ED           PERU                           6                  0       15     284
0-24 months   MAL-ED           PERU                           6                  1        0     284
0-24 months   MAL-ED           PERU                           7                  0       23     284
0-24 months   MAL-ED           PERU                           7                  1        0     284
0-24 months   MAL-ED           PERU                           8                  0       15     284
0-24 months   MAL-ED           PERU                           8                  1        1     284
0-24 months   MAL-ED           PERU                           9                  0       23     284
0-24 months   MAL-ED           PERU                           9                  1        0     284
0-24 months   MAL-ED           PERU                           10                 0       22     284
0-24 months   MAL-ED           PERU                           10                 1        0     284
0-24 months   MAL-ED           PERU                           11                 0       32     284
0-24 months   MAL-ED           PERU                           11                 1        0     284
0-24 months   MAL-ED           PERU                           12                 0       21     284
0-24 months   MAL-ED           PERU                           12                 1        0     284
0-24 months   MAL-ED           SOUTH AFRICA                   1                  0       37     275
0-24 months   MAL-ED           SOUTH AFRICA                   1                  1        1     275
0-24 months   MAL-ED           SOUTH AFRICA                   2                  0       24     275
0-24 months   MAL-ED           SOUTH AFRICA                   2                  1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   3                  0       15     275
0-24 months   MAL-ED           SOUTH AFRICA                   3                  1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   4                  0       13     275
0-24 months   MAL-ED           SOUTH AFRICA                   4                  1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   5                  0       15     275
0-24 months   MAL-ED           SOUTH AFRICA                   5                  1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   6                  0       19     275
0-24 months   MAL-ED           SOUTH AFRICA                   6                  1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   7                  0       26     275
0-24 months   MAL-ED           SOUTH AFRICA                   7                  1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   8                  0       10     275
0-24 months   MAL-ED           SOUTH AFRICA                   8                  1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   9                  0       23     275
0-24 months   MAL-ED           SOUTH AFRICA                   9                  1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   10                 0       27     275
0-24 months   MAL-ED           SOUTH AFRICA                   10                 1        1     275
0-24 months   MAL-ED           SOUTH AFRICA                   11                 0       28     275
0-24 months   MAL-ED           SOUTH AFRICA                   11                 1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   12                 0       36     275
0-24 months   MAL-ED           SOUTH AFRICA                   12                 1        0     275
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       20     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0       30     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0       18     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0        9     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0       20     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0       19     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0       23     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0       12     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0       21     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0       23     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0       27     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0       31     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        0     253
0-24 months   NIH-Birth        BANGLADESH                     1                  0       50     534
0-24 months   NIH-Birth        BANGLADESH                     1                  1        5     534
0-24 months   NIH-Birth        BANGLADESH                     2                  0       43     534
0-24 months   NIH-Birth        BANGLADESH                     2                  1        3     534
0-24 months   NIH-Birth        BANGLADESH                     3                  0       45     534
0-24 months   NIH-Birth        BANGLADESH                     3                  1        5     534
0-24 months   NIH-Birth        BANGLADESH                     4                  0       39     534
0-24 months   NIH-Birth        BANGLADESH                     4                  1        4     534
0-24 months   NIH-Birth        BANGLADESH                     5                  0       35     534
0-24 months   NIH-Birth        BANGLADESH                     5                  1        7     534
0-24 months   NIH-Birth        BANGLADESH                     6                  0       41     534
0-24 months   NIH-Birth        BANGLADESH                     6                  1        3     534
0-24 months   NIH-Birth        BANGLADESH                     7                  0       36     534
0-24 months   NIH-Birth        BANGLADESH                     7                  1        3     534
0-24 months   NIH-Birth        BANGLADESH                     8                  0       29     534
0-24 months   NIH-Birth        BANGLADESH                     8                  1        3     534
0-24 months   NIH-Birth        BANGLADESH                     9                  0       38     534
0-24 months   NIH-Birth        BANGLADESH                     9                  1        2     534
0-24 months   NIH-Birth        BANGLADESH                     10                 0       38     534
0-24 months   NIH-Birth        BANGLADESH                     10                 1        5     534
0-24 months   NIH-Birth        BANGLADESH                     11                 0       45     534
0-24 months   NIH-Birth        BANGLADESH                     11                 1        4     534
0-24 months   NIH-Birth        BANGLADESH                     12                 0       48     534
0-24 months   NIH-Birth        BANGLADESH                     12                 1        3     534
0-24 months   PROBIT           BELARUS                        1                  0      998   16583
0-24 months   PROBIT           BELARUS                        1                  1       13   16583
0-24 months   PROBIT           BELARUS                        2                  0      964   16583
0-24 months   PROBIT           BELARUS                        2                  1        6   16583
0-24 months   PROBIT           BELARUS                        3                  0     1124   16583
0-24 months   PROBIT           BELARUS                        3                  1        4   16583
0-24 months   PROBIT           BELARUS                        4                  0     1134   16583
0-24 months   PROBIT           BELARUS                        4                  1        8   16583
0-24 months   PROBIT           BELARUS                        5                  0     1135   16583
0-24 months   PROBIT           BELARUS                        5                  1       10   16583
0-24 months   PROBIT           BELARUS                        6                  0     1179   16583
0-24 months   PROBIT           BELARUS                        6                  1       12   16583
0-24 months   PROBIT           BELARUS                        7                  0     1539   16583
0-24 months   PROBIT           BELARUS                        7                  1       14   16583
0-24 months   PROBIT           BELARUS                        8                  0     1550   16583
0-24 months   PROBIT           BELARUS                        8                  1        9   16583
0-24 months   PROBIT           BELARUS                        9                  0     1568   16583
0-24 months   PROBIT           BELARUS                        9                  1       16   16583
0-24 months   PROBIT           BELARUS                        10                 0     1771   16583
0-24 months   PROBIT           BELARUS                        10                 1       16   16583
0-24 months   PROBIT           BELARUS                        11                 0     1664   16583
0-24 months   PROBIT           BELARUS                        11                 1       10   16583
0-24 months   PROBIT           BELARUS                        12                 0     1823   16583
0-24 months   PROBIT           BELARUS                        12                 1       16   16583
0-24 months   PROVIDE          BANGLADESH                     1                  0       37     641
0-24 months   PROVIDE          BANGLADESH                     1                  1        1     641
0-24 months   PROVIDE          BANGLADESH                     2                  0       34     641
0-24 months   PROVIDE          BANGLADESH                     2                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     3                  0       48     641
0-24 months   PROVIDE          BANGLADESH                     3                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     4                  0       39     641
0-24 months   PROVIDE          BANGLADESH                     4                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     5                  0       43     641
0-24 months   PROVIDE          BANGLADESH                     5                  1        3     641
0-24 months   PROVIDE          BANGLADESH                     6                  0       78     641
0-24 months   PROVIDE          BANGLADESH                     6                  1        4     641
0-24 months   PROVIDE          BANGLADESH                     7                  0       76     641
0-24 months   PROVIDE          BANGLADESH                     7                  1        2     641
0-24 months   PROVIDE          BANGLADESH                     8                  0       60     641
0-24 months   PROVIDE          BANGLADESH                     8                  1        3     641
0-24 months   PROVIDE          BANGLADESH                     9                  0       71     641
0-24 months   PROVIDE          BANGLADESH                     9                  1        0     641
0-24 months   PROVIDE          BANGLADESH                     10                 0       71     641
0-24 months   PROVIDE          BANGLADESH                     10                 1        1     641
0-24 months   PROVIDE          BANGLADESH                     11                 0       41     641
0-24 months   PROVIDE          BANGLADESH                     11                 1        0     641
0-24 months   PROVIDE          BANGLADESH                     12                 0       28     641
0-24 months   PROVIDE          BANGLADESH                     12                 1        1     641
0-24 months   ResPak           PAKISTAN                       1                  0       10     256
0-24 months   ResPak           PAKISTAN                       1                  1        2     256
0-24 months   ResPak           PAKISTAN                       2                  0        8     256
0-24 months   ResPak           PAKISTAN                       2                  1        1     256
0-24 months   ResPak           PAKISTAN                       3                  0       24     256
0-24 months   ResPak           PAKISTAN                       3                  1        3     256
0-24 months   ResPak           PAKISTAN                       4                  0       21     256
0-24 months   ResPak           PAKISTAN                       4                  1        5     256
0-24 months   ResPak           PAKISTAN                       5                  0       46     256
0-24 months   ResPak           PAKISTAN                       5                  1        4     256
0-24 months   ResPak           PAKISTAN                       6                  0       37     256
0-24 months   ResPak           PAKISTAN                       6                  1        5     256
0-24 months   ResPak           PAKISTAN                       7                  0       23     256
0-24 months   ResPak           PAKISTAN                       7                  1        3     256
0-24 months   ResPak           PAKISTAN                       8                  0       28     256
0-24 months   ResPak           PAKISTAN                       8                  1        8     256
0-24 months   ResPak           PAKISTAN                       9                  0       15     256
0-24 months   ResPak           PAKISTAN                       9                  1        1     256
0-24 months   ResPak           PAKISTAN                       10                 0        4     256
0-24 months   ResPak           PAKISTAN                       10                 1        1     256
0-24 months   ResPak           PAKISTAN                       11                 0        4     256
0-24 months   ResPak           PAKISTAN                       11                 1        0     256
0-24 months   ResPak           PAKISTAN                       12                 0        2     256
0-24 months   ResPak           PAKISTAN                       12                 1        1     256
0-24 months   SAS-CompFeed     INDIA                          1                  0       82    1366
0-24 months   SAS-CompFeed     INDIA                          1                  1       12    1366
0-24 months   SAS-CompFeed     INDIA                          2                  0       72    1366
0-24 months   SAS-CompFeed     INDIA                          2                  1        7    1366
0-24 months   SAS-CompFeed     INDIA                          3                  0       69    1366
0-24 months   SAS-CompFeed     INDIA                          3                  1        6    1366
0-24 months   SAS-CompFeed     INDIA                          4                  0       62    1366
0-24 months   SAS-CompFeed     INDIA                          4                  1        5    1366
0-24 months   SAS-CompFeed     INDIA                          5                  0       83    1366
0-24 months   SAS-CompFeed     INDIA                          5                  1        8    1366
0-24 months   SAS-CompFeed     INDIA                          6                  0       93    1366
0-24 months   SAS-CompFeed     INDIA                          6                  1        6    1366
0-24 months   SAS-CompFeed     INDIA                          7                  0      110    1366
0-24 months   SAS-CompFeed     INDIA                          7                  1       14    1366
0-24 months   SAS-CompFeed     INDIA                          8                  0      153    1366
0-24 months   SAS-CompFeed     INDIA                          8                  1       13    1366
0-24 months   SAS-CompFeed     INDIA                          9                  0      159    1366
0-24 months   SAS-CompFeed     INDIA                          9                  1       14    1366
0-24 months   SAS-CompFeed     INDIA                          10                 0      138    1366
0-24 months   SAS-CompFeed     INDIA                          10                 1       10    1366
0-24 months   SAS-CompFeed     INDIA                          11                 0      110    1366
0-24 months   SAS-CompFeed     INDIA                          11                 1       12    1366
0-24 months   SAS-CompFeed     INDIA                          12                 0      121    1366
0-24 months   SAS-CompFeed     INDIA                          12                 1        7    1366
0-24 months   SAS-FoodSuppl    INDIA                          1                  0       22     375
0-24 months   SAS-FoodSuppl    INDIA                          1                  1        2     375
0-24 months   SAS-FoodSuppl    INDIA                          2                  0       25     375
0-24 months   SAS-FoodSuppl    INDIA                          2                  1        5     375
0-24 months   SAS-FoodSuppl    INDIA                          3                  0       16     375
0-24 months   SAS-FoodSuppl    INDIA                          3                  1        4     375
0-24 months   SAS-FoodSuppl    INDIA                          4                  0        3     375
0-24 months   SAS-FoodSuppl    INDIA                          4                  1        1     375
0-24 months   SAS-FoodSuppl    INDIA                          5                  0        8     375
0-24 months   SAS-FoodSuppl    INDIA                          5                  1        3     375
0-24 months   SAS-FoodSuppl    INDIA                          6                  0       22     375
0-24 months   SAS-FoodSuppl    INDIA                          6                  1        2     375
0-24 months   SAS-FoodSuppl    INDIA                          7                  0       30     375
0-24 months   SAS-FoodSuppl    INDIA                          7                  1        4     375
0-24 months   SAS-FoodSuppl    INDIA                          8                  0       50     375
0-24 months   SAS-FoodSuppl    INDIA                          8                  1       13     375
0-24 months   SAS-FoodSuppl    INDIA                          9                  0       48     375
0-24 months   SAS-FoodSuppl    INDIA                          9                  1        8     375
0-24 months   SAS-FoodSuppl    INDIA                          10                 0       39     375
0-24 months   SAS-FoodSuppl    INDIA                          10                 1        7     375
0-24 months   SAS-FoodSuppl    INDIA                          11                 0       24     375
0-24 months   SAS-FoodSuppl    INDIA                          11                 1        6     375
0-24 months   SAS-FoodSuppl    INDIA                          12                 0       23     375
0-24 months   SAS-FoodSuppl    INDIA                          12                 1       10     375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      145    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        6    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      159    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        5    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      151    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        2    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      156    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        6    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      164    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        3    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      150    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        3    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      198    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        5    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      205    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        4    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      194    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        1    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      215    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        8    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      197    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       10    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      174    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        5    2166
0-24 months   ZVITAMBO         ZIMBABWE                       1                  0      907    9527
0-24 months   ZVITAMBO         ZIMBABWE                       1                  1       24    9527
0-24 months   ZVITAMBO         ZIMBABWE                       2                  0      699    9527
0-24 months   ZVITAMBO         ZIMBABWE                       2                  1        9    9527
0-24 months   ZVITAMBO         ZIMBABWE                       3                  0      794    9527
0-24 months   ZVITAMBO         ZIMBABWE                       3                  1       23    9527
0-24 months   ZVITAMBO         ZIMBABWE                       4                  0      698    9527
0-24 months   ZVITAMBO         ZIMBABWE                       4                  1        8    9527
0-24 months   ZVITAMBO         ZIMBABWE                       5                  0      700    9527
0-24 months   ZVITAMBO         ZIMBABWE                       5                  1        7    9527
0-24 months   ZVITAMBO         ZIMBABWE                       6                  0      775    9527
0-24 months   ZVITAMBO         ZIMBABWE                       6                  1       14    9527
0-24 months   ZVITAMBO         ZIMBABWE                       7                  0      779    9527
0-24 months   ZVITAMBO         ZIMBABWE                       7                  1       15    9527
0-24 months   ZVITAMBO         ZIMBABWE                       8                  0      837    9527
0-24 months   ZVITAMBO         ZIMBABWE                       8                  1       13    9527
0-24 months   ZVITAMBO         ZIMBABWE                       9                  0      850    9527
0-24 months   ZVITAMBO         ZIMBABWE                       9                  1       14    9527
0-24 months   ZVITAMBO         ZIMBABWE                       10                 0      657    9527
0-24 months   ZVITAMBO         ZIMBABWE                       10                 1       15    9527
0-24 months   ZVITAMBO         ZIMBABWE                       11                 0      812    9527
0-24 months   ZVITAMBO         ZIMBABWE                       11                 1       11    9527
0-24 months   ZVITAMBO         ZIMBABWE                       12                 0      851    9527
0-24 months   ZVITAMBO         ZIMBABWE                       12                 1       15    9527
0-6 months    CMC-V-BCS-2002   INDIA                          1                  0       27     358
0-6 months    CMC-V-BCS-2002   INDIA                          1                  1        6     358
0-6 months    CMC-V-BCS-2002   INDIA                          2                  0       13     358
0-6 months    CMC-V-BCS-2002   INDIA                          2                  1        2     358
0-6 months    CMC-V-BCS-2002   INDIA                          3                  0       22     358
0-6 months    CMC-V-BCS-2002   INDIA                          3                  1        7     358
0-6 months    CMC-V-BCS-2002   INDIA                          4                  0       37     358
0-6 months    CMC-V-BCS-2002   INDIA                          4                  1        6     358
0-6 months    CMC-V-BCS-2002   INDIA                          5                  0       27     358
0-6 months    CMC-V-BCS-2002   INDIA                          5                  1        6     358
0-6 months    CMC-V-BCS-2002   INDIA                          6                  0       32     358
0-6 months    CMC-V-BCS-2002   INDIA                          6                  1        3     358
0-6 months    CMC-V-BCS-2002   INDIA                          7                  0       35     358
0-6 months    CMC-V-BCS-2002   INDIA                          7                  1        3     358
0-6 months    CMC-V-BCS-2002   INDIA                          8                  0       13     358
0-6 months    CMC-V-BCS-2002   INDIA                          8                  1        4     358
0-6 months    CMC-V-BCS-2002   INDIA                          9                  0       19     358
0-6 months    CMC-V-BCS-2002   INDIA                          9                  1        2     358
0-6 months    CMC-V-BCS-2002   INDIA                          10                 0       25     358
0-6 months    CMC-V-BCS-2002   INDIA                          10                 1        3     358
0-6 months    CMC-V-BCS-2002   INDIA                          11                 0       36     358
0-6 months    CMC-V-BCS-2002   INDIA                          11                 1        5     358
0-6 months    CMC-V-BCS-2002   INDIA                          12                 0       22     358
0-6 months    CMC-V-BCS-2002   INDIA                          12                 1        3     358
0-6 months    CMIN             BANGLADESH                     1                  0       23     234
0-6 months    CMIN             BANGLADESH                     1                  1        1     234
0-6 months    CMIN             BANGLADESH                     2                  0       22     234
0-6 months    CMIN             BANGLADESH                     2                  1        0     234
0-6 months    CMIN             BANGLADESH                     3                  0       15     234
0-6 months    CMIN             BANGLADESH                     3                  1        1     234
0-6 months    CMIN             BANGLADESH                     4                  0       18     234
0-6 months    CMIN             BANGLADESH                     4                  1        3     234
0-6 months    CMIN             BANGLADESH                     5                  0       17     234
0-6 months    CMIN             BANGLADESH                     5                  1        0     234
0-6 months    CMIN             BANGLADESH                     6                  0        8     234
0-6 months    CMIN             BANGLADESH                     6                  1        0     234
0-6 months    CMIN             BANGLADESH                     7                  0       16     234
0-6 months    CMIN             BANGLADESH                     7                  1        0     234
0-6 months    CMIN             BANGLADESH                     8                  0       17     234
0-6 months    CMIN             BANGLADESH                     8                  1        0     234
0-6 months    CMIN             BANGLADESH                     9                  0       17     234
0-6 months    CMIN             BANGLADESH                     9                  1        1     234
0-6 months    CMIN             BANGLADESH                     10                 0       23     234
0-6 months    CMIN             BANGLADESH                     10                 1        0     234
0-6 months    CMIN             BANGLADESH                     11                 0       26     234
0-6 months    CMIN             BANGLADESH                     11                 1        0     234
0-6 months    CMIN             BANGLADESH                     12                 0       23     234
0-6 months    CMIN             BANGLADESH                     12                 1        3     234
0-6 months    CONTENT          PERU                           1                  0       10     215
0-6 months    CONTENT          PERU                           1                  1        0     215
0-6 months    CONTENT          PERU                           2                  0       18     215
0-6 months    CONTENT          PERU                           2                  1        0     215
0-6 months    CONTENT          PERU                           3                  0       30     215
0-6 months    CONTENT          PERU                           3                  1        0     215
0-6 months    CONTENT          PERU                           4                  0       19     215
0-6 months    CONTENT          PERU                           4                  1        0     215
0-6 months    CONTENT          PERU                           5                  0       14     215
0-6 months    CONTENT          PERU                           5                  1        0     215
0-6 months    CONTENT          PERU                           6                  0       13     215
0-6 months    CONTENT          PERU                           6                  1        0     215
0-6 months    CONTENT          PERU                           7                  0       28     215
0-6 months    CONTENT          PERU                           7                  1        0     215
0-6 months    CONTENT          PERU                           8                  0       23     215
0-6 months    CONTENT          PERU                           8                  1        0     215
0-6 months    CONTENT          PERU                           9                  0       26     215
0-6 months    CONTENT          PERU                           9                  1        0     215
0-6 months    CONTENT          PERU                           10                 0       14     215
0-6 months    CONTENT          PERU                           10                 1        0     215
0-6 months    CONTENT          PERU                           11                 0        9     215
0-6 months    CONTENT          PERU                           11                 1        0     215
0-6 months    CONTENT          PERU                           12                 0       11     215
0-6 months    CONTENT          PERU                           12                 1        0     215
0-6 months    EE               PAKISTAN                       1                  0       82     371
0-6 months    EE               PAKISTAN                       1                  1        9     371
0-6 months    EE               PAKISTAN                       2                  0       61     371
0-6 months    EE               PAKISTAN                       2                  1        4     371
0-6 months    EE               PAKISTAN                       3                  0       40     371
0-6 months    EE               PAKISTAN                       3                  1        3     371
0-6 months    EE               PAKISTAN                       4                  0       15     371
0-6 months    EE               PAKISTAN                       4                  1        0     371
0-6 months    EE               PAKISTAN                       5                  0        0     371
0-6 months    EE               PAKISTAN                       5                  1        0     371
0-6 months    EE               PAKISTAN                       6                  0        0     371
0-6 months    EE               PAKISTAN                       6                  1        0     371
0-6 months    EE               PAKISTAN                       7                  0        0     371
0-6 months    EE               PAKISTAN                       7                  1        0     371
0-6 months    EE               PAKISTAN                       8                  0        0     371
0-6 months    EE               PAKISTAN                       8                  1        0     371
0-6 months    EE               PAKISTAN                       9                  0        0     371
0-6 months    EE               PAKISTAN                       9                  1        0     371
0-6 months    EE               PAKISTAN                       10                 0        4     371
0-6 months    EE               PAKISTAN                       10                 1        0     371
0-6 months    EE               PAKISTAN                       11                 0       66     371
0-6 months    EE               PAKISTAN                       11                 1        5     371
0-6 months    EE               PAKISTAN                       12                 0       78     371
0-6 months    EE               PAKISTAN                       12                 1        4     371
0-6 months    GMS-Nepal        NEPAL                          1                  0        0     567
0-6 months    GMS-Nepal        NEPAL                          1                  1        0     567
0-6 months    GMS-Nepal        NEPAL                          2                  0        0     567
0-6 months    GMS-Nepal        NEPAL                          2                  1        0     567
0-6 months    GMS-Nepal        NEPAL                          3                  0        0     567
0-6 months    GMS-Nepal        NEPAL                          3                  1        0     567
0-6 months    GMS-Nepal        NEPAL                          4                  0        1     567
0-6 months    GMS-Nepal        NEPAL                          4                  1        0     567
0-6 months    GMS-Nepal        NEPAL                          5                  0        0     567
0-6 months    GMS-Nepal        NEPAL                          5                  1        0     567
0-6 months    GMS-Nepal        NEPAL                          6                  0      104     567
0-6 months    GMS-Nepal        NEPAL                          6                  1       16     567
0-6 months    GMS-Nepal        NEPAL                          7                  0      197     567
0-6 months    GMS-Nepal        NEPAL                          7                  1       21     567
0-6 months    GMS-Nepal        NEPAL                          8                  0      203     567
0-6 months    GMS-Nepal        NEPAL                          8                  1       25     567
0-6 months    GMS-Nepal        NEPAL                          9                  0        0     567
0-6 months    GMS-Nepal        NEPAL                          9                  1        0     567
0-6 months    GMS-Nepal        NEPAL                          10                 0        0     567
0-6 months    GMS-Nepal        NEPAL                          10                 1        0     567
0-6 months    GMS-Nepal        NEPAL                          11                 0        0     567
0-6 months    GMS-Nepal        NEPAL                          11                 1        0     567
0-6 months    GMS-Nepal        NEPAL                          12                 0        0     567
0-6 months    GMS-Nepal        NEPAL                          12                 1        0     567
0-6 months    IRC              INDIA                          1                  0       32     402
0-6 months    IRC              INDIA                          1                  1        5     402
0-6 months    IRC              INDIA                          2                  0       24     402
0-6 months    IRC              INDIA                          2                  1        4     402
0-6 months    IRC              INDIA                          3                  0       21     402
0-6 months    IRC              INDIA                          3                  1        6     402
0-6 months    IRC              INDIA                          4                  0       20     402
0-6 months    IRC              INDIA                          4                  1        1     402
0-6 months    IRC              INDIA                          5                  0       19     402
0-6 months    IRC              INDIA                          5                  1        2     402
0-6 months    IRC              INDIA                          6                  0       29     402
0-6 months    IRC              INDIA                          6                  1        7     402
0-6 months    IRC              INDIA                          7                  0       29     402
0-6 months    IRC              INDIA                          7                  1        6     402
0-6 months    IRC              INDIA                          8                  0       35     402
0-6 months    IRC              INDIA                          8                  1        9     402
0-6 months    IRC              INDIA                          9                  0       23     402
0-6 months    IRC              INDIA                          9                  1        2     402
0-6 months    IRC              INDIA                          10                 0       30     402
0-6 months    IRC              INDIA                          10                 1        8     402
0-6 months    IRC              INDIA                          11                 0       35     402
0-6 months    IRC              INDIA                          11                 1        4     402
0-6 months    IRC              INDIA                          12                 0       41     402
0-6 months    IRC              INDIA                          12                 1       10     402
0-6 months    JiVitA-3         BANGLADESH                     1                  0       12      50
0-6 months    JiVitA-3         BANGLADESH                     1                  1        0      50
0-6 months    JiVitA-3         BANGLADESH                     2                  0       13      50
0-6 months    JiVitA-3         BANGLADESH                     2                  1        1      50
0-6 months    JiVitA-3         BANGLADESH                     3                  0        0      50
0-6 months    JiVitA-3         BANGLADESH                     3                  1        0      50
0-6 months    JiVitA-3         BANGLADESH                     4                  0        0      50
0-6 months    JiVitA-3         BANGLADESH                     4                  1        0      50
0-6 months    JiVitA-3         BANGLADESH                     5                  0        0      50
0-6 months    JiVitA-3         BANGLADESH                     5                  1        0      50
0-6 months    JiVitA-3         BANGLADESH                     6                  0        0      50
0-6 months    JiVitA-3         BANGLADESH                     6                  1        0      50
0-6 months    JiVitA-3         BANGLADESH                     7                  0        0      50
0-6 months    JiVitA-3         BANGLADESH                     7                  1        0      50
0-6 months    JiVitA-3         BANGLADESH                     8                  0        0      50
0-6 months    JiVitA-3         BANGLADESH                     8                  1        0      50
0-6 months    JiVitA-3         BANGLADESH                     9                  0       14      50
0-6 months    JiVitA-3         BANGLADESH                     9                  1        0      50
0-6 months    JiVitA-3         BANGLADESH                     10                 0        0      50
0-6 months    JiVitA-3         BANGLADESH                     10                 1        0      50
0-6 months    JiVitA-3         BANGLADESH                     11                 0        8      50
0-6 months    JiVitA-3         BANGLADESH                     11                 1        1      50
0-6 months    JiVitA-3         BANGLADESH                     12                 0        1      50
0-6 months    JiVitA-3         BANGLADESH                     12                 1        0      50
0-6 months    Keneba           GAMBIA                         1                  0      201    2045
0-6 months    Keneba           GAMBIA                         1                  1        3    2045
0-6 months    Keneba           GAMBIA                         2                  0      173    2045
0-6 months    Keneba           GAMBIA                         2                  1        8    2045
0-6 months    Keneba           GAMBIA                         3                  0      215    2045
0-6 months    Keneba           GAMBIA                         3                  1        6    2045
0-6 months    Keneba           GAMBIA                         4                  0      137    2045
0-6 months    Keneba           GAMBIA                         4                  1        5    2045
0-6 months    Keneba           GAMBIA                         5                  0      138    2045
0-6 months    Keneba           GAMBIA                         5                  1        6    2045
0-6 months    Keneba           GAMBIA                         6                  0      120    2045
0-6 months    Keneba           GAMBIA                         6                  1        3    2045
0-6 months    Keneba           GAMBIA                         7                  0       86    2045
0-6 months    Keneba           GAMBIA                         7                  1        8    2045
0-6 months    Keneba           GAMBIA                         8                  0      170    2045
0-6 months    Keneba           GAMBIA                         8                  1        6    2045
0-6 months    Keneba           GAMBIA                         9                  0      176    2045
0-6 months    Keneba           GAMBIA                         9                  1        7    2045
0-6 months    Keneba           GAMBIA                         10                 0      232    2045
0-6 months    Keneba           GAMBIA                         10                 1        3    2045
0-6 months    Keneba           GAMBIA                         11                 0      164    2045
0-6 months    Keneba           GAMBIA                         11                 1        3    2045
0-6 months    Keneba           GAMBIA                         12                 0      170    2045
0-6 months    Keneba           GAMBIA                         12                 1        5    2045
0-6 months    MAL-ED           BANGLADESH                     1                  0       20     248
0-6 months    MAL-ED           BANGLADESH                     1                  1        0     248
0-6 months    MAL-ED           BANGLADESH                     2                  0       21     248
0-6 months    MAL-ED           BANGLADESH                     2                  1        0     248
0-6 months    MAL-ED           BANGLADESH                     3                  0       22     248
0-6 months    MAL-ED           BANGLADESH                     3                  1        1     248
0-6 months    MAL-ED           BANGLADESH                     4                  0       20     248
0-6 months    MAL-ED           BANGLADESH                     4                  1        2     248
0-6 months    MAL-ED           BANGLADESH                     5                  0       20     248
0-6 months    MAL-ED           BANGLADESH                     5                  1        1     248
0-6 months    MAL-ED           BANGLADESH                     6                  0       10     248
0-6 months    MAL-ED           BANGLADESH                     6                  1        0     248
0-6 months    MAL-ED           BANGLADESH                     7                  0       17     248
0-6 months    MAL-ED           BANGLADESH                     7                  1        1     248
0-6 months    MAL-ED           BANGLADESH                     8                  0       25     248
0-6 months    MAL-ED           BANGLADESH                     8                  1        0     248
0-6 months    MAL-ED           BANGLADESH                     9                  0       22     248
0-6 months    MAL-ED           BANGLADESH                     9                  1        0     248
0-6 months    MAL-ED           BANGLADESH                     10                 0       21     248
0-6 months    MAL-ED           BANGLADESH                     10                 1        1     248
0-6 months    MAL-ED           BANGLADESH                     11                 0       16     248
0-6 months    MAL-ED           BANGLADESH                     11                 1        0     248
0-6 months    MAL-ED           BANGLADESH                     12                 0       27     248
0-6 months    MAL-ED           BANGLADESH                     12                 1        1     248
0-6 months    MAL-ED           BRAZIL                         1                  0       15     218
0-6 months    MAL-ED           BRAZIL                         1                  1        0     218
0-6 months    MAL-ED           BRAZIL                         2                  0       25     218
0-6 months    MAL-ED           BRAZIL                         2                  1        0     218
0-6 months    MAL-ED           BRAZIL                         3                  0       16     218
0-6 months    MAL-ED           BRAZIL                         3                  1        0     218
0-6 months    MAL-ED           BRAZIL                         4                  0       11     218
0-6 months    MAL-ED           BRAZIL                         4                  1        0     218
0-6 months    MAL-ED           BRAZIL                         5                  0       22     218
0-6 months    MAL-ED           BRAZIL                         5                  1        0     218
0-6 months    MAL-ED           BRAZIL                         6                  0        8     218
0-6 months    MAL-ED           BRAZIL                         6                  1        0     218
0-6 months    MAL-ED           BRAZIL                         7                  0       16     218
0-6 months    MAL-ED           BRAZIL                         7                  1        0     218
0-6 months    MAL-ED           BRAZIL                         8                  0       19     218
0-6 months    MAL-ED           BRAZIL                         8                  1        0     218
0-6 months    MAL-ED           BRAZIL                         9                  0       30     218
0-6 months    MAL-ED           BRAZIL                         9                  1        0     218
0-6 months    MAL-ED           BRAZIL                         10                 0       21     218
0-6 months    MAL-ED           BRAZIL                         10                 1        0     218
0-6 months    MAL-ED           BRAZIL                         11                 0       21     218
0-6 months    MAL-ED           BRAZIL                         11                 1        1     218
0-6 months    MAL-ED           BRAZIL                         12                 0       13     218
0-6 months    MAL-ED           BRAZIL                         12                 1        0     218
0-6 months    MAL-ED           INDIA                          1                  0       18     240
0-6 months    MAL-ED           INDIA                          1                  1        2     240
0-6 months    MAL-ED           INDIA                          2                  0       17     240
0-6 months    MAL-ED           INDIA                          2                  1        2     240
0-6 months    MAL-ED           INDIA                          3                  0       20     240
0-6 months    MAL-ED           INDIA                          3                  1        2     240
0-6 months    MAL-ED           INDIA                          4                  0       14     240
0-6 months    MAL-ED           INDIA                          4                  1        1     240
0-6 months    MAL-ED           INDIA                          5                  0        8     240
0-6 months    MAL-ED           INDIA                          5                  1        0     240
0-6 months    MAL-ED           INDIA                          6                  0       15     240
0-6 months    MAL-ED           INDIA                          6                  1        3     240
0-6 months    MAL-ED           INDIA                          7                  0       23     240
0-6 months    MAL-ED           INDIA                          7                  1        2     240
0-6 months    MAL-ED           INDIA                          8                  0       21     240
0-6 months    MAL-ED           INDIA                          8                  1        2     240
0-6 months    MAL-ED           INDIA                          9                  0       20     240
0-6 months    MAL-ED           INDIA                          9                  1        0     240
0-6 months    MAL-ED           INDIA                          10                 0       22     240
0-6 months    MAL-ED           INDIA                          10                 1        4     240
0-6 months    MAL-ED           INDIA                          11                 0       24     240
0-6 months    MAL-ED           INDIA                          11                 1        1     240
0-6 months    MAL-ED           INDIA                          12                 0       19     240
0-6 months    MAL-ED           INDIA                          12                 1        0     240
0-6 months    MAL-ED           NEPAL                          1                  0       19     238
0-6 months    MAL-ED           NEPAL                          1                  1        1     238
0-6 months    MAL-ED           NEPAL                          2                  0       19     238
0-6 months    MAL-ED           NEPAL                          2                  1        0     238
0-6 months    MAL-ED           NEPAL                          3                  0       16     238
0-6 months    MAL-ED           NEPAL                          3                  1        1     238
0-6 months    MAL-ED           NEPAL                          4                  0       22     238
0-6 months    MAL-ED           NEPAL                          4                  1        0     238
0-6 months    MAL-ED           NEPAL                          5                  0       21     238
0-6 months    MAL-ED           NEPAL                          5                  1        1     238
0-6 months    MAL-ED           NEPAL                          6                  0       18     238
0-6 months    MAL-ED           NEPAL                          6                  1        0     238
0-6 months    MAL-ED           NEPAL                          7                  0       16     238
0-6 months    MAL-ED           NEPAL                          7                  1        2     238
0-6 months    MAL-ED           NEPAL                          8                  0       22     238
0-6 months    MAL-ED           NEPAL                          8                  1        2     238
0-6 months    MAL-ED           NEPAL                          9                  0       16     238
0-6 months    MAL-ED           NEPAL                          9                  1        0     238
0-6 months    MAL-ED           NEPAL                          10                 0       21     238
0-6 months    MAL-ED           NEPAL                          10                 1        0     238
0-6 months    MAL-ED           NEPAL                          11                 0       24     238
0-6 months    MAL-ED           NEPAL                          11                 1        0     238
0-6 months    MAL-ED           NEPAL                          12                 0       17     238
0-6 months    MAL-ED           NEPAL                          12                 1        0     238
0-6 months    MAL-ED           PERU                           1                  0       41     284
0-6 months    MAL-ED           PERU                           1                  1        0     284
0-6 months    MAL-ED           PERU                           2                  0       22     284
0-6 months    MAL-ED           PERU                           2                  1        0     284
0-6 months    MAL-ED           PERU                           3                  0       22     284
0-6 months    MAL-ED           PERU                           3                  1        0     284
0-6 months    MAL-ED           PERU                           4                  0       20     284
0-6 months    MAL-ED           PERU                           4                  1        0     284
0-6 months    MAL-ED           PERU                           5                  0       27     284
0-6 months    MAL-ED           PERU                           5                  1        0     284
0-6 months    MAL-ED           PERU                           6                  0       15     284
0-6 months    MAL-ED           PERU                           6                  1        0     284
0-6 months    MAL-ED           PERU                           7                  0       23     284
0-6 months    MAL-ED           PERU                           7                  1        0     284
0-6 months    MAL-ED           PERU                           8                  0       16     284
0-6 months    MAL-ED           PERU                           8                  1        0     284
0-6 months    MAL-ED           PERU                           9                  0       23     284
0-6 months    MAL-ED           PERU                           9                  1        0     284
0-6 months    MAL-ED           PERU                           10                 0       22     284
0-6 months    MAL-ED           PERU                           10                 1        0     284
0-6 months    MAL-ED           PERU                           11                 0       32     284
0-6 months    MAL-ED           PERU                           11                 1        0     284
0-6 months    MAL-ED           PERU                           12                 0       21     284
0-6 months    MAL-ED           PERU                           12                 1        0     284
0-6 months    MAL-ED           SOUTH AFRICA                   1                  0       36     274
0-6 months    MAL-ED           SOUTH AFRICA                   1                  1        1     274
0-6 months    MAL-ED           SOUTH AFRICA                   2                  0       24     274
0-6 months    MAL-ED           SOUTH AFRICA                   2                  1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   3                  0       15     274
0-6 months    MAL-ED           SOUTH AFRICA                   3                  1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   4                  0       13     274
0-6 months    MAL-ED           SOUTH AFRICA                   4                  1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   5                  0       15     274
0-6 months    MAL-ED           SOUTH AFRICA                   5                  1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   6                  0       19     274
0-6 months    MAL-ED           SOUTH AFRICA                   6                  1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   7                  0       26     274
0-6 months    MAL-ED           SOUTH AFRICA                   7                  1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   8                  0       10     274
0-6 months    MAL-ED           SOUTH AFRICA                   8                  1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   9                  0       23     274
0-6 months    MAL-ED           SOUTH AFRICA                   9                  1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   10                 0       28     274
0-6 months    MAL-ED           SOUTH AFRICA                   10                 1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   11                 0       27     274
0-6 months    MAL-ED           SOUTH AFRICA                   11                 1        1     274
0-6 months    MAL-ED           SOUTH AFRICA                   12                 0       36     274
0-6 months    MAL-ED           SOUTH AFRICA                   12                 1        0     274
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       20     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0       30     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0       18     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0        9     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0       20     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0       19     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0       23     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0       12     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0       21     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0       23     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0       27     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0       31     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        0     253
0-6 months    NIH-Birth        BANGLADESH                     1                  0       19     169
0-6 months    NIH-Birth        BANGLADESH                     1                  1        5     169
0-6 months    NIH-Birth        BANGLADESH                     2                  0       17     169
0-6 months    NIH-Birth        BANGLADESH                     2                  1        0     169
0-6 months    NIH-Birth        BANGLADESH                     3                  0       18     169
0-6 months    NIH-Birth        BANGLADESH                     3                  1        1     169
0-6 months    NIH-Birth        BANGLADESH                     4                  0       13     169
0-6 months    NIH-Birth        BANGLADESH                     4                  1        1     169
0-6 months    NIH-Birth        BANGLADESH                     5                  0        9     169
0-6 months    NIH-Birth        BANGLADESH                     5                  1        0     169
0-6 months    NIH-Birth        BANGLADESH                     6                  0       11     169
0-6 months    NIH-Birth        BANGLADESH                     6                  1        0     169
0-6 months    NIH-Birth        BANGLADESH                     7                  0       10     169
0-6 months    NIH-Birth        BANGLADESH                     7                  1        0     169
0-6 months    NIH-Birth        BANGLADESH                     8                  0        6     169
0-6 months    NIH-Birth        BANGLADESH                     8                  1        1     169
0-6 months    NIH-Birth        BANGLADESH                     9                  0        9     169
0-6 months    NIH-Birth        BANGLADESH                     9                  1        0     169
0-6 months    NIH-Birth        BANGLADESH                     10                 0       13     169
0-6 months    NIH-Birth        BANGLADESH                     10                 1        1     169
0-6 months    NIH-Birth        BANGLADESH                     11                 0       21     169
0-6 months    NIH-Birth        BANGLADESH                     11                 1        2     169
0-6 months    NIH-Birth        BANGLADESH                     12                 0       12     169
0-6 months    NIH-Birth        BANGLADESH                     12                 1        0     169
0-6 months    PROBIT           BELARUS                        1                  0      758   13534
0-6 months    PROBIT           BELARUS                        1                  1       61   13534
0-6 months    PROBIT           BELARUS                        2                  0      719   13534
0-6 months    PROBIT           BELARUS                        2                  1       71   13534
0-6 months    PROBIT           BELARUS                        3                  0      826   13534
0-6 months    PROBIT           BELARUS                        3                  1       70   13534
0-6 months    PROBIT           BELARUS                        4                  0      870   13534
0-6 months    PROBIT           BELARUS                        4                  1       77   13534
0-6 months    PROBIT           BELARUS                        5                  0      835   13534
0-6 months    PROBIT           BELARUS                        5                  1       92   13534
0-6 months    PROBIT           BELARUS                        6                  0      891   13534
0-6 months    PROBIT           BELARUS                        6                  1      101   13534
0-6 months    PROBIT           BELARUS                        7                  0     1148   13534
0-6 months    PROBIT           BELARUS                        7                  1      119   13534
0-6 months    PROBIT           BELARUS                        8                  0     1167   13534
0-6 months    PROBIT           BELARUS                        8                  1      113   13534
0-6 months    PROBIT           BELARUS                        9                  0     1203   13534
0-6 months    PROBIT           BELARUS                        9                  1      110   13534
0-6 months    PROBIT           BELARUS                        10                 0     1359   13534
0-6 months    PROBIT           BELARUS                        10                 1      104   13534
0-6 months    PROBIT           BELARUS                        11                 0     1267   13534
0-6 months    PROBIT           BELARUS                        11                 1       80   13534
0-6 months    PROBIT           BELARUS                        12                 0     1394   13534
0-6 months    PROBIT           BELARUS                        12                 1       99   13534
0-6 months    PROVIDE          BANGLADESH                     1                  0       38     638
0-6 months    PROVIDE          BANGLADESH                     1                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     2                  0       34     638
0-6 months    PROVIDE          BANGLADESH                     2                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     3                  0       47     638
0-6 months    PROVIDE          BANGLADESH                     3                  1        1     638
0-6 months    PROVIDE          BANGLADESH                     4                  0       39     638
0-6 months    PROVIDE          BANGLADESH                     4                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     5                  0       43     638
0-6 months    PROVIDE          BANGLADESH                     5                  1        3     638
0-6 months    PROVIDE          BANGLADESH                     6                  0       78     638
0-6 months    PROVIDE          BANGLADESH                     6                  1        4     638
0-6 months    PROVIDE          BANGLADESH                     7                  0       74     638
0-6 months    PROVIDE          BANGLADESH                     7                  1        4     638
0-6 months    PROVIDE          BANGLADESH                     8                  0       61     638
0-6 months    PROVIDE          BANGLADESH                     8                  1        2     638
0-6 months    PROVIDE          BANGLADESH                     9                  0       69     638
0-6 months    PROVIDE          BANGLADESH                     9                  1        0     638
0-6 months    PROVIDE          BANGLADESH                     10                 0       72     638
0-6 months    PROVIDE          BANGLADESH                     10                 1        0     638
0-6 months    PROVIDE          BANGLADESH                     11                 0       41     638
0-6 months    PROVIDE          BANGLADESH                     11                 1        0     638
0-6 months    PROVIDE          BANGLADESH                     12                 0       28     638
0-6 months    PROVIDE          BANGLADESH                     12                 1        0     638
0-6 months    ResPak           PAKISTAN                       1                  0       10     243
0-6 months    ResPak           PAKISTAN                       1                  1        1     243
0-6 months    ResPak           PAKISTAN                       2                  0        8     243
0-6 months    ResPak           PAKISTAN                       2                  1        1     243
0-6 months    ResPak           PAKISTAN                       3                  0       21     243
0-6 months    ResPak           PAKISTAN                       3                  1        3     243
0-6 months    ResPak           PAKISTAN                       4                  0       22     243
0-6 months    ResPak           PAKISTAN                       4                  1        4     243
0-6 months    ResPak           PAKISTAN                       5                  0       40     243
0-6 months    ResPak           PAKISTAN                       5                  1        5     243
0-6 months    ResPak           PAKISTAN                       6                  0       37     243
0-6 months    ResPak           PAKISTAN                       6                  1        3     243
0-6 months    ResPak           PAKISTAN                       7                  0       23     243
0-6 months    ResPak           PAKISTAN                       7                  1        3     243
0-6 months    ResPak           PAKISTAN                       8                  0       30     243
0-6 months    ResPak           PAKISTAN                       8                  1        4     243
0-6 months    ResPak           PAKISTAN                       9                  0       15     243
0-6 months    ResPak           PAKISTAN                       9                  1        1     243
0-6 months    ResPak           PAKISTAN                       10                 0        5     243
0-6 months    ResPak           PAKISTAN                       10                 1        0     243
0-6 months    ResPak           PAKISTAN                       11                 0        4     243
0-6 months    ResPak           PAKISTAN                       11                 1        0     243
0-6 months    ResPak           PAKISTAN                       12                 0        3     243
0-6 months    ResPak           PAKISTAN                       12                 1        0     243
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      139    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        4    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      149    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        6    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      139    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        4    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      149    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        1    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      158    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        2    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      142    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        4    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      191    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        3    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      188    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        4    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      189    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        0    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      207    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        5    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      190    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       11    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      168    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        8    2061
0-6 months    ZVITAMBO         ZIMBABWE                       1                  0       82     632
0-6 months    ZVITAMBO         ZIMBABWE                       1                  1        0     632
0-6 months    ZVITAMBO         ZIMBABWE                       2                  0       61     632
0-6 months    ZVITAMBO         ZIMBABWE                       2                  1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       3                  0       30     632
0-6 months    ZVITAMBO         ZIMBABWE                       3                  1        2     632
0-6 months    ZVITAMBO         ZIMBABWE                       4                  0       34     632
0-6 months    ZVITAMBO         ZIMBABWE                       4                  1        0     632
0-6 months    ZVITAMBO         ZIMBABWE                       5                  0       34     632
0-6 months    ZVITAMBO         ZIMBABWE                       5                  1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       6                  0       64     632
0-6 months    ZVITAMBO         ZIMBABWE                       6                  1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       7                  0       31     632
0-6 months    ZVITAMBO         ZIMBABWE                       7                  1        2     632
0-6 months    ZVITAMBO         ZIMBABWE                       8                  0       44     632
0-6 months    ZVITAMBO         ZIMBABWE                       8                  1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       9                  0       77     632
0-6 months    ZVITAMBO         ZIMBABWE                       9                  1        3     632
0-6 months    ZVITAMBO         ZIMBABWE                       10                 0       43     632
0-6 months    ZVITAMBO         ZIMBABWE                       10                 1        1     632
0-6 months    ZVITAMBO         ZIMBABWE                       11                 0       73     632
0-6 months    ZVITAMBO         ZIMBABWE                       11                 1        0     632
0-6 months    ZVITAMBO         ZIMBABWE                       12                 0       45     632
0-6 months    ZVITAMBO         ZIMBABWE                       12                 1        2     632
6-24 months   CMC-V-BCS-2002   INDIA                          1                  0       31     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                  1        3     373
6-24 months   CMC-V-BCS-2002   INDIA                          2                  0       14     373
6-24 months   CMC-V-BCS-2002   INDIA                          2                  1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          3                  0       31     373
6-24 months   CMC-V-BCS-2002   INDIA                          3                  1        0     373
6-24 months   CMC-V-BCS-2002   INDIA                          4                  0       41     373
6-24 months   CMC-V-BCS-2002   INDIA                          4                  1        3     373
6-24 months   CMC-V-BCS-2002   INDIA                          5                  0       32     373
6-24 months   CMC-V-BCS-2002   INDIA                          5                  1        4     373
6-24 months   CMC-V-BCS-2002   INDIA                          6                  0       36     373
6-24 months   CMC-V-BCS-2002   INDIA                          6                  1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          7                  0       37     373
6-24 months   CMC-V-BCS-2002   INDIA                          7                  1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          8                  0       17     373
6-24 months   CMC-V-BCS-2002   INDIA                          8                  1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          9                  0       20     373
6-24 months   CMC-V-BCS-2002   INDIA                          9                  1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          10                 0       27     373
6-24 months   CMC-V-BCS-2002   INDIA                          10                 1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          11                 0       41     373
6-24 months   CMC-V-BCS-2002   INDIA                          11                 1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          12                 0       23     373
6-24 months   CMC-V-BCS-2002   INDIA                          12                 1        2     373
6-24 months   CMIN             BANGLADESH                     1                  0       26     257
6-24 months   CMIN             BANGLADESH                     1                  1        2     257
6-24 months   CMIN             BANGLADESH                     2                  0       23     257
6-24 months   CMIN             BANGLADESH                     2                  1        2     257
6-24 months   CMIN             BANGLADESH                     3                  0       16     257
6-24 months   CMIN             BANGLADESH                     3                  1        3     257
6-24 months   CMIN             BANGLADESH                     4                  0       20     257
6-24 months   CMIN             BANGLADESH                     4                  1        2     257
6-24 months   CMIN             BANGLADESH                     5                  0       17     257
6-24 months   CMIN             BANGLADESH                     5                  1        0     257
6-24 months   CMIN             BANGLADESH                     6                  0        9     257
6-24 months   CMIN             BANGLADESH                     6                  1        0     257
6-24 months   CMIN             BANGLADESH                     7                  0       15     257
6-24 months   CMIN             BANGLADESH                     7                  1        2     257
6-24 months   CMIN             BANGLADESH                     8                  0       20     257
6-24 months   CMIN             BANGLADESH                     8                  1        0     257
6-24 months   CMIN             BANGLADESH                     9                  0       20     257
6-24 months   CMIN             BANGLADESH                     9                  1        0     257
6-24 months   CMIN             BANGLADESH                     10                 0       22     257
6-24 months   CMIN             BANGLADESH                     10                 1        4     257
6-24 months   CMIN             BANGLADESH                     11                 0       24     257
6-24 months   CMIN             BANGLADESH                     11                 1        2     257
6-24 months   CMIN             BANGLADESH                     12                 0       25     257
6-24 months   CMIN             BANGLADESH                     12                 1        3     257
6-24 months   CONTENT          PERU                           1                  0       10     215
6-24 months   CONTENT          PERU                           1                  1        0     215
6-24 months   CONTENT          PERU                           2                  0       18     215
6-24 months   CONTENT          PERU                           2                  1        0     215
6-24 months   CONTENT          PERU                           3                  0       30     215
6-24 months   CONTENT          PERU                           3                  1        0     215
6-24 months   CONTENT          PERU                           4                  0       19     215
6-24 months   CONTENT          PERU                           4                  1        0     215
6-24 months   CONTENT          PERU                           5                  0       14     215
6-24 months   CONTENT          PERU                           5                  1        0     215
6-24 months   CONTENT          PERU                           6                  0       13     215
6-24 months   CONTENT          PERU                           6                  1        0     215
6-24 months   CONTENT          PERU                           7                  0       28     215
6-24 months   CONTENT          PERU                           7                  1        0     215
6-24 months   CONTENT          PERU                           8                  0       23     215
6-24 months   CONTENT          PERU                           8                  1        0     215
6-24 months   CONTENT          PERU                           9                  0       26     215
6-24 months   CONTENT          PERU                           9                  1        0     215
6-24 months   CONTENT          PERU                           10                 0       14     215
6-24 months   CONTENT          PERU                           10                 1        0     215
6-24 months   CONTENT          PERU                           11                 0        9     215
6-24 months   CONTENT          PERU                           11                 1        0     215
6-24 months   CONTENT          PERU                           12                 0       11     215
6-24 months   CONTENT          PERU                           12                 1        0     215
6-24 months   EE               PAKISTAN                       1                  0       84     377
6-24 months   EE               PAKISTAN                       1                  1        8     377
6-24 months   EE               PAKISTAN                       2                  0       60     377
6-24 months   EE               PAKISTAN                       2                  1        7     377
6-24 months   EE               PAKISTAN                       3                  0       37     377
6-24 months   EE               PAKISTAN                       3                  1        6     377
6-24 months   EE               PAKISTAN                       4                  0       15     377
6-24 months   EE               PAKISTAN                       4                  1        1     377
6-24 months   EE               PAKISTAN                       5                  0        0     377
6-24 months   EE               PAKISTAN                       5                  1        0     377
6-24 months   EE               PAKISTAN                       6                  0        0     377
6-24 months   EE               PAKISTAN                       6                  1        0     377
6-24 months   EE               PAKISTAN                       7                  0        0     377
6-24 months   EE               PAKISTAN                       7                  1        0     377
6-24 months   EE               PAKISTAN                       8                  0        0     377
6-24 months   EE               PAKISTAN                       8                  1        0     377
6-24 months   EE               PAKISTAN                       9                  0        0     377
6-24 months   EE               PAKISTAN                       9                  1        0     377
6-24 months   EE               PAKISTAN                       10                 0        4     377
6-24 months   EE               PAKISTAN                       10                 1        0     377
6-24 months   EE               PAKISTAN                       11                 0       63     377
6-24 months   EE               PAKISTAN                       11                 1        8     377
6-24 months   EE               PAKISTAN                       12                 0       81     377
6-24 months   EE               PAKISTAN                       12                 1        3     377
6-24 months   GMS-Nepal        NEPAL                          1                  0        0     597
6-24 months   GMS-Nepal        NEPAL                          1                  1        0     597
6-24 months   GMS-Nepal        NEPAL                          2                  0        0     597
6-24 months   GMS-Nepal        NEPAL                          2                  1        0     597
6-24 months   GMS-Nepal        NEPAL                          3                  0        0     597
6-24 months   GMS-Nepal        NEPAL                          3                  1        0     597
6-24 months   GMS-Nepal        NEPAL                          4                  0        1     597
6-24 months   GMS-Nepal        NEPAL                          4                  1        0     597
6-24 months   GMS-Nepal        NEPAL                          5                  0        0     597
6-24 months   GMS-Nepal        NEPAL                          5                  1        0     597
6-24 months   GMS-Nepal        NEPAL                          6                  0      111     597
6-24 months   GMS-Nepal        NEPAL                          6                  1       17     597
6-24 months   GMS-Nepal        NEPAL                          7                  0      204     597
6-24 months   GMS-Nepal        NEPAL                          7                  1       30     597
6-24 months   GMS-Nepal        NEPAL                          8                  0      201     597
6-24 months   GMS-Nepal        NEPAL                          8                  1       33     597
6-24 months   GMS-Nepal        NEPAL                          9                  0        0     597
6-24 months   GMS-Nepal        NEPAL                          9                  1        0     597
6-24 months   GMS-Nepal        NEPAL                          10                 0        0     597
6-24 months   GMS-Nepal        NEPAL                          10                 1        0     597
6-24 months   GMS-Nepal        NEPAL                          11                 0        0     597
6-24 months   GMS-Nepal        NEPAL                          11                 1        0     597
6-24 months   GMS-Nepal        NEPAL                          12                 0        0     597
6-24 months   GMS-Nepal        NEPAL                          12                 1        0     597
6-24 months   Guatemala BSC    GUATEMALA                      1                  0       27     256
6-24 months   Guatemala BSC    GUATEMALA                      1                  1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      2                  0       23     256
6-24 months   Guatemala BSC    GUATEMALA                      2                  1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      3                  0       25     256
6-24 months   Guatemala BSC    GUATEMALA                      3                  1        1     256
6-24 months   Guatemala BSC    GUATEMALA                      4                  0       28     256
6-24 months   Guatemala BSC    GUATEMALA                      4                  1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      5                  0       24     256
6-24 months   Guatemala BSC    GUATEMALA                      5                  1        1     256
6-24 months   Guatemala BSC    GUATEMALA                      6                  0       17     256
6-24 months   Guatemala BSC    GUATEMALA                      6                  1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      7                  0       15     256
6-24 months   Guatemala BSC    GUATEMALA                      7                  1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      8                  0       11     256
6-24 months   Guatemala BSC    GUATEMALA                      8                  1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      9                  0       13     256
6-24 months   Guatemala BSC    GUATEMALA                      9                  1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      10                 0       24     256
6-24 months   Guatemala BSC    GUATEMALA                      10                 1        1     256
6-24 months   Guatemala BSC    GUATEMALA                      11                 0       20     256
6-24 months   Guatemala BSC    GUATEMALA                      11                 1        0     256
6-24 months   Guatemala BSC    GUATEMALA                      12                 0       25     256
6-24 months   Guatemala BSC    GUATEMALA                      12                 1        1     256
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                  0      148    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                  1       21    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                  0       67    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                  1        8    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                  0       83    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                  1       17    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                  0      108    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                  1       12    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                  0       93    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                  1       12    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                  0       82    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                  1       12    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                  0       80    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                  1       11    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                  0      121    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                  1       17    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                  0      198    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                  1       26    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                 0      178    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                 1       26    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                 0      161    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                 1       24    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                 0      150    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                 1       14    1669
6-24 months   IRC              INDIA                          1                  0       35     410
6-24 months   IRC              INDIA                          1                  1        3     410
6-24 months   IRC              INDIA                          2                  0       26     410
6-24 months   IRC              INDIA                          2                  1        2     410
6-24 months   IRC              INDIA                          3                  0       26     410
6-24 months   IRC              INDIA                          3                  1        1     410
6-24 months   IRC              INDIA                          4                  0       19     410
6-24 months   IRC              INDIA                          4                  1        2     410
6-24 months   IRC              INDIA                          5                  0       20     410
6-24 months   IRC              INDIA                          5                  1        2     410
6-24 months   IRC              INDIA                          6                  0       32     410
6-24 months   IRC              INDIA                          6                  1        5     410
6-24 months   IRC              INDIA                          7                  0       31     410
6-24 months   IRC              INDIA                          7                  1        5     410
6-24 months   IRC              INDIA                          8                  0       35     410
6-24 months   IRC              INDIA                          8                  1        9     410
6-24 months   IRC              INDIA                          9                  0       22     410
6-24 months   IRC              INDIA                          9                  1        5     410
6-24 months   IRC              INDIA                          10                 0       32     410
6-24 months   IRC              INDIA                          10                 1        6     410
6-24 months   IRC              INDIA                          11                 0       37     410
6-24 months   IRC              INDIA                          11                 1        3     410
6-24 months   IRC              INDIA                          12                 0       47     410
6-24 months   IRC              INDIA                          12                 1        5     410
6-24 months   JiVitA-3         BANGLADESH                     1                  0     1217   15803
6-24 months   JiVitA-3         BANGLADESH                     1                  1       59   15803
6-24 months   JiVitA-3         BANGLADESH                     2                  0     1047   15803
6-24 months   JiVitA-3         BANGLADESH                     2                  1       57   15803
6-24 months   JiVitA-3         BANGLADESH                     3                  0     1295   15803
6-24 months   JiVitA-3         BANGLADESH                     3                  1       76   15803
6-24 months   JiVitA-3         BANGLADESH                     4                  0     1051   15803
6-24 months   JiVitA-3         BANGLADESH                     4                  1       76   15803
6-24 months   JiVitA-3         BANGLADESH                     5                  0     1002   15803
6-24 months   JiVitA-3         BANGLADESH                     5                  1       56   15803
6-24 months   JiVitA-3         BANGLADESH                     6                  0     1057   15803
6-24 months   JiVitA-3         BANGLADESH                     6                  1       81   15803
6-24 months   JiVitA-3         BANGLADESH                     7                  0     1144   15803
6-24 months   JiVitA-3         BANGLADESH                     7                  1       65   15803
6-24 months   JiVitA-3         BANGLADESH                     8                  0     1295   15803
6-24 months   JiVitA-3         BANGLADESH                     8                  1       85   15803
6-24 months   JiVitA-3         BANGLADESH                     9                  0     1416   15803
6-24 months   JiVitA-3         BANGLADESH                     9                  1       86   15803
6-24 months   JiVitA-3         BANGLADESH                     10                 0     1456   15803
6-24 months   JiVitA-3         BANGLADESH                     10                 1      106   15803
6-24 months   JiVitA-3         BANGLADESH                     11                 0     1514   15803
6-24 months   JiVitA-3         BANGLADESH                     11                 1       82   15803
6-24 months   JiVitA-3         BANGLADESH                     12                 0     1411   15803
6-24 months   JiVitA-3         BANGLADESH                     12                 1       69   15803
6-24 months   JiVitA-4         BANGLADESH                     1                  0        0    5281
6-24 months   JiVitA-4         BANGLADESH                     1                  1        0    5281
6-24 months   JiVitA-4         BANGLADESH                     2                  0      805    5281
6-24 months   JiVitA-4         BANGLADESH                     2                  1       67    5281
6-24 months   JiVitA-4         BANGLADESH                     3                  0      901    5281
6-24 months   JiVitA-4         BANGLADESH                     3                  1       75    5281
6-24 months   JiVitA-4         BANGLADESH                     4                  0      685    5281
6-24 months   JiVitA-4         BANGLADESH                     4                  1       67    5281
6-24 months   JiVitA-4         BANGLADESH                     5                  0      566    5281
6-24 months   JiVitA-4         BANGLADESH                     5                  1       54    5281
6-24 months   JiVitA-4         BANGLADESH                     6                  0      404    5281
6-24 months   JiVitA-4         BANGLADESH                     6                  1       50    5281
6-24 months   JiVitA-4         BANGLADESH                     7                  0      487    5281
6-24 months   JiVitA-4         BANGLADESH                     7                  1       45    5281
6-24 months   JiVitA-4         BANGLADESH                     8                  0      521    5281
6-24 months   JiVitA-4         BANGLADESH                     8                  1       26    5281
6-24 months   JiVitA-4         BANGLADESH                     9                  0      363    5281
6-24 months   JiVitA-4         BANGLADESH                     9                  1       33    5281
6-24 months   JiVitA-4         BANGLADESH                     10                 0      123    5281
6-24 months   JiVitA-4         BANGLADESH                     10                 1        9    5281
6-24 months   JiVitA-4         BANGLADESH                     11                 0        0    5281
6-24 months   JiVitA-4         BANGLADESH                     11                 1        0    5281
6-24 months   JiVitA-4         BANGLADESH                     12                 0        0    5281
6-24 months   JiVitA-4         BANGLADESH                     12                 1        0    5281
6-24 months   Keneba           GAMBIA                         1                  0      227    2444
6-24 months   Keneba           GAMBIA                         1                  1       16    2444
6-24 months   Keneba           GAMBIA                         2                  0      207    2444
6-24 months   Keneba           GAMBIA                         2                  1       10    2444
6-24 months   Keneba           GAMBIA                         3                  0      237    2444
6-24 months   Keneba           GAMBIA                         3                  1       19    2444
6-24 months   Keneba           GAMBIA                         4                  0      155    2444
6-24 months   Keneba           GAMBIA                         4                  1        9    2444
6-24 months   Keneba           GAMBIA                         5                  0      163    2444
6-24 months   Keneba           GAMBIA                         5                  1       13    2444
6-24 months   Keneba           GAMBIA                         6                  0      133    2444
6-24 months   Keneba           GAMBIA                         6                  1        7    2444
6-24 months   Keneba           GAMBIA                         7                  0      104    2444
6-24 months   Keneba           GAMBIA                         7                  1       13    2444
6-24 months   Keneba           GAMBIA                         8                  0      198    2444
6-24 months   Keneba           GAMBIA                         8                  1        8    2444
6-24 months   Keneba           GAMBIA                         9                  0      204    2444
6-24 months   Keneba           GAMBIA                         9                  1       11    2444
6-24 months   Keneba           GAMBIA                         10                 0      274    2444
6-24 months   Keneba           GAMBIA                         10                 1       14    2444
6-24 months   Keneba           GAMBIA                         11                 0      191    2444
6-24 months   Keneba           GAMBIA                         11                 1       16    2444
6-24 months   Keneba           GAMBIA                         12                 0      206    2444
6-24 months   Keneba           GAMBIA                         12                 1        9    2444
6-24 months   LCNI-5           MALAWI                         1                  0       57     719
6-24 months   LCNI-5           MALAWI                         1                  1        0     719
6-24 months   LCNI-5           MALAWI                         2                  0       41     719
6-24 months   LCNI-5           MALAWI                         2                  1        0     719
6-24 months   LCNI-5           MALAWI                         3                  0       23     719
6-24 months   LCNI-5           MALAWI                         3                  1        0     719
6-24 months   LCNI-5           MALAWI                         4                  0       33     719
6-24 months   LCNI-5           MALAWI                         4                  1        0     719
6-24 months   LCNI-5           MALAWI                         5                  0       36     719
6-24 months   LCNI-5           MALAWI                         5                  1        0     719
6-24 months   LCNI-5           MALAWI                         6                  0       27     719
6-24 months   LCNI-5           MALAWI                         6                  1        2     719
6-24 months   LCNI-5           MALAWI                         7                  0       56     719
6-24 months   LCNI-5           MALAWI                         7                  1        0     719
6-24 months   LCNI-5           MALAWI                         8                  0       79     719
6-24 months   LCNI-5           MALAWI                         8                  1        1     719
6-24 months   LCNI-5           MALAWI                         9                  0       84     719
6-24 months   LCNI-5           MALAWI                         9                  1        1     719
6-24 months   LCNI-5           MALAWI                         10                 0      117     719
6-24 months   LCNI-5           MALAWI                         10                 1        1     719
6-24 months   LCNI-5           MALAWI                         11                 0       82     719
6-24 months   LCNI-5           MALAWI                         11                 1        0     719
6-24 months   LCNI-5           MALAWI                         12                 0       78     719
6-24 months   LCNI-5           MALAWI                         12                 1        1     719
6-24 months   MAL-ED           BANGLADESH                     1                  0       20     248
6-24 months   MAL-ED           BANGLADESH                     1                  1        0     248
6-24 months   MAL-ED           BANGLADESH                     2                  0       20     248
6-24 months   MAL-ED           BANGLADESH                     2                  1        1     248
6-24 months   MAL-ED           BANGLADESH                     3                  0       22     248
6-24 months   MAL-ED           BANGLADESH                     3                  1        1     248
6-24 months   MAL-ED           BANGLADESH                     4                  0       21     248
6-24 months   MAL-ED           BANGLADESH                     4                  1        1     248
6-24 months   MAL-ED           BANGLADESH                     5                  0       19     248
6-24 months   MAL-ED           BANGLADESH                     5                  1        2     248
6-24 months   MAL-ED           BANGLADESH                     6                  0        9     248
6-24 months   MAL-ED           BANGLADESH                     6                  1        1     248
6-24 months   MAL-ED           BANGLADESH                     7                  0       17     248
6-24 months   MAL-ED           BANGLADESH                     7                  1        1     248
6-24 months   MAL-ED           BANGLADESH                     8                  0       25     248
6-24 months   MAL-ED           BANGLADESH                     8                  1        0     248
6-24 months   MAL-ED           BANGLADESH                     9                  0       20     248
6-24 months   MAL-ED           BANGLADESH                     9                  1        2     248
6-24 months   MAL-ED           BANGLADESH                     10                 0       20     248
6-24 months   MAL-ED           BANGLADESH                     10                 1        2     248
6-24 months   MAL-ED           BANGLADESH                     11                 0       15     248
6-24 months   MAL-ED           BANGLADESH                     11                 1        1     248
6-24 months   MAL-ED           BANGLADESH                     12                 0       27     248
6-24 months   MAL-ED           BANGLADESH                     12                 1        1     248
6-24 months   MAL-ED           BRAZIL                         1                  0       15     218
6-24 months   MAL-ED           BRAZIL                         1                  1        0     218
6-24 months   MAL-ED           BRAZIL                         2                  0       25     218
6-24 months   MAL-ED           BRAZIL                         2                  1        0     218
6-24 months   MAL-ED           BRAZIL                         3                  0       16     218
6-24 months   MAL-ED           BRAZIL                         3                  1        0     218
6-24 months   MAL-ED           BRAZIL                         4                  0       11     218
6-24 months   MAL-ED           BRAZIL                         4                  1        0     218
6-24 months   MAL-ED           BRAZIL                         5                  0       22     218
6-24 months   MAL-ED           BRAZIL                         5                  1        0     218
6-24 months   MAL-ED           BRAZIL                         6                  0        8     218
6-24 months   MAL-ED           BRAZIL                         6                  1        0     218
6-24 months   MAL-ED           BRAZIL                         7                  0       16     218
6-24 months   MAL-ED           BRAZIL                         7                  1        0     218
6-24 months   MAL-ED           BRAZIL                         8                  0       19     218
6-24 months   MAL-ED           BRAZIL                         8                  1        0     218
6-24 months   MAL-ED           BRAZIL                         9                  0       30     218
6-24 months   MAL-ED           BRAZIL                         9                  1        0     218
6-24 months   MAL-ED           BRAZIL                         10                 0       20     218
6-24 months   MAL-ED           BRAZIL                         10                 1        1     218
6-24 months   MAL-ED           BRAZIL                         11                 0       21     218
6-24 months   MAL-ED           BRAZIL                         11                 1        1     218
6-24 months   MAL-ED           BRAZIL                         12                 0       13     218
6-24 months   MAL-ED           BRAZIL                         12                 1        0     218
6-24 months   MAL-ED           INDIA                          1                  0       18     241
6-24 months   MAL-ED           INDIA                          1                  1        2     241
6-24 months   MAL-ED           INDIA                          2                  0       17     241
6-24 months   MAL-ED           INDIA                          2                  1        2     241
6-24 months   MAL-ED           INDIA                          3                  0       20     241
6-24 months   MAL-ED           INDIA                          3                  1        2     241
6-24 months   MAL-ED           INDIA                          4                  0       14     241
6-24 months   MAL-ED           INDIA                          4                  1        1     241
6-24 months   MAL-ED           INDIA                          5                  0        7     241
6-24 months   MAL-ED           INDIA                          5                  1        1     241
6-24 months   MAL-ED           INDIA                          6                  0       16     241
6-24 months   MAL-ED           INDIA                          6                  1        3     241
6-24 months   MAL-ED           INDIA                          7                  0       21     241
6-24 months   MAL-ED           INDIA                          7                  1        4     241
6-24 months   MAL-ED           INDIA                          8                  0       22     241
6-24 months   MAL-ED           INDIA                          8                  1        1     241
6-24 months   MAL-ED           INDIA                          9                  0       20     241
6-24 months   MAL-ED           INDIA                          9                  1        0     241
6-24 months   MAL-ED           INDIA                          10                 0       24     241
6-24 months   MAL-ED           INDIA                          10                 1        2     241
6-24 months   MAL-ED           INDIA                          11                 0       23     241
6-24 months   MAL-ED           INDIA                          11                 1        2     241
6-24 months   MAL-ED           INDIA                          12                 0       18     241
6-24 months   MAL-ED           INDIA                          12                 1        1     241
6-24 months   MAL-ED           NEPAL                          1                  0       19     238
6-24 months   MAL-ED           NEPAL                          1                  1        1     238
6-24 months   MAL-ED           NEPAL                          2                  0       19     238
6-24 months   MAL-ED           NEPAL                          2                  1        0     238
6-24 months   MAL-ED           NEPAL                          3                  0       17     238
6-24 months   MAL-ED           NEPAL                          3                  1        0     238
6-24 months   MAL-ED           NEPAL                          4                  0       22     238
6-24 months   MAL-ED           NEPAL                          4                  1        0     238
6-24 months   MAL-ED           NEPAL                          5                  0       20     238
6-24 months   MAL-ED           NEPAL                          5                  1        2     238
6-24 months   MAL-ED           NEPAL                          6                  0       18     238
6-24 months   MAL-ED           NEPAL                          6                  1        0     238
6-24 months   MAL-ED           NEPAL                          7                  0       17     238
6-24 months   MAL-ED           NEPAL                          7                  1        1     238
6-24 months   MAL-ED           NEPAL                          8                  0       24     238
6-24 months   MAL-ED           NEPAL                          8                  1        0     238
6-24 months   MAL-ED           NEPAL                          9                  0       16     238
6-24 months   MAL-ED           NEPAL                          9                  1        0     238
6-24 months   MAL-ED           NEPAL                          10                 0       21     238
6-24 months   MAL-ED           NEPAL                          10                 1        0     238
6-24 months   MAL-ED           NEPAL                          11                 0       24     238
6-24 months   MAL-ED           NEPAL                          11                 1        0     238
6-24 months   MAL-ED           NEPAL                          12                 0       17     238
6-24 months   MAL-ED           NEPAL                          12                 1        0     238
6-24 months   MAL-ED           PERU                           1                  0       41     284
6-24 months   MAL-ED           PERU                           1                  1        0     284
6-24 months   MAL-ED           PERU                           2                  0       22     284
6-24 months   MAL-ED           PERU                           2                  1        0     284
6-24 months   MAL-ED           PERU                           3                  0       22     284
6-24 months   MAL-ED           PERU                           3                  1        0     284
6-24 months   MAL-ED           PERU                           4                  0       20     284
6-24 months   MAL-ED           PERU                           4                  1        0     284
6-24 months   MAL-ED           PERU                           5                  0       27     284
6-24 months   MAL-ED           PERU                           5                  1        0     284
6-24 months   MAL-ED           PERU                           6                  0       15     284
6-24 months   MAL-ED           PERU                           6                  1        0     284
6-24 months   MAL-ED           PERU                           7                  0       23     284
6-24 months   MAL-ED           PERU                           7                  1        0     284
6-24 months   MAL-ED           PERU                           8                  0       15     284
6-24 months   MAL-ED           PERU                           8                  1        1     284
6-24 months   MAL-ED           PERU                           9                  0       23     284
6-24 months   MAL-ED           PERU                           9                  1        0     284
6-24 months   MAL-ED           PERU                           10                 0       22     284
6-24 months   MAL-ED           PERU                           10                 1        0     284
6-24 months   MAL-ED           PERU                           11                 0       32     284
6-24 months   MAL-ED           PERU                           11                 1        0     284
6-24 months   MAL-ED           PERU                           12                 0       21     284
6-24 months   MAL-ED           PERU                           12                 1        0     284
6-24 months   MAL-ED           SOUTH AFRICA                   1                  0       37     275
6-24 months   MAL-ED           SOUTH AFRICA                   1                  1        1     275
6-24 months   MAL-ED           SOUTH AFRICA                   2                  0       24     275
6-24 months   MAL-ED           SOUTH AFRICA                   2                  1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   3                  0       15     275
6-24 months   MAL-ED           SOUTH AFRICA                   3                  1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   4                  0       13     275
6-24 months   MAL-ED           SOUTH AFRICA                   4                  1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   5                  0       15     275
6-24 months   MAL-ED           SOUTH AFRICA                   5                  1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   6                  0       19     275
6-24 months   MAL-ED           SOUTH AFRICA                   6                  1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   7                  0       26     275
6-24 months   MAL-ED           SOUTH AFRICA                   7                  1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   8                  0       10     275
6-24 months   MAL-ED           SOUTH AFRICA                   8                  1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   9                  0       23     275
6-24 months   MAL-ED           SOUTH AFRICA                   9                  1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   10                 0       27     275
6-24 months   MAL-ED           SOUTH AFRICA                   10                 1        1     275
6-24 months   MAL-ED           SOUTH AFRICA                   11                 0       28     275
6-24 months   MAL-ED           SOUTH AFRICA                   11                 1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   12                 0       36     275
6-24 months   MAL-ED           SOUTH AFRICA                   12                 1        0     275
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       20     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0       30     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0       18     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0        9     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0       20     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0       19     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0       23     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0       12     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0       21     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0       23     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0       27     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0       31     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        0     253
6-24 months   NIH-Birth        BANGLADESH                     1                  0       50     534
6-24 months   NIH-Birth        BANGLADESH                     1                  1        5     534
6-24 months   NIH-Birth        BANGLADESH                     2                  0       43     534
6-24 months   NIH-Birth        BANGLADESH                     2                  1        3     534
6-24 months   NIH-Birth        BANGLADESH                     3                  0       45     534
6-24 months   NIH-Birth        BANGLADESH                     3                  1        5     534
6-24 months   NIH-Birth        BANGLADESH                     4                  0       39     534
6-24 months   NIH-Birth        BANGLADESH                     4                  1        4     534
6-24 months   NIH-Birth        BANGLADESH                     5                  0       35     534
6-24 months   NIH-Birth        BANGLADESH                     5                  1        7     534
6-24 months   NIH-Birth        BANGLADESH                     6                  0       41     534
6-24 months   NIH-Birth        BANGLADESH                     6                  1        3     534
6-24 months   NIH-Birth        BANGLADESH                     7                  0       36     534
6-24 months   NIH-Birth        BANGLADESH                     7                  1        3     534
6-24 months   NIH-Birth        BANGLADESH                     8                  0       29     534
6-24 months   NIH-Birth        BANGLADESH                     8                  1        3     534
6-24 months   NIH-Birth        BANGLADESH                     9                  0       38     534
6-24 months   NIH-Birth        BANGLADESH                     9                  1        2     534
6-24 months   NIH-Birth        BANGLADESH                     10                 0       38     534
6-24 months   NIH-Birth        BANGLADESH                     10                 1        5     534
6-24 months   NIH-Birth        BANGLADESH                     11                 0       45     534
6-24 months   NIH-Birth        BANGLADESH                     11                 1        4     534
6-24 months   NIH-Birth        BANGLADESH                     12                 0       48     534
6-24 months   NIH-Birth        BANGLADESH                     12                 1        3     534
6-24 months   PROBIT           BELARUS                        1                  0      998   16583
6-24 months   PROBIT           BELARUS                        1                  1       13   16583
6-24 months   PROBIT           BELARUS                        2                  0      964   16583
6-24 months   PROBIT           BELARUS                        2                  1        6   16583
6-24 months   PROBIT           BELARUS                        3                  0     1124   16583
6-24 months   PROBIT           BELARUS                        3                  1        4   16583
6-24 months   PROBIT           BELARUS                        4                  0     1134   16583
6-24 months   PROBIT           BELARUS                        4                  1        8   16583
6-24 months   PROBIT           BELARUS                        5                  0     1135   16583
6-24 months   PROBIT           BELARUS                        5                  1       10   16583
6-24 months   PROBIT           BELARUS                        6                  0     1179   16583
6-24 months   PROBIT           BELARUS                        6                  1       12   16583
6-24 months   PROBIT           BELARUS                        7                  0     1539   16583
6-24 months   PROBIT           BELARUS                        7                  1       14   16583
6-24 months   PROBIT           BELARUS                        8                  0     1550   16583
6-24 months   PROBIT           BELARUS                        8                  1        9   16583
6-24 months   PROBIT           BELARUS                        9                  0     1568   16583
6-24 months   PROBIT           BELARUS                        9                  1       16   16583
6-24 months   PROBIT           BELARUS                        10                 0     1771   16583
6-24 months   PROBIT           BELARUS                        10                 1       16   16583
6-24 months   PROBIT           BELARUS                        11                 0     1664   16583
6-24 months   PROBIT           BELARUS                        11                 1       10   16583
6-24 months   PROBIT           BELARUS                        12                 0     1823   16583
6-24 months   PROBIT           BELARUS                        12                 1       16   16583
6-24 months   PROVIDE          BANGLADESH                     1                  0       37     641
6-24 months   PROVIDE          BANGLADESH                     1                  1        1     641
6-24 months   PROVIDE          BANGLADESH                     2                  0       34     641
6-24 months   PROVIDE          BANGLADESH                     2                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     3                  0       48     641
6-24 months   PROVIDE          BANGLADESH                     3                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     4                  0       39     641
6-24 months   PROVIDE          BANGLADESH                     4                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     5                  0       43     641
6-24 months   PROVIDE          BANGLADESH                     5                  1        3     641
6-24 months   PROVIDE          BANGLADESH                     6                  0       78     641
6-24 months   PROVIDE          BANGLADESH                     6                  1        4     641
6-24 months   PROVIDE          BANGLADESH                     7                  0       76     641
6-24 months   PROVIDE          BANGLADESH                     7                  1        2     641
6-24 months   PROVIDE          BANGLADESH                     8                  0       60     641
6-24 months   PROVIDE          BANGLADESH                     8                  1        3     641
6-24 months   PROVIDE          BANGLADESH                     9                  0       71     641
6-24 months   PROVIDE          BANGLADESH                     9                  1        0     641
6-24 months   PROVIDE          BANGLADESH                     10                 0       71     641
6-24 months   PROVIDE          BANGLADESH                     10                 1        1     641
6-24 months   PROVIDE          BANGLADESH                     11                 0       41     641
6-24 months   PROVIDE          BANGLADESH                     11                 1        0     641
6-24 months   PROVIDE          BANGLADESH                     12                 0       28     641
6-24 months   PROVIDE          BANGLADESH                     12                 1        1     641
6-24 months   ResPak           PAKISTAN                       1                  0       10     256
6-24 months   ResPak           PAKISTAN                       1                  1        2     256
6-24 months   ResPak           PAKISTAN                       2                  0        8     256
6-24 months   ResPak           PAKISTAN                       2                  1        1     256
6-24 months   ResPak           PAKISTAN                       3                  0       24     256
6-24 months   ResPak           PAKISTAN                       3                  1        3     256
6-24 months   ResPak           PAKISTAN                       4                  0       21     256
6-24 months   ResPak           PAKISTAN                       4                  1        5     256
6-24 months   ResPak           PAKISTAN                       5                  0       46     256
6-24 months   ResPak           PAKISTAN                       5                  1        4     256
6-24 months   ResPak           PAKISTAN                       6                  0       37     256
6-24 months   ResPak           PAKISTAN                       6                  1        5     256
6-24 months   ResPak           PAKISTAN                       7                  0       23     256
6-24 months   ResPak           PAKISTAN                       7                  1        3     256
6-24 months   ResPak           PAKISTAN                       8                  0       28     256
6-24 months   ResPak           PAKISTAN                       8                  1        8     256
6-24 months   ResPak           PAKISTAN                       9                  0       15     256
6-24 months   ResPak           PAKISTAN                       9                  1        1     256
6-24 months   ResPak           PAKISTAN                       10                 0        4     256
6-24 months   ResPak           PAKISTAN                       10                 1        1     256
6-24 months   ResPak           PAKISTAN                       11                 0        4     256
6-24 months   ResPak           PAKISTAN                       11                 1        0     256
6-24 months   ResPak           PAKISTAN                       12                 0        2     256
6-24 months   ResPak           PAKISTAN                       12                 1        1     256
6-24 months   SAS-CompFeed     INDIA                          1                  0       82    1366
6-24 months   SAS-CompFeed     INDIA                          1                  1       12    1366
6-24 months   SAS-CompFeed     INDIA                          2                  0       72    1366
6-24 months   SAS-CompFeed     INDIA                          2                  1        7    1366
6-24 months   SAS-CompFeed     INDIA                          3                  0       69    1366
6-24 months   SAS-CompFeed     INDIA                          3                  1        6    1366
6-24 months   SAS-CompFeed     INDIA                          4                  0       62    1366
6-24 months   SAS-CompFeed     INDIA                          4                  1        5    1366
6-24 months   SAS-CompFeed     INDIA                          5                  0       83    1366
6-24 months   SAS-CompFeed     INDIA                          5                  1        8    1366
6-24 months   SAS-CompFeed     INDIA                          6                  0       93    1366
6-24 months   SAS-CompFeed     INDIA                          6                  1        6    1366
6-24 months   SAS-CompFeed     INDIA                          7                  0      110    1366
6-24 months   SAS-CompFeed     INDIA                          7                  1       14    1366
6-24 months   SAS-CompFeed     INDIA                          8                  0      153    1366
6-24 months   SAS-CompFeed     INDIA                          8                  1       13    1366
6-24 months   SAS-CompFeed     INDIA                          9                  0      159    1366
6-24 months   SAS-CompFeed     INDIA                          9                  1       14    1366
6-24 months   SAS-CompFeed     INDIA                          10                 0      138    1366
6-24 months   SAS-CompFeed     INDIA                          10                 1       10    1366
6-24 months   SAS-CompFeed     INDIA                          11                 0      110    1366
6-24 months   SAS-CompFeed     INDIA                          11                 1       12    1366
6-24 months   SAS-CompFeed     INDIA                          12                 0      121    1366
6-24 months   SAS-CompFeed     INDIA                          12                 1        7    1366
6-24 months   SAS-FoodSuppl    INDIA                          1                  0       22     375
6-24 months   SAS-FoodSuppl    INDIA                          1                  1        2     375
6-24 months   SAS-FoodSuppl    INDIA                          2                  0       25     375
6-24 months   SAS-FoodSuppl    INDIA                          2                  1        5     375
6-24 months   SAS-FoodSuppl    INDIA                          3                  0       16     375
6-24 months   SAS-FoodSuppl    INDIA                          3                  1        4     375
6-24 months   SAS-FoodSuppl    INDIA                          4                  0        3     375
6-24 months   SAS-FoodSuppl    INDIA                          4                  1        1     375
6-24 months   SAS-FoodSuppl    INDIA                          5                  0        8     375
6-24 months   SAS-FoodSuppl    INDIA                          5                  1        3     375
6-24 months   SAS-FoodSuppl    INDIA                          6                  0       22     375
6-24 months   SAS-FoodSuppl    INDIA                          6                  1        2     375
6-24 months   SAS-FoodSuppl    INDIA                          7                  0       30     375
6-24 months   SAS-FoodSuppl    INDIA                          7                  1        4     375
6-24 months   SAS-FoodSuppl    INDIA                          8                  0       50     375
6-24 months   SAS-FoodSuppl    INDIA                          8                  1       13     375
6-24 months   SAS-FoodSuppl    INDIA                          9                  0       48     375
6-24 months   SAS-FoodSuppl    INDIA                          9                  1        8     375
6-24 months   SAS-FoodSuppl    INDIA                          10                 0       39     375
6-24 months   SAS-FoodSuppl    INDIA                          10                 1        7     375
6-24 months   SAS-FoodSuppl    INDIA                          11                 0       24     375
6-24 months   SAS-FoodSuppl    INDIA                          11                 1        6     375
6-24 months   SAS-FoodSuppl    INDIA                          12                 0       23     375
6-24 months   SAS-FoodSuppl    INDIA                          12                 1       10     375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      145    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        6    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      159    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        5    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      151    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        2    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      156    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        6    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      164    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        3    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      150    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        3    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      198    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        5    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      205    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        4    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      194    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        1    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      215    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        8    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      197    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       10    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      174    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        5    2166
6-24 months   ZVITAMBO         ZIMBABWE                       1                  0      907    9527
6-24 months   ZVITAMBO         ZIMBABWE                       1                  1       24    9527
6-24 months   ZVITAMBO         ZIMBABWE                       2                  0      699    9527
6-24 months   ZVITAMBO         ZIMBABWE                       2                  1        9    9527
6-24 months   ZVITAMBO         ZIMBABWE                       3                  0      794    9527
6-24 months   ZVITAMBO         ZIMBABWE                       3                  1       23    9527
6-24 months   ZVITAMBO         ZIMBABWE                       4                  0      698    9527
6-24 months   ZVITAMBO         ZIMBABWE                       4                  1        8    9527
6-24 months   ZVITAMBO         ZIMBABWE                       5                  0      700    9527
6-24 months   ZVITAMBO         ZIMBABWE                       5                  1        7    9527
6-24 months   ZVITAMBO         ZIMBABWE                       6                  0      775    9527
6-24 months   ZVITAMBO         ZIMBABWE                       6                  1       14    9527
6-24 months   ZVITAMBO         ZIMBABWE                       7                  0      779    9527
6-24 months   ZVITAMBO         ZIMBABWE                       7                  1       15    9527
6-24 months   ZVITAMBO         ZIMBABWE                       8                  0      837    9527
6-24 months   ZVITAMBO         ZIMBABWE                       8                  1       13    9527
6-24 months   ZVITAMBO         ZIMBABWE                       9                  0      850    9527
6-24 months   ZVITAMBO         ZIMBABWE                       9                  1       14    9527
6-24 months   ZVITAMBO         ZIMBABWE                       10                 0      657    9527
6-24 months   ZVITAMBO         ZIMBABWE                       10                 1       15    9527
6-24 months   ZVITAMBO         ZIMBABWE                       11                 0      812    9527
6-24 months   ZVITAMBO         ZIMBABWE                       11                 1       11    9527
6-24 months   ZVITAMBO         ZIMBABWE                       12                 0      851    9527
6-24 months   ZVITAMBO         ZIMBABWE                       12                 1       15    9527


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
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
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
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/1068d097-c913-4c58-a805-757993aeb765/be229233-71f1-41ac-bc7b-bacc05ae2af0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1068d097-c913-4c58-a805-757993aeb765/be229233-71f1-41ac-bc7b-bacc05ae2af0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1068d097-c913-4c58-a805-757993aeb765/be229233-71f1-41ac-bc7b-bacc05ae2af0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1068d097-c913-4c58-a805-757993aeb765/be229233-71f1-41ac-bc7b-bacc05ae2af0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                0.1242604    0.0519852   0.1965355
0-24 months   iLiNS-Zinc     BURKINA FASO   2                    NA                0.1066667    0.0332501   0.1800833
0-24 months   iLiNS-Zinc     BURKINA FASO   3                    NA                0.1700000    0.0900929   0.2499071
0-24 months   iLiNS-Zinc     BURKINA FASO   4                    NA                0.1000000   -0.0529678   0.2529678
0-24 months   iLiNS-Zinc     BURKINA FASO   5                    NA                0.1142857    0.0183912   0.2101802
0-24 months   iLiNS-Zinc     BURKINA FASO   6                    NA                0.1276596    0.0495349   0.2057843
0-24 months   iLiNS-Zinc     BURKINA FASO   7                    NA                0.1208791   -0.0312476   0.2730059
0-24 months   iLiNS-Zinc     BURKINA FASO   8                    NA                0.1231884   -0.0072348   0.2536116
0-24 months   iLiNS-Zinc     BURKINA FASO   9                    NA                0.1160714    0.0377125   0.1944303
0-24 months   iLiNS-Zinc     BURKINA FASO   10                   NA                0.1274510    0.0700414   0.1848606
0-24 months   iLiNS-Zinc     BURKINA FASO   11                   NA                0.1297297    0.0707601   0.1886994
0-24 months   iLiNS-Zinc     BURKINA FASO   12                   NA                0.0853659    0.0053251   0.1654066
0-24 months   JiVitA-3       BANGLADESH     1                    NA                0.0462382    0.0333746   0.0591019
0-24 months   JiVitA-3       BANGLADESH     2                    NA                0.0516304    0.0369393   0.0663215
0-24 months   JiVitA-3       BANGLADESH     3                    NA                0.0554340    0.0416255   0.0692425
0-24 months   JiVitA-3       BANGLADESH     4                    NA                0.0674357    0.0520232   0.0828481
0-24 months   JiVitA-3       BANGLADESH     5                    NA                0.0529301    0.0386629   0.0671972
0-24 months   JiVitA-3       BANGLADESH     6                    NA                0.0711775    0.0527738   0.0895812
0-24 months   JiVitA-3       BANGLADESH     7                    NA                0.0537634    0.0408915   0.0666354
0-24 months   JiVitA-3       BANGLADESH     8                    NA                0.0615942    0.0476924   0.0754960
0-24 months   JiVitA-3       BANGLADESH     9                    NA                0.0572570    0.0445208   0.0699932
0-24 months   JiVitA-3       BANGLADESH     10                   NA                0.0678617    0.0552384   0.0804850
0-24 months   JiVitA-3       BANGLADESH     11                   NA                0.0513784    0.0401735   0.0625834
0-24 months   JiVitA-3       BANGLADESH     12                   NA                0.0466216    0.0358572   0.0573861
0-24 months   Keneba         GAMBIA         1                    NA                0.0658436    0.0346547   0.0970326
0-24 months   Keneba         GAMBIA         2                    NA                0.0460829    0.0181811   0.0739848
0-24 months   Keneba         GAMBIA         3                    NA                0.0742188    0.0421023   0.1063352
0-24 months   Keneba         GAMBIA         4                    NA                0.0548780    0.0200156   0.0897405
0-24 months   Keneba         GAMBIA         5                    NA                0.0738636    0.0352151   0.1125122
0-24 months   Keneba         GAMBIA         6                    NA                0.0500000    0.0138906   0.0861094
0-24 months   Keneba         GAMBIA         7                    NA                0.1111111    0.0541542   0.1680680
0-24 months   Keneba         GAMBIA         8                    NA                0.0388350    0.0124465   0.0652234
0-24 months   Keneba         GAMBIA         9                    NA                0.0511628    0.0217056   0.0806199
0-24 months   Keneba         GAMBIA         10                   NA                0.0486111    0.0237691   0.0734532
0-24 months   Keneba         GAMBIA         11                   NA                0.0772947    0.0409067   0.1136827
0-24 months   Keneba         GAMBIA         12                   NA                0.0418605    0.0150852   0.0686358
0-24 months   SAS-CompFeed   INDIA          1                    NA                0.1276596    0.0518982   0.2034209
0-24 months   SAS-CompFeed   INDIA          2                    NA                0.0886076    0.0209423   0.1562729
0-24 months   SAS-CompFeed   INDIA          3                    NA                0.0800000    0.0129668   0.1470332
0-24 months   SAS-CompFeed   INDIA          4                    NA                0.0746269    0.0159259   0.1333278
0-24 months   SAS-CompFeed   INDIA          5                    NA                0.0879121    0.0399586   0.1358655
0-24 months   SAS-CompFeed   INDIA          6                    NA                0.0606061    0.0252223   0.0959898
0-24 months   SAS-CompFeed   INDIA          7                    NA                0.1129032    0.0569096   0.1688969
0-24 months   SAS-CompFeed   INDIA          8                    NA                0.0783133    0.0127024   0.1439241
0-24 months   SAS-CompFeed   INDIA          9                    NA                0.0809249    0.0584622   0.1033875
0-24 months   SAS-CompFeed   INDIA          10                   NA                0.0675676    0.0107438   0.1243913
0-24 months   SAS-CompFeed   INDIA          11                   NA                0.0983607    0.0497335   0.1469878
0-24 months   SAS-CompFeed   INDIA          12                   NA                0.0546875    0.0152003   0.0941747
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.0257787    0.0155985   0.0359589
0-24 months   ZVITAMBO       ZIMBABWE       2                    NA                0.0127119    0.0044595   0.0209643
0-24 months   ZVITAMBO       ZIMBABWE       3                    NA                0.0281518    0.0168092   0.0394944
0-24 months   ZVITAMBO       ZIMBABWE       4                    NA                0.0113314    0.0035235   0.0191394
0-24 months   ZVITAMBO       ZIMBABWE       5                    NA                0.0099010    0.0026024   0.0171996
0-24 months   ZVITAMBO       ZIMBABWE       6                    NA                0.0177440    0.0085316   0.0269563
0-24 months   ZVITAMBO       ZIMBABWE       7                    NA                0.0188917    0.0094216   0.0283618
0-24 months   ZVITAMBO       ZIMBABWE       8                    NA                0.0152941    0.0070437   0.0235446
0-24 months   ZVITAMBO       ZIMBABWE       9                    NA                0.0162037    0.0077844   0.0246230
0-24 months   ZVITAMBO       ZIMBABWE       10                   NA                0.0223214    0.0111516   0.0334912
0-24 months   ZVITAMBO       ZIMBABWE       11                   NA                0.0133657    0.0055198   0.0212117
0-24 months   ZVITAMBO       ZIMBABWE       12                   NA                0.0173210    0.0086313   0.0260107
0-6 months    PROBIT         BELARUS        1                    NA                0.0744811    0.0422285   0.1067336
0-6 months    PROBIT         BELARUS        2                    NA                0.0898734    0.0457249   0.1340219
0-6 months    PROBIT         BELARUS        3                    NA                0.0781250    0.0464413   0.1098087
0-6 months    PROBIT         BELARUS        4                    NA                0.0813094    0.0448957   0.1177231
0-6 months    PROBIT         BELARUS        5                    NA                0.0992449    0.0469814   0.1515083
0-6 months    PROBIT         BELARUS        6                    NA                0.1018145    0.0704284   0.1332007
0-6 months    PROBIT         BELARUS        7                    NA                0.0939227    0.0577436   0.1301017
0-6 months    PROBIT         BELARUS        8                    NA                0.0882813    0.0585745   0.1179880
0-6 months    PROBIT         BELARUS        9                    NA                0.0837776    0.0484112   0.1191440
0-6 months    PROBIT         BELARUS        10                   NA                0.0710868    0.0462108   0.0959628
0-6 months    PROBIT         BELARUS        11                   NA                0.0593912    0.0397541   0.0790284
0-6 months    PROBIT         BELARUS        12                   NA                0.0663094    0.0433456   0.0892733
6-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                0.1242604    0.0519852   0.1965355
6-24 months   iLiNS-Zinc     BURKINA FASO   2                    NA                0.1066667    0.0332501   0.1800833
6-24 months   iLiNS-Zinc     BURKINA FASO   3                    NA                0.1700000    0.0900929   0.2499071
6-24 months   iLiNS-Zinc     BURKINA FASO   4                    NA                0.1000000   -0.0529678   0.2529678
6-24 months   iLiNS-Zinc     BURKINA FASO   5                    NA                0.1142857    0.0183912   0.2101802
6-24 months   iLiNS-Zinc     BURKINA FASO   6                    NA                0.1276596    0.0495349   0.2057843
6-24 months   iLiNS-Zinc     BURKINA FASO   7                    NA                0.1208791   -0.0312476   0.2730059
6-24 months   iLiNS-Zinc     BURKINA FASO   8                    NA                0.1231884   -0.0072348   0.2536116
6-24 months   iLiNS-Zinc     BURKINA FASO   9                    NA                0.1160714    0.0377125   0.1944303
6-24 months   iLiNS-Zinc     BURKINA FASO   10                   NA                0.1274510    0.0700414   0.1848606
6-24 months   iLiNS-Zinc     BURKINA FASO   11                   NA                0.1297297    0.0707601   0.1886994
6-24 months   iLiNS-Zinc     BURKINA FASO   12                   NA                0.0853659    0.0053251   0.1654066
6-24 months   JiVitA-3       BANGLADESH     1                    NA                0.0462382    0.0333746   0.0591019
6-24 months   JiVitA-3       BANGLADESH     2                    NA                0.0516304    0.0369393   0.0663215
6-24 months   JiVitA-3       BANGLADESH     3                    NA                0.0554340    0.0416255   0.0692425
6-24 months   JiVitA-3       BANGLADESH     4                    NA                0.0674357    0.0520232   0.0828481
6-24 months   JiVitA-3       BANGLADESH     5                    NA                0.0529301    0.0386629   0.0671972
6-24 months   JiVitA-3       BANGLADESH     6                    NA                0.0711775    0.0527738   0.0895812
6-24 months   JiVitA-3       BANGLADESH     7                    NA                0.0537634    0.0408915   0.0666354
6-24 months   JiVitA-3       BANGLADESH     8                    NA                0.0615942    0.0476924   0.0754960
6-24 months   JiVitA-3       BANGLADESH     9                    NA                0.0572570    0.0445208   0.0699932
6-24 months   JiVitA-3       BANGLADESH     10                   NA                0.0678617    0.0552384   0.0804850
6-24 months   JiVitA-3       BANGLADESH     11                   NA                0.0513784    0.0401735   0.0625834
6-24 months   JiVitA-3       BANGLADESH     12                   NA                0.0466216    0.0358572   0.0573861
6-24 months   Keneba         GAMBIA         1                    NA                0.0658436    0.0346547   0.0970326
6-24 months   Keneba         GAMBIA         2                    NA                0.0460829    0.0181811   0.0739848
6-24 months   Keneba         GAMBIA         3                    NA                0.0742188    0.0421023   0.1063352
6-24 months   Keneba         GAMBIA         4                    NA                0.0548780    0.0200156   0.0897405
6-24 months   Keneba         GAMBIA         5                    NA                0.0738636    0.0352151   0.1125122
6-24 months   Keneba         GAMBIA         6                    NA                0.0500000    0.0138906   0.0861094
6-24 months   Keneba         GAMBIA         7                    NA                0.1111111    0.0541542   0.1680680
6-24 months   Keneba         GAMBIA         8                    NA                0.0388350    0.0124465   0.0652234
6-24 months   Keneba         GAMBIA         9                    NA                0.0511628    0.0217056   0.0806199
6-24 months   Keneba         GAMBIA         10                   NA                0.0486111    0.0237691   0.0734532
6-24 months   Keneba         GAMBIA         11                   NA                0.0772947    0.0409067   0.1136827
6-24 months   Keneba         GAMBIA         12                   NA                0.0418605    0.0150852   0.0686358
6-24 months   SAS-CompFeed   INDIA          1                    NA                0.1276596    0.0518982   0.2034209
6-24 months   SAS-CompFeed   INDIA          2                    NA                0.0886076    0.0209423   0.1562729
6-24 months   SAS-CompFeed   INDIA          3                    NA                0.0800000    0.0129668   0.1470332
6-24 months   SAS-CompFeed   INDIA          4                    NA                0.0746269    0.0159259   0.1333278
6-24 months   SAS-CompFeed   INDIA          5                    NA                0.0879121    0.0399586   0.1358655
6-24 months   SAS-CompFeed   INDIA          6                    NA                0.0606061    0.0252223   0.0959898
6-24 months   SAS-CompFeed   INDIA          7                    NA                0.1129032    0.0569096   0.1688969
6-24 months   SAS-CompFeed   INDIA          8                    NA                0.0783133    0.0127024   0.1439241
6-24 months   SAS-CompFeed   INDIA          9                    NA                0.0809249    0.0584622   0.1033875
6-24 months   SAS-CompFeed   INDIA          10                   NA                0.0675676    0.0107438   0.1243913
6-24 months   SAS-CompFeed   INDIA          11                   NA                0.0983607    0.0497335   0.1469878
6-24 months   SAS-CompFeed   INDIA          12                   NA                0.0546875    0.0152003   0.0941747
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                0.0257787    0.0155985   0.0359589
6-24 months   ZVITAMBO       ZIMBABWE       2                    NA                0.0127119    0.0044595   0.0209643
6-24 months   ZVITAMBO       ZIMBABWE       3                    NA                0.0281518    0.0168092   0.0394944
6-24 months   ZVITAMBO       ZIMBABWE       4                    NA                0.0113314    0.0035235   0.0191394
6-24 months   ZVITAMBO       ZIMBABWE       5                    NA                0.0099010    0.0026024   0.0171996
6-24 months   ZVITAMBO       ZIMBABWE       6                    NA                0.0177440    0.0085316   0.0269563
6-24 months   ZVITAMBO       ZIMBABWE       7                    NA                0.0188917    0.0094216   0.0283618
6-24 months   ZVITAMBO       ZIMBABWE       8                    NA                0.0152941    0.0070437   0.0235446
6-24 months   ZVITAMBO       ZIMBABWE       9                    NA                0.0162037    0.0077844   0.0246230
6-24 months   ZVITAMBO       ZIMBABWE       10                   NA                0.0223214    0.0111516   0.0334912
6-24 months   ZVITAMBO       ZIMBABWE       11                   NA                0.0133657    0.0055198   0.0212117
6-24 months   ZVITAMBO       ZIMBABWE       12                   NA                0.0173210    0.0086313   0.0260107


### Parameter: E(Y)


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348
0-24 months   Keneba         GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
0-24 months   SAS-CompFeed   INDIA          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771
0-6 months    PROBIT         BELARUS        NA                   NA                0.0810551   0.0555982   0.1065120
6-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348
6-24 months   Keneba         GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
6-24 months   SAS-CompFeed   INDIA          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771


### Parameter: RR


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc     BURKINA FASO   2                    1                 0.8584127   0.3999918   1.8422188
0-24 months   iLiNS-Zinc     BURKINA FASO   3                    1                 1.3680952   0.6385273   2.9312524
0-24 months   iLiNS-Zinc     BURKINA FASO   4                    1                 0.8047619   0.1612593   4.0161510
0-24 months   iLiNS-Zinc     BURKINA FASO   5                    1                 0.9197279   0.3190452   2.6513469
0-24 months   iLiNS-Zinc     BURKINA FASO   6                    1                 1.0273556   0.4471675   2.3603226
0-24 months   iLiNS-Zinc     BURKINA FASO   7                    1                 0.9727891   0.2344867   4.0357037
0-24 months   iLiNS-Zinc     BURKINA FASO   8                    1                 0.9913734   0.2775306   3.5413073
0-24 months   iLiNS-Zinc     BURKINA FASO   9                    1                 0.9340986   0.3801840   2.2950475
0-24 months   iLiNS-Zinc     BURKINA FASO   10                   1                 1.0256769   0.5015178   2.0976587
0-24 months   iLiNS-Zinc     BURKINA FASO   11                   1                 1.0440154   0.5464228   1.9947342
0-24 months   iLiNS-Zinc     BURKINA FASO   12                   1                 0.6869919   0.2221686   2.1243225
0-24 months   JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3       BANGLADESH     2                    1                 1.1166175   0.7561974   1.6488218
0-24 months   JiVitA-3       BANGLADESH     3                    1                 1.1988775   0.8469313   1.6970765
0-24 months   JiVitA-3       BANGLADESH     4                    1                 1.4584392   1.0104228   2.1051039
0-24 months   JiVitA-3       BANGLADESH     5                    1                 1.1447246   0.7697835   1.7022897
0-24 months   JiVitA-3       BANGLADESH     6                    1                 1.5393643   1.0439762   2.2698242
0-24 months   JiVitA-3       BANGLADESH     7                    1                 1.1627483   0.8090168   1.6711441
0-24 months   JiVitA-3       BANGLADESH     8                    1                 1.3321051   0.9365827   1.8946582
0-24 months   JiVitA-3       BANGLADESH     9                    1                 1.2383037   0.8668492   1.7689306
0-24 months   JiVitA-3       BANGLADESH     10                   1                 1.4676534   1.0490426   2.0533070
0-24 months   JiVitA-3       BANGLADESH     11                   1                 1.1111677   0.7812575   1.5803928
0-24 months   JiVitA-3       BANGLADESH     12                   1                 1.0082913   0.7174498   1.4170350
0-24 months   Keneba         GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba         GAMBIA         2                    1                 0.6998848   0.3244630   1.5096907
0-24 months   Keneba         GAMBIA         3                    1                 1.1271973   0.5934230   2.1410926
0-24 months   Keneba         GAMBIA         4                    1                 0.8334604   0.3773437   1.8409111
0-24 months   Keneba         GAMBIA         5                    1                 1.1218040   0.5538484   2.2721815
0-24 months   Keneba         GAMBIA         6                    1                 0.7593750   0.3201610   1.8011262
0-24 months   Keneba         GAMBIA         7                    1                 1.6875000   0.8397003   3.3912769
0-24 months   Keneba         GAMBIA         8                    1                 0.5898058   0.2576193   1.3503291
0-24 months   Keneba         GAMBIA         9                    1                 0.7770349   0.3686769   1.6377027
0-24 months   Keneba         GAMBIA         10                   1                 0.7382812   0.3677940   1.4819688
0-24 months   Keneba         GAMBIA         11                   1                 1.1739130   0.6020056   2.2891348
0-24 months   Keneba         GAMBIA         12                   1                 0.6357558   0.2868287   1.4091526
0-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA          2                    1                 0.6940928   0.2580130   1.8672113
0-24 months   SAS-CompFeed   INDIA          3                    1                 0.6266667   0.2775058   1.4151457
0-24 months   SAS-CompFeed   INDIA          4                    1                 0.5845771   0.1897451   1.8009968
0-24 months   SAS-CompFeed   INDIA          5                    1                 0.6886447   0.2477755   1.9139564
0-24 months   SAS-CompFeed   INDIA          6                    1                 0.4747475   0.1735473   1.2986961
0-24 months   SAS-CompFeed   INDIA          7                    1                 0.8844086   0.7376488   1.0603672
0-24 months   SAS-CompFeed   INDIA          8                    1                 0.6134538   0.3805286   0.9889547
0-24 months   SAS-CompFeed   INDIA          9                    1                 0.6339114   0.4157629   0.9665212
0-24 months   SAS-CompFeed   INDIA          10                   1                 0.5292793   0.1749374   1.6013534
0-24 months   SAS-CompFeed   INDIA          11                   1                 0.7704918   0.4348151   1.3653105
0-24 months   SAS-CompFeed   INDIA          12                   1                 0.4283854   0.2233101   0.8217902
0-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO       ZIMBABWE       2                    1                 0.4931144   0.2306437   1.0542748
0-24 months   ZVITAMBO       ZIMBABWE       3                    1                 1.0920543   0.6211964   1.9198154
0-24 months   ZVITAMBO       ZIMBABWE       4                    1                 0.4395656   0.1986599   0.9726066
0-24 months   ZVITAMBO       ZIMBABWE       5                    1                 0.3840759   0.1664286   0.8863521
0-24 months   ZVITAMBO       ZIMBABWE       6                    1                 0.6883185   0.3585069   1.3215435
0-24 months   ZVITAMBO       ZIMBABWE       7                    1                 0.7328401   0.3871362   1.3872495
0-24 months   ZVITAMBO       ZIMBABWE       8                    1                 0.5932843   0.3040292   1.1577383
0-24 months   ZVITAMBO       ZIMBABWE       9                    1                 0.6285687   0.3272804   1.2072172
0-24 months   ZVITAMBO       ZIMBABWE       10                   1                 0.8658854   0.4577350   1.6379730
0-24 months   ZVITAMBO       ZIMBABWE       11                   1                 0.5184791   0.2555477   1.0519391
0-24 months   ZVITAMBO       ZIMBABWE       12                   1                 0.6719111   0.3548375   1.2723133
0-6 months    PROBIT         BELARUS        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT         BELARUS        2                    1                 1.2066611   0.7845473   1.8558868
0-6 months    PROBIT         BELARUS        3                    1                 1.0489242   0.6355419   1.7311871
0-6 months    PROBIT         BELARUS        4                    1                 1.0916786   0.6858774   1.7375733
0-6 months    PROBIT         BELARUS        5                    1                 1.3324845   0.8124341   2.1854265
0-6 months    PROBIT         BELARUS        6                    1                 1.3669851   0.9346841   1.9992297
0-6 months    PROBIT         BELARUS        7                    1                 1.2610271   0.8318928   1.9115315
0-6 months    PROBIT         BELARUS        8                    1                 1.1852843   0.7785100   1.8045997
0-6 months    PROBIT         BELARUS        9                    1                 1.1248174   0.7276289   1.7388180
0-6 months    PROBIT         BELARUS        10                   1                 0.9544278   0.6156289   1.4796778
0-6 months    PROBIT         BELARUS        11                   1                 0.7974004   0.5523139   1.1512429
0-6 months    PROBIT         BELARUS        12                   1                 0.8902858   0.5800588   1.3664285
6-24 months   iLiNS-Zinc     BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc     BURKINA FASO   2                    1                 0.8584127   0.3999918   1.8422188
6-24 months   iLiNS-Zinc     BURKINA FASO   3                    1                 1.3680952   0.6385273   2.9312524
6-24 months   iLiNS-Zinc     BURKINA FASO   4                    1                 0.8047619   0.1612593   4.0161510
6-24 months   iLiNS-Zinc     BURKINA FASO   5                    1                 0.9197279   0.3190452   2.6513469
6-24 months   iLiNS-Zinc     BURKINA FASO   6                    1                 1.0273556   0.4471675   2.3603226
6-24 months   iLiNS-Zinc     BURKINA FASO   7                    1                 0.9727891   0.2344867   4.0357037
6-24 months   iLiNS-Zinc     BURKINA FASO   8                    1                 0.9913734   0.2775306   3.5413073
6-24 months   iLiNS-Zinc     BURKINA FASO   9                    1                 0.9340986   0.3801840   2.2950475
6-24 months   iLiNS-Zinc     BURKINA FASO   10                   1                 1.0256769   0.5015178   2.0976587
6-24 months   iLiNS-Zinc     BURKINA FASO   11                   1                 1.0440154   0.5464228   1.9947342
6-24 months   iLiNS-Zinc     BURKINA FASO   12                   1                 0.6869919   0.2221686   2.1243225
6-24 months   JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3       BANGLADESH     2                    1                 1.1166175   0.7561974   1.6488218
6-24 months   JiVitA-3       BANGLADESH     3                    1                 1.1988775   0.8469313   1.6970765
6-24 months   JiVitA-3       BANGLADESH     4                    1                 1.4584392   1.0104228   2.1051039
6-24 months   JiVitA-3       BANGLADESH     5                    1                 1.1447246   0.7697835   1.7022897
6-24 months   JiVitA-3       BANGLADESH     6                    1                 1.5393643   1.0439762   2.2698242
6-24 months   JiVitA-3       BANGLADESH     7                    1                 1.1627483   0.8090168   1.6711441
6-24 months   JiVitA-3       BANGLADESH     8                    1                 1.3321051   0.9365827   1.8946582
6-24 months   JiVitA-3       BANGLADESH     9                    1                 1.2383037   0.8668492   1.7689306
6-24 months   JiVitA-3       BANGLADESH     10                   1                 1.4676534   1.0490426   2.0533070
6-24 months   JiVitA-3       BANGLADESH     11                   1                 1.1111677   0.7812575   1.5803928
6-24 months   JiVitA-3       BANGLADESH     12                   1                 1.0082913   0.7174498   1.4170350
6-24 months   Keneba         GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba         GAMBIA         2                    1                 0.6998848   0.3244630   1.5096907
6-24 months   Keneba         GAMBIA         3                    1                 1.1271973   0.5934230   2.1410926
6-24 months   Keneba         GAMBIA         4                    1                 0.8334604   0.3773437   1.8409111
6-24 months   Keneba         GAMBIA         5                    1                 1.1218040   0.5538484   2.2721815
6-24 months   Keneba         GAMBIA         6                    1                 0.7593750   0.3201610   1.8011262
6-24 months   Keneba         GAMBIA         7                    1                 1.6875000   0.8397003   3.3912769
6-24 months   Keneba         GAMBIA         8                    1                 0.5898058   0.2576193   1.3503291
6-24 months   Keneba         GAMBIA         9                    1                 0.7770349   0.3686769   1.6377027
6-24 months   Keneba         GAMBIA         10                   1                 0.7382812   0.3677940   1.4819688
6-24 months   Keneba         GAMBIA         11                   1                 1.1739130   0.6020056   2.2891348
6-24 months   Keneba         GAMBIA         12                   1                 0.6357558   0.2868287   1.4091526
6-24 months   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed   INDIA          2                    1                 0.6940928   0.2580130   1.8672113
6-24 months   SAS-CompFeed   INDIA          3                    1                 0.6266667   0.2775058   1.4151457
6-24 months   SAS-CompFeed   INDIA          4                    1                 0.5845771   0.1897451   1.8009968
6-24 months   SAS-CompFeed   INDIA          5                    1                 0.6886447   0.2477755   1.9139564
6-24 months   SAS-CompFeed   INDIA          6                    1                 0.4747475   0.1735473   1.2986961
6-24 months   SAS-CompFeed   INDIA          7                    1                 0.8844086   0.7376488   1.0603672
6-24 months   SAS-CompFeed   INDIA          8                    1                 0.6134538   0.3805286   0.9889547
6-24 months   SAS-CompFeed   INDIA          9                    1                 0.6339114   0.4157629   0.9665212
6-24 months   SAS-CompFeed   INDIA          10                   1                 0.5292793   0.1749374   1.6013534
6-24 months   SAS-CompFeed   INDIA          11                   1                 0.7704918   0.4348151   1.3653105
6-24 months   SAS-CompFeed   INDIA          12                   1                 0.4283854   0.2233101   0.8217902
6-24 months   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO       ZIMBABWE       2                    1                 0.4931144   0.2306437   1.0542748
6-24 months   ZVITAMBO       ZIMBABWE       3                    1                 1.0920543   0.6211964   1.9198154
6-24 months   ZVITAMBO       ZIMBABWE       4                    1                 0.4395656   0.1986599   0.9726066
6-24 months   ZVITAMBO       ZIMBABWE       5                    1                 0.3840759   0.1664286   0.8863521
6-24 months   ZVITAMBO       ZIMBABWE       6                    1                 0.6883185   0.3585069   1.3215435
6-24 months   ZVITAMBO       ZIMBABWE       7                    1                 0.7328401   0.3871362   1.3872495
6-24 months   ZVITAMBO       ZIMBABWE       8                    1                 0.5932843   0.3040292   1.1577383
6-24 months   ZVITAMBO       ZIMBABWE       9                    1                 0.6285687   0.3272804   1.2072172
6-24 months   ZVITAMBO       ZIMBABWE       10                   1                 0.8658854   0.4577350   1.6379730
6-24 months   ZVITAMBO       ZIMBABWE       11                   1                 0.5184791   0.2555477   1.0519391
6-24 months   ZVITAMBO       ZIMBABWE       12                   1                 0.6719111   0.3548375   1.2723133


### Parameter: PAR


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                -0.0044281   -0.0733800   0.0645237
0-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.0105864   -0.0016576   0.0228304
0-24 months   Keneba         GAMBIA         1                    NA                -0.0065147   -0.0359607   0.0229314
0-24 months   SAS-CompFeed   INDIA          1                    NA                -0.0442042   -0.1031855   0.0147770
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                -0.0081446   -0.0176508   0.0013615
0-6 months    PROBIT         BELARUS        1                    NA                 0.0065740   -0.0193655   0.0325136
6-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                -0.0044281   -0.0733800   0.0645237
6-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.0105864   -0.0016576   0.0228304
6-24 months   Keneba         GAMBIA         1                    NA                -0.0065147   -0.0359607   0.0229314
6-24 months   SAS-CompFeed   INDIA          1                    NA                -0.0442042   -0.1031855   0.0147770
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                -0.0081446   -0.0176508   0.0013615


### Parameter: PAF


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                -0.0369527   -0.8069159    0.4049138
0-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.1862996   -0.0607096    0.3757873
0-24 months   Keneba         GAMBIA         1                    NA                -0.1098056   -0.7352683    0.2902144
0-24 months   SAS-CompFeed   INDIA          1                    NA                -0.5296753   -1.3014705   -0.0167006
0-24 months   ZVITAMBO       ZIMBABWE       1                    NA                -0.4618690   -1.1076689   -0.0139452
0-6 months    PROBIT         BELARUS        1                    NA                 0.0811059   -0.2954575    0.3482098
6-24 months   iLiNS-Zinc     BURKINA FASO   1                    NA                -0.0369527   -0.8069159    0.4049138
6-24 months   JiVitA-3       BANGLADESH     1                    NA                 0.1862996   -0.0607096    0.3757873
6-24 months   Keneba         GAMBIA         1                    NA                -0.1098056   -0.7352683    0.2902144
6-24 months   SAS-CompFeed   INDIA          1                    NA                -0.5296753   -1.3014705   -0.0167006
6-24 months   ZVITAMBO       ZIMBABWE       1                    NA                -0.4618690   -1.1076689   -0.0139452
