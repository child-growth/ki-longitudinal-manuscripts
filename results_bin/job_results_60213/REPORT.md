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

**Outcome Variable:** ever_stunted

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

agecat        studyid          country                        brthmon    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  --------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1                     0        3     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                     1       31     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                     0        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                     1       15     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                     0        0     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                     1       31     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                     0        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                     1       36     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                     0        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                     1       35     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                     0        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                     1       35     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                     0        4     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                     1       35     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                     0        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                     1       16     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                     0        0     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                     1       21     373
0-24 months   CMC-V-BCS-2002   INDIA                          10                    0        3     373
0-24 months   CMC-V-BCS-2002   INDIA                          10                    1       26     373
0-24 months   CMC-V-BCS-2002   INDIA                          11                    0        4     373
0-24 months   CMC-V-BCS-2002   INDIA                          11                    1       39     373
0-24 months   CMC-V-BCS-2002   INDIA                          12                    0        0     373
0-24 months   CMC-V-BCS-2002   INDIA                          12                    1       25     373
0-24 months   CMIN             BANGLADESH                     1                     0        4     277
0-24 months   CMIN             BANGLADESH                     1                     1       26     277
0-24 months   CMIN             BANGLADESH                     2                     0        7     277
0-24 months   CMIN             BANGLADESH                     2                     1       20     277
0-24 months   CMIN             BANGLADESH                     3                     0        3     277
0-24 months   CMIN             BANGLADESH                     3                     1       17     277
0-24 months   CMIN             BANGLADESH                     4                     0        3     277
0-24 months   CMIN             BANGLADESH                     4                     1       20     277
0-24 months   CMIN             BANGLADESH                     5                     0        3     277
0-24 months   CMIN             BANGLADESH                     5                     1       17     277
0-24 months   CMIN             BANGLADESH                     6                     0        1     277
0-24 months   CMIN             BANGLADESH                     6                     1        8     277
0-24 months   CMIN             BANGLADESH                     7                     0        2     277
0-24 months   CMIN             BANGLADESH                     7                     1       15     277
0-24 months   CMIN             BANGLADESH                     8                     0        2     277
0-24 months   CMIN             BANGLADESH                     8                     1       22     277
0-24 months   CMIN             BANGLADESH                     9                     0        2     277
0-24 months   CMIN             BANGLADESH                     9                     1       20     277
0-24 months   CMIN             BANGLADESH                     10                    0        6     277
0-24 months   CMIN             BANGLADESH                     10                    1       21     277
0-24 months   CMIN             BANGLADESH                     11                    0        7     277
0-24 months   CMIN             BANGLADESH                     11                    1       23     277
0-24 months   CMIN             BANGLADESH                     12                    0        1     277
0-24 months   CMIN             BANGLADESH                     12                    1       27     277
0-24 months   CONTENT          PERU                           1                     0       10     215
0-24 months   CONTENT          PERU                           1                     1        0     215
0-24 months   CONTENT          PERU                           2                     0       14     215
0-24 months   CONTENT          PERU                           2                     1        4     215
0-24 months   CONTENT          PERU                           3                     0       23     215
0-24 months   CONTENT          PERU                           3                     1        7     215
0-24 months   CONTENT          PERU                           4                     0        8     215
0-24 months   CONTENT          PERU                           4                     1       11     215
0-24 months   CONTENT          PERU                           5                     0       10     215
0-24 months   CONTENT          PERU                           5                     1        4     215
0-24 months   CONTENT          PERU                           6                     0       11     215
0-24 months   CONTENT          PERU                           6                     1        2     215
0-24 months   CONTENT          PERU                           7                     0       21     215
0-24 months   CONTENT          PERU                           7                     1        7     215
0-24 months   CONTENT          PERU                           8                     0       16     215
0-24 months   CONTENT          PERU                           8                     1        7     215
0-24 months   CONTENT          PERU                           9                     0       21     215
0-24 months   CONTENT          PERU                           9                     1        5     215
0-24 months   CONTENT          PERU                           10                    0        9     215
0-24 months   CONTENT          PERU                           10                    1        5     215
0-24 months   CONTENT          PERU                           11                    0        8     215
0-24 months   CONTENT          PERU                           11                    1        1     215
0-24 months   CONTENT          PERU                           12                    0       11     215
0-24 months   CONTENT          PERU                           12                    1        0     215
0-24 months   EE               PAKISTAN                       1                     0       12     379
0-24 months   EE               PAKISTAN                       1                     1       83     379
0-24 months   EE               PAKISTAN                       2                     0        9     379
0-24 months   EE               PAKISTAN                       2                     1       58     379
0-24 months   EE               PAKISTAN                       3                     0        3     379
0-24 months   EE               PAKISTAN                       3                     1       39     379
0-24 months   EE               PAKISTAN                       4                     0        1     379
0-24 months   EE               PAKISTAN                       4                     1       15     379
0-24 months   EE               PAKISTAN                       5                     0        0     379
0-24 months   EE               PAKISTAN                       5                     1        0     379
0-24 months   EE               PAKISTAN                       6                     0        0     379
0-24 months   EE               PAKISTAN                       6                     1        0     379
0-24 months   EE               PAKISTAN                       7                     0        0     379
0-24 months   EE               PAKISTAN                       7                     1        0     379
0-24 months   EE               PAKISTAN                       8                     0        0     379
0-24 months   EE               PAKISTAN                       8                     1        0     379
0-24 months   EE               PAKISTAN                       9                     0        0     379
0-24 months   EE               PAKISTAN                       9                     1        0     379
0-24 months   EE               PAKISTAN                       10                    0        1     379
0-24 months   EE               PAKISTAN                       10                    1        3     379
0-24 months   EE               PAKISTAN                       11                    0        8     379
0-24 months   EE               PAKISTAN                       11                    1       63     379
0-24 months   EE               PAKISTAN                       12                    0        7     379
0-24 months   EE               PAKISTAN                       12                    1       77     379
0-24 months   GMS-Nepal        NEPAL                          1                     0        0     698
0-24 months   GMS-Nepal        NEPAL                          1                     1        0     698
0-24 months   GMS-Nepal        NEPAL                          2                     0        0     698
0-24 months   GMS-Nepal        NEPAL                          2                     1        0     698
0-24 months   GMS-Nepal        NEPAL                          3                     0        0     698
0-24 months   GMS-Nepal        NEPAL                          3                     1        0     698
0-24 months   GMS-Nepal        NEPAL                          4                     0        0     698
0-24 months   GMS-Nepal        NEPAL                          4                     1        1     698
0-24 months   GMS-Nepal        NEPAL                          5                     0        0     698
0-24 months   GMS-Nepal        NEPAL                          5                     1        0     698
0-24 months   GMS-Nepal        NEPAL                          6                     0       67     698
0-24 months   GMS-Nepal        NEPAL                          6                     1      105     698
0-24 months   GMS-Nepal        NEPAL                          7                     0       91     698
0-24 months   GMS-Nepal        NEPAL                          7                     1      178     698
0-24 months   GMS-Nepal        NEPAL                          8                     0       94     698
0-24 months   GMS-Nepal        NEPAL                          8                     1      162     698
0-24 months   GMS-Nepal        NEPAL                          9                     0        0     698
0-24 months   GMS-Nepal        NEPAL                          9                     1        0     698
0-24 months   GMS-Nepal        NEPAL                          10                    0        0     698
0-24 months   GMS-Nepal        NEPAL                          10                    1        0     698
0-24 months   GMS-Nepal        NEPAL                          11                    0        0     698
0-24 months   GMS-Nepal        NEPAL                          11                    1        0     698
0-24 months   GMS-Nepal        NEPAL                          12                    0        0     698
0-24 months   GMS-Nepal        NEPAL                          12                    1        0     698
0-24 months   Guatemala BSC    GUATEMALA                      1                     0        9     315
0-24 months   Guatemala BSC    GUATEMALA                      1                     1       20     315
0-24 months   Guatemala BSC    GUATEMALA                      2                     0       19     315
0-24 months   Guatemala BSC    GUATEMALA                      2                     1        7     315
0-24 months   Guatemala BSC    GUATEMALA                      3                     0       12     315
0-24 months   Guatemala BSC    GUATEMALA                      3                     1       15     315
0-24 months   Guatemala BSC    GUATEMALA                      4                     0       15     315
0-24 months   Guatemala BSC    GUATEMALA                      4                     1       16     315
0-24 months   Guatemala BSC    GUATEMALA                      5                     0       17     315
0-24 months   Guatemala BSC    GUATEMALA                      5                     1       18     315
0-24 months   Guatemala BSC    GUATEMALA                      6                     0       12     315
0-24 months   Guatemala BSC    GUATEMALA                      6                     1       13     315
0-24 months   Guatemala BSC    GUATEMALA                      7                     0       12     315
0-24 months   Guatemala BSC    GUATEMALA                      7                     1       10     315
0-24 months   Guatemala BSC    GUATEMALA                      8                     0        7     315
0-24 months   Guatemala BSC    GUATEMALA                      8                     1        8     315
0-24 months   Guatemala BSC    GUATEMALA                      9                     0        4     315
0-24 months   Guatemala BSC    GUATEMALA                      9                     1       12     315
0-24 months   Guatemala BSC    GUATEMALA                      10                    0       16     315
0-24 months   Guatemala BSC    GUATEMALA                      10                    1       16     315
0-24 months   Guatemala BSC    GUATEMALA                      11                    0       11     315
0-24 months   Guatemala BSC    GUATEMALA                      11                    1       13     315
0-24 months   Guatemala BSC    GUATEMALA                      12                    0       14     315
0-24 months   Guatemala BSC    GUATEMALA                      12                    1       19     315
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      212    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1      111    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                     0      124    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                     1       57    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                     0      123    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                     1       74    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                     0      123    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                     1       86    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                     0      139    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                     1       79    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                     0      127    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                     1       65    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                     0      120    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                     1       76    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                     0      197    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                     1      106    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                     0      251    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                     1      160    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                    0      250    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                    1      122    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                    0      211    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                    1      131    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                    0      205    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                    1      116    3265
0-24 months   IRC              INDIA                          1                     0       11     410
0-24 months   IRC              INDIA                          1                     1       27     410
0-24 months   IRC              INDIA                          2                     0        8     410
0-24 months   IRC              INDIA                          2                     1       20     410
0-24 months   IRC              INDIA                          3                     0        9     410
0-24 months   IRC              INDIA                          3                     1       18     410
0-24 months   IRC              INDIA                          4                     0        4     410
0-24 months   IRC              INDIA                          4                     1       17     410
0-24 months   IRC              INDIA                          5                     0        5     410
0-24 months   IRC              INDIA                          5                     1       17     410
0-24 months   IRC              INDIA                          6                     0       16     410
0-24 months   IRC              INDIA                          6                     1       21     410
0-24 months   IRC              INDIA                          7                     0       14     410
0-24 months   IRC              INDIA                          7                     1       22     410
0-24 months   IRC              INDIA                          8                     0       21     410
0-24 months   IRC              INDIA                          8                     1       23     410
0-24 months   IRC              INDIA                          9                     0        9     410
0-24 months   IRC              INDIA                          9                     1       18     410
0-24 months   IRC              INDIA                          10                    0       20     410
0-24 months   IRC              INDIA                          10                    1       18     410
0-24 months   IRC              INDIA                          11                    0       16     410
0-24 months   IRC              INDIA                          11                    1       24     410
0-24 months   IRC              INDIA                          12                    0       14     410
0-24 months   IRC              INDIA                          12                    1       38     410
0-24 months   JiVitA-3         BANGLADESH                     1                     0     1223   27227
0-24 months   JiVitA-3         BANGLADESH                     1                     1     1315   27227
0-24 months   JiVitA-3         BANGLADESH                     2                     0     1055   27227
0-24 months   JiVitA-3         BANGLADESH                     2                     1     1014   27227
0-24 months   JiVitA-3         BANGLADESH                     3                     0     1365   27227
0-24 months   JiVitA-3         BANGLADESH                     3                     1     1068   27227
0-24 months   JiVitA-3         BANGLADESH                     4                     0      999   27227
0-24 months   JiVitA-3         BANGLADESH                     4                     1      777   27227
0-24 months   JiVitA-3         BANGLADESH                     5                     0      680   27227
0-24 months   JiVitA-3         BANGLADESH                     5                     1      645   27227
0-24 months   JiVitA-3         BANGLADESH                     6                     0      744   27227
0-24 months   JiVitA-3         BANGLADESH                     6                     1      657   27227
0-24 months   JiVitA-3         BANGLADESH                     7                     0      839   27227
0-24 months   JiVitA-3         BANGLADESH                     7                     1      736   27227
0-24 months   JiVitA-3         BANGLADESH                     8                     0     1107   27227
0-24 months   JiVitA-3         BANGLADESH                     8                     1     1047   27227
0-24 months   JiVitA-3         BANGLADESH                     9                     0     1469   27227
0-24 months   JiVitA-3         BANGLADESH                     9                     1     1330   27227
0-24 months   JiVitA-3         BANGLADESH                     10                    0     1437   27227
0-24 months   JiVitA-3         BANGLADESH                     10                    1     1530   27227
0-24 months   JiVitA-3         BANGLADESH                     11                    0     1354   27227
0-24 months   JiVitA-3         BANGLADESH                     11                    1     1696   27227
0-24 months   JiVitA-3         BANGLADESH                     12                    0     1469   27227
0-24 months   JiVitA-3         BANGLADESH                     12                    1     1671   27227
0-24 months   JiVitA-4         BANGLADESH                     1                     0        0    5442
0-24 months   JiVitA-4         BANGLADESH                     1                     1        0    5442
0-24 months   JiVitA-4         BANGLADESH                     2                     0      398    5442
0-24 months   JiVitA-4         BANGLADESH                     2                     1      518    5442
0-24 months   JiVitA-4         BANGLADESH                     3                     0      431    5442
0-24 months   JiVitA-4         BANGLADESH                     3                     1      593    5442
0-24 months   JiVitA-4         BANGLADESH                     4                     0      303    5442
0-24 months   JiVitA-4         BANGLADESH                     4                     1      470    5442
0-24 months   JiVitA-4         BANGLADESH                     5                     0      272    5442
0-24 months   JiVitA-4         BANGLADESH                     5                     1      369    5442
0-24 months   JiVitA-4         BANGLADESH                     6                     0      184    5442
0-24 months   JiVitA-4         BANGLADESH                     6                     1      276    5442
0-24 months   JiVitA-4         BANGLADESH                     7                     0      195    5442
0-24 months   JiVitA-4         BANGLADESH                     7                     1      342    5442
0-24 months   JiVitA-4         BANGLADESH                     8                     0      230    5442
0-24 months   JiVitA-4         BANGLADESH                     8                     1      325    5442
0-24 months   JiVitA-4         BANGLADESH                     9                     0      195    5442
0-24 months   JiVitA-4         BANGLADESH                     9                     1      208    5442
0-24 months   JiVitA-4         BANGLADESH                     10                    0       71    5442
0-24 months   JiVitA-4         BANGLADESH                     10                    1       62    5442
0-24 months   JiVitA-4         BANGLADESH                     11                    0        0    5442
0-24 months   JiVitA-4         BANGLADESH                     11                    1        0    5442
0-24 months   JiVitA-4         BANGLADESH                     12                    0        0    5442
0-24 months   JiVitA-4         BANGLADESH                     12                    1        0    5442
0-24 months   Keneba           GAMBIA                         1                     0      158    2915
0-24 months   Keneba           GAMBIA                         1                     1      137    2915
0-24 months   Keneba           GAMBIA                         2                     0      127    2915
0-24 months   Keneba           GAMBIA                         2                     1      129    2915
0-24 months   Keneba           GAMBIA                         3                     0      149    2915
0-24 months   Keneba           GAMBIA                         3                     1      157    2915
0-24 months   Keneba           GAMBIA                         4                     0       98    2915
0-24 months   Keneba           GAMBIA                         4                     1       99    2915
0-24 months   Keneba           GAMBIA                         5                     0       92    2915
0-24 months   Keneba           GAMBIA                         5                     1      112    2915
0-24 months   Keneba           GAMBIA                         6                     0       74    2915
0-24 months   Keneba           GAMBIA                         6                     1       89    2915
0-24 months   Keneba           GAMBIA                         7                     0       62    2915
0-24 months   Keneba           GAMBIA                         7                     1       79    2915
0-24 months   Keneba           GAMBIA                         8                     0      116    2915
0-24 months   Keneba           GAMBIA                         8                     1      120    2915
0-24 months   Keneba           GAMBIA                         9                     0      114    2915
0-24 months   Keneba           GAMBIA                         9                     1      139    2915
0-24 months   Keneba           GAMBIA                         10                    0      166    2915
0-24 months   Keneba           GAMBIA                         10                    1      184    2915
0-24 months   Keneba           GAMBIA                         11                    0      134    2915
0-24 months   Keneba           GAMBIA                         11                    1      120    2915
0-24 months   Keneba           GAMBIA                         12                    0      131    2915
0-24 months   Keneba           GAMBIA                         12                    1      129    2915
0-24 months   LCNI-5           MALAWI                         1                     0       24     840
0-24 months   LCNI-5           MALAWI                         1                     1       44     840
0-24 months   LCNI-5           MALAWI                         2                     0       18     840
0-24 months   LCNI-5           MALAWI                         2                     1       28     840
0-24 months   LCNI-5           MALAWI                         3                     0       10     840
0-24 months   LCNI-5           MALAWI                         3                     1       16     840
0-24 months   LCNI-5           MALAWI                         4                     0       17     840
0-24 months   LCNI-5           MALAWI                         4                     1       22     840
0-24 months   LCNI-5           MALAWI                         5                     0       21     840
0-24 months   LCNI-5           MALAWI                         5                     1       23     840
0-24 months   LCNI-5           MALAWI                         6                     0       11     840
0-24 months   LCNI-5           MALAWI                         6                     1       23     840
0-24 months   LCNI-5           MALAWI                         7                     0       24     840
0-24 months   LCNI-5           MALAWI                         7                     1       38     840
0-24 months   LCNI-5           MALAWI                         8                     0       38     840
0-24 months   LCNI-5           MALAWI                         8                     1       55     840
0-24 months   LCNI-5           MALAWI                         9                     0       35     840
0-24 months   LCNI-5           MALAWI                         9                     1       58     840
0-24 months   LCNI-5           MALAWI                         10                    0       39     840
0-24 months   LCNI-5           MALAWI                         10                    1       96     840
0-24 months   LCNI-5           MALAWI                         11                    0       37     840
0-24 months   LCNI-5           MALAWI                         11                    1       68     840
0-24 months   LCNI-5           MALAWI                         12                    0       31     840
0-24 months   LCNI-5           MALAWI                         12                    1       64     840
0-24 months   MAL-ED           BANGLADESH                     1                     0        8     265
0-24 months   MAL-ED           BANGLADESH                     1                     1       13     265
0-24 months   MAL-ED           BANGLADESH                     2                     0        7     265
0-24 months   MAL-ED           BANGLADESH                     2                     1       18     265
0-24 months   MAL-ED           BANGLADESH                     3                     0        8     265
0-24 months   MAL-ED           BANGLADESH                     3                     1       17     265
0-24 months   MAL-ED           BANGLADESH                     4                     0       12     265
0-24 months   MAL-ED           BANGLADESH                     4                     1       10     265
0-24 months   MAL-ED           BANGLADESH                     5                     0        5     265
0-24 months   MAL-ED           BANGLADESH                     5                     1       17     265
0-24 months   MAL-ED           BANGLADESH                     6                     0        5     265
0-24 months   MAL-ED           BANGLADESH                     6                     1        6     265
0-24 months   MAL-ED           BANGLADESH                     7                     0        6     265
0-24 months   MAL-ED           BANGLADESH                     7                     1       14     265
0-24 months   MAL-ED           BANGLADESH                     8                     0       10     265
0-24 months   MAL-ED           BANGLADESH                     8                     1       16     265
0-24 months   MAL-ED           BANGLADESH                     9                     0       10     265
0-24 months   MAL-ED           BANGLADESH                     9                     1       13     265
0-24 months   MAL-ED           BANGLADESH                     10                    0       13     265
0-24 months   MAL-ED           BANGLADESH                     10                    1       12     265
0-24 months   MAL-ED           BANGLADESH                     11                    0        8     265
0-24 months   MAL-ED           BANGLADESH                     11                    1        9     265
0-24 months   MAL-ED           BANGLADESH                     12                    0       11     265
0-24 months   MAL-ED           BANGLADESH                     12                    1       17     265
0-24 months   MAL-ED           BRAZIL                         1                     0       12     233
0-24 months   MAL-ED           BRAZIL                         1                     1        3     233
0-24 months   MAL-ED           BRAZIL                         2                     0       17     233
0-24 months   MAL-ED           BRAZIL                         2                     1        8     233
0-24 months   MAL-ED           BRAZIL                         3                     0       16     233
0-24 months   MAL-ED           BRAZIL                         3                     1        4     233
0-24 months   MAL-ED           BRAZIL                         4                     0       10     233
0-24 months   MAL-ED           BRAZIL                         4                     1        2     233
0-24 months   MAL-ED           BRAZIL                         5                     0       16     233
0-24 months   MAL-ED           BRAZIL                         5                     1        7     233
0-24 months   MAL-ED           BRAZIL                         6                     0        6     233
0-24 months   MAL-ED           BRAZIL                         6                     1        3     233
0-24 months   MAL-ED           BRAZIL                         7                     0       10     233
0-24 months   MAL-ED           BRAZIL                         7                     1        8     233
0-24 months   MAL-ED           BRAZIL                         8                     0       15     233
0-24 months   MAL-ED           BRAZIL                         8                     1        6     233
0-24 months   MAL-ED           BRAZIL                         9                     0       23     233
0-24 months   MAL-ED           BRAZIL                         9                     1        9     233
0-24 months   MAL-ED           BRAZIL                         10                    0       17     233
0-24 months   MAL-ED           BRAZIL                         10                    1        4     233
0-24 months   MAL-ED           BRAZIL                         11                    0       19     233
0-24 months   MAL-ED           BRAZIL                         11                    1        3     233
0-24 months   MAL-ED           BRAZIL                         12                    0        9     233
0-24 months   MAL-ED           BRAZIL                         12                    1        6     233
0-24 months   MAL-ED           INDIA                          1                     0        4     251
0-24 months   MAL-ED           INDIA                          1                     1       16     251
0-24 months   MAL-ED           INDIA                          2                     0       14     251
0-24 months   MAL-ED           INDIA                          2                     1        7     251
0-24 months   MAL-ED           INDIA                          3                     0       10     251
0-24 months   MAL-ED           INDIA                          3                     1       13     251
0-24 months   MAL-ED           INDIA                          4                     0        6     251
0-24 months   MAL-ED           INDIA                          4                     1       11     251
0-24 months   MAL-ED           INDIA                          5                     0        3     251
0-24 months   MAL-ED           INDIA                          5                     1        5     251
0-24 months   MAL-ED           INDIA                          6                     0       10     251
0-24 months   MAL-ED           INDIA                          6                     1       10     251
0-24 months   MAL-ED           INDIA                          7                     0       11     251
0-24 months   MAL-ED           INDIA                          7                     1       14     251
0-24 months   MAL-ED           INDIA                          8                     0        7     251
0-24 months   MAL-ED           INDIA                          8                     1       17     251
0-24 months   MAL-ED           INDIA                          9                     0       10     251
0-24 months   MAL-ED           INDIA                          9                     1       13     251
0-24 months   MAL-ED           INDIA                          10                    0        9     251
0-24 months   MAL-ED           INDIA                          10                    1       17     251
0-24 months   MAL-ED           INDIA                          11                    0        8     251
0-24 months   MAL-ED           INDIA                          11                    1       17     251
0-24 months   MAL-ED           INDIA                          12                    0        7     251
0-24 months   MAL-ED           INDIA                          12                    1       12     251
0-24 months   MAL-ED           NEPAL                          1                     0       12     240
0-24 months   MAL-ED           NEPAL                          1                     1        8     240
0-24 months   MAL-ED           NEPAL                          2                     0       12     240
0-24 months   MAL-ED           NEPAL                          2                     1        7     240
0-24 months   MAL-ED           NEPAL                          3                     0        7     240
0-24 months   MAL-ED           NEPAL                          3                     1       10     240
0-24 months   MAL-ED           NEPAL                          4                     0       17     240
0-24 months   MAL-ED           NEPAL                          4                     1        5     240
0-24 months   MAL-ED           NEPAL                          5                     0       12     240
0-24 months   MAL-ED           NEPAL                          5                     1       10     240
0-24 months   MAL-ED           NEPAL                          6                     0       15     240
0-24 months   MAL-ED           NEPAL                          6                     1        3     240
0-24 months   MAL-ED           NEPAL                          7                     0       14     240
0-24 months   MAL-ED           NEPAL                          7                     1        6     240
0-24 months   MAL-ED           NEPAL                          8                     0       17     240
0-24 months   MAL-ED           NEPAL                          8                     1        7     240
0-24 months   MAL-ED           NEPAL                          9                     0       13     240
0-24 months   MAL-ED           NEPAL                          9                     1        3     240
0-24 months   MAL-ED           NEPAL                          10                    0       15     240
0-24 months   MAL-ED           NEPAL                          10                    1        6     240
0-24 months   MAL-ED           NEPAL                          11                    0       12     240
0-24 months   MAL-ED           NEPAL                          11                    1       12     240
0-24 months   MAL-ED           NEPAL                          12                    0       10     240
0-24 months   MAL-ED           NEPAL                          12                    1        7     240
0-24 months   MAL-ED           PERU                           1                     0       18     303
0-24 months   MAL-ED           PERU                           1                     1       24     303
0-24 months   MAL-ED           PERU                           2                     0        7     303
0-24 months   MAL-ED           PERU                           2                     1       16     303
0-24 months   MAL-ED           PERU                           3                     0       10     303
0-24 months   MAL-ED           PERU                           3                     1       13     303
0-24 months   MAL-ED           PERU                           4                     0        8     303
0-24 months   MAL-ED           PERU                           4                     1       13     303
0-24 months   MAL-ED           PERU                           5                     0        9     303
0-24 months   MAL-ED           PERU                           5                     1       19     303
0-24 months   MAL-ED           PERU                           6                     0        6     303
0-24 months   MAL-ED           PERU                           6                     1       11     303
0-24 months   MAL-ED           PERU                           7                     0        5     303
0-24 months   MAL-ED           PERU                           7                     1       19     303
0-24 months   MAL-ED           PERU                           8                     0       10     303
0-24 months   MAL-ED           PERU                           8                     1        9     303
0-24 months   MAL-ED           PERU                           9                     0        9     303
0-24 months   MAL-ED           PERU                           9                     1       14     303
0-24 months   MAL-ED           PERU                           10                    0       16     303
0-24 months   MAL-ED           PERU                           10                    1       11     303
0-24 months   MAL-ED           PERU                           11                    0        9     303
0-24 months   MAL-ED           PERU                           11                    1       24     303
0-24 months   MAL-ED           PERU                           12                    0        8     303
0-24 months   MAL-ED           PERU                           12                    1       15     303
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0       16     314
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1       26     314
0-24 months   MAL-ED           SOUTH AFRICA                   2                     0       12     314
0-24 months   MAL-ED           SOUTH AFRICA                   2                     1       18     314
0-24 months   MAL-ED           SOUTH AFRICA                   3                     0       12     314
0-24 months   MAL-ED           SOUTH AFRICA                   3                     1        6     314
0-24 months   MAL-ED           SOUTH AFRICA                   4                     0        8     314
0-24 months   MAL-ED           SOUTH AFRICA                   4                     1        7     314
0-24 months   MAL-ED           SOUTH AFRICA                   5                     0       11     314
0-24 months   MAL-ED           SOUTH AFRICA                   5                     1        5     314
0-24 months   MAL-ED           SOUTH AFRICA                   6                     0       11     314
0-24 months   MAL-ED           SOUTH AFRICA                   6                     1       12     314
0-24 months   MAL-ED           SOUTH AFRICA                   7                     0       11     314
0-24 months   MAL-ED           SOUTH AFRICA                   7                     1       15     314
0-24 months   MAL-ED           SOUTH AFRICA                   8                     0        6     314
0-24 months   MAL-ED           SOUTH AFRICA                   8                     1        6     314
0-24 months   MAL-ED           SOUTH AFRICA                   9                     0       12     314
0-24 months   MAL-ED           SOUTH AFRICA                   9                     1       13     314
0-24 months   MAL-ED           SOUTH AFRICA                   10                    0       10     314
0-24 months   MAL-ED           SOUTH AFRICA                   10                    1       21     314
0-24 months   MAL-ED           SOUTH AFRICA                   11                    0       12     314
0-24 months   MAL-ED           SOUTH AFRICA                   11                    1       19     314
0-24 months   MAL-ED           SOUTH AFRICA                   12                    0       17     314
0-24 months   MAL-ED           SOUTH AFRICA                   12                    1       28     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        7     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1       13     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0        5     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1       26     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0        4     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1       15     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0        2     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        8     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0        3     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1       17     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        1     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1       18     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0        5     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1       18     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        2     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1       10     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        3     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1       20     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        1     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1       23     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        2     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1       25     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        5     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1       29     262
0-24 months   NIH-Birth        BANGLADESH                     1                     0       23     629
0-24 months   NIH-Birth        BANGLADESH                     1                     1       50     629
0-24 months   NIH-Birth        BANGLADESH                     2                     0       19     629
0-24 months   NIH-Birth        BANGLADESH                     2                     1       39     629
0-24 months   NIH-Birth        BANGLADESH                     3                     0       26     629
0-24 months   NIH-Birth        BANGLADESH                     3                     1       33     629
0-24 months   NIH-Birth        BANGLADESH                     4                     0       18     629
0-24 months   NIH-Birth        BANGLADESH                     4                     1       35     629
0-24 months   NIH-Birth        BANGLADESH                     5                     0       16     629
0-24 months   NIH-Birth        BANGLADESH                     5                     1       33     629
0-24 months   NIH-Birth        BANGLADESH                     6                     0       15     629
0-24 months   NIH-Birth        BANGLADESH                     6                     1       35     629
0-24 months   NIH-Birth        BANGLADESH                     7                     0       14     629
0-24 months   NIH-Birth        BANGLADESH                     7                     1       27     629
0-24 months   NIH-Birth        BANGLADESH                     8                     0       14     629
0-24 months   NIH-Birth        BANGLADESH                     8                     1       27     629
0-24 months   NIH-Birth        BANGLADESH                     9                     0       15     629
0-24 months   NIH-Birth        BANGLADESH                     9                     1       33     629
0-24 months   NIH-Birth        BANGLADESH                     10                    0       17     629
0-24 months   NIH-Birth        BANGLADESH                     10                    1       32     629
0-24 months   NIH-Birth        BANGLADESH                     11                    0       14     629
0-24 months   NIH-Birth        BANGLADESH                     11                    1       39     629
0-24 months   NIH-Birth        BANGLADESH                     12                    0       20     629
0-24 months   NIH-Birth        BANGLADESH                     12                    1       35     629
0-24 months   PROBIT           BELARUS                        1                     0      864   16897
0-24 months   PROBIT           BELARUS                        1                     1      162   16897
0-24 months   PROBIT           BELARUS                        2                     0      805   16897
0-24 months   PROBIT           BELARUS                        2                     1      178   16897
0-24 months   PROBIT           BELARUS                        3                     0      998   16897
0-24 months   PROBIT           BELARUS                        3                     1      147   16897
0-24 months   PROBIT           BELARUS                        4                     0     1027   16897
0-24 months   PROBIT           BELARUS                        4                     1      136   16897
0-24 months   PROBIT           BELARUS                        5                     0     1046   16897
0-24 months   PROBIT           BELARUS                        5                     1      128   16897
0-24 months   PROBIT           BELARUS                        6                     0     1081   16897
0-24 months   PROBIT           BELARUS                        6                     1      130   16897
0-24 months   PROBIT           BELARUS                        7                     0     1413   16897
0-24 months   PROBIT           BELARUS                        7                     1      177   16897
0-24 months   PROBIT           BELARUS                        8                     0     1423   16897
0-24 months   PROBIT           BELARUS                        8                     1      165   16897
0-24 months   PROBIT           BELARUS                        9                     0     1425   16897
0-24 months   PROBIT           BELARUS                        9                     1      202   16897
0-24 months   PROBIT           BELARUS                        10                    0     1583   16897
0-24 months   PROBIT           BELARUS                        10                    1      231   16897
0-24 months   PROBIT           BELARUS                        11                    0     1466   16897
0-24 months   PROBIT           BELARUS                        11                    1      236   16897
0-24 months   PROBIT           BELARUS                        12                    0     1613   16897
0-24 months   PROBIT           BELARUS                        12                    1      261   16897
0-24 months   PROVIDE          BANGLADESH                     1                     0       17     700
0-24 months   PROVIDE          BANGLADESH                     1                     1       21     700
0-24 months   PROVIDE          BANGLADESH                     2                     0       17     700
0-24 months   PROVIDE          BANGLADESH                     2                     1       18     700
0-24 months   PROVIDE          BANGLADESH                     3                     0       38     700
0-24 months   PROVIDE          BANGLADESH                     3                     1       15     700
0-24 months   PROVIDE          BANGLADESH                     4                     0       21     700
0-24 months   PROVIDE          BANGLADESH                     4                     1       18     700
0-24 months   PROVIDE          BANGLADESH                     5                     0       37     700
0-24 months   PROVIDE          BANGLADESH                     5                     1       15     700
0-24 months   PROVIDE          BANGLADESH                     6                     0       46     700
0-24 months   PROVIDE          BANGLADESH                     6                     1       48     700
0-24 months   PROVIDE          BANGLADESH                     7                     0       54     700
0-24 months   PROVIDE          BANGLADESH                     7                     1       38     700
0-24 months   PROVIDE          BANGLADESH                     8                     0       44     700
0-24 months   PROVIDE          BANGLADESH                     8                     1       25     700
0-24 months   PROVIDE          BANGLADESH                     9                     0       46     700
0-24 months   PROVIDE          BANGLADESH                     9                     1       30     700
0-24 months   PROVIDE          BANGLADESH                     10                    0       41     700
0-24 months   PROVIDE          BANGLADESH                     10                    1       38     700
0-24 months   PROVIDE          BANGLADESH                     11                    0       19     700
0-24 months   PROVIDE          BANGLADESH                     11                    1       23     700
0-24 months   PROVIDE          BANGLADESH                     12                    0       15     700
0-24 months   PROVIDE          BANGLADESH                     12                    1       16     700
0-24 months   ResPak           PAKISTAN                       1                     0        2     284
0-24 months   ResPak           PAKISTAN                       1                     1       10     284
0-24 months   ResPak           PAKISTAN                       2                     0        3     284
0-24 months   ResPak           PAKISTAN                       2                     1        8     284
0-24 months   ResPak           PAKISTAN                       3                     0        8     284
0-24 months   ResPak           PAKISTAN                       3                     1       20     284
0-24 months   ResPak           PAKISTAN                       4                     0        8     284
0-24 months   ResPak           PAKISTAN                       4                     1       22     284
0-24 months   ResPak           PAKISTAN                       5                     0       20     284
0-24 months   ResPak           PAKISTAN                       5                     1       35     284
0-24 months   ResPak           PAKISTAN                       6                     0       16     284
0-24 months   ResPak           PAKISTAN                       6                     1       31     284
0-24 months   ResPak           PAKISTAN                       7                     0        7     284
0-24 months   ResPak           PAKISTAN                       7                     1       24     284
0-24 months   ResPak           PAKISTAN                       8                     0       21     284
0-24 months   ResPak           PAKISTAN                       8                     1       20     284
0-24 months   ResPak           PAKISTAN                       9                     0        8     284
0-24 months   ResPak           PAKISTAN                       9                     1        8     284
0-24 months   ResPak           PAKISTAN                       10                    0        3     284
0-24 months   ResPak           PAKISTAN                       10                    1        3     284
0-24 months   ResPak           PAKISTAN                       11                    0        1     284
0-24 months   ResPak           PAKISTAN                       11                    1        3     284
0-24 months   ResPak           PAKISTAN                       12                    0        0     284
0-24 months   ResPak           PAKISTAN                       12                    1        3     284
0-24 months   SAS-CompFeed     INDIA                          1                     0       35    1533
0-24 months   SAS-CompFeed     INDIA                          1                     1       78    1533
0-24 months   SAS-CompFeed     INDIA                          2                     0       33    1533
0-24 months   SAS-CompFeed     INDIA                          2                     1       58    1533
0-24 months   SAS-CompFeed     INDIA                          3                     0       28    1533
0-24 months   SAS-CompFeed     INDIA                          3                     1       54    1533
0-24 months   SAS-CompFeed     INDIA                          4                     0       18    1533
0-24 months   SAS-CompFeed     INDIA                          4                     1       57    1533
0-24 months   SAS-CompFeed     INDIA                          5                     0       30    1533
0-24 months   SAS-CompFeed     INDIA                          5                     1       71    1533
0-24 months   SAS-CompFeed     INDIA                          6                     0       39    1533
0-24 months   SAS-CompFeed     INDIA                          6                     1       70    1533
0-24 months   SAS-CompFeed     INDIA                          7                     0       33    1533
0-24 months   SAS-CompFeed     INDIA                          7                     1      103    1533
0-24 months   SAS-CompFeed     INDIA                          8                     0       42    1533
0-24 months   SAS-CompFeed     INDIA                          8                     1      140    1533
0-24 months   SAS-CompFeed     INDIA                          9                     0       71    1533
0-24 months   SAS-CompFeed     INDIA                          9                     1      121    1533
0-24 months   SAS-CompFeed     INDIA                          10                    0       48    1533
0-24 months   SAS-CompFeed     INDIA                          10                    1      120    1533
0-24 months   SAS-CompFeed     INDIA                          11                    0       50    1533
0-24 months   SAS-CompFeed     INDIA                          11                    1       92    1533
0-24 months   SAS-CompFeed     INDIA                          12                    0       46    1533
0-24 months   SAS-CompFeed     INDIA                          12                    1       96    1533
0-24 months   SAS-FoodSuppl    INDIA                          1                     0        4     418
0-24 months   SAS-FoodSuppl    INDIA                          1                     1       22     418
0-24 months   SAS-FoodSuppl    INDIA                          2                     0       10     418
0-24 months   SAS-FoodSuppl    INDIA                          2                     1       26     418
0-24 months   SAS-FoodSuppl    INDIA                          3                     0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          3                     1       18     418
0-24 months   SAS-FoodSuppl    INDIA                          4                     0        2     418
0-24 months   SAS-FoodSuppl    INDIA                          4                     1        2     418
0-24 months   SAS-FoodSuppl    INDIA                          5                     0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          5                     1       11     418
0-24 months   SAS-FoodSuppl    INDIA                          6                     0        1     418
0-24 months   SAS-FoodSuppl    INDIA                          6                     1       24     418
0-24 months   SAS-FoodSuppl    INDIA                          7                     0        8     418
0-24 months   SAS-FoodSuppl    INDIA                          7                     1       29     418
0-24 months   SAS-FoodSuppl    INDIA                          8                     0       13     418
0-24 months   SAS-FoodSuppl    INDIA                          8                     1       54     418
0-24 months   SAS-FoodSuppl    INDIA                          9                     0        8     418
0-24 months   SAS-FoodSuppl    INDIA                          9                     1       58     418
0-24 months   SAS-FoodSuppl    INDIA                          10                    0        8     418
0-24 months   SAS-FoodSuppl    INDIA                          10                    1       43     418
0-24 months   SAS-FoodSuppl    INDIA                          11                    0        7     418
0-24 months   SAS-FoodSuppl    INDIA                          11                    1       26     418
0-24 months   SAS-FoodSuppl    INDIA                          12                    0        5     418
0-24 months   SAS-FoodSuppl    INDIA                          12                    1       33     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      108    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       63    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      125    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       53    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      106    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       58    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      114    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       76    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      124    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       61    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      110    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       56    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      138    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       80    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      158    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       74    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      137    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       79    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      165    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       85    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      142    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       79    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      140    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       65    2396
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0      781   14074
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1      582   14074
0-24 months   ZVITAMBO         ZIMBABWE                       2                     0      600   14074
0-24 months   ZVITAMBO         ZIMBABWE                       2                     1      473   14074
0-24 months   ZVITAMBO         ZIMBABWE                       3                     0      673   14074
0-24 months   ZVITAMBO         ZIMBABWE                       3                     1      532   14074
0-24 months   ZVITAMBO         ZIMBABWE                       4                     0      580   14074
0-24 months   ZVITAMBO         ZIMBABWE                       4                     1      428   14074
0-24 months   ZVITAMBO         ZIMBABWE                       5                     0      561   14074
0-24 months   ZVITAMBO         ZIMBABWE                       5                     1      477   14074
0-24 months   ZVITAMBO         ZIMBABWE                       6                     0      631   14074
0-24 months   ZVITAMBO         ZIMBABWE                       6                     1      523   14074
0-24 months   ZVITAMBO         ZIMBABWE                       7                     0      682   14074
0-24 months   ZVITAMBO         ZIMBABWE                       7                     1      500   14074
0-24 months   ZVITAMBO         ZIMBABWE                       8                     0      742   14074
0-24 months   ZVITAMBO         ZIMBABWE                       8                     1      524   14074
0-24 months   ZVITAMBO         ZIMBABWE                       9                     0      841   14074
0-24 months   ZVITAMBO         ZIMBABWE                       9                     1      466   14074
0-24 months   ZVITAMBO         ZIMBABWE                       10                    0      635   14074
0-24 months   ZVITAMBO         ZIMBABWE                       10                    1      417   14074
0-24 months   ZVITAMBO         ZIMBABWE                       11                    0      743   14074
0-24 months   ZVITAMBO         ZIMBABWE                       11                    1      457   14074
0-24 months   ZVITAMBO         ZIMBABWE                       12                    0      734   14074
0-24 months   ZVITAMBO         ZIMBABWE                       12                    1      492   14074
0-6 months    CMC-V-BCS-2002   INDIA                          1                     0       14     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                     1       20     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                     0        9     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                     1        6     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                     0       19     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                     1       12     368
0-6 months    CMC-V-BCS-2002   INDIA                          4                     0       28     368
0-6 months    CMC-V-BCS-2002   INDIA                          4                     1       16     368
0-6 months    CMC-V-BCS-2002   INDIA                          5                     0       19     368
0-6 months    CMC-V-BCS-2002   INDIA                          5                     1       17     368
0-6 months    CMC-V-BCS-2002   INDIA                          6                     0       15     368
0-6 months    CMC-V-BCS-2002   INDIA                          6                     1       21     368
0-6 months    CMC-V-BCS-2002   INDIA                          7                     0       16     368
0-6 months    CMC-V-BCS-2002   INDIA                          7                     1       23     368
0-6 months    CMC-V-BCS-2002   INDIA                          8                     0        8     368
0-6 months    CMC-V-BCS-2002   INDIA                          8                     1        9     368
0-6 months    CMC-V-BCS-2002   INDIA                          9                     0       11     368
0-6 months    CMC-V-BCS-2002   INDIA                          9                     1       10     368
0-6 months    CMC-V-BCS-2002   INDIA                          10                    0       13     368
0-6 months    CMC-V-BCS-2002   INDIA                          10                    1       16     368
0-6 months    CMC-V-BCS-2002   INDIA                          11                    0       20     368
0-6 months    CMC-V-BCS-2002   INDIA                          11                    1       21     368
0-6 months    CMC-V-BCS-2002   INDIA                          12                    0        8     368
0-6 months    CMC-V-BCS-2002   INDIA                          12                    1       17     368
0-6 months    CMIN             BANGLADESH                     1                     0       11     277
0-6 months    CMIN             BANGLADESH                     1                     1       19     277
0-6 months    CMIN             BANGLADESH                     2                     0       17     277
0-6 months    CMIN             BANGLADESH                     2                     1       10     277
0-6 months    CMIN             BANGLADESH                     3                     0       11     277
0-6 months    CMIN             BANGLADESH                     3                     1        9     277
0-6 months    CMIN             BANGLADESH                     4                     0       12     277
0-6 months    CMIN             BANGLADESH                     4                     1       11     277
0-6 months    CMIN             BANGLADESH                     5                     0        8     277
0-6 months    CMIN             BANGLADESH                     5                     1       12     277
0-6 months    CMIN             BANGLADESH                     6                     0        2     277
0-6 months    CMIN             BANGLADESH                     6                     1        7     277
0-6 months    CMIN             BANGLADESH                     7                     0        9     277
0-6 months    CMIN             BANGLADESH                     7                     1        8     277
0-6 months    CMIN             BANGLADESH                     8                     0        5     277
0-6 months    CMIN             BANGLADESH                     8                     1       19     277
0-6 months    CMIN             BANGLADESH                     9                     0        9     277
0-6 months    CMIN             BANGLADESH                     9                     1       13     277
0-6 months    CMIN             BANGLADESH                     10                    0       14     277
0-6 months    CMIN             BANGLADESH                     10                    1       13     277
0-6 months    CMIN             BANGLADESH                     11                    0       14     277
0-6 months    CMIN             BANGLADESH                     11                    1       16     277
0-6 months    CMIN             BANGLADESH                     12                    0        8     277
0-6 months    CMIN             BANGLADESH                     12                    1       20     277
0-6 months    CONTENT          PERU                           1                     0       10     215
0-6 months    CONTENT          PERU                           1                     1        0     215
0-6 months    CONTENT          PERU                           2                     0       18     215
0-6 months    CONTENT          PERU                           2                     1        0     215
0-6 months    CONTENT          PERU                           3                     0       25     215
0-6 months    CONTENT          PERU                           3                     1        5     215
0-6 months    CONTENT          PERU                           4                     0       16     215
0-6 months    CONTENT          PERU                           4                     1        3     215
0-6 months    CONTENT          PERU                           5                     0       11     215
0-6 months    CONTENT          PERU                           5                     1        3     215
0-6 months    CONTENT          PERU                           6                     0       13     215
0-6 months    CONTENT          PERU                           6                     1        0     215
0-6 months    CONTENT          PERU                           7                     0       22     215
0-6 months    CONTENT          PERU                           7                     1        6     215
0-6 months    CONTENT          PERU                           8                     0       18     215
0-6 months    CONTENT          PERU                           8                     1        5     215
0-6 months    CONTENT          PERU                           9                     0       23     215
0-6 months    CONTENT          PERU                           9                     1        3     215
0-6 months    CONTENT          PERU                           10                    0       13     215
0-6 months    CONTENT          PERU                           10                    1        1     215
0-6 months    CONTENT          PERU                           11                    0        8     215
0-6 months    CONTENT          PERU                           11                    1        1     215
0-6 months    CONTENT          PERU                           12                    0       11     215
0-6 months    CONTENT          PERU                           12                    1        0     215
0-6 months    EE               PAKISTAN                       1                     0       20     379
0-6 months    EE               PAKISTAN                       1                     1       75     379
0-6 months    EE               PAKISTAN                       2                     0       21     379
0-6 months    EE               PAKISTAN                       2                     1       46     379
0-6 months    EE               PAKISTAN                       3                     0       15     379
0-6 months    EE               PAKISTAN                       3                     1       27     379
0-6 months    EE               PAKISTAN                       4                     0        2     379
0-6 months    EE               PAKISTAN                       4                     1       14     379
0-6 months    EE               PAKISTAN                       5                     0        0     379
0-6 months    EE               PAKISTAN                       5                     1        0     379
0-6 months    EE               PAKISTAN                       6                     0        0     379
0-6 months    EE               PAKISTAN                       6                     1        0     379
0-6 months    EE               PAKISTAN                       7                     0        0     379
0-6 months    EE               PAKISTAN                       7                     1        0     379
0-6 months    EE               PAKISTAN                       8                     0        0     379
0-6 months    EE               PAKISTAN                       8                     1        0     379
0-6 months    EE               PAKISTAN                       9                     0        0     379
0-6 months    EE               PAKISTAN                       9                     1        0     379
0-6 months    EE               PAKISTAN                       10                    0        2     379
0-6 months    EE               PAKISTAN                       10                    1        2     379
0-6 months    EE               PAKISTAN                       11                    0       21     379
0-6 months    EE               PAKISTAN                       11                    1       50     379
0-6 months    EE               PAKISTAN                       12                    0       14     379
0-6 months    EE               PAKISTAN                       12                    1       70     379
0-6 months    GMS-Nepal        NEPAL                          1                     0        0     698
0-6 months    GMS-Nepal        NEPAL                          1                     1        0     698
0-6 months    GMS-Nepal        NEPAL                          2                     0        0     698
0-6 months    GMS-Nepal        NEPAL                          2                     1        0     698
0-6 months    GMS-Nepal        NEPAL                          3                     0        0     698
0-6 months    GMS-Nepal        NEPAL                          3                     1        0     698
0-6 months    GMS-Nepal        NEPAL                          4                     0        0     698
0-6 months    GMS-Nepal        NEPAL                          4                     1        1     698
0-6 months    GMS-Nepal        NEPAL                          5                     0        0     698
0-6 months    GMS-Nepal        NEPAL                          5                     1        0     698
0-6 months    GMS-Nepal        NEPAL                          6                     0      119     698
0-6 months    GMS-Nepal        NEPAL                          6                     1       53     698
0-6 months    GMS-Nepal        NEPAL                          7                     0      181     698
0-6 months    GMS-Nepal        NEPAL                          7                     1       88     698
0-6 months    GMS-Nepal        NEPAL                          8                     0      176     698
0-6 months    GMS-Nepal        NEPAL                          8                     1       80     698
0-6 months    GMS-Nepal        NEPAL                          9                     0        0     698
0-6 months    GMS-Nepal        NEPAL                          9                     1        0     698
0-6 months    GMS-Nepal        NEPAL                          10                    0        0     698
0-6 months    GMS-Nepal        NEPAL                          10                    1        0     698
0-6 months    GMS-Nepal        NEPAL                          11                    0        0     698
0-6 months    GMS-Nepal        NEPAL                          11                    1        0     698
0-6 months    GMS-Nepal        NEPAL                          12                    0        0     698
0-6 months    GMS-Nepal        NEPAL                          12                    1        0     698
0-6 months    Guatemala BSC    GUATEMALA                      1                     0       16     295
0-6 months    Guatemala BSC    GUATEMALA                      1                     1       13     295
0-6 months    Guatemala BSC    GUATEMALA                      2                     0       20     295
0-6 months    Guatemala BSC    GUATEMALA                      2                     1        3     295
0-6 months    Guatemala BSC    GUATEMALA                      3                     0       16     295
0-6 months    Guatemala BSC    GUATEMALA                      3                     1        9     295
0-6 months    Guatemala BSC    GUATEMALA                      4                     0       19     295
0-6 months    Guatemala BSC    GUATEMALA                      4                     1       11     295
0-6 months    Guatemala BSC    GUATEMALA                      5                     0       23     295
0-6 months    Guatemala BSC    GUATEMALA                      5                     1       12     295
0-6 months    Guatemala BSC    GUATEMALA                      6                     0       16     295
0-6 months    Guatemala BSC    GUATEMALA                      6                     1        9     295
0-6 months    Guatemala BSC    GUATEMALA                      7                     0       15     295
0-6 months    Guatemala BSC    GUATEMALA                      7                     1        6     295
0-6 months    Guatemala BSC    GUATEMALA                      8                     0       10     295
0-6 months    Guatemala BSC    GUATEMALA                      8                     1        5     295
0-6 months    Guatemala BSC    GUATEMALA                      9                     0        9     295
0-6 months    Guatemala BSC    GUATEMALA                      9                     1        6     295
0-6 months    Guatemala BSC    GUATEMALA                      10                    0       21     295
0-6 months    Guatemala BSC    GUATEMALA                      10                    1        5     295
0-6 months    Guatemala BSC    GUATEMALA                      11                    0       13     295
0-6 months    Guatemala BSC    GUATEMALA                      11                    1        7     295
0-6 months    Guatemala BSC    GUATEMALA                      12                    0       24     295
0-6 months    Guatemala BSC    GUATEMALA                      12                    1        7     295
0-6 months    IRC              INDIA                          1                     0       23     410
0-6 months    IRC              INDIA                          1                     1       15     410
0-6 months    IRC              INDIA                          2                     0       13     410
0-6 months    IRC              INDIA                          2                     1       15     410
0-6 months    IRC              INDIA                          3                     0       16     410
0-6 months    IRC              INDIA                          3                     1       11     410
0-6 months    IRC              INDIA                          4                     0       11     410
0-6 months    IRC              INDIA                          4                     1       10     410
0-6 months    IRC              INDIA                          5                     0       11     410
0-6 months    IRC              INDIA                          5                     1       11     410
0-6 months    IRC              INDIA                          6                     0       23     410
0-6 months    IRC              INDIA                          6                     1       14     410
0-6 months    IRC              INDIA                          7                     0       20     410
0-6 months    IRC              INDIA                          7                     1       16     410
0-6 months    IRC              INDIA                          8                     0       31     410
0-6 months    IRC              INDIA                          8                     1       13     410
0-6 months    IRC              INDIA                          9                     0       15     410
0-6 months    IRC              INDIA                          9                     1       12     410
0-6 months    IRC              INDIA                          10                    0       25     410
0-6 months    IRC              INDIA                          10                    1       13     410
0-6 months    IRC              INDIA                          11                    0       25     410
0-6 months    IRC              INDIA                          11                    1       15     410
0-6 months    IRC              INDIA                          12                    0       23     410
0-6 months    IRC              INDIA                          12                    1       29     410
0-6 months    JiVitA-3         BANGLADESH                     1                     0     1421   27161
0-6 months    JiVitA-3         BANGLADESH                     1                     1     1111   27161
0-6 months    JiVitA-3         BANGLADESH                     2                     0     1253   27161
0-6 months    JiVitA-3         BANGLADESH                     2                     1      813   27161
0-6 months    JiVitA-3         BANGLADESH                     3                     0     1549   27161
0-6 months    JiVitA-3         BANGLADESH                     3                     1      879   27161
0-6 months    JiVitA-3         BANGLADESH                     4                     0     1149   27161
0-6 months    JiVitA-3         BANGLADESH                     4                     1      623   27161
0-6 months    JiVitA-3         BANGLADESH                     5                     0      838   27161
0-6 months    JiVitA-3         BANGLADESH                     5                     1      481   27161
0-6 months    JiVitA-3         BANGLADESH                     6                     0      921   27161
0-6 months    JiVitA-3         BANGLADESH                     6                     1      472   27161
0-6 months    JiVitA-3         BANGLADESH                     7                     0     1027   27161
0-6 months    JiVitA-3         BANGLADESH                     7                     1      546   27161
0-6 months    JiVitA-3         BANGLADESH                     8                     0     1298   27161
0-6 months    JiVitA-3         BANGLADESH                     8                     1      854   27161
0-6 months    JiVitA-3         BANGLADESH                     9                     0     1656   27161
0-6 months    JiVitA-3         BANGLADESH                     9                     1     1137   27161
0-6 months    JiVitA-3         BANGLADESH                     10                    0     1625   27161
0-6 months    JiVitA-3         BANGLADESH                     10                    1     1333   27161
0-6 months    JiVitA-3         BANGLADESH                     11                    0     1547   27161
0-6 months    JiVitA-3         BANGLADESH                     11                    1     1492   27161
0-6 months    JiVitA-3         BANGLADESH                     12                    0     1660   27161
0-6 months    JiVitA-3         BANGLADESH                     12                    1     1476   27161
0-6 months    JiVitA-4         BANGLADESH                     1                     0        0    5130
0-6 months    JiVitA-4         BANGLADESH                     1                     1        0    5130
0-6 months    JiVitA-4         BANGLADESH                     2                     0      499    5130
0-6 months    JiVitA-4         BANGLADESH                     2                     1      290    5130
0-6 months    JiVitA-4         BANGLADESH                     3                     0      600    5130
0-6 months    JiVitA-4         BANGLADESH                     3                     1      335    5130
0-6 months    JiVitA-4         BANGLADESH                     4                     0      464    5130
0-6 months    JiVitA-4         BANGLADESH                     4                     1      266    5130
0-6 months    JiVitA-4         BANGLADESH                     5                     0      405    5130
0-6 months    JiVitA-4         BANGLADESH                     5                     1      209    5130
0-6 months    JiVitA-4         BANGLADESH                     6                     0      301    5130
0-6 months    JiVitA-4         BANGLADESH                     6                     1      153    5130
0-6 months    JiVitA-4         BANGLADESH                     7                     0      343    5130
0-6 months    JiVitA-4         BANGLADESH                     7                     1      191    5130
0-6 months    JiVitA-4         BANGLADESH                     8                     0      374    5130
0-6 months    JiVitA-4         BANGLADESH                     8                     1      176    5130
0-6 months    JiVitA-4         BANGLADESH                     9                     0      266    5130
0-6 months    JiVitA-4         BANGLADESH                     9                     1      127    5130
0-6 months    JiVitA-4         BANGLADESH                     10                    0       94    5130
0-6 months    JiVitA-4         BANGLADESH                     10                    1       37    5130
0-6 months    JiVitA-4         BANGLADESH                     11                    0        0    5130
0-6 months    JiVitA-4         BANGLADESH                     11                    1        0    5130
0-6 months    JiVitA-4         BANGLADESH                     12                    0        0    5130
0-6 months    JiVitA-4         BANGLADESH                     12                    1        0    5130
0-6 months    Keneba           GAMBIA                         1                     0      186    2465
0-6 months    Keneba           GAMBIA                         1                     1       73    2465
0-6 months    Keneba           GAMBIA                         2                     0      158    2465
0-6 months    Keneba           GAMBIA                         2                     1       58    2465
0-6 months    Keneba           GAMBIA                         3                     0      190    2465
0-6 months    Keneba           GAMBIA                         3                     1       72    2465
0-6 months    Keneba           GAMBIA                         4                     0      118    2465
0-6 months    Keneba           GAMBIA                         4                     1       49    2465
0-6 months    Keneba           GAMBIA                         5                     0      114    2465
0-6 months    Keneba           GAMBIA                         5                     1       55    2465
0-6 months    Keneba           GAMBIA                         6                     0       97    2465
0-6 months    Keneba           GAMBIA                         6                     1       44    2465
0-6 months    Keneba           GAMBIA                         7                     0       64    2465
0-6 months    Keneba           GAMBIA                         7                     1       41    2465
0-6 months    Keneba           GAMBIA                         8                     0      133    2465
0-6 months    Keneba           GAMBIA                         8                     1       65    2465
0-6 months    Keneba           GAMBIA                         9                     0      143    2465
0-6 months    Keneba           GAMBIA                         9                     1       71    2465
0-6 months    Keneba           GAMBIA                         10                    0      183    2465
0-6 months    Keneba           GAMBIA                         10                    1      107    2465
0-6 months    Keneba           GAMBIA                         11                    0      153    2465
0-6 months    Keneba           GAMBIA                         11                    1       65    2465
0-6 months    Keneba           GAMBIA                         12                    0      156    2465
0-6 months    Keneba           GAMBIA                         12                    1       70    2465
0-6 months    LCNI-5           MALAWI                         1                     0       18     272
0-6 months    LCNI-5           MALAWI                         1                     1       11     272
0-6 months    LCNI-5           MALAWI                         2                     0        4     272
0-6 months    LCNI-5           MALAWI                         2                     1        0     272
0-6 months    LCNI-5           MALAWI                         3                     0        2     272
0-6 months    LCNI-5           MALAWI                         3                     1        2     272
0-6 months    LCNI-5           MALAWI                         4                     0        2     272
0-6 months    LCNI-5           MALAWI                         4                     1        3     272
0-6 months    LCNI-5           MALAWI                         5                     0        9     272
0-6 months    LCNI-5           MALAWI                         5                     1        1     272
0-6 months    LCNI-5           MALAWI                         6                     0        2     272
0-6 months    LCNI-5           MALAWI                         6                     1        3     272
0-6 months    LCNI-5           MALAWI                         7                     0        2     272
0-6 months    LCNI-5           MALAWI                         7                     1        1     272
0-6 months    LCNI-5           MALAWI                         8                     0       25     272
0-6 months    LCNI-5           MALAWI                         8                     1        7     272
0-6 months    LCNI-5           MALAWI                         9                     0       33     272
0-6 months    LCNI-5           MALAWI                         9                     1       20     272
0-6 months    LCNI-5           MALAWI                         10                    0       40     272
0-6 months    LCNI-5           MALAWI                         10                    1       29     272
0-6 months    LCNI-5           MALAWI                         11                    0       19     272
0-6 months    LCNI-5           MALAWI                         11                    1       11     272
0-6 months    LCNI-5           MALAWI                         12                    0       19     272
0-6 months    LCNI-5           MALAWI                         12                    1        9     272
0-6 months    MAL-ED           BANGLADESH                     1                     0       15     265
0-6 months    MAL-ED           BANGLADESH                     1                     1        6     265
0-6 months    MAL-ED           BANGLADESH                     2                     0       13     265
0-6 months    MAL-ED           BANGLADESH                     2                     1       12     265
0-6 months    MAL-ED           BANGLADESH                     3                     0       12     265
0-6 months    MAL-ED           BANGLADESH                     3                     1       13     265
0-6 months    MAL-ED           BANGLADESH                     4                     0       21     265
0-6 months    MAL-ED           BANGLADESH                     4                     1        1     265
0-6 months    MAL-ED           BANGLADESH                     5                     0       12     265
0-6 months    MAL-ED           BANGLADESH                     5                     1       10     265
0-6 months    MAL-ED           BANGLADESH                     6                     0        6     265
0-6 months    MAL-ED           BANGLADESH                     6                     1        5     265
0-6 months    MAL-ED           BANGLADESH                     7                     0       12     265
0-6 months    MAL-ED           BANGLADESH                     7                     1        8     265
0-6 months    MAL-ED           BANGLADESH                     8                     0       16     265
0-6 months    MAL-ED           BANGLADESH                     8                     1       10     265
0-6 months    MAL-ED           BANGLADESH                     9                     0       16     265
0-6 months    MAL-ED           BANGLADESH                     9                     1        7     265
0-6 months    MAL-ED           BANGLADESH                     10                    0       15     265
0-6 months    MAL-ED           BANGLADESH                     10                    1       10     265
0-6 months    MAL-ED           BANGLADESH                     11                    0       12     265
0-6 months    MAL-ED           BANGLADESH                     11                    1        5     265
0-6 months    MAL-ED           BANGLADESH                     12                    0       20     265
0-6 months    MAL-ED           BANGLADESH                     12                    1        8     265
0-6 months    MAL-ED           BRAZIL                         1                     0       13     233
0-6 months    MAL-ED           BRAZIL                         1                     1        2     233
0-6 months    MAL-ED           BRAZIL                         2                     0       19     233
0-6 months    MAL-ED           BRAZIL                         2                     1        6     233
0-6 months    MAL-ED           BRAZIL                         3                     0       16     233
0-6 months    MAL-ED           BRAZIL                         3                     1        4     233
0-6 months    MAL-ED           BRAZIL                         4                     0       10     233
0-6 months    MAL-ED           BRAZIL                         4                     1        2     233
0-6 months    MAL-ED           BRAZIL                         5                     0       18     233
0-6 months    MAL-ED           BRAZIL                         5                     1        5     233
0-6 months    MAL-ED           BRAZIL                         6                     0        6     233
0-6 months    MAL-ED           BRAZIL                         6                     1        3     233
0-6 months    MAL-ED           BRAZIL                         7                     0       13     233
0-6 months    MAL-ED           BRAZIL                         7                     1        5     233
0-6 months    MAL-ED           BRAZIL                         8                     0       15     233
0-6 months    MAL-ED           BRAZIL                         8                     1        6     233
0-6 months    MAL-ED           BRAZIL                         9                     0       24     233
0-6 months    MAL-ED           BRAZIL                         9                     1        8     233
0-6 months    MAL-ED           BRAZIL                         10                    0       18     233
0-6 months    MAL-ED           BRAZIL                         10                    1        3     233
0-6 months    MAL-ED           BRAZIL                         11                    0       20     233
0-6 months    MAL-ED           BRAZIL                         11                    1        2     233
0-6 months    MAL-ED           BRAZIL                         12                    0        9     233
0-6 months    MAL-ED           BRAZIL                         12                    1        6     233
0-6 months    MAL-ED           INDIA                          1                     0       11     251
0-6 months    MAL-ED           INDIA                          1                     1        9     251
0-6 months    MAL-ED           INDIA                          2                     0       19     251
0-6 months    MAL-ED           INDIA                          2                     1        2     251
0-6 months    MAL-ED           INDIA                          3                     0       15     251
0-6 months    MAL-ED           INDIA                          3                     1        8     251
0-6 months    MAL-ED           INDIA                          4                     0       11     251
0-6 months    MAL-ED           INDIA                          4                     1        6     251
0-6 months    MAL-ED           INDIA                          5                     0        6     251
0-6 months    MAL-ED           INDIA                          5                     1        2     251
0-6 months    MAL-ED           INDIA                          6                     0       17     251
0-6 months    MAL-ED           INDIA                          6                     1        3     251
0-6 months    MAL-ED           INDIA                          7                     0       14     251
0-6 months    MAL-ED           INDIA                          7                     1       11     251
0-6 months    MAL-ED           INDIA                          8                     0       15     251
0-6 months    MAL-ED           INDIA                          8                     1        9     251
0-6 months    MAL-ED           INDIA                          9                     0       16     251
0-6 months    MAL-ED           INDIA                          9                     1        7     251
0-6 months    MAL-ED           INDIA                          10                    0       15     251
0-6 months    MAL-ED           INDIA                          10                    1       11     251
0-6 months    MAL-ED           INDIA                          11                    0       14     251
0-6 months    MAL-ED           INDIA                          11                    1       11     251
0-6 months    MAL-ED           INDIA                          12                    0       11     251
0-6 months    MAL-ED           INDIA                          12                    1        8     251
0-6 months    MAL-ED           NEPAL                          1                     0       14     240
0-6 months    MAL-ED           NEPAL                          1                     1        6     240
0-6 months    MAL-ED           NEPAL                          2                     0       17     240
0-6 months    MAL-ED           NEPAL                          2                     1        2     240
0-6 months    MAL-ED           NEPAL                          3                     0       14     240
0-6 months    MAL-ED           NEPAL                          3                     1        3     240
0-6 months    MAL-ED           NEPAL                          4                     0       19     240
0-6 months    MAL-ED           NEPAL                          4                     1        3     240
0-6 months    MAL-ED           NEPAL                          5                     0       17     240
0-6 months    MAL-ED           NEPAL                          5                     1        5     240
0-6 months    MAL-ED           NEPAL                          6                     0       17     240
0-6 months    MAL-ED           NEPAL                          6                     1        1     240
0-6 months    MAL-ED           NEPAL                          7                     0       16     240
0-6 months    MAL-ED           NEPAL                          7                     1        4     240
0-6 months    MAL-ED           NEPAL                          8                     0       20     240
0-6 months    MAL-ED           NEPAL                          8                     1        4     240
0-6 months    MAL-ED           NEPAL                          9                     0       14     240
0-6 months    MAL-ED           NEPAL                          9                     1        2     240
0-6 months    MAL-ED           NEPAL                          10                    0       18     240
0-6 months    MAL-ED           NEPAL                          10                    1        3     240
0-6 months    MAL-ED           NEPAL                          11                    0       18     240
0-6 months    MAL-ED           NEPAL                          11                    1        6     240
0-6 months    MAL-ED           NEPAL                          12                    0       13     240
0-6 months    MAL-ED           NEPAL                          12                    1        4     240
0-6 months    MAL-ED           PERU                           1                     0       23     303
0-6 months    MAL-ED           PERU                           1                     1       19     303
0-6 months    MAL-ED           PERU                           2                     0       11     303
0-6 months    MAL-ED           PERU                           2                     1       12     303
0-6 months    MAL-ED           PERU                           3                     0       14     303
0-6 months    MAL-ED           PERU                           3                     1        9     303
0-6 months    MAL-ED           PERU                           4                     0       14     303
0-6 months    MAL-ED           PERU                           4                     1        7     303
0-6 months    MAL-ED           PERU                           5                     0       16     303
0-6 months    MAL-ED           PERU                           5                     1       12     303
0-6 months    MAL-ED           PERU                           6                     0        9     303
0-6 months    MAL-ED           PERU                           6                     1        8     303
0-6 months    MAL-ED           PERU                           7                     0       12     303
0-6 months    MAL-ED           PERU                           7                     1       12     303
0-6 months    MAL-ED           PERU                           8                     0       15     303
0-6 months    MAL-ED           PERU                           8                     1        4     303
0-6 months    MAL-ED           PERU                           9                     0       14     303
0-6 months    MAL-ED           PERU                           9                     1        9     303
0-6 months    MAL-ED           PERU                           10                    0       19     303
0-6 months    MAL-ED           PERU                           10                    1        8     303
0-6 months    MAL-ED           PERU                           11                    0       13     303
0-6 months    MAL-ED           PERU                           11                    1       20     303
0-6 months    MAL-ED           PERU                           12                    0       14     303
0-6 months    MAL-ED           PERU                           12                    1        9     303
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0       27     314
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1       15     314
0-6 months    MAL-ED           SOUTH AFRICA                   2                     0       21     314
0-6 months    MAL-ED           SOUTH AFRICA                   2                     1        9     314
0-6 months    MAL-ED           SOUTH AFRICA                   3                     0       14     314
0-6 months    MAL-ED           SOUTH AFRICA                   3                     1        4     314
0-6 months    MAL-ED           SOUTH AFRICA                   4                     0       11     314
0-6 months    MAL-ED           SOUTH AFRICA                   4                     1        4     314
0-6 months    MAL-ED           SOUTH AFRICA                   5                     0       13     314
0-6 months    MAL-ED           SOUTH AFRICA                   5                     1        3     314
0-6 months    MAL-ED           SOUTH AFRICA                   6                     0       15     314
0-6 months    MAL-ED           SOUTH AFRICA                   6                     1        8     314
0-6 months    MAL-ED           SOUTH AFRICA                   7                     0       13     314
0-6 months    MAL-ED           SOUTH AFRICA                   7                     1       13     314
0-6 months    MAL-ED           SOUTH AFRICA                   8                     0        7     314
0-6 months    MAL-ED           SOUTH AFRICA                   8                     1        5     314
0-6 months    MAL-ED           SOUTH AFRICA                   9                     0       18     314
0-6 months    MAL-ED           SOUTH AFRICA                   9                     1        7     314
0-6 months    MAL-ED           SOUTH AFRICA                   10                    0       19     314
0-6 months    MAL-ED           SOUTH AFRICA                   10                    1       12     314
0-6 months    MAL-ED           SOUTH AFRICA                   11                    0       15     314
0-6 months    MAL-ED           SOUTH AFRICA                   11                    1       16     314
0-6 months    MAL-ED           SOUTH AFRICA                   12                    0       25     314
0-6 months    MAL-ED           SOUTH AFRICA                   12                    1       20     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       13     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        7     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0       17     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1       14     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0        8     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1       11     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0        5     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        5     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0       14     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1        6     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0       12     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1        7     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0       13     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1       10     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        8     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        4     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0       13     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1       10     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        8     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1       16     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0       20     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1        7     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0       22     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1       12     262
0-6 months    NIH-Birth        BANGLADESH                     1                     0       38     629
0-6 months    NIH-Birth        BANGLADESH                     1                     1       35     629
0-6 months    NIH-Birth        BANGLADESH                     2                     0       39     629
0-6 months    NIH-Birth        BANGLADESH                     2                     1       19     629
0-6 months    NIH-Birth        BANGLADESH                     3                     0       46     629
0-6 months    NIH-Birth        BANGLADESH                     3                     1       13     629
0-6 months    NIH-Birth        BANGLADESH                     4                     0       36     629
0-6 months    NIH-Birth        BANGLADESH                     4                     1       17     629
0-6 months    NIH-Birth        BANGLADESH                     5                     0       35     629
0-6 months    NIH-Birth        BANGLADESH                     5                     1       14     629
0-6 months    NIH-Birth        BANGLADESH                     6                     0       29     629
0-6 months    NIH-Birth        BANGLADESH                     6                     1       21     629
0-6 months    NIH-Birth        BANGLADESH                     7                     0       25     629
0-6 months    NIH-Birth        BANGLADESH                     7                     1       16     629
0-6 months    NIH-Birth        BANGLADESH                     8                     0       27     629
0-6 months    NIH-Birth        BANGLADESH                     8                     1       14     629
0-6 months    NIH-Birth        BANGLADESH                     9                     0       28     629
0-6 months    NIH-Birth        BANGLADESH                     9                     1       20     629
0-6 months    NIH-Birth        BANGLADESH                     10                    0       34     629
0-6 months    NIH-Birth        BANGLADESH                     10                    1       15     629
0-6 months    NIH-Birth        BANGLADESH                     11                    0       29     629
0-6 months    NIH-Birth        BANGLADESH                     11                    1       24     629
0-6 months    NIH-Birth        BANGLADESH                     12                    0       43     629
0-6 months    NIH-Birth        BANGLADESH                     12                    1       12     629
0-6 months    PROBIT           BELARUS                        1                     0      951   16892
0-6 months    PROBIT           BELARUS                        1                     1       74   16892
0-6 months    PROBIT           BELARUS                        2                     0      918   16892
0-6 months    PROBIT           BELARUS                        2                     1       65   16892
0-6 months    PROBIT           BELARUS                        3                     0     1068   16892
0-6 months    PROBIT           BELARUS                        3                     1       77   16892
0-6 months    PROBIT           BELARUS                        4                     0     1089   16892
0-6 months    PROBIT           BELARUS                        4                     1       72   16892
0-6 months    PROBIT           BELARUS                        5                     0     1107   16892
0-6 months    PROBIT           BELARUS                        5                     1       67   16892
0-6 months    PROBIT           BELARUS                        6                     0     1153   16892
0-6 months    PROBIT           BELARUS                        6                     1       58   16892
0-6 months    PROBIT           BELARUS                        7                     0     1478   16892
0-6 months    PROBIT           BELARUS                        7                     1      112   16892
0-6 months    PROBIT           BELARUS                        8                     0     1505   16892
0-6 months    PROBIT           BELARUS                        8                     1       82   16892
0-6 months    PROBIT           BELARUS                        9                     0     1496   16892
0-6 months    PROBIT           BELARUS                        9                     1      131   16892
0-6 months    PROBIT           BELARUS                        10                    0     1675   16892
0-6 months    PROBIT           BELARUS                        10                    1      139   16892
0-6 months    PROBIT           BELARUS                        11                    0     1555   16892
0-6 months    PROBIT           BELARUS                        11                    1      147   16892
0-6 months    PROBIT           BELARUS                        12                    0     1738   16892
0-6 months    PROBIT           BELARUS                        12                    1      135   16892
0-6 months    PROVIDE          BANGLADESH                     1                     0       31     700
0-6 months    PROVIDE          BANGLADESH                     1                     1        7     700
0-6 months    PROVIDE          BANGLADESH                     2                     0       20     700
0-6 months    PROVIDE          BANGLADESH                     2                     1       15     700
0-6 months    PROVIDE          BANGLADESH                     3                     0       43     700
0-6 months    PROVIDE          BANGLADESH                     3                     1       10     700
0-6 months    PROVIDE          BANGLADESH                     4                     0       32     700
0-6 months    PROVIDE          BANGLADESH                     4                     1        7     700
0-6 months    PROVIDE          BANGLADESH                     5                     0       44     700
0-6 months    PROVIDE          BANGLADESH                     5                     1        8     700
0-6 months    PROVIDE          BANGLADESH                     6                     0       69     700
0-6 months    PROVIDE          BANGLADESH                     6                     1       25     700
0-6 months    PROVIDE          BANGLADESH                     7                     0       68     700
0-6 months    PROVIDE          BANGLADESH                     7                     1       24     700
0-6 months    PROVIDE          BANGLADESH                     8                     0       52     700
0-6 months    PROVIDE          BANGLADESH                     8                     1       17     700
0-6 months    PROVIDE          BANGLADESH                     9                     0       63     700
0-6 months    PROVIDE          BANGLADESH                     9                     1       13     700
0-6 months    PROVIDE          BANGLADESH                     10                    0       59     700
0-6 months    PROVIDE          BANGLADESH                     10                    1       20     700
0-6 months    PROVIDE          BANGLADESH                     11                    0       25     700
0-6 months    PROVIDE          BANGLADESH                     11                    1       17     700
0-6 months    PROVIDE          BANGLADESH                     12                    0       26     700
0-6 months    PROVIDE          BANGLADESH                     12                    1        5     700
0-6 months    ResPak           PAKISTAN                       1                     0        3     282
0-6 months    ResPak           PAKISTAN                       1                     1        9     282
0-6 months    ResPak           PAKISTAN                       2                     0        6     282
0-6 months    ResPak           PAKISTAN                       2                     1        5     282
0-6 months    ResPak           PAKISTAN                       3                     0       10     282
0-6 months    ResPak           PAKISTAN                       3                     1       17     282
0-6 months    ResPak           PAKISTAN                       4                     0        9     282
0-6 months    ResPak           PAKISTAN                       4                     1       21     282
0-6 months    ResPak           PAKISTAN                       5                     0       22     282
0-6 months    ResPak           PAKISTAN                       5                     1       33     282
0-6 months    ResPak           PAKISTAN                       6                     0       17     282
0-6 months    ResPak           PAKISTAN                       6                     1       29     282
0-6 months    ResPak           PAKISTAN                       7                     0        9     282
0-6 months    ResPak           PAKISTAN                       7                     1       22     282
0-6 months    ResPak           PAKISTAN                       8                     0       24     282
0-6 months    ResPak           PAKISTAN                       8                     1       17     282
0-6 months    ResPak           PAKISTAN                       9                     0       10     282
0-6 months    ResPak           PAKISTAN                       9                     1        6     282
0-6 months    ResPak           PAKISTAN                       10                    0        3     282
0-6 months    ResPak           PAKISTAN                       10                    1        3     282
0-6 months    ResPak           PAKISTAN                       11                    0        1     282
0-6 months    ResPak           PAKISTAN                       11                    1        3     282
0-6 months    ResPak           PAKISTAN                       12                    0        0     282
0-6 months    ResPak           PAKISTAN                       12                    1        3     282
0-6 months    SAS-CompFeed     INDIA                          1                     0       65    1530
0-6 months    SAS-CompFeed     INDIA                          1                     1       48    1530
0-6 months    SAS-CompFeed     INDIA                          2                     0       53    1530
0-6 months    SAS-CompFeed     INDIA                          2                     1       38    1530
0-6 months    SAS-CompFeed     INDIA                          3                     0       48    1530
0-6 months    SAS-CompFeed     INDIA                          3                     1       34    1530
0-6 months    SAS-CompFeed     INDIA                          4                     0       42    1530
0-6 months    SAS-CompFeed     INDIA                          4                     1       33    1530
0-6 months    SAS-CompFeed     INDIA                          5                     0       59    1530
0-6 months    SAS-CompFeed     INDIA                          5                     1       42    1530
0-6 months    SAS-CompFeed     INDIA                          6                     0       60    1530
0-6 months    SAS-CompFeed     INDIA                          6                     1       49    1530
0-6 months    SAS-CompFeed     INDIA                          7                     0       67    1530
0-6 months    SAS-CompFeed     INDIA                          7                     1       67    1530
0-6 months    SAS-CompFeed     INDIA                          8                     0       94    1530
0-6 months    SAS-CompFeed     INDIA                          8                     1       88    1530
0-6 months    SAS-CompFeed     INDIA                          9                     0      129    1530
0-6 months    SAS-CompFeed     INDIA                          9                     1       63    1530
0-6 months    SAS-CompFeed     INDIA                          10                    0       98    1530
0-6 months    SAS-CompFeed     INDIA                          10                    1       70    1530
0-6 months    SAS-CompFeed     INDIA                          11                    0       87    1530
0-6 months    SAS-CompFeed     INDIA                          11                    1       55    1530
0-6 months    SAS-CompFeed     INDIA                          12                    0       77    1530
0-6 months    SAS-CompFeed     INDIA                          12                    1       64    1530
0-6 months    SAS-FoodSuppl    INDIA                          1                     0       16     416
0-6 months    SAS-FoodSuppl    INDIA                          1                     1       10     416
0-6 months    SAS-FoodSuppl    INDIA                          2                     0       27     416
0-6 months    SAS-FoodSuppl    INDIA                          2                     1        9     416
0-6 months    SAS-FoodSuppl    INDIA                          3                     0       12     416
0-6 months    SAS-FoodSuppl    INDIA                          3                     1        9     416
0-6 months    SAS-FoodSuppl    INDIA                          4                     0        3     416
0-6 months    SAS-FoodSuppl    INDIA                          4                     1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          5                     0       11     416
0-6 months    SAS-FoodSuppl    INDIA                          5                     1        3     416
0-6 months    SAS-FoodSuppl    INDIA                          6                     0       13     416
0-6 months    SAS-FoodSuppl    INDIA                          6                     1       12     416
0-6 months    SAS-FoodSuppl    INDIA                          7                     0       26     416
0-6 months    SAS-FoodSuppl    INDIA                          7                     1       11     416
0-6 months    SAS-FoodSuppl    INDIA                          8                     0       44     416
0-6 months    SAS-FoodSuppl    INDIA                          8                     1       23     416
0-6 months    SAS-FoodSuppl    INDIA                          9                     0       34     416
0-6 months    SAS-FoodSuppl    INDIA                          9                     1       31     416
0-6 months    SAS-FoodSuppl    INDIA                          10                    0       26     416
0-6 months    SAS-FoodSuppl    INDIA                          10                    1       24     416
0-6 months    SAS-FoodSuppl    INDIA                          11                    0       19     416
0-6 months    SAS-FoodSuppl    INDIA                          11                    1       14     416
0-6 months    SAS-FoodSuppl    INDIA                          12                    0       23     416
0-6 months    SAS-FoodSuppl    INDIA                          12                    1       15     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      144    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       27    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      146    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       32    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      138    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       26    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      150    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       40    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      147    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       38    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      135    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       31    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      169    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       49    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      186    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       46    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      167    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       49    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      201    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       49    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      176    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       45    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      170    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       35    2396
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0     1004   14057
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1      356   14057
0-6 months    ZVITAMBO         ZIMBABWE                       2                     0      780   14057
0-6 months    ZVITAMBO         ZIMBABWE                       2                     1      290   14057
0-6 months    ZVITAMBO         ZIMBABWE                       3                     0      887   14057
0-6 months    ZVITAMBO         ZIMBABWE                       3                     1      313   14057
0-6 months    ZVITAMBO         ZIMBABWE                       4                     0      735   14057
0-6 months    ZVITAMBO         ZIMBABWE                       4                     1      272   14057
0-6 months    ZVITAMBO         ZIMBABWE                       5                     0      714   14057
0-6 months    ZVITAMBO         ZIMBABWE                       5                     1      322   14057
0-6 months    ZVITAMBO         ZIMBABWE                       6                     0      783   14057
0-6 months    ZVITAMBO         ZIMBABWE                       6                     1      371   14057
0-6 months    ZVITAMBO         ZIMBABWE                       7                     0      841   14057
0-6 months    ZVITAMBO         ZIMBABWE                       7                     1      340   14057
0-6 months    ZVITAMBO         ZIMBABWE                       8                     0      923   14057
0-6 months    ZVITAMBO         ZIMBABWE                       8                     1      343   14057
0-6 months    ZVITAMBO         ZIMBABWE                       9                     0     1044   14057
0-6 months    ZVITAMBO         ZIMBABWE                       9                     1      263   14057
0-6 months    ZVITAMBO         ZIMBABWE                       10                    0      820   14057
0-6 months    ZVITAMBO         ZIMBABWE                       10                    1      231   14057
0-6 months    ZVITAMBO         ZIMBABWE                       11                    0      930   14057
0-6 months    ZVITAMBO         ZIMBABWE                       11                    1      269   14057
0-6 months    ZVITAMBO         ZIMBABWE                       12                    0      960   14057
0-6 months    ZVITAMBO         ZIMBABWE                       12                    1      266   14057
6-24 months   CMC-V-BCS-2002   INDIA                          1                     0        3     185
6-24 months   CMC-V-BCS-2002   INDIA                          1                     1       11     185
6-24 months   CMC-V-BCS-2002   INDIA                          2                     0        1     185
6-24 months   CMC-V-BCS-2002   INDIA                          2                     1        9     185
6-24 months   CMC-V-BCS-2002   INDIA                          3                     0        0     185
6-24 months   CMC-V-BCS-2002   INDIA                          3                     1       19     185
6-24 months   CMC-V-BCS-2002   INDIA                          4                     0        8     185
6-24 months   CMC-V-BCS-2002   INDIA                          4                     1       20     185
6-24 months   CMC-V-BCS-2002   INDIA                          5                     0        1     185
6-24 months   CMC-V-BCS-2002   INDIA                          5                     1       18     185
6-24 months   CMC-V-BCS-2002   INDIA                          6                     0        2     185
6-24 months   CMC-V-BCS-2002   INDIA                          6                     1       14     185
6-24 months   CMC-V-BCS-2002   INDIA                          7                     0        4     185
6-24 months   CMC-V-BCS-2002   INDIA                          7                     1       12     185
6-24 months   CMC-V-BCS-2002   INDIA                          8                     0        2     185
6-24 months   CMC-V-BCS-2002   INDIA                          8                     1        7     185
6-24 months   CMC-V-BCS-2002   INDIA                          9                     0        0     185
6-24 months   CMC-V-BCS-2002   INDIA                          9                     1       11     185
6-24 months   CMC-V-BCS-2002   INDIA                          10                    0        3     185
6-24 months   CMC-V-BCS-2002   INDIA                          10                    1       10     185
6-24 months   CMC-V-BCS-2002   INDIA                          11                    0        4     185
6-24 months   CMC-V-BCS-2002   INDIA                          11                    1       18     185
6-24 months   CMC-V-BCS-2002   INDIA                          12                    0        0     185
6-24 months   CMC-V-BCS-2002   INDIA                          12                    1        8     185
6-24 months   CMIN             BANGLADESH                     1                     0        3     111
6-24 months   CMIN             BANGLADESH                     1                     1        7     111
6-24 months   CMIN             BANGLADESH                     2                     0        5     111
6-24 months   CMIN             BANGLADESH                     2                     1       10     111
6-24 months   CMIN             BANGLADESH                     3                     0        2     111
6-24 months   CMIN             BANGLADESH                     3                     1        8     111
6-24 months   CMIN             BANGLADESH                     4                     0        3     111
6-24 months   CMIN             BANGLADESH                     4                     1        9     111
6-24 months   CMIN             BANGLADESH                     5                     0        2     111
6-24 months   CMIN             BANGLADESH                     5                     1        5     111
6-24 months   CMIN             BANGLADESH                     6                     0        1     111
6-24 months   CMIN             BANGLADESH                     6                     1        1     111
6-24 months   CMIN             BANGLADESH                     7                     0        2     111
6-24 months   CMIN             BANGLADESH                     7                     1        7     111
6-24 months   CMIN             BANGLADESH                     8                     0        2     111
6-24 months   CMIN             BANGLADESH                     8                     1        3     111
6-24 months   CMIN             BANGLADESH                     9                     0        1     111
6-24 months   CMIN             BANGLADESH                     9                     1        7     111
6-24 months   CMIN             BANGLADESH                     10                    0        5     111
6-24 months   CMIN             BANGLADESH                     10                    1        8     111
6-24 months   CMIN             BANGLADESH                     11                    0        5     111
6-24 months   CMIN             BANGLADESH                     11                    1        7     111
6-24 months   CMIN             BANGLADESH                     12                    0        1     111
6-24 months   CMIN             BANGLADESH                     12                    1        7     111
6-24 months   CONTENT          PERU                           1                     0       10     188
6-24 months   CONTENT          PERU                           1                     1        0     188
6-24 months   CONTENT          PERU                           2                     0       14     188
6-24 months   CONTENT          PERU                           2                     1        4     188
6-24 months   CONTENT          PERU                           3                     0       23     188
6-24 months   CONTENT          PERU                           3                     1        2     188
6-24 months   CONTENT          PERU                           4                     0        8     188
6-24 months   CONTENT          PERU                           4                     1        8     188
6-24 months   CONTENT          PERU                           5                     0       10     188
6-24 months   CONTENT          PERU                           5                     1        1     188
6-24 months   CONTENT          PERU                           6                     0       11     188
6-24 months   CONTENT          PERU                           6                     1        2     188
6-24 months   CONTENT          PERU                           7                     0       21     188
6-24 months   CONTENT          PERU                           7                     1        1     188
6-24 months   CONTENT          PERU                           8                     0       16     188
6-24 months   CONTENT          PERU                           8                     1        2     188
6-24 months   CONTENT          PERU                           9                     0       21     188
6-24 months   CONTENT          PERU                           9                     1        2     188
6-24 months   CONTENT          PERU                           10                    0        9     188
6-24 months   CONTENT          PERU                           10                    1        4     188
6-24 months   CONTENT          PERU                           11                    0        8     188
6-24 months   CONTENT          PERU                           11                    1        0     188
6-24 months   CONTENT          PERU                           12                    0       11     188
6-24 months   CONTENT          PERU                           12                    1        0     188
6-24 months   EE               PAKISTAN                       1                     0       11      93
6-24 months   EE               PAKISTAN                       1                     1        8      93
6-24 months   EE               PAKISTAN                       2                     0        8      93
6-24 months   EE               PAKISTAN                       2                     1       12      93
6-24 months   EE               PAKISTAN                       3                     0        3      93
6-24 months   EE               PAKISTAN                       3                     1       12      93
6-24 months   EE               PAKISTAN                       4                     0        1      93
6-24 months   EE               PAKISTAN                       4                     1        1      93
6-24 months   EE               PAKISTAN                       5                     0        0      93
6-24 months   EE               PAKISTAN                       5                     1        0      93
6-24 months   EE               PAKISTAN                       6                     0        0      93
6-24 months   EE               PAKISTAN                       6                     1        0      93
6-24 months   EE               PAKISTAN                       7                     0        0      93
6-24 months   EE               PAKISTAN                       7                     1        0      93
6-24 months   EE               PAKISTAN                       8                     0        0      93
6-24 months   EE               PAKISTAN                       8                     1        0      93
6-24 months   EE               PAKISTAN                       9                     0        0      93
6-24 months   EE               PAKISTAN                       9                     1        0      93
6-24 months   EE               PAKISTAN                       10                    0        1      93
6-24 months   EE               PAKISTAN                       10                    1        1      93
6-24 months   EE               PAKISTAN                       11                    0        8      93
6-24 months   EE               PAKISTAN                       11                    1       13      93
6-24 months   EE               PAKISTAN                       12                    0        7      93
6-24 months   EE               PAKISTAN                       12                    1        7      93
6-24 months   GMS-Nepal        NEPAL                          1                     0        0     397
6-24 months   GMS-Nepal        NEPAL                          1                     1        0     397
6-24 months   GMS-Nepal        NEPAL                          2                     0        0     397
6-24 months   GMS-Nepal        NEPAL                          2                     1        0     397
6-24 months   GMS-Nepal        NEPAL                          3                     0        0     397
6-24 months   GMS-Nepal        NEPAL                          3                     1        0     397
6-24 months   GMS-Nepal        NEPAL                          4                     0        0     397
6-24 months   GMS-Nepal        NEPAL                          4                     1        0     397
6-24 months   GMS-Nepal        NEPAL                          5                     0        0     397
6-24 months   GMS-Nepal        NEPAL                          5                     1        0     397
6-24 months   GMS-Nepal        NEPAL                          6                     0       34     397
6-24 months   GMS-Nepal        NEPAL                          6                     1       52     397
6-24 months   GMS-Nepal        NEPAL                          7                     0       64     397
6-24 months   GMS-Nepal        NEPAL                          7                     1       90     397
6-24 months   GMS-Nepal        NEPAL                          8                     0       75     397
6-24 months   GMS-Nepal        NEPAL                          8                     1       82     397
6-24 months   GMS-Nepal        NEPAL                          9                     0        0     397
6-24 months   GMS-Nepal        NEPAL                          9                     1        0     397
6-24 months   GMS-Nepal        NEPAL                          10                    0        0     397
6-24 months   GMS-Nepal        NEPAL                          10                    1        0     397
6-24 months   GMS-Nepal        NEPAL                          11                    0        0     397
6-24 months   GMS-Nepal        NEPAL                          11                    1        0     397
6-24 months   GMS-Nepal        NEPAL                          12                    0        0     397
6-24 months   GMS-Nepal        NEPAL                          12                    1        0     397
6-24 months   Guatemala BSC    GUATEMALA                      1                     0        8     195
6-24 months   Guatemala BSC    GUATEMALA                      1                     1        7     195
6-24 months   Guatemala BSC    GUATEMALA                      2                     0       16     195
6-24 months   Guatemala BSC    GUATEMALA                      2                     1        4     195
6-24 months   Guatemala BSC    GUATEMALA                      3                     0       12     195
6-24 months   Guatemala BSC    GUATEMALA                      3                     1        6     195
6-24 months   Guatemala BSC    GUATEMALA                      4                     0       15     195
6-24 months   Guatemala BSC    GUATEMALA                      4                     1        5     195
6-24 months   Guatemala BSC    GUATEMALA                      5                     0       13     195
6-24 months   Guatemala BSC    GUATEMALA                      5                     1        6     195
6-24 months   Guatemala BSC    GUATEMALA                      6                     0        8     195
6-24 months   Guatemala BSC    GUATEMALA                      6                     1        4     195
6-24 months   Guatemala BSC    GUATEMALA                      7                     0       11     195
6-24 months   Guatemala BSC    GUATEMALA                      7                     1        4     195
6-24 months   Guatemala BSC    GUATEMALA                      8                     0        5     195
6-24 months   Guatemala BSC    GUATEMALA                      8                     1        3     195
6-24 months   Guatemala BSC    GUATEMALA                      9                     0        2     195
6-24 months   Guatemala BSC    GUATEMALA                      9                     1        6     195
6-24 months   Guatemala BSC    GUATEMALA                      10                    0       12     195
6-24 months   Guatemala BSC    GUATEMALA                      10                    1       11     195
6-24 months   Guatemala BSC    GUATEMALA                      11                    0        9     195
6-24 months   Guatemala BSC    GUATEMALA                      11                    1        6     195
6-24 months   Guatemala BSC    GUATEMALA                      12                    0       10     195
6-24 months   Guatemala BSC    GUATEMALA                      12                    1       12     195
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      212    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1      111    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                     0      124    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                     1       57    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                     0      123    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                     1       74    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                     0      123    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                     1       86    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                     0      139    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                     1       79    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                     0      127    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                     1       65    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                     0      120    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                     1       76    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                     0      197    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                     1      106    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                     0      251    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                     1      160    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                    0      250    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                    1      122    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                    0      211    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                    1      131    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                    0      205    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                    1      116    3265
6-24 months   IRC              INDIA                          1                     0       11     236
6-24 months   IRC              INDIA                          1                     1       12     236
6-24 months   IRC              INDIA                          2                     0        8     236
6-24 months   IRC              INDIA                          2                     1        5     236
6-24 months   IRC              INDIA                          3                     0        9     236
6-24 months   IRC              INDIA                          3                     1        7     236
6-24 months   IRC              INDIA                          4                     0        4     236
6-24 months   IRC              INDIA                          4                     1        7     236
6-24 months   IRC              INDIA                          5                     0        5     236
6-24 months   IRC              INDIA                          5                     1        6     236
6-24 months   IRC              INDIA                          6                     0       16     236
6-24 months   IRC              INDIA                          6                     1        7     236
6-24 months   IRC              INDIA                          7                     0       14     236
6-24 months   IRC              INDIA                          7                     1        6     236
6-24 months   IRC              INDIA                          8                     0       21     236
6-24 months   IRC              INDIA                          8                     1       10     236
6-24 months   IRC              INDIA                          9                     0        9     236
6-24 months   IRC              INDIA                          9                     1        6     236
6-24 months   IRC              INDIA                          10                    0       20     236
6-24 months   IRC              INDIA                          10                    1        5     236
6-24 months   IRC              INDIA                          11                    0       16     236
6-24 months   IRC              INDIA                          11                    1        9     236
6-24 months   IRC              INDIA                          12                    0       14     236
6-24 months   IRC              INDIA                          12                    1        9     236
6-24 months   JiVitA-3         BANGLADESH                     1                     0      616   10493
6-24 months   JiVitA-3         BANGLADESH                     1                     1      204   10493
6-24 months   JiVitA-3         BANGLADESH                     2                     0      529   10493
6-24 months   JiVitA-3         BANGLADESH                     2                     1      201   10493
6-24 months   JiVitA-3         BANGLADESH                     3                     0      751   10493
6-24 months   JiVitA-3         BANGLADESH                     3                     1      189   10493
6-24 months   JiVitA-3         BANGLADESH                     4                     0      631   10493
6-24 months   JiVitA-3         BANGLADESH                     4                     1      154   10493
6-24 months   JiVitA-3         BANGLADESH                     5                     0      589   10493
6-24 months   JiVitA-3         BANGLADESH                     5                     1      164   10493
6-24 months   JiVitA-3         BANGLADESH                     6                     0      656   10493
6-24 months   JiVitA-3         BANGLADESH                     6                     1      185   10493
6-24 months   JiVitA-3         BANGLADESH                     7                     0      694   10493
6-24 months   JiVitA-3         BANGLADESH                     7                     1      190   10493
6-24 months   JiVitA-3         BANGLADESH                     8                     0      792   10493
6-24 months   JiVitA-3         BANGLADESH                     8                     1      193   10493
6-24 months   JiVitA-3         BANGLADESH                     9                     0      801   10493
6-24 months   JiVitA-3         BANGLADESH                     9                     1      193   10493
6-24 months   JiVitA-3         BANGLADESH                     10                    0      770   10493
6-24 months   JiVitA-3         BANGLADESH                     10                    1      197   10493
6-24 months   JiVitA-3         BANGLADESH                     11                    0      717   10493
6-24 months   JiVitA-3         BANGLADESH                     11                    1      204   10493
6-24 months   JiVitA-3         BANGLADESH                     12                    0      678   10493
6-24 months   JiVitA-3         BANGLADESH                     12                    1      195   10493
6-24 months   JiVitA-4         BANGLADESH                     1                     0        0    3649
6-24 months   JiVitA-4         BANGLADESH                     1                     1        0    3649
6-24 months   JiVitA-4         BANGLADESH                     2                     0      398    3649
6-24 months   JiVitA-4         BANGLADESH                     2                     1      228    3649
6-24 months   JiVitA-4         BANGLADESH                     3                     0      427    3649
6-24 months   JiVitA-4         BANGLADESH                     3                     1      258    3649
6-24 months   JiVitA-4         BANGLADESH                     4                     0      303    3649
6-24 months   JiVitA-4         BANGLADESH                     4                     1      204    3649
6-24 months   JiVitA-4         BANGLADESH                     5                     0      270    3649
6-24 months   JiVitA-4         BANGLADESH                     5                     1      160    3649
6-24 months   JiVitA-4         BANGLADESH                     6                     0      183    3649
6-24 months   JiVitA-4         BANGLADESH                     6                     1      123    3649
6-24 months   JiVitA-4         BANGLADESH                     7                     0      195    3649
6-24 months   JiVitA-4         BANGLADESH                     7                     1      151    3649
6-24 months   JiVitA-4         BANGLADESH                     8                     0      230    3649
6-24 months   JiVitA-4         BANGLADESH                     8                     1      149    3649
6-24 months   JiVitA-4         BANGLADESH                     9                     0      193    3649
6-24 months   JiVitA-4         BANGLADESH                     9                     1       81    3649
6-24 months   JiVitA-4         BANGLADESH                     10                    0       71    3649
6-24 months   JiVitA-4         BANGLADESH                     10                    1       25    3649
6-24 months   JiVitA-4         BANGLADESH                     11                    0        0    3649
6-24 months   JiVitA-4         BANGLADESH                     11                    1        0    3649
6-24 months   JiVitA-4         BANGLADESH                     12                    0        0    3649
6-24 months   JiVitA-4         BANGLADESH                     12                    1        0    3649
6-24 months   Keneba           GAMBIA                         1                     0      143    2017
6-24 months   Keneba           GAMBIA                         1                     1       64    2017
6-24 months   Keneba           GAMBIA                         2                     0      119    2017
6-24 months   Keneba           GAMBIA                         2                     1       71    2017
6-24 months   Keneba           GAMBIA                         3                     0      134    2017
6-24 months   Keneba           GAMBIA                         3                     1       85    2017
6-24 months   Keneba           GAMBIA                         4                     0       90    2017
6-24 months   Keneba           GAMBIA                         4                     1       50    2017
6-24 months   Keneba           GAMBIA                         5                     0       83    2017
6-24 months   Keneba           GAMBIA                         5                     1       57    2017
6-24 months   Keneba           GAMBIA                         6                     0       65    2017
6-24 months   Keneba           GAMBIA                         6                     1       45    2017
6-24 months   Keneba           GAMBIA                         7                     0       60    2017
6-24 months   Keneba           GAMBIA                         7                     1       38    2017
6-24 months   Keneba           GAMBIA                         8                     0      110    2017
6-24 months   Keneba           GAMBIA                         8                     1       55    2017
6-24 months   Keneba           GAMBIA                         9                     0      102    2017
6-24 months   Keneba           GAMBIA                         9                     1       68    2017
6-24 months   Keneba           GAMBIA                         10                    0      150    2017
6-24 months   Keneba           GAMBIA                         10                    1       77    2017
6-24 months   Keneba           GAMBIA                         11                    0      118    2017
6-24 months   Keneba           GAMBIA                         11                    1       55    2017
6-24 months   Keneba           GAMBIA                         12                    0      119    2017
6-24 months   Keneba           GAMBIA                         12                    1       59    2017
6-24 months   LCNI-5           MALAWI                         1                     0       23     730
6-24 months   LCNI-5           MALAWI                         1                     1       33     730
6-24 months   LCNI-5           MALAWI                         2                     0       18     730
6-24 months   LCNI-5           MALAWI                         2                     1       28     730
6-24 months   LCNI-5           MALAWI                         3                     0       10     730
6-24 months   LCNI-5           MALAWI                         3                     1       14     730
6-24 months   LCNI-5           MALAWI                         4                     0       17     730
6-24 months   LCNI-5           MALAWI                         4                     1       19     730
6-24 months   LCNI-5           MALAWI                         5                     0       19     730
6-24 months   LCNI-5           MALAWI                         5                     1       22     730
6-24 months   LCNI-5           MALAWI                         6                     0       11     730
6-24 months   LCNI-5           MALAWI                         6                     1       20     730
6-24 months   LCNI-5           MALAWI                         7                     0       24     730
6-24 months   LCNI-5           MALAWI                         7                     1       37     730
6-24 months   LCNI-5           MALAWI                         8                     0       37     730
6-24 months   LCNI-5           MALAWI                         8                     1       48     730
6-24 months   LCNI-5           MALAWI                         9                     0       34     730
6-24 months   LCNI-5           MALAWI                         9                     1       38     730
6-24 months   LCNI-5           MALAWI                         10                    0       34     730
6-24 months   LCNI-5           MALAWI                         10                    1       67     730
6-24 months   LCNI-5           MALAWI                         11                    0       35     730
6-24 months   LCNI-5           MALAWI                         11                    1       57     730
6-24 months   LCNI-5           MALAWI                         12                    0       30     730
6-24 months   LCNI-5           MALAWI                         12                    1       55     730
6-24 months   MAL-ED           BANGLADESH                     1                     0        7     158
6-24 months   MAL-ED           BANGLADESH                     1                     1        7     158
6-24 months   MAL-ED           BANGLADESH                     2                     0        4     158
6-24 months   MAL-ED           BANGLADESH                     2                     1        6     158
6-24 months   MAL-ED           BANGLADESH                     3                     0        7     158
6-24 months   MAL-ED           BANGLADESH                     3                     1        4     158
6-24 months   MAL-ED           BANGLADESH                     4                     0       12     158
6-24 months   MAL-ED           BANGLADESH                     4                     1        9     158
6-24 months   MAL-ED           BANGLADESH                     5                     0        5     158
6-24 months   MAL-ED           BANGLADESH                     5                     1        7     158
6-24 months   MAL-ED           BANGLADESH                     6                     0        5     158
6-24 months   MAL-ED           BANGLADESH                     6                     1        1     158
6-24 months   MAL-ED           BANGLADESH                     7                     0        4     158
6-24 months   MAL-ED           BANGLADESH                     7                     1        6     158
6-24 months   MAL-ED           BANGLADESH                     8                     0       10     158
6-24 months   MAL-ED           BANGLADESH                     8                     1        6     158
6-24 months   MAL-ED           BANGLADESH                     9                     0        8     158
6-24 months   MAL-ED           BANGLADESH                     9                     1        6     158
6-24 months   MAL-ED           BANGLADESH                     10                    0       11     158
6-24 months   MAL-ED           BANGLADESH                     10                    1        2     158
6-24 months   MAL-ED           BANGLADESH                     11                    0        7     158
6-24 months   MAL-ED           BANGLADESH                     11                    1        4     158
6-24 months   MAL-ED           BANGLADESH                     12                    0       11     158
6-24 months   MAL-ED           BANGLADESH                     12                    1        9     158
6-24 months   MAL-ED           BRAZIL                         1                     0       12     163
6-24 months   MAL-ED           BRAZIL                         1                     1        1     163
6-24 months   MAL-ED           BRAZIL                         2                     0       14     163
6-24 months   MAL-ED           BRAZIL                         2                     1        2     163
6-24 months   MAL-ED           BRAZIL                         3                     0       13     163
6-24 months   MAL-ED           BRAZIL                         3                     1        0     163
6-24 months   MAL-ED           BRAZIL                         4                     0        9     163
6-24 months   MAL-ED           BRAZIL                         4                     1        0     163
6-24 months   MAL-ED           BRAZIL                         5                     0       15     163
6-24 months   MAL-ED           BRAZIL                         5                     1        2     163
6-24 months   MAL-ED           BRAZIL                         6                     0        6     163
6-24 months   MAL-ED           BRAZIL                         6                     1        0     163
6-24 months   MAL-ED           BRAZIL                         7                     0        9     163
6-24 months   MAL-ED           BRAZIL                         7                     1        3     163
6-24 months   MAL-ED           BRAZIL                         8                     0       11     163
6-24 months   MAL-ED           BRAZIL                         8                     1        0     163
6-24 months   MAL-ED           BRAZIL                         9                     0       22     163
6-24 months   MAL-ED           BRAZIL                         9                     1        1     163
6-24 months   MAL-ED           BRAZIL                         10                    0       16     163
6-24 months   MAL-ED           BRAZIL                         10                    1        1     163
6-24 months   MAL-ED           BRAZIL                         11                    0       18     163
6-24 months   MAL-ED           BRAZIL                         11                    1        1     163
6-24 months   MAL-ED           BRAZIL                         12                    0        7     163
6-24 months   MAL-ED           BRAZIL                         12                    1        0     163
6-24 months   MAL-ED           INDIA                          1                     0        4     154
6-24 months   MAL-ED           INDIA                          1                     1        7     154
6-24 months   MAL-ED           INDIA                          2                     0       11     154
6-24 months   MAL-ED           INDIA                          2                     1        5     154
6-24 months   MAL-ED           INDIA                          3                     0       10     154
6-24 months   MAL-ED           INDIA                          3                     1        5     154
6-24 months   MAL-ED           INDIA                          4                     0        5     154
6-24 months   MAL-ED           INDIA                          4                     1        5     154
6-24 months   MAL-ED           INDIA                          5                     0        3     154
6-24 months   MAL-ED           INDIA                          5                     1        3     154
6-24 months   MAL-ED           INDIA                          6                     0        9     154
6-24 months   MAL-ED           INDIA                          6                     1        7     154
6-24 months   MAL-ED           INDIA                          7                     0       10     154
6-24 months   MAL-ED           INDIA                          7                     1        3     154
6-24 months   MAL-ED           INDIA                          8                     0        6     154
6-24 months   MAL-ED           INDIA                          8                     1        8     154
6-24 months   MAL-ED           INDIA                          9                     0        7     154
6-24 months   MAL-ED           INDIA                          9                     1        6     154
6-24 months   MAL-ED           INDIA                          10                    0        9     154
6-24 months   MAL-ED           INDIA                          10                    1        6     154
6-24 months   MAL-ED           INDIA                          11                    0        8     154
6-24 months   MAL-ED           INDIA                          11                    1        6     154
6-24 months   MAL-ED           INDIA                          12                    0        7     154
6-24 months   MAL-ED           INDIA                          12                    1        4     154
6-24 months   MAL-ED           NEPAL                          1                     0       12     194
6-24 months   MAL-ED           NEPAL                          1                     1        2     194
6-24 months   MAL-ED           NEPAL                          2                     0       12     194
6-24 months   MAL-ED           NEPAL                          2                     1        5     194
6-24 months   MAL-ED           NEPAL                          3                     0        7     194
6-24 months   MAL-ED           NEPAL                          3                     1        7     194
6-24 months   MAL-ED           NEPAL                          4                     0       17     194
6-24 months   MAL-ED           NEPAL                          4                     1        2     194
6-24 months   MAL-ED           NEPAL                          5                     0       11     194
6-24 months   MAL-ED           NEPAL                          5                     1        5     194
6-24 months   MAL-ED           NEPAL                          6                     0       15     194
6-24 months   MAL-ED           NEPAL                          6                     1        2     194
6-24 months   MAL-ED           NEPAL                          7                     0       13     194
6-24 months   MAL-ED           NEPAL                          7                     1        2     194
6-24 months   MAL-ED           NEPAL                          8                     0       17     194
6-24 months   MAL-ED           NEPAL                          8                     1        3     194
6-24 months   MAL-ED           NEPAL                          9                     0       12     194
6-24 months   MAL-ED           NEPAL                          9                     1        1     194
6-24 months   MAL-ED           NEPAL                          10                    0       15     194
6-24 months   MAL-ED           NEPAL                          10                    1        3     194
6-24 months   MAL-ED           NEPAL                          11                    0       12     194
6-24 months   MAL-ED           NEPAL                          11                    1        6     194
6-24 months   MAL-ED           NEPAL                          12                    0       10     194
6-24 months   MAL-ED           NEPAL                          12                    1        3     194
6-24 months   MAL-ED           PERU                           1                     0       15     149
6-24 months   MAL-ED           PERU                           1                     1        5     149
6-24 months   MAL-ED           PERU                           2                     0        5     149
6-24 months   MAL-ED           PERU                           2                     1        4     149
6-24 months   MAL-ED           PERU                           3                     0        9     149
6-24 months   MAL-ED           PERU                           3                     1        4     149
6-24 months   MAL-ED           PERU                           4                     0        6     149
6-24 months   MAL-ED           PERU                           4                     1        6     149
6-24 months   MAL-ED           PERU                           5                     0        8     149
6-24 months   MAL-ED           PERU                           5                     1        7     149
6-24 months   MAL-ED           PERU                           6                     0        5     149
6-24 months   MAL-ED           PERU                           6                     1        3     149
6-24 months   MAL-ED           PERU                           7                     0        4     149
6-24 months   MAL-ED           PERU                           7                     1        7     149
6-24 months   MAL-ED           PERU                           8                     0        7     149
6-24 months   MAL-ED           PERU                           8                     1        5     149
6-24 months   MAL-ED           PERU                           9                     0        9     149
6-24 months   MAL-ED           PERU                           9                     1        5     149
6-24 months   MAL-ED           PERU                           10                    0        9     149
6-24 months   MAL-ED           PERU                           10                    1        3     149
6-24 months   MAL-ED           PERU                           11                    0        8     149
6-24 months   MAL-ED           PERU                           11                    1        4     149
6-24 months   MAL-ED           PERU                           12                    0        5     149
6-24 months   MAL-ED           PERU                           12                    1        6     149
6-24 months   MAL-ED           SOUTH AFRICA                   1                     0       13     158
6-24 months   MAL-ED           SOUTH AFRICA                   1                     1       11     158
6-24 months   MAL-ED           SOUTH AFRICA                   2                     0        6     158
6-24 months   MAL-ED           SOUTH AFRICA                   2                     1        9     158
6-24 months   MAL-ED           SOUTH AFRICA                   3                     0        9     158
6-24 months   MAL-ED           SOUTH AFRICA                   3                     1        2     158
6-24 months   MAL-ED           SOUTH AFRICA                   4                     0        7     158
6-24 months   MAL-ED           SOUTH AFRICA                   4                     1        3     158
6-24 months   MAL-ED           SOUTH AFRICA                   5                     0        8     158
6-24 months   MAL-ED           SOUTH AFRICA                   5                     1        2     158
6-24 months   MAL-ED           SOUTH AFRICA                   6                     0        8     158
6-24 months   MAL-ED           SOUTH AFRICA                   6                     1        4     158
6-24 months   MAL-ED           SOUTH AFRICA                   7                     0        9     158
6-24 months   MAL-ED           SOUTH AFRICA                   7                     1        2     158
6-24 months   MAL-ED           SOUTH AFRICA                   8                     0        4     158
6-24 months   MAL-ED           SOUTH AFRICA                   8                     1        1     158
6-24 months   MAL-ED           SOUTH AFRICA                   9                     0        7     158
6-24 months   MAL-ED           SOUTH AFRICA                   9                     1        6     158
6-24 months   MAL-ED           SOUTH AFRICA                   10                    0        8     158
6-24 months   MAL-ED           SOUTH AFRICA                   10                    1        9     158
6-24 months   MAL-ED           SOUTH AFRICA                   11                    0        7     158
6-24 months   MAL-ED           SOUTH AFRICA                   11                    1        3     158
6-24 months   MAL-ED           SOUTH AFRICA                   12                    0       12     158
6-24 months   MAL-ED           SOUTH AFRICA                   12                    1        8     158
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        6     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        6     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0        5     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1       12     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0        3     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1        4     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0        1     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        3     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0        2     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1       11     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        1     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1       11     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0        5     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1        8     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        2     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        6     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        2     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1       10     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        1     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1        7     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        2     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1       18     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        1     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1       17     144
6-24 months   NIH-Birth        BANGLADESH                     1                     0       12     345
6-24 months   NIH-Birth        BANGLADESH                     1                     1       15     345
6-24 months   NIH-Birth        BANGLADESH                     2                     0       12     345
6-24 months   NIH-Birth        BANGLADESH                     2                     1       20     345
6-24 months   NIH-Birth        BANGLADESH                     3                     0       18     345
6-24 months   NIH-Birth        BANGLADESH                     3                     1       20     345
6-24 months   NIH-Birth        BANGLADESH                     4                     0       11     345
6-24 months   NIH-Birth        BANGLADESH                     4                     1       18     345
6-24 months   NIH-Birth        BANGLADESH                     5                     0       12     345
6-24 months   NIH-Birth        BANGLADESH                     5                     1       19     345
6-24 months   NIH-Birth        BANGLADESH                     6                     0       10     345
6-24 months   NIH-Birth        BANGLADESH                     6                     1       14     345
6-24 months   NIH-Birth        BANGLADESH                     7                     0       12     345
6-24 months   NIH-Birth        BANGLADESH                     7                     1       11     345
6-24 months   NIH-Birth        BANGLADESH                     8                     0        9     345
6-24 months   NIH-Birth        BANGLADESH                     8                     1       13     345
6-24 months   NIH-Birth        BANGLADESH                     9                     0       10     345
6-24 months   NIH-Birth        BANGLADESH                     9                     1       13     345
6-24 months   NIH-Birth        BANGLADESH                     10                    0       13     345
6-24 months   NIH-Birth        BANGLADESH                     10                    1       17     345
6-24 months   NIH-Birth        BANGLADESH                     11                    0       12     345
6-24 months   NIH-Birth        BANGLADESH                     11                    1       15     345
6-24 months   NIH-Birth        BANGLADESH                     12                    0       16     345
6-24 months   NIH-Birth        BANGLADESH                     12                    1       23     345
6-24 months   PROBIT           BELARUS                        1                     0      852   15467
6-24 months   PROBIT           BELARUS                        1                     1       88   15467
6-24 months   PROBIT           BELARUS                        2                     0      793   15467
6-24 months   PROBIT           BELARUS                        2                     1      113   15467
6-24 months   PROBIT           BELARUS                        3                     0      983   15467
6-24 months   PROBIT           BELARUS                        3                     1       70   15467
6-24 months   PROBIT           BELARUS                        4                     0     1008   15467
6-24 months   PROBIT           BELARUS                        4                     1       64   15467
6-24 months   PROBIT           BELARUS                        5                     0     1021   15467
6-24 months   PROBIT           BELARUS                        5                     1       61   15467
6-24 months   PROBIT           BELARUS                        6                     0     1062   15467
6-24 months   PROBIT           BELARUS                        6                     1       72   15467
6-24 months   PROBIT           BELARUS                        7                     0     1382   15467
6-24 months   PROBIT           BELARUS                        7                     1       65   15467
6-24 months   PROBIT           BELARUS                        8                     0     1401   15467
6-24 months   PROBIT           BELARUS                        8                     1       83   15467
6-24 months   PROBIT           BELARUS                        9                     0     1385   15467
6-24 months   PROBIT           BELARUS                        9                     1       71   15467
6-24 months   PROBIT           BELARUS                        10                    0     1561   15467
6-24 months   PROBIT           BELARUS                        10                    1       92   15467
6-24 months   PROBIT           BELARUS                        11                    0     1444   15467
6-24 months   PROBIT           BELARUS                        11                    1       89   15467
6-24 months   PROBIT           BELARUS                        12                    0     1581   15467
6-24 months   PROBIT           BELARUS                        12                    1      126   15467
6-24 months   PROVIDE          BANGLADESH                     1                     0       16     456
6-24 months   PROVIDE          BANGLADESH                     1                     1       14     456
6-24 months   PROVIDE          BANGLADESH                     2                     0       17     456
6-24 months   PROVIDE          BANGLADESH                     2                     1        3     456
6-24 months   PROVIDE          BANGLADESH                     3                     0       30     456
6-24 months   PROVIDE          BANGLADESH                     3                     1        5     456
6-24 months   PROVIDE          BANGLADESH                     4                     0       18     456
6-24 months   PROVIDE          BANGLADESH                     4                     1       11     456
6-24 months   PROVIDE          BANGLADESH                     5                     0       29     456
6-24 months   PROVIDE          BANGLADESH                     5                     1        7     456
6-24 months   PROVIDE          BANGLADESH                     6                     0       31     456
6-24 months   PROVIDE          BANGLADESH                     6                     1       23     456
6-24 months   PROVIDE          BANGLADESH                     7                     0       40     456
6-24 months   PROVIDE          BANGLADESH                     7                     1       14     456
6-24 months   PROVIDE          BANGLADESH                     8                     0       38     456
6-24 months   PROVIDE          BANGLADESH                     8                     1        8     456
6-24 months   PROVIDE          BANGLADESH                     9                     0       39     456
6-24 months   PROVIDE          BANGLADESH                     9                     1       17     456
6-24 months   PROVIDE          BANGLADESH                     10                    0       32     456
6-24 months   PROVIDE          BANGLADESH                     10                    1       18     456
6-24 months   PROVIDE          BANGLADESH                     11                    0       16     456
6-24 months   PROVIDE          BANGLADESH                     11                    1        6     456
6-24 months   PROVIDE          BANGLADESH                     12                    0       13     456
6-24 months   PROVIDE          BANGLADESH                     12                    1       11     456
6-24 months   ResPak           PAKISTAN                       1                     0        2      97
6-24 months   ResPak           PAKISTAN                       1                     1        1      97
6-24 months   ResPak           PAKISTAN                       2                     0        3      97
6-24 months   ResPak           PAKISTAN                       2                     1        3      97
6-24 months   ResPak           PAKISTAN                       3                     0        7      97
6-24 months   ResPak           PAKISTAN                       3                     1        3      97
6-24 months   ResPak           PAKISTAN                       4                     0        4      97
6-24 months   ResPak           PAKISTAN                       4                     1        1      97
6-24 months   ResPak           PAKISTAN                       5                     0       17      97
6-24 months   ResPak           PAKISTAN                       5                     1        2      97
6-24 months   ResPak           PAKISTAN                       6                     0       12      97
6-24 months   ResPak           PAKISTAN                       6                     1        2      97
6-24 months   ResPak           PAKISTAN                       7                     0        4      97
6-24 months   ResPak           PAKISTAN                       7                     1        2      97
6-24 months   ResPak           PAKISTAN                       8                     0       17      97
6-24 months   ResPak           PAKISTAN                       8                     1        3      97
6-24 months   ResPak           PAKISTAN                       9                     0        8      97
6-24 months   ResPak           PAKISTAN                       9                     1        2      97
6-24 months   ResPak           PAKISTAN                       10                    0        3      97
6-24 months   ResPak           PAKISTAN                       10                    1        0      97
6-24 months   ResPak           PAKISTAN                       11                    0        1      97
6-24 months   ResPak           PAKISTAN                       11                    1        0      97
6-24 months   ResPak           PAKISTAN                       12                    0        0      97
6-24 months   ResPak           PAKISTAN                       12                    1        0      97
6-24 months   SAS-CompFeed     INDIA                          1                     0       25     813
6-24 months   SAS-CompFeed     INDIA                          1                     1       30     813
6-24 months   SAS-CompFeed     INDIA                          2                     0       28     813
6-24 months   SAS-CompFeed     INDIA                          2                     1       20     813
6-24 months   SAS-CompFeed     INDIA                          3                     0       26     813
6-24 months   SAS-CompFeed     INDIA                          3                     1       20     813
6-24 months   SAS-CompFeed     INDIA                          4                     0       17     813
6-24 months   SAS-CompFeed     INDIA                          4                     1       24     813
6-24 months   SAS-CompFeed     INDIA                          5                     0       29     813
6-24 months   SAS-CompFeed     INDIA                          5                     1       29     813
6-24 months   SAS-CompFeed     INDIA                          6                     0       33     813
6-24 months   SAS-CompFeed     INDIA                          6                     1       21     813
6-24 months   SAS-CompFeed     INDIA                          7                     0       28     813
6-24 months   SAS-CompFeed     INDIA                          7                     1       36     813
6-24 months   SAS-CompFeed     INDIA                          8                     0       38     813
6-24 months   SAS-CompFeed     INDIA                          8                     1       52     813
6-24 months   SAS-CompFeed     INDIA                          9                     0       63     813
6-24 months   SAS-CompFeed     INDIA                          9                     1       58     813
6-24 months   SAS-CompFeed     INDIA                          10                    0       36     813
6-24 months   SAS-CompFeed     INDIA                          10                    1       50     813
6-24 months   SAS-CompFeed     INDIA                          11                    0       40     813
6-24 months   SAS-CompFeed     INDIA                          11                    1       37     813
6-24 months   SAS-CompFeed     INDIA                          12                    0       41     813
6-24 months   SAS-CompFeed     INDIA                          12                    1       32     813
6-24 months   SAS-FoodSuppl    INDIA                          1                     0        4     243
6-24 months   SAS-FoodSuppl    INDIA                          1                     1       12     243
6-24 months   SAS-FoodSuppl    INDIA                          2                     0        9     243
6-24 months   SAS-FoodSuppl    INDIA                          2                     1       17     243
6-24 months   SAS-FoodSuppl    INDIA                          3                     0        3     243
6-24 months   SAS-FoodSuppl    INDIA                          3                     1        9     243
6-24 months   SAS-FoodSuppl    INDIA                          4                     0        2     243
6-24 months   SAS-FoodSuppl    INDIA                          4                     1        1     243
6-24 months   SAS-FoodSuppl    INDIA                          5                     0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          5                     1        8     243
6-24 months   SAS-FoodSuppl    INDIA                          6                     0        1     243
6-24 months   SAS-FoodSuppl    INDIA                          6                     1       12     243
6-24 months   SAS-FoodSuppl    INDIA                          7                     0        8     243
6-24 months   SAS-FoodSuppl    INDIA                          7                     1       18     243
6-24 months   SAS-FoodSuppl    INDIA                          8                     0       11     243
6-24 months   SAS-FoodSuppl    INDIA                          8                     1       31     243
6-24 months   SAS-FoodSuppl    INDIA                          9                     0        6     243
6-24 months   SAS-FoodSuppl    INDIA                          9                     1       27     243
6-24 months   SAS-FoodSuppl    INDIA                          10                    0        5     243
6-24 months   SAS-FoodSuppl    INDIA                          10                    1       19     243
6-24 months   SAS-FoodSuppl    INDIA                          11                    0        5     243
6-24 months   SAS-FoodSuppl    INDIA                          11                    1       12     243
6-24 months   SAS-FoodSuppl    INDIA                          12                    0        4     243
6-24 months   SAS-FoodSuppl    INDIA                          12                    1       18     243
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       81    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       36    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      101    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       21    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0       85    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       32    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0       77    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       36    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0       89    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       23    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0       88    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       25    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      120    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       31    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      134    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       28    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      112    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       30    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      129    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       36    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      115    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       34    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      109    1602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       30    1602
6-24 months   ZVITAMBO         ZIMBABWE                       1                     0      609    8497
6-24 months   ZVITAMBO         ZIMBABWE                       1                     1      226    8497
6-24 months   ZVITAMBO         ZIMBABWE                       2                     0      466    8497
6-24 months   ZVITAMBO         ZIMBABWE                       2                     1      183    8497
6-24 months   ZVITAMBO         ZIMBABWE                       3                     0      513    8497
6-24 months   ZVITAMBO         ZIMBABWE                       3                     1      219    8497
6-24 months   ZVITAMBO         ZIMBABWE                       4                     0      457    8497
6-24 months   ZVITAMBO         ZIMBABWE                       4                     1      156    8497
6-24 months   ZVITAMBO         ZIMBABWE                       5                     0      423    8497
6-24 months   ZVITAMBO         ZIMBABWE                       5                     1      155    8497
6-24 months   ZVITAMBO         ZIMBABWE                       6                     0      485    8497
6-24 months   ZVITAMBO         ZIMBABWE                       6                     1      152    8497
6-24 months   ZVITAMBO         ZIMBABWE                       7                     0      516    8497
6-24 months   ZVITAMBO         ZIMBABWE                       7                     1      160    8497
6-24 months   ZVITAMBO         ZIMBABWE                       8                     0      545    8497
6-24 months   ZVITAMBO         ZIMBABWE                       8                     1      181    8497
6-24 months   ZVITAMBO         ZIMBABWE                       9                     0      645    8497
6-24 months   ZVITAMBO         ZIMBABWE                       9                     1      203    8497
6-24 months   ZVITAMBO         ZIMBABWE                       10                    0      455    8497
6-24 months   ZVITAMBO         ZIMBABWE                       10                    1      186    8497
6-24 months   ZVITAMBO         ZIMBABWE                       11                    0      567    8497
6-24 months   ZVITAMBO         ZIMBABWE                       11                    1      188    8497
6-24 months   ZVITAMBO         ZIMBABWE                       12                    0      581    8497
6-24 months   ZVITAMBO         ZIMBABWE                       12                    1      226    8497


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
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/f4dcec03-20d9-4d04-ad5b-51adf3b24d01/ad0e18c8-6603-4911-a278-81e2d203aa57/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f4dcec03-20d9-4d04-ad5b-51adf3b24d01/ad0e18c8-6603-4911-a278-81e2d203aa57/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f4dcec03-20d9-4d04-ad5b-51adf3b24d01/ad0e18c8-6603-4911-a278-81e2d203aa57/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f4dcec03-20d9-4d04-ad5b-51adf3b24d01/ad0e18c8-6603-4911-a278-81e2d203aa57/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3436533    0.2809428   0.4063637
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3149171    0.2325476   0.3972866
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                    NA                0.3756345    0.2958412   0.4554278
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                    NA                0.4114833    0.2953356   0.5276309
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                    NA                0.3623853    0.2960236   0.4287470
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                    NA                0.3385417    0.2543744   0.4227089
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                    NA                0.3877551    0.2718523   0.5036579
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                    NA                0.3498350    0.2867564   0.4129136
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                    NA                0.3892944    0.3250567   0.4535321
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                   NA                0.3279570    0.2443829   0.4115311
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3830409    0.2908783   0.4752036
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                   NA                0.3613707   -0.0187158   0.7414573
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.5181245    0.4981549   0.5380941
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.4900918    0.4675535   0.5126301
0-24 months   JiVitA-3         BANGLADESH                     3                    NA                0.4389642    0.4173110   0.4606175
0-24 months   JiVitA-3         BANGLADESH                     4                    NA                0.4375000    0.4133159   0.4616841
0-24 months   JiVitA-3         BANGLADESH                     5                    NA                0.4867925    0.4577093   0.5158756
0-24 months   JiVitA-3         BANGLADESH                     6                    NA                0.4689507    0.4398750   0.4980265
0-24 months   JiVitA-3         BANGLADESH                     7                    NA                0.4673016    0.4405913   0.4940118
0-24 months   JiVitA-3         BANGLADESH                     8                    NA                0.4860724    0.4635936   0.5085512
0-24 months   JiVitA-3         BANGLADESH                     9                    NA                0.4751697    0.4546546   0.4956848
0-24 months   JiVitA-3         BANGLADESH                     10                   NA                0.5156724    0.4953343   0.5360104
0-24 months   JiVitA-3         BANGLADESH                     11                   NA                0.5560656    0.5372113   0.5749198
0-24 months   JiVitA-3         BANGLADESH                     12                   NA                0.5321656    0.5134239   0.5509073
0-24 months   Keneba           GAMBIA                         1                    NA                0.4644068    0.4074850   0.5213286
0-24 months   Keneba           GAMBIA                         2                    NA                0.5039062    0.4426487   0.5651638
0-24 months   Keneba           GAMBIA                         3                    NA                0.5130719    0.4570596   0.5690842
0-24 months   Keneba           GAMBIA                         4                    NA                0.5025381    0.4327062   0.5723700
0-24 months   Keneba           GAMBIA                         5                    NA                0.5490196    0.4807260   0.6173132
0-24 months   Keneba           GAMBIA                         6                    NA                0.5460123    0.4695667   0.6224578
0-24 months   Keneba           GAMBIA                         7                    NA                0.5602837    0.4783423   0.6422251
0-24 months   Keneba           GAMBIA                         8                    NA                0.5084746    0.4446814   0.5722678
0-24 months   Keneba           GAMBIA                         9                    NA                0.5494071    0.4880872   0.6107270
0-24 months   Keneba           GAMBIA                         10                   NA                0.5257143    0.4733924   0.5780362
0-24 months   Keneba           GAMBIA                         11                   NA                0.4724409    0.4110343   0.5338475
0-24 months   Keneba           GAMBIA                         12                   NA                0.4961538    0.4353693   0.5569384
0-24 months   LCNI-5           MALAWI                         1                    NA                0.6470588    0.5334073   0.7607104
0-24 months   LCNI-5           MALAWI                         2                    NA                0.6086957    0.4675767   0.7498146
0-24 months   LCNI-5           MALAWI                         3                    NA                0.6153846    0.4282704   0.8024988
0-24 months   LCNI-5           MALAWI                         4                    NA                0.5641026    0.4083821   0.7198230
0-24 months   LCNI-5           MALAWI                         5                    NA                0.5227273    0.3750542   0.6704003
0-24 months   LCNI-5           MALAWI                         6                    NA                0.6764706    0.5191271   0.8338140
0-24 months   LCNI-5           MALAWI                         7                    NA                0.6129032    0.4915876   0.7342188
0-24 months   LCNI-5           MALAWI                         8                    NA                0.5913978    0.4914311   0.6913646
0-24 months   LCNI-5           MALAWI                         9                    NA                0.6236559    0.5251346   0.7221773
0-24 months   LCNI-5           MALAWI                         10                   NA                0.7111111    0.6346089   0.7876133
0-24 months   LCNI-5           MALAWI                         11                   NA                0.6476190    0.5561913   0.7390468
0-24 months   LCNI-5           MALAWI                         12                   NA                0.6736842    0.5793450   0.7680234
0-24 months   MAL-ED           BANGLADESH                     1                    NA                0.6190476    0.4109549   0.8271403
0-24 months   MAL-ED           BANGLADESH                     2                    NA                0.7200000    0.5436626   0.8963374
0-24 months   MAL-ED           BANGLADESH                     3                    NA                0.6800000    0.4967987   0.8632013
0-24 months   MAL-ED           BANGLADESH                     4                    NA                0.4545455    0.2460840   0.6630069
0-24 months   MAL-ED           BANGLADESH                     5                    NA                0.7727273    0.5972809   0.9481737
0-24 months   MAL-ED           BANGLADESH                     6                    NA                0.5454545    0.2506456   0.8402635
0-24 months   MAL-ED           BANGLADESH                     7                    NA                0.7000000    0.4987834   0.9012166
0-24 months   MAL-ED           BANGLADESH                     8                    NA                0.6153846    0.4280280   0.8027412
0-24 months   MAL-ED           BANGLADESH                     9                    NA                0.5652174    0.3622394   0.7681954
0-24 months   MAL-ED           BANGLADESH                     10                   NA                0.4800000    0.2837899   0.6762101
0-24 months   MAL-ED           BANGLADESH                     11                   NA                0.5294118    0.2916938   0.7671297
0-24 months   MAL-ED           BANGLADESH                     12                   NA                0.6071429    0.4259034   0.7883823
0-24 months   MAL-ED           PERU                           1                    NA                0.5714286    0.4215174   0.7213397
0-24 months   MAL-ED           PERU                           2                    NA                0.6956522    0.5072946   0.8840098
0-24 months   MAL-ED           PERU                           3                    NA                0.5652174    0.3622876   0.7681472
0-24 months   MAL-ED           PERU                           4                    NA                0.6190476    0.4110044   0.8270909
0-24 months   MAL-ED           PERU                           5                    NA                0.6785714    0.5053000   0.8518429
0-24 months   MAL-ED           PERU                           6                    NA                0.6470588    0.4195153   0.8746024
0-24 months   MAL-ED           PERU                           7                    NA                0.7916667    0.6289205   0.9544129
0-24 months   MAL-ED           PERU                           8                    NA                0.4736842    0.2488011   0.6985673
0-24 months   MAL-ED           PERU                           9                    NA                0.6086957    0.4089122   0.8084791
0-24 months   MAL-ED           PERU                           10                   NA                0.4074074    0.2217652   0.5930496
0-24 months   MAL-ED           PERU                           11                   NA                0.7272727    0.5750702   0.8794753
0-24 months   MAL-ED           PERU                           12                   NA                0.6521739    0.4572053   0.8471426
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.6190476    0.4719473   0.7661479
0-24 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.6000000    0.4244157   0.7755843
0-24 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.3333333    0.1152120   0.5514547
0-24 months   MAL-ED           SOUTH AFRICA                   4                    NA                0.4666667    0.2137963   0.7195370
0-24 months   MAL-ED           SOUTH AFRICA                   5                    NA                0.3125000    0.0850206   0.5399794
0-24 months   MAL-ED           SOUTH AFRICA                   6                    NA                0.5217391    0.3172661   0.7262121
0-24 months   MAL-ED           SOUTH AFRICA                   7                    NA                0.5769231    0.3867177   0.7671284
0-24 months   MAL-ED           SOUTH AFRICA                   8                    NA                0.5000000    0.2166520   0.7833480
0-24 months   MAL-ED           SOUTH AFRICA                   9                    NA                0.5200000    0.3238479   0.7161521
0-24 months   MAL-ED           SOUTH AFRICA                   10                   NA                0.6774194    0.5126001   0.8422386
0-24 months   MAL-ED           SOUTH AFRICA                   11                   NA                0.6129032    0.4411655   0.7846409
0-24 months   MAL-ED           SOUTH AFRICA                   12                   NA                0.6222222    0.4803408   0.7641036
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.6849315    0.5782822   0.7915809
0-24 months   NIH-Birth        BANGLADESH                     2                    NA                0.6724138    0.5515321   0.7932955
0-24 months   NIH-Birth        BANGLADESH                     3                    NA                0.5593220    0.4325396   0.6861045
0-24 months   NIH-Birth        BANGLADESH                     4                    NA                0.6603774    0.5327775   0.7879772
0-24 months   NIH-Birth        BANGLADESH                     5                    NA                0.6734694    0.5420630   0.8048758
0-24 months   NIH-Birth        BANGLADESH                     6                    NA                0.7000000    0.5728787   0.8271213
0-24 months   NIH-Birth        BANGLADESH                     7                    NA                0.6585366    0.5132707   0.8038025
0-24 months   NIH-Birth        BANGLADESH                     8                    NA                0.6585366    0.5132707   0.8038025
0-24 months   NIH-Birth        BANGLADESH                     9                    NA                0.6875000    0.5562696   0.8187304
0-24 months   NIH-Birth        BANGLADESH                     10                   NA                0.6530612    0.5196787   0.7864437
0-24 months   NIH-Birth        BANGLADESH                     11                   NA                0.7358491    0.6170601   0.8546380
0-24 months   NIH-Birth        BANGLADESH                     12                   NA                0.6363636    0.5091310   0.7635963
0-24 months   PROBIT           BELARUS                        1                    NA                0.1578947    0.1267696   0.1890199
0-24 months   PROBIT           BELARUS                        2                    NA                0.1810783    0.1471872   0.2149695
0-24 months   PROBIT           BELARUS                        3                    NA                0.1283843    0.1030505   0.1537181
0-24 months   PROBIT           BELARUS                        4                    NA                0.1169390    0.0962544   0.1376235
0-24 months   PROBIT           BELARUS                        5                    NA                0.1090290    0.0872307   0.1308273
0-24 months   PROBIT           BELARUS                        6                    NA                0.1073493    0.0802899   0.1344087
0-24 months   PROBIT           BELARUS                        7                    NA                0.1113208    0.0863177   0.1363239
0-24 months   PROBIT           BELARUS                        8                    NA                0.1039043    0.0798807   0.1279278
0-24 months   PROBIT           BELARUS                        9                    NA                0.1241549    0.0958809   0.1524289
0-24 months   PROBIT           BELARUS                        10                   NA                0.1273429    0.1073012   0.1473845
0-24 months   PROBIT           BELARUS                        11                   NA                0.1386604    0.1147140   0.1626068
0-24 months   PROBIT           BELARUS                        12                   NA                0.1392743    0.1141348   0.1644137
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.5526316    0.3944277   0.7108355
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.5142857    0.3485878   0.6799837
0-24 months   PROVIDE          BANGLADESH                     3                    NA                0.2830189    0.1616570   0.4043807
0-24 months   PROVIDE          BANGLADESH                     4                    NA                0.4615385    0.3049688   0.6181081
0-24 months   PROVIDE          BANGLADESH                     5                    NA                0.2884615    0.1652362   0.4116869
0-24 months   PROVIDE          BANGLADESH                     6                    NA                0.5106383    0.4095115   0.6117651
0-24 months   PROVIDE          BANGLADESH                     7                    NA                0.4130435    0.3123583   0.5137286
0-24 months   PROVIDE          BANGLADESH                     8                    NA                0.3623188    0.2488227   0.4758150
0-24 months   PROVIDE          BANGLADESH                     9                    NA                0.3947368    0.2847660   0.5047077
0-24 months   PROVIDE          BANGLADESH                     10                   NA                0.4810127    0.3707568   0.5912685
0-24 months   PROVIDE          BANGLADESH                     11                   NA                0.5476190    0.3969843   0.6982538
0-24 months   PROVIDE          BANGLADESH                     12                   NA                0.5161290    0.3400849   0.6921732
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.6902655    0.6351830   0.7453480
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.6373626    0.5015763   0.7731489
0-24 months   SAS-CompFeed     INDIA                          3                    NA                0.6585366    0.4963041   0.8207690
0-24 months   SAS-CompFeed     INDIA                          4                    NA                0.7600000    0.6667804   0.8532196
0-24 months   SAS-CompFeed     INDIA                          5                    NA                0.7029703    0.6475550   0.7583856
0-24 months   SAS-CompFeed     INDIA                          6                    NA                0.6422018    0.5771387   0.7072650
0-24 months   SAS-CompFeed     INDIA                          7                    NA                0.7573529    0.6797235   0.8349824
0-24 months   SAS-CompFeed     INDIA                          8                    NA                0.7692308    0.6974214   0.8410401
0-24 months   SAS-CompFeed     INDIA                          9                    NA                0.6302083    0.5481571   0.7122596
0-24 months   SAS-CompFeed     INDIA                          10                   NA                0.7142857    0.6550437   0.7735277
0-24 months   SAS-CompFeed     INDIA                          11                   NA                0.6478873    0.5758398   0.7199349
0-24 months   SAS-CompFeed     INDIA                          12                   NA                0.6760563    0.6031229   0.7489898
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3684211    0.2961063   0.4407358
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2977528    0.2305633   0.3649424
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3536585    0.2804705   0.4268465
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.4000000    0.3303265   0.4696735
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.3297297    0.2619723   0.3974872
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.3373494    0.2654100   0.4092888
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.3669725    0.3029786   0.4309664
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.3189655    0.2589793   0.3789517
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.3657407    0.3014968   0.4299846
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.3400000    0.2812673   0.3987327
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.3574661    0.2942674   0.4206647
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.3170732    0.2533601   0.3807863
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.4269993    0.4007385   0.4532600
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.4408201    0.4111124   0.4705279
0-24 months   ZVITAMBO         ZIMBABWE                       3                    NA                0.4414938    0.4134558   0.4695317
0-24 months   ZVITAMBO         ZIMBABWE                       4                    NA                0.4246032    0.3940885   0.4551178
0-24 months   ZVITAMBO         ZIMBABWE                       5                    NA                0.4595376    0.4292190   0.4898561
0-24 months   ZVITAMBO         ZIMBABWE                       6                    NA                0.4532062    0.4244839   0.4819286
0-24 months   ZVITAMBO         ZIMBABWE                       7                    NA                0.4230118    0.3948465   0.4511772
0-24 months   ZVITAMBO         ZIMBABWE                       8                    NA                0.4139021    0.3867701   0.4410340
0-24 months   ZVITAMBO         ZIMBABWE                       9                    NA                0.3565417    0.3305735   0.3825099
0-24 months   ZVITAMBO         ZIMBABWE                       10                   NA                0.3963878    0.3668285   0.4259472
0-24 months   ZVITAMBO         ZIMBABWE                       11                   NA                0.3808333    0.3533579   0.4083087
0-24 months   ZVITAMBO         ZIMBABWE                       12                   NA                0.4013051    0.3738667   0.4287434
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.5882353    0.4225822   0.7538884
0-6 months    CMC-V-BCS-2002   INDIA                          2                    NA                0.4000000    0.1517445   0.6482555
0-6 months    CMC-V-BCS-2002   INDIA                          3                    NA                0.3870968    0.2153993   0.5587942
0-6 months    CMC-V-BCS-2002   INDIA                          4                    NA                0.3636364    0.2213055   0.5059672
0-6 months    CMC-V-BCS-2002   INDIA                          5                    NA                0.4722222    0.3089221   0.6355223
0-6 months    CMC-V-BCS-2002   INDIA                          6                    NA                0.5833333    0.4220682   0.7445985
0-6 months    CMC-V-BCS-2002   INDIA                          7                    NA                0.5897436    0.4351591   0.7443281
0-6 months    CMC-V-BCS-2002   INDIA                          8                    NA                0.5294118    0.2918198   0.7670038
0-6 months    CMC-V-BCS-2002   INDIA                          9                    NA                0.4761905    0.2622927   0.6900883
0-6 months    CMC-V-BCS-2002   INDIA                          10                   NA                0.5517241    0.3704760   0.7329723
0-6 months    CMC-V-BCS-2002   INDIA                          11                   NA                0.5121951    0.3589849   0.6654054
0-6 months    CMC-V-BCS-2002   INDIA                          12                   NA                0.6800000    0.4968958   0.8631042
0-6 months    IRC              INDIA                          1                    NA                0.3947368    0.2391358   0.5503379
0-6 months    IRC              INDIA                          2                    NA                0.5357143    0.3507625   0.7206661
0-6 months    IRC              INDIA                          3                    NA                0.4074074    0.2218454   0.5929694
0-6 months    IRC              INDIA                          4                    NA                0.4761905    0.2623225   0.6900585
0-6 months    IRC              INDIA                          5                    NA                0.5000000    0.2908119   0.7091881
0-6 months    IRC              INDIA                          6                    NA                0.3783784    0.2219182   0.5348385
0-6 months    IRC              INDIA                          7                    NA                0.4444444    0.2819271   0.6069617
0-6 months    IRC              INDIA                          8                    NA                0.2954545    0.1604800   0.4304291
0-6 months    IRC              INDIA                          9                    NA                0.4444444    0.2567856   0.6321033
0-6 months    IRC              INDIA                          10                   NA                0.3421053    0.1910817   0.4931288
0-6 months    IRC              INDIA                          11                   NA                0.3750000    0.2247882   0.5252118
0-6 months    IRC              INDIA                          12                   NA                0.5576923    0.4225360   0.6928486
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.4387836    0.4183711   0.4591960
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.3935140    0.3713704   0.4156577
0-6 months    JiVitA-3         BANGLADESH                     3                    NA                0.3620264    0.3412842   0.3827685
0-6 months    JiVitA-3         BANGLADESH                     4                    NA                0.3515801    0.3276591   0.3755011
0-6 months    JiVitA-3         BANGLADESH                     5                    NA                0.3646702    0.3371075   0.3922329
0-6 months    JiVitA-3         BANGLADESH                     6                    NA                0.3388370    0.3110213   0.3666528
0-6 months    JiVitA-3         BANGLADESH                     7                    NA                0.3471074    0.3218477   0.3723672
0-6 months    JiVitA-3         BANGLADESH                     8                    NA                0.3968401    0.3743962   0.4192841
0-6 months    JiVitA-3         BANGLADESH                     9                    NA                0.4070892    0.3876629   0.4265154
0-6 months    JiVitA-3         BANGLADESH                     10                   NA                0.4506423    0.4301013   0.4711833
0-6 months    JiVitA-3         BANGLADESH                     11                   NA                0.4909510    0.4715967   0.5103053
0-6 months    JiVitA-3         BANGLADESH                     12                   NA                0.4706633    0.4516109   0.4897157
0-6 months    Keneba           GAMBIA                         1                    NA                0.2818533    0.2270503   0.3366563
0-6 months    Keneba           GAMBIA                         2                    NA                0.2685185    0.2094035   0.3276336
0-6 months    Keneba           GAMBIA                         3                    NA                0.2748092    0.2207428   0.3288755
0-6 months    Keneba           GAMBIA                         4                    NA                0.2934132    0.2243414   0.3624849
0-6 months    Keneba           GAMBIA                         5                    NA                0.3254438    0.2547893   0.3960983
0-6 months    Keneba           GAMBIA                         6                    NA                0.3120567    0.2355641   0.3885494
0-6 months    Keneba           GAMBIA                         7                    NA                0.3904762    0.2971434   0.4838090
0-6 months    Keneba           GAMBIA                         8                    NA                0.3282828    0.2628613   0.3937044
0-6 months    Keneba           GAMBIA                         9                    NA                0.3317757    0.2686781   0.3948733
0-6 months    Keneba           GAMBIA                         10                   NA                0.3689655    0.3134190   0.4245120
0-6 months    Keneba           GAMBIA                         11                   NA                0.2981651    0.2374281   0.3589022
0-6 months    Keneba           GAMBIA                         12                   NA                0.3097345    0.2494390   0.3700300
0-6 months    NIH-Birth        BANGLADESH                     1                    NA                0.4794521    0.3647595   0.5941446
0-6 months    NIH-Birth        BANGLADESH                     2                    NA                0.3275862    0.2067045   0.4484679
0-6 months    NIH-Birth        BANGLADESH                     3                    NA                0.2203390    0.1144950   0.3261830
0-6 months    NIH-Birth        BANGLADESH                     4                    NA                0.3207547    0.1949910   0.4465185
0-6 months    NIH-Birth        BANGLADESH                     5                    NA                0.2857143    0.1591248   0.4123037
0-6 months    NIH-Birth        BANGLADESH                     6                    NA                0.4200000    0.2830862   0.5569138
0-6 months    NIH-Birth        BANGLADESH                     7                    NA                0.3902439    0.2408105   0.5396773
0-6 months    NIH-Birth        BANGLADESH                     8                    NA                0.3414634    0.1961975   0.4867293
0-6 months    NIH-Birth        BANGLADESH                     9                    NA                0.4166667    0.2770858   0.5562475
0-6 months    NIH-Birth        BANGLADESH                     10                   NA                0.3061224    0.1769754   0.4352695
0-6 months    NIH-Birth        BANGLADESH                     11                   NA                0.4528302    0.3187130   0.5869474
0-6 months    NIH-Birth        BANGLADESH                     12                   NA                0.2181818    0.1089437   0.3274200
0-6 months    PROBIT           BELARUS                        1                    NA                0.0721951    0.0527580   0.0916322
0-6 months    PROBIT           BELARUS                        2                    NA                0.0661241    0.0447017   0.0875465
0-6 months    PROBIT           BELARUS                        3                    NA                0.0672489    0.0500019   0.0844959
0-6 months    PROBIT           BELARUS                        4                    NA                0.0620155    0.0443997   0.0796313
0-6 months    PROBIT           BELARUS                        5                    NA                0.0570698    0.0383079   0.0758318
0-6 months    PROBIT           BELARUS                        6                    NA                0.0478943    0.0338815   0.0619071
0-6 months    PROBIT           BELARUS                        7                    NA                0.0704403    0.0503449   0.0905356
0-6 months    PROBIT           BELARUS                        8                    NA                0.0516698    0.0343775   0.0689621
0-6 months    PROBIT           BELARUS                        9                    NA                0.0805163    0.0604956   0.1005370
0-6 months    PROBIT           BELARUS                        10                   NA                0.0766262    0.0624610   0.0907915
0-6 months    PROBIT           BELARUS                        11                   NA                0.0863690    0.0684465   0.1042915
0-6 months    PROBIT           BELARUS                        12                   NA                0.0720769    0.0541831   0.0899706
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.1842105    0.0608680   0.3075531
0-6 months    PROVIDE          BANGLADESH                     2                    NA                0.4285714    0.2645060   0.5926369
0-6 months    PROVIDE          BANGLADESH                     3                    NA                0.1886792    0.0832699   0.2940885
0-6 months    PROVIDE          BANGLADESH                     4                    NA                0.1794872    0.0589598   0.3000145
0-6 months    PROVIDE          BANGLADESH                     5                    NA                0.1538462    0.0557109   0.2519814
0-6 months    PROVIDE          BANGLADESH                     6                    NA                0.2659574    0.1765731   0.3553418
0-6 months    PROVIDE          BANGLADESH                     7                    NA                0.2608696    0.1710777   0.3506614
0-6 months    PROVIDE          BANGLADESH                     8                    NA                0.2463768    0.1446323   0.3481213
0-6 months    PROVIDE          BANGLADESH                     9                    NA                0.1710526    0.0863338   0.2557715
0-6 months    PROVIDE          BANGLADESH                     10                   NA                0.2531646    0.1572115   0.3491176
0-6 months    PROVIDE          BANGLADESH                     11                   NA                0.4047619    0.2562097   0.5533141
0-6 months    PROVIDE          BANGLADESH                     12                   NA                0.1612903    0.0317253   0.2908553
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.4247788    0.3481523   0.5014052
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.4175824    0.3469457   0.4882191
0-6 months    SAS-CompFeed     INDIA                          3                    NA                0.4146341    0.2925694   0.5366989
0-6 months    SAS-CompFeed     INDIA                          4                    NA                0.4400000    0.3026249   0.5773751
0-6 months    SAS-CompFeed     INDIA                          5                    NA                0.4158416    0.3208899   0.5107933
0-6 months    SAS-CompFeed     INDIA                          6                    NA                0.4495413    0.4022144   0.4968681
0-6 months    SAS-CompFeed     INDIA                          7                    NA                0.5000000    0.4062169   0.5937831
0-6 months    SAS-CompFeed     INDIA                          8                    NA                0.4835165    0.3845978   0.5824352
0-6 months    SAS-CompFeed     INDIA                          9                    NA                0.3281250    0.2874618   0.3687882
0-6 months    SAS-CompFeed     INDIA                          10                   NA                0.4166667    0.3490348   0.4842985
0-6 months    SAS-CompFeed     INDIA                          11                   NA                0.3873239    0.3154827   0.4591652
0-6 months    SAS-CompFeed     INDIA                          12                   NA                0.4539007    0.3802524   0.5275491
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1578947    0.1032299   0.2125595
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1797753    0.1233518   0.2361988
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1585366    0.1026253   0.2144478
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2105263    0.1525455   0.2685071
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2054054    0.1471774   0.2636334
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1867470    0.1274511   0.2460428
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2247706    0.1693470   0.2801943
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1982759    0.1469611   0.2495906
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2268519    0.1709901   0.2827136
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1960000    0.1467819   0.2452181
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2036199    0.1505177   0.2567222
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1707317    0.1192128   0.2222506
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.2617647    0.2384007   0.2851287
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.2710280    0.2443942   0.2976619
0-6 months    ZVITAMBO         ZIMBABWE                       3                    NA                0.2608333    0.2359891   0.2856776
0-6 months    ZVITAMBO         ZIMBABWE                       4                    NA                0.2701092    0.2426842   0.2975343
0-6 months    ZVITAMBO         ZIMBABWE                       5                    NA                0.3108108    0.2826269   0.3389947
0-6 months    ZVITAMBO         ZIMBABWE                       6                    NA                0.3214905    0.2945427   0.3484382
0-6 months    ZVITAMBO         ZIMBABWE                       7                    NA                0.2878916    0.2620675   0.3137158
0-6 months    ZVITAMBO         ZIMBABWE                       8                    NA                0.2709321    0.2464493   0.2954149
0-6 months    ZVITAMBO         ZIMBABWE                       9                    NA                0.2012242    0.1794882   0.2229601
0-6 months    ZVITAMBO         ZIMBABWE                       10                   NA                0.2197907    0.1947542   0.2448271
0-6 months    ZVITAMBO         ZIMBABWE                       11                   NA                0.2243536    0.2007406   0.2479667
0-6 months    ZVITAMBO         ZIMBABWE                       12                   NA                0.2169657    0.1938927   0.2400388
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3436533    0.2809428   0.4063637
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3149171    0.2325476   0.3972866
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                    NA                0.3756345    0.2958412   0.4554278
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                    NA                0.4114833    0.2953356   0.5276309
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                    NA                0.3623853    0.2960236   0.4287470
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                    NA                0.3385417    0.2543744   0.4227089
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                    NA                0.3877551    0.2718523   0.5036579
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                    NA                0.3498350    0.2867564   0.4129136
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                    NA                0.3892944    0.3250567   0.4535321
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                   NA                0.3279570    0.2443829   0.4115311
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3830409    0.2908783   0.4752036
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                   NA                0.3613707   -0.0187158   0.7414573
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2487805    0.2186495   0.2789115
6-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.2753425    0.2397260   0.3109589
6-24 months   JiVitA-3         BANGLADESH                     3                    NA                0.2010638    0.1738317   0.2282960
6-24 months   JiVitA-3         BANGLADESH                     4                    NA                0.1961783    0.1673856   0.2249711
6-24 months   JiVitA-3         BANGLADESH                     5                    NA                0.2177955    0.1851496   0.2504414
6-24 months   JiVitA-3         BANGLADESH                     6                    NA                0.2199762    0.1898426   0.2501099
6-24 months   JiVitA-3         BANGLADESH                     7                    NA                0.2149321    0.1854659   0.2443984
6-24 months   JiVitA-3         BANGLADESH                     8                    NA                0.1959391    0.1719284   0.2199498
6-24 months   JiVitA-3         BANGLADESH                     9                    NA                0.1941650    0.1652141   0.2231159
6-24 months   JiVitA-3         BANGLADESH                     10                   NA                0.2037229    0.1766579   0.2307878
6-24 months   JiVitA-3         BANGLADESH                     11                   NA                0.2214984    0.1918612   0.2511355
6-24 months   JiVitA-3         BANGLADESH                     12                   NA                0.2233677    0.1947920   0.2519434
6-24 months   Keneba           GAMBIA                         1                    NA                0.3091787    0.2462052   0.3721523
6-24 months   Keneba           GAMBIA                         2                    NA                0.3736842    0.3048779   0.4424905
6-24 months   Keneba           GAMBIA                         3                    NA                0.3881279    0.3235696   0.4526861
6-24 months   Keneba           GAMBIA                         4                    NA                0.3571429    0.2777521   0.4365336
6-24 months   Keneba           GAMBIA                         5                    NA                0.4071429    0.3257399   0.4885458
6-24 months   Keneba           GAMBIA                         6                    NA                0.4090909    0.3171879   0.5009939
6-24 months   Keneba           GAMBIA                         7                    NA                0.3877551    0.2912647   0.4842455
6-24 months   Keneba           GAMBIA                         8                    NA                0.3333333    0.2613872   0.4052795
6-24 months   Keneba           GAMBIA                         9                    NA                0.4000000    0.3263391   0.4736609
6-24 months   Keneba           GAMBIA                         10                   NA                0.3392070    0.2776032   0.4008109
6-24 months   Keneba           GAMBIA                         11                   NA                0.3179191    0.2485112   0.3873270
6-24 months   Keneba           GAMBIA                         12                   NA                0.3314607    0.2622895   0.4006319
6-24 months   LCNI-5           MALAWI                         1                    NA                0.5892857    0.4603466   0.7182248
6-24 months   LCNI-5           MALAWI                         2                    NA                0.6086957    0.4675640   0.7498273
6-24 months   LCNI-5           MALAWI                         3                    NA                0.5833333    0.3859580   0.7807087
6-24 months   LCNI-5           MALAWI                         4                    NA                0.5277778    0.3645879   0.6909677
6-24 months   LCNI-5           MALAWI                         5                    NA                0.5365854    0.3838435   0.6893272
6-24 months   LCNI-5           MALAWI                         6                    NA                0.6451613    0.4766168   0.8137058
6-24 months   LCNI-5           MALAWI                         7                    NA                0.6065574    0.4838820   0.7292328
6-24 months   LCNI-5           MALAWI                         8                    NA                0.5647059    0.4592335   0.6701783
6-24 months   LCNI-5           MALAWI                         9                    NA                0.5277778    0.4123851   0.6431705
6-24 months   LCNI-5           MALAWI                         10                   NA                0.6633663    0.5711431   0.7555896
6-24 months   LCNI-5           MALAWI                         11                   NA                0.6195652    0.5202912   0.7188392
6-24 months   LCNI-5           MALAWI                         12                   NA                0.6470588    0.5453967   0.7487210
6-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.5555556    0.3678535   0.7432576
6-24 months   NIH-Birth        BANGLADESH                     2                    NA                0.6250000    0.4570194   0.7929806
6-24 months   NIH-Birth        BANGLADESH                     3                    NA                0.5263158    0.3673315   0.6853001
6-24 months   NIH-Birth        BANGLADESH                     4                    NA                0.6206897    0.4438360   0.7975433
6-24 months   NIH-Birth        BANGLADESH                     5                    NA                0.6129032    0.4411902   0.7846163
6-24 months   NIH-Birth        BANGLADESH                     6                    NA                0.5833333    0.3858067   0.7808599
6-24 months   NIH-Birth        BANGLADESH                     7                    NA                0.4782609    0.2738172   0.6827045
6-24 months   NIH-Birth        BANGLADESH                     8                    NA                0.5909091    0.3851603   0.7966579
6-24 months   NIH-Birth        BANGLADESH                     9                    NA                0.5652174    0.3623285   0.7681063
6-24 months   NIH-Birth        BANGLADESH                     10                   NA                0.5666667    0.3890872   0.7442461
6-24 months   NIH-Birth        BANGLADESH                     11                   NA                0.5555556    0.3678535   0.7432576
6-24 months   NIH-Birth        BANGLADESH                     12                   NA                0.5897436    0.4351450   0.7443421
6-24 months   PROBIT           BELARUS                        1                    NA                0.0936170    0.0698438   0.1173903
6-24 months   PROBIT           BELARUS                        2                    NA                0.1247241    0.0918479   0.1576002
6-24 months   PROBIT           BELARUS                        3                    NA                0.0664767    0.0440037   0.0889497
6-24 months   PROBIT           BELARUS                        4                    NA                0.0597015    0.0404969   0.0789061
6-24 months   PROBIT           BELARUS                        5                    NA                0.0563771    0.0389910   0.0737632
6-24 months   PROBIT           BELARUS                        6                    NA                0.0634921    0.0412123   0.0857719
6-24 months   PROBIT           BELARUS                        7                    NA                0.0449205    0.0303077   0.0595333
6-24 months   PROBIT           BELARUS                        8                    NA                0.0559299    0.0379934   0.0738664
6-24 months   PROBIT           BELARUS                        9                    NA                0.0487637    0.0289923   0.0685351
6-24 months   PROBIT           BELARUS                        10                   NA                0.0556564    0.0406461   0.0706667
6-24 months   PROBIT           BELARUS                        11                   NA                0.0580561    0.0427154   0.0733968
6-24 months   PROBIT           BELARUS                        12                   NA                0.0738137    0.0562784   0.0913490
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.5454545    0.4351180   0.6557911
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.4166667    0.2195083   0.6138250
6-24 months   SAS-CompFeed     INDIA                          3                    NA                0.4347826    0.2249986   0.6445667
6-24 months   SAS-CompFeed     INDIA                          4                    NA                0.5853659    0.4962284   0.6745033
6-24 months   SAS-CompFeed     INDIA                          5                    NA                0.5000000    0.3691813   0.6308187
6-24 months   SAS-CompFeed     INDIA                          6                    NA                0.3888889    0.2978726   0.4799052
6-24 months   SAS-CompFeed     INDIA                          7                    NA                0.5625000    0.4175812   0.7074188
6-24 months   SAS-CompFeed     INDIA                          8                    NA                0.5777778    0.4958032   0.6597523
6-24 months   SAS-CompFeed     INDIA                          9                    NA                0.4793388    0.3623152   0.5963625
6-24 months   SAS-CompFeed     INDIA                          10                   NA                0.5813953    0.5016792   0.6611115
6-24 months   SAS-CompFeed     INDIA                          11                   NA                0.4805195    0.3554579   0.6055810
6-24 months   SAS-CompFeed     INDIA                          12                   NA                0.4383562    0.3387073   0.5380050
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3076923    0.2240360   0.3913486
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1721311    0.1051251   0.2391372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2735043    0.1927084   0.3543002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3185841    0.2326505   0.4045176
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2053571    0.1305203   0.2801940
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.2212389    0.1446833   0.2977946
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2052980    0.1408529   0.2697431
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1728395    0.1145967   0.2310824
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2112676    0.1441060   0.2784292
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2181818    0.1551436   0.2812200
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2281879    0.1607828   0.2955930
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2158273    0.1474149   0.2842398
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.2706587    0.2405212   0.3007962
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.2819723    0.2473524   0.3165921
6-24 months   ZVITAMBO         ZIMBABWE                       3                    NA                0.2991803    0.2660071   0.3323536
6-24 months   ZVITAMBO         ZIMBABWE                       4                    NA                0.2544861    0.2200033   0.2889690
6-24 months   ZVITAMBO         ZIMBABWE                       5                    NA                0.2681661    0.2320486   0.3042836
6-24 months   ZVITAMBO         ZIMBABWE                       6                    NA                0.2386185    0.2055163   0.2717207
6-24 months   ZVITAMBO         ZIMBABWE                       7                    NA                0.2366864    0.2046430   0.2687298
6-24 months   ZVITAMBO         ZIMBABWE                       8                    NA                0.2493113    0.2178406   0.2807820
6-24 months   ZVITAMBO         ZIMBABWE                       9                    NA                0.2393868    0.2106653   0.2681083
6-24 months   ZVITAMBO         ZIMBABWE                       10                   NA                0.2901716    0.2550359   0.3253073
6-24 months   ZVITAMBO         ZIMBABWE                       11                   NA                0.2490066    0.2181589   0.2798544
6-24 months   ZVITAMBO         ZIMBABWE                       12                   NA                0.2800496    0.2490678   0.3110313


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4953171   0.4874955   0.5031388
0-24 months   Keneba           GAMBIA                         NA                   NA                0.5125214   0.4943731   0.5306698
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6369048   0.6043650   0.6694445
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6113208   0.5525209   0.6701206
0-24 months   MAL-ED           PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.5605096   0.5055248   0.6154943
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1274191   0.1115552   0.1432829
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3459933   0.3269422   0.3650444
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4171522   0.4090055   0.4252989
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4129818   0.4055453   0.4204184
0-6 months    Keneba           GAMBIA                         NA                   NA                0.3123732   0.2940736   0.3306728
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0686124   0.0577768   0.0794479
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1949082   0.1790434   0.2107729
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2586612   0.2514220   0.2659004
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2162394   0.2068628   0.2256160
6-24 months   Keneba           GAMBIA                         NA                   NA                0.3589489   0.3380095   0.3798884
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.6000000   0.5644377   0.6355623
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0642659   0.0526827   0.0758490
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259675   0.2054816   0.2464534
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2630340   0.2536720   0.2723961


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                    1                 0.9163805   0.6815717   1.2320834
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                    1                 1.0930626   0.8343733   1.4319560
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                    1                 1.1973792   0.8532016   1.6803964
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0545086   0.8141899   1.3657605
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9851258   0.7469710   1.2992108
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                    1                 1.1283324   0.7561694   1.6836624
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0179883   0.8294685   1.2493544
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                    1                 1.1328116   0.9130221   1.4055105
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9543253   0.6902449   1.3194401
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1146146   0.8768254   1.4168908
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0515562   0.3663461   3.0183765
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.9458959   0.8897167   1.0056224
0-24 months   JiVitA-3         BANGLADESH                     3                    1                 0.8472177   0.7974556   0.9000849
0-24 months   JiVitA-3         BANGLADESH                     4                    1                 0.8443916   0.7906213   0.9018189
0-24 months   JiVitA-3         BANGLADESH                     5                    1                 0.9395279   0.8756258   1.0080936
0-24 months   JiVitA-3         BANGLADESH                     6                    1                 0.9050928   0.8424066   0.9724437
0-24 months   JiVitA-3         BANGLADESH                     7                    1                 0.9019098   0.8430224   0.9649107
0-24 months   JiVitA-3         BANGLADESH                     8                    1                 0.9381383   0.8839877   0.9956059
0-24 months   JiVitA-3         BANGLADESH                     9                    1                 0.9170956   0.8673750   0.9696663
0-24 months   JiVitA-3         BANGLADESH                     10                   1                 0.9952673   0.9445325   1.0487274
0-24 months   JiVitA-3         BANGLADESH                     11                   1                 1.0732277   1.0215945   1.1274705
0-24 months   JiVitA-3         BANGLADESH                     12                   1                 1.0270999   0.9769399   1.0798352
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 1.0850536   0.9130169   1.2895067
0-24 months   Keneba           GAMBIA                         3                    1                 1.1047898   0.9375521   1.3018589
0-24 months   Keneba           GAMBIA                         4                    1                 1.0821075   0.8990830   1.3023900
0-24 months   Keneba           GAMBIA                         5                    1                 1.1821955   0.9927672   1.4077683
0-24 months   Keneba           GAMBIA                         6                    1                 1.1757199   0.9760929   1.4161737
0-24 months   Keneba           GAMBIA                         7                    1                 1.2064503   0.9968677   1.4600957
0-24 months   Keneba           GAMBIA                         8                    1                 1.0948905   0.9187508   1.3047991
0-24 months   Keneba           GAMBIA                         9                    1                 1.1830299   1.0023102   1.3963340
0-24 months   Keneba           GAMBIA                         10                   1                 1.1320125   0.9666776   1.3256254
0-24 months   Keneba           GAMBIA                         11                   1                 1.0172998   0.8508649   1.2162906
0-24 months   Keneba           GAMBIA                         12                   1                 1.0683605   0.8983705   1.2705160
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         2                    1                 0.9407115   0.7032950   1.2582743
0-24 months   LCNI-5           MALAWI                         3                    1                 0.9510490   0.6694254   1.3511500
0-24 months   LCNI-5           MALAWI                         4                    1                 0.8717949   0.6285169   1.2092376
0-24 months   LCNI-5           MALAWI                         5                    1                 0.8078512   0.5792432   1.1266832
0-24 months   LCNI-5           MALAWI                         6                    1                 1.0454545   0.7811317   1.3992201
0-24 months   LCNI-5           MALAWI                         7                    1                 0.9472141   0.7269770   1.2341719
0-24 months   LCNI-5           MALAWI                         8                    1                 0.9139785   0.7162564   1.1662817
0-24 months   LCNI-5           MALAWI                         9                    1                 0.9638319   0.7610380   1.2206643
0-24 months   LCNI-5           MALAWI                         10                   1                 1.0989899   0.8944198   1.3503490
0-24 months   LCNI-5           MALAWI                         11                   1                 1.0008658   0.7989308   1.2538413
0-24 months   LCNI-5           MALAWI                         12                   1                 1.0411483   0.8316784   1.3033762
0-24 months   MAL-ED           BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     2                    1                 1.1630769   0.7673299   1.7629287
0-24 months   MAL-ED           BANGLADESH                     3                    1                 1.0984615   0.7139947   1.6899534
0-24 months   MAL-ED           BANGLADESH                     4                    1                 0.7342657   0.4158209   1.2965825
0-24 months   MAL-ED           BANGLADESH                     5                    1                 1.2482517   0.8320185   1.8727138
0-24 months   MAL-ED           BANGLADESH                     6                    1                 0.8811189   0.4662413   1.6651689
0-24 months   MAL-ED           BANGLADESH                     7                    1                 1.1307692   0.7265867   1.7597887
0-24 months   MAL-ED           BANGLADESH                     8                    1                 0.9940828   0.6316218   1.5645448
0-24 months   MAL-ED           BANGLADESH                     9                    1                 0.9130435   0.5582959   1.4932018
0-24 months   MAL-ED           BANGLADESH                     10                   1                 0.7753846   0.4567442   1.3163195
0-24 months   MAL-ED           BANGLADESH                     11                   1                 0.8552036   0.4880566   1.4985419
0-24 months   MAL-ED           BANGLADESH                     12                   1                 0.9807692   0.6256400   1.5374789
0-24 months   MAL-ED           PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           2                    1                 1.2173913   0.8350185   1.7748608
0-24 months   MAL-ED           PERU                           3                    1                 0.9891304   0.6340712   1.5430113
0-24 months   MAL-ED           PERU                           4                    1                 1.0833333   0.7073007   1.6592817
0-24 months   MAL-ED           PERU                           5                    1                 1.1875000   0.8234548   1.7124877
0-24 months   MAL-ED           PERU                           6                    1                 1.1323529   0.7301999   1.7559893
0-24 months   MAL-ED           PERU                           7                    1                 1.3854167   0.9927328   1.9334300
0-24 months   MAL-ED           PERU                           8                    1                 0.8289474   0.4819019   1.4259203
0-24 months   MAL-ED           PERU                           9                    1                 1.0652174   0.6997727   1.6215096
0-24 months   MAL-ED           PERU                           10                   1                 0.7129630   0.4214232   1.2061894
0-24 months   MAL-ED           PERU                           11                   1                 1.2727273   0.9098913   1.7802508
0-24 months   MAL-ED           PERU                           12                   1                 1.1413043   0.7667703   1.6987820
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   2                    1                 0.9692308   0.6648335   1.4129978
0-24 months   MAL-ED           SOUTH AFRICA                   3                    1                 0.5384615   0.2684173   1.0801870
0-24 months   MAL-ED           SOUTH AFRICA                   4                    1                 0.7538462   0.4171770   1.3622133
0-24 months   MAL-ED           SOUTH AFRICA                   5                    1                 0.5048077   0.2347311   1.0856286
0-24 months   MAL-ED           SOUTH AFRICA                   6                    1                 0.8428094   0.5329473   1.3328291
0-24 months   MAL-ED           SOUTH AFRICA                   7                    1                 0.9319527   0.6207220   1.3992348
0-24 months   MAL-ED           SOUTH AFRICA                   8                    1                 0.8076923   0.4368902   1.4932054
0-24 months   MAL-ED           SOUTH AFRICA                   9                    1                 0.8400000   0.5378505   1.3118887
0-24 months   MAL-ED           SOUTH AFRICA                   10                   1                 1.0942928   0.7788141   1.5375643
0-24 months   MAL-ED           SOUTH AFRICA                   11                   1                 0.9900744   0.6856623   1.4296358
0-24 months   MAL-ED           SOUTH AFRICA                   12                   1                 1.0051282   0.7230932   1.3971680
0-24 months   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     2                    1                 0.9817241   0.7739289   1.2453112
0-24 months   NIH-Birth        BANGLADESH                     3                    1                 0.8166102   0.6202743   1.0750924
0-24 months   NIH-Birth        BANGLADESH                     4                    1                 0.9641509   0.7522696   1.2357100
0-24 months   NIH-Birth        BANGLADESH                     5                    1                 0.9832653   0.7660495   1.2620734
0-24 months   NIH-Birth        BANGLADESH                     6                    1                 1.0220000   0.8045643   1.2981982
0-24 months   NIH-Birth        BANGLADESH                     7                    1                 0.9614634   0.7339553   1.2594934
0-24 months   NIH-Birth        BANGLADESH                     8                    1                 0.9614634   0.7339553   1.2594934
0-24 months   NIH-Birth        BANGLADESH                     9                    1                 1.0037500   0.7845924   1.2841241
0-24 months   NIH-Birth        BANGLADESH                     10                   1                 0.9534694   0.7375110   1.2326649
0-24 months   NIH-Birth        BANGLADESH                     11                   1                 1.0743396   0.8584888   1.3444620
0-24 months   NIH-Birth        BANGLADESH                     12                   1                 0.9290909   0.7211090   1.1970589
0-24 months   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        2                    1                 1.1468294   0.9184744   1.4319591
0-24 months   PROBIT           BELARUS                        3                    1                 0.8131004   0.6498379   1.0173804
0-24 months   PROBIT           BELARUS                        4                    1                 0.7406134   0.6135387   0.8940075
0-24 months   PROBIT           BELARUS                        5                    1                 0.6905168   0.5468279   0.8719625
0-24 months   PROBIT           BELARUS                        6                    1                 0.6798789   0.5326463   0.8678090
0-24 months   PROBIT           BELARUS                        7                    1                 0.7050314   0.5349828   0.9291314
0-24 months   PROBIT           BELARUS                        8                    1                 0.6580605   0.5037488   0.8596418
0-24 months   PROBIT           BELARUS                        9                    1                 0.7863143   0.6138877   1.0071714
0-24 months   PROBIT           BELARUS                        10                   1                 0.8065050   0.6523623   0.9970690
0-24 months   PROBIT           BELARUS                        11                   1                 0.8781825   0.7056851   1.0928452
0-24 months   PROBIT           BELARUS                        12                   1                 0.8820704   0.7167320   1.0855498
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 0.9306122   0.6047678   1.4320193
0-24 months   PROVIDE          BANGLADESH                     3                    1                 0.5121294   0.3058174   0.8576246
0-24 months   PROVIDE          BANGLADESH                     4                    1                 0.8351648   0.5357918   1.3018122
0-24 months   PROVIDE          BANGLADESH                     5                    1                 0.5219780   0.3121212   0.8729334
0-24 months   PROVIDE          BANGLADESH                     6                    1                 0.9240122   0.6523797   1.3087446
0-24 months   PROVIDE          BANGLADESH                     7                    1                 0.7474120   0.5131765   1.0885626
0-24 months   PROVIDE          BANGLADESH                     8                    1                 0.6556246   0.4289037   1.0021913
0-24 months   PROVIDE          BANGLADESH                     9                    1                 0.7142857   0.4790596   1.0650116
0-24 months   PROVIDE          BANGLADESH                     10                   1                 0.8704039   0.6031856   1.2560030
0-24 months   PROVIDE          BANGLADESH                     11                   1                 0.9909297   0.6662287   1.4738808
0-24 months   PROVIDE          BANGLADESH                     12                   1                 0.9339478   0.5983169   1.4578535
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.9233587   0.7544678   1.1300565
0-24 months   SAS-CompFeed     INDIA                          3                    1                 0.9540338   0.7177800   1.2680494
0-24 months   SAS-CompFeed     INDIA                          4                    1                 1.1010256   0.9550400   1.2693263
0-24 months   SAS-CompFeed     INDIA                          5                    1                 1.0184057   0.8978374   1.1551647
0-24 months   SAS-CompFeed     INDIA                          6                    1                 0.9303693   0.8226139   1.0522397
0-24 months   SAS-CompFeed     INDIA                          7                    1                 1.0971908   0.9403022   1.2802561
0-24 months   SAS-CompFeed     INDIA                          8                    1                 1.1143984   1.0145855   1.2240308
0-24 months   SAS-CompFeed     INDIA                          9                    1                 0.9129941   0.8375274   0.9952609
0-24 months   SAS-CompFeed     INDIA                          10                   1                 1.0347985   0.9237860   1.1591516
0-24 months   SAS-CompFeed     INDIA                          11                   1                 0.9386060   0.8171592   1.0781023
0-24 months   SAS-CompFeed     INDIA                          12                   1                 0.9794150   0.8638142   1.1104860
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8081862   0.5992717   1.0899313
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9599303   0.7217188   1.2767662
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0857143   0.8351141   1.4115144
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.8949807   0.6735946   1.1891283
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9156627   0.6852727   1.2235101
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9960682   0.7660581   1.2951390
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8657635   0.6596932   1.1362046
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9927249   0.7628414   1.2918841
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9228571   0.7105244   1.1986434
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9702650   0.7450139   1.2636197
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8606272   0.6498634   1.1397458
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.0323674   0.9423473   1.1309870
0-24 months   ZVITAMBO         ZIMBABWE                       3                    1                 1.0339450   0.9464629   1.1295132
0-24 months   ZVITAMBO         ZIMBABWE                       4                    1                 0.9943885   0.9046417   1.0930389
0-24 months   ZVITAMBO         ZIMBABWE                       5                    1                 1.0762023   0.9833828   1.1777828
0-24 months   ZVITAMBO         ZIMBABWE                       6                    1                 1.0613747   0.9716632   1.1593692
0-24 months   ZVITAMBO         ZIMBABWE                       7                    1                 0.9906618   0.9048175   1.0846505
0-24 months   ZVITAMBO         ZIMBABWE                       8                    1                 0.9693273   0.8860002   1.0604912
0-24 months   ZVITAMBO         ZIMBABWE                       9                    1                 0.8349937   0.7590732   0.9185076
0-24 months   ZVITAMBO         ZIMBABWE                       10                   1                 0.9283103   0.8427796   1.0225213
0-24 months   ZVITAMBO         ZIMBABWE                       11                   1                 0.8918829   0.8112153   0.9805721
0-24 months   ZVITAMBO         ZIMBABWE                       12                   1                 0.9398261   0.8572520   1.0303541
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          2                    1                 0.6800000   0.3439694   1.3443057
0-6 months    CMC-V-BCS-2002   INDIA                          3                    1                 0.6580645   0.3891269   1.1128732
0-6 months    CMC-V-BCS-2002   INDIA                          4                    1                 0.6181818   0.3816843   1.0012168
0-6 months    CMC-V-BCS-2002   INDIA                          5                    1                 0.8027778   0.5139401   1.2539441
0-6 months    CMC-V-BCS-2002   INDIA                          6                    1                 0.9916667   0.6683144   1.4714672
0-6 months    CMC-V-BCS-2002   INDIA                          7                    1                 1.0025641   0.6823841   1.4729750
0-6 months    CMC-V-BCS-2002   INDIA                          8                    1                 0.9000000   0.5298383   1.5287682
0-6 months    CMC-V-BCS-2002   INDIA                          9                    1                 0.8095238   0.4764125   1.3755492
0-6 months    CMC-V-BCS-2002   INDIA                          10                   1                 0.9379310   0.6084908   1.4457321
0-6 months    CMC-V-BCS-2002   INDIA                          11                   1                 0.8707317   0.5773828   1.3131214
0-6 months    CMC-V-BCS-2002   INDIA                          12                   1                 1.1560000   0.7829677   1.7067574
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          2                    1                 1.3571429   0.8036267   2.2919060
0-6 months    IRC              INDIA                          3                    1                 1.0320988   0.5650922   1.8850515
0-6 months    IRC              INDIA                          4                    1                 1.2063492   0.6636656   2.1927887
0-6 months    IRC              INDIA                          5                    1                 1.2666667   0.7128842   2.2506384
0-6 months    IRC              INDIA                          6                    1                 0.9585586   0.5413920   1.6971706
0-6 months    IRC              INDIA                          7                    1                 1.1259259   0.6576581   1.9276114
0-6 months    IRC              INDIA                          8                    1                 0.7484848   0.4093851   1.3684660
0-6 months    IRC              INDIA                          9                    1                 1.1259259   0.6318950   2.0062022
0-6 months    IRC              INDIA                          10                   1                 0.8666667   0.4795372   1.5663251
0-6 months    IRC              INDIA                          11                   1                 0.9500000   0.5415676   1.6664586
0-6 months    IRC              INDIA                          12                   1                 1.4128205   0.8894596   2.2441287
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 0.8968295   0.8327885   0.9657951
0-6 months    JiVitA-3         BANGLADESH                     3                    1                 0.8250682   0.7670385   0.8874881
0-6 months    JiVitA-3         BANGLADESH                     4                    1                 0.8012609   0.7387860   0.8690190
0-6 months    JiVitA-3         BANGLADESH                     5                    1                 0.8310936   0.7613306   0.9072491
0-6 months    JiVitA-3         BANGLADESH                     6                    1                 0.7722191   0.7037656   0.8473309
0-6 months    JiVitA-3         BANGLADESH                     7                    1                 0.7910675   0.7261140   0.8618314
0-6 months    JiVitA-3         BANGLADESH                     8                    1                 0.9044098   0.8412963   0.9722579
0-6 months    JiVitA-3         BANGLADESH                     9                    1                 0.9277675   0.8687138   0.9908357
0-6 months    JiVitA-3         BANGLADESH                     10                   1                 1.0270264   0.9651464   1.0928738
0-6 months    JiVitA-3         BANGLADESH                     11                   1                 1.1188910   1.0538044   1.1879975
0-6 months    JiVitA-3         BANGLADESH                     12                   1                 1.0726547   1.0112185   1.1378235
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 0.9526890   0.7102132   1.2779490
0-6 months    Keneba           GAMBIA                         3                    1                 0.9750078   0.7393970   1.2856968
0-6 months    Keneba           GAMBIA                         4                    1                 1.0410139   0.7671067   1.4127237
0-6 months    Keneba           GAMBIA                         5                    1                 1.1546567   0.8627411   1.5453445
0-6 months    Keneba           GAMBIA                         6                    1                 1.1071602   0.8097104   1.5138793
0-6 months    Keneba           GAMBIA                         7                    1                 1.3853881   1.0180204   1.8853259
0-6 months    Keneba           GAMBIA                         8                    1                 1.1647295   0.8816714   1.5386626
0-6 months    Keneba           GAMBIA                         9                    1                 1.1771220   0.8968100   1.5450499
0-6 months    Keneba           GAMBIA                         10                   1                 1.3090694   1.0236853   1.6740133
0-6 months    Keneba           GAMBIA                         11                   1                 1.0578736   0.7982420   1.4019515
0-6 months    Keneba           GAMBIA                         12                   1                 1.0989211   0.8345931   1.4469656
0-6 months    NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     2                    1                 0.6832512   0.4401434   1.0606368
0-6 months    NIH-Birth        BANGLADESH                     3                    1                 0.4595642   0.2687126   0.7859670
0-6 months    NIH-Birth        BANGLADESH                     4                    1                 0.6690027   0.4226262   1.0590081
0-6 months    NIH-Birth        BANGLADESH                     5                    1                 0.5959184   0.3601739   0.9859646
0-6 months    NIH-Birth        BANGLADESH                     6                    1                 0.8760000   0.5846576   1.3125221
0-6 months    NIH-Birth        BANGLADESH                     7                    1                 0.8139373   0.5182102   1.2784270
0-6 months    NIH-Birth        BANGLADESH                     8                    1                 0.7121951   0.4371545   1.1602807
0-6 months    NIH-Birth        BANGLADESH                     9                    1                 0.8690476   0.5758002   1.3116421
0-6 months    NIH-Birth        BANGLADESH                     10                   1                 0.6384840   0.3931200   1.0369908
0-6 months    NIH-Birth        BANGLADESH                     11                   1                 0.9444744   0.6454278   1.3820785
0-6 months    NIH-Birth        BANGLADESH                     12                   1                 0.4550649   0.2612697   0.7926067
0-6 months    PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        2                    1                 0.9159083   0.6226071   1.3473793
0-6 months    PROBIT           BELARUS                        3                    1                 0.9314883   0.6767344   1.2821431
0-6 months    PROBIT           BELARUS                        4                    1                 0.8589985   0.6363262   1.1595916
0-6 months    PROBIT           BELARUS                        5                    1                 0.7904945   0.5155811   1.2119947
0-6 months    PROBIT           BELARUS                        6                    1                 0.6634008   0.4660966   0.9442262
0-6 months    PROBIT           BELARUS                        7                    1                 0.9756927   0.6626868   1.4365402
0-6 months    PROBIT           BELARUS                        8                    1                 0.7156968   0.4645551   1.1026074
0-6 months    PROBIT           BELARUS                        9                    1                 1.1152594   0.7966165   1.5613579
0-6 months    PROBIT           BELARUS                        10                   1                 1.0613770   0.8217230   1.3709255
0-6 months    PROBIT           BELARUS                        11                   1                 1.1963271   0.8894446   1.6090922
0-6 months    PROBIT           BELARUS                        12                   1                 0.9983622   0.7204206   1.3835349
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2                    1                 2.3265306   1.0758312   5.0312212
0-6 months    PROVIDE          BANGLADESH                     3                    1                 1.0242588   0.4282435   2.4497885
0-6 months    PROVIDE          BANGLADESH                     4                    1                 0.9743590   0.3774694   2.5151055
0-6 months    PROVIDE          BANGLADESH                     5                    1                 0.8351648   0.3312418   2.1057131
0-6 months    PROVIDE          BANGLADESH                     6                    1                 1.4437690   0.6825423   3.0539776
0-6 months    PROVIDE          BANGLADESH                     7                    1                 1.4161491   0.6670283   3.0065864
0-6 months    PROVIDE          BANGLADESH                     8                    1                 1.3374741   0.6090234   2.9372223
0-6 months    PROVIDE          BANGLADESH                     9                    1                 0.9285714   0.4037525   2.1355776
0-6 months    PROVIDE          BANGLADESH                     10                   1                 1.3743219   0.6367088   2.9664433
0-6 months    PROVIDE          BANGLADESH                     11                   1                 2.1972789   1.0239400   4.7151536
0-6 months    PROVIDE          BANGLADESH                     12                   1                 0.8755760   0.3076974   2.4915174
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.9830586   0.8115321   1.1908392
0-6 months    SAS-CompFeed     INDIA                          3                    1                 0.9761179   0.7040277   1.3533646
0-6 months    SAS-CompFeed     INDIA                          4                    1                 1.0358333   0.7234527   1.4830972
0-6 months    SAS-CompFeed     INDIA                          5                    1                 0.9789604   0.7136428   1.3429176
0-6 months    SAS-CompFeed     INDIA                          6                    1                 1.0582951   0.8487227   1.3196166
0-6 months    SAS-CompFeed     INDIA                          7                    1                 1.1770833   0.9493133   1.4595025
0-6 months    SAS-CompFeed     INDIA                          8                    1                 1.1382784   0.8941086   1.4491279
0-6 months    SAS-CompFeed     INDIA                          9                    1                 0.7724609   0.6287444   0.9490278
0-6 months    SAS-CompFeed     INDIA                          10                   1                 0.9809028   0.7694937   1.2503940
0-6 months    SAS-CompFeed     INDIA                          11                   1                 0.9118251   0.6527563   1.2737143
0-6 months    SAS-CompFeed     INDIA                          12                   1                 1.0685579   0.8207102   1.3912537
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1385768   0.7135387   1.8167999
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0040650   0.6125357   1.6458577
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3333333   0.8566628   2.0752363
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.3009009   0.8315996   2.0350456
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1827309   0.7393823   1.8919204
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.4235474   0.9306310   2.1775411
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2557471   0.8150376   1.9347583
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.4367284   0.9394283   2.1972815
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.2413333   0.8093657   1.9038471
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.2895928   0.8360078   1.9892752
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0813008   0.6831151   1.7115879
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 1.0353880   0.9066694   1.1823806
0-6 months    ZVITAMBO         ZIMBABWE                       3                    1                 0.9964419   0.8745043   1.1353821
0-6 months    ZVITAMBO         ZIMBABWE                       4                    1                 1.0318780   0.9013995   1.1812434
0-6 months    ZVITAMBO         ZIMBABWE                       5                    1                 1.1873671   1.0455067   1.3484761
0-6 months    ZVITAMBO         ZIMBABWE                       6                    1                 1.2281658   1.0866261   1.3881419
0-6 months    ZVITAMBO         ZIMBABWE                       7                    1                 1.0998107   0.9690842   1.2481718
0-6 months    ZVITAMBO         ZIMBABWE                       8                    1                 1.0350214   0.9115659   1.1751967
0-6 months    ZVITAMBO         ZIMBABWE                       9                    1                 0.7687216   0.6682120   0.8843494
0-6 months    ZVITAMBO         ZIMBABWE                       10                   1                 0.8396498   0.7265235   0.9703908
0-6 months    ZVITAMBO         ZIMBABWE                       11                   1                 0.8570813   0.7466024   0.9839083
0-6 months    ZVITAMBO         ZIMBABWE                       12                   1                 0.8288579   0.7214132   0.9523051
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                    1                 0.9163805   0.6815717   1.2320834
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                    1                 1.0930626   0.8343733   1.4319560
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                    1                 1.1973792   0.8532016   1.6803964
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0545086   0.8141899   1.3657605
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9851258   0.7469710   1.2992108
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                    1                 1.1283324   0.7561694   1.6836624
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0179883   0.8294685   1.2493544
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                    1                 1.1328116   0.9130221   1.4055105
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9543253   0.6902449   1.3194401
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1146146   0.8768254   1.4168908
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0515562   0.3663461   3.0183765
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2                    1                 1.1067687   0.9262007   1.3225395
6-24 months   JiVitA-3         BANGLADESH                     3                    1                 0.8081977   0.6739621   0.9691696
6-24 months   JiVitA-3         BANGLADESH                     4                    1                 0.7885600   0.6516655   0.9542118
6-24 months   JiVitA-3         BANGLADESH                     5                    1                 0.8754524   0.7253649   1.0565950
6-24 months   JiVitA-3         BANGLADESH                     6                    1                 0.8842181   0.7369683   1.0608891
6-24 months   JiVitA-3         BANGLADESH                     7                    1                 0.8639429   0.7230794   1.0322481
6-24 months   JiVitA-3         BANGLADESH                     8                    1                 0.7875983   0.6655567   0.9320183
6-24 months   JiVitA-3         BANGLADESH                     9                    1                 0.7804671   0.6472682   0.9410766
6-24 months   JiVitA-3         BANGLADESH                     10                   1                 0.8188860   0.6856924   0.9779520
6-24 months   JiVitA-3         BANGLADESH                     11                   1                 0.8903366   0.7462705   1.0622143
6-24 months   JiVitA-3         BANGLADESH                     12                   1                 0.8978505   0.7540133   1.0691266
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 1.2086349   0.9184393   1.5905224
6-24 months   Keneba           GAMBIA                         3                    1                 1.2553510   0.9650721   1.6329415
6-24 months   Keneba           GAMBIA                         4                    1                 1.1551339   0.8544644   1.5616032
6-24 months   Keneba           GAMBIA                         5                    1                 1.3168527   0.9898833   1.7518236
6-24 months   Keneba           GAMBIA                         6                    1                 1.3231534   0.9770462   1.7918651
6-24 months   Keneba           GAMBIA                         7                    1                 1.2541454   0.9092657   1.7298362
6-24 months   Keneba           GAMBIA                         8                    1                 1.0781250   0.8012794   1.4506219
6-24 months   Keneba           GAMBIA                         9                    1                 1.2937500   0.9831031   1.7025570
6-24 months   Keneba           GAMBIA                         10                   1                 1.0971228   0.8351051   1.4413496
6-24 months   Keneba           GAMBIA                         11                   1                 1.0282695   0.7628446   1.3860466
6-24 months   Keneba           GAMBIA                         12                   1                 1.0720681   0.8009004   1.4350475
6-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         2                    1                 1.0329381   0.7509663   1.4207843
6-24 months   LCNI-5           MALAWI                         3                    1                 0.9898990   0.6616001   1.4811061
6-24 months   LCNI-5           MALAWI                         4                    1                 0.8956229   0.6132236   1.3080717
6-24 months   LCNI-5           MALAWI                         5                    1                 0.9105691   0.6358972   1.3038838
6-24 months   LCNI-5           MALAWI                         6                    1                 1.0948192   0.7786598   1.5393487
6-24 months   LCNI-5           MALAWI                         7                    1                 1.0293095   0.7640880   1.3865916
6-24 months   LCNI-5           MALAWI                         8                    1                 0.9582888   0.7187172   1.2777173
6-24 months   LCNI-5           MALAWI                         9                    1                 0.8956229   0.6573387   1.2202847
6-24 months   LCNI-5           MALAWI                         10                   1                 1.1257126   0.8686457   1.4588557
6-24 months   LCNI-5           MALAWI                         11                   1                 1.0513834   0.8016409   1.3789304
6-24 months   LCNI-5           MALAWI                         12                   1                 1.0980392   0.8387479   1.4374881
6-24 months   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     2                    1                 1.1250000   0.7305596   1.7324048
6-24 months   NIH-Birth        BANGLADESH                     3                    1                 0.9473684   0.6021335   1.4905447
6-24 months   NIH-Birth        BANGLADESH                     4                    1                 1.1172414   0.7181280   1.7381696
6-24 months   NIH-Birth        BANGLADESH                     5                    1                 1.1032258   0.7112913   1.7111233
6-24 months   NIH-Birth        BANGLADESH                     6                    1                 1.0500000   0.6507991   1.6940711
6-24 months   NIH-Birth        BANGLADESH                     7                    1                 0.8608696   0.4992322   1.4844723
6-24 months   NIH-Birth        BANGLADESH                     8                    1                 1.0636364   0.6547677   1.7278225
6-24 months   NIH-Birth        BANGLADESH                     9                    1                 1.0173913   0.6214432   1.6656149
6-24 months   NIH-Birth        BANGLADESH                     10                   1                 1.0200000   0.6433808   1.6170827
6-24 months   NIH-Birth        BANGLADESH                     11                   1                 1.0000000   0.6201391   1.6125414
6-24 months   NIH-Birth        BANGLADESH                     12                   1                 1.0615385   0.6921752   1.6280039
6-24 months   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        2                    1                 1.3322798   1.0328805   1.7184654
6-24 months   PROBIT           BELARUS                        3                    1                 0.7100924   0.4997750   1.0089164
6-24 months   PROBIT           BELARUS                        4                    1                 0.6377205   0.4480625   0.9076579
6-24 months   PROBIT           BELARUS                        5                    1                 0.6022097   0.4701872   0.7713025
6-24 months   PROBIT           BELARUS                        6                    1                 0.6782107   0.4907749   0.9372316
6-24 months   PROBIT           BELARUS                        7                    1                 0.4798329   0.3317392   0.6940380
6-24 months   PROBIT           BELARUS                        8                    1                 0.5974332   0.4343348   0.8217773
6-24 months   PROBIT           BELARUS                        9                    1                 0.5208854   0.3346905   0.8106642
6-24 months   PROBIT           BELARUS                        10                   1                 0.5945114   0.4253516   0.8309450
6-24 months   PROBIT           BELARUS                        11                   1                 0.6201447   0.4783836   0.8039143
6-24 months   PROBIT           BELARUS                        12                   1                 0.7884646   0.6105691   1.0181917
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 0.7638889   0.4263483   1.3686608
6-24 months   SAS-CompFeed     INDIA                          3                    1                 0.7971014   0.4427080   1.4351913
6-24 months   SAS-CompFeed     INDIA                          4                    1                 1.0731707   0.7893489   1.4590448
6-24 months   SAS-CompFeed     INDIA                          5                    1                 0.9166667   0.6420499   1.3087421
6-24 months   SAS-CompFeed     INDIA                          6                    1                 0.7129630   0.5115904   0.9935998
6-24 months   SAS-CompFeed     INDIA                          7                    1                 1.0312500   0.6858867   1.5505135
6-24 months   SAS-CompFeed     INDIA                          8                    1                 1.0592593   0.8304253   1.3511513
6-24 months   SAS-CompFeed     INDIA                          9                    1                 0.8787879   0.6482930   1.1912332
6-24 months   SAS-CompFeed     INDIA                          10                   1                 1.0658915   0.7865893   1.4443683
6-24 months   SAS-CompFeed     INDIA                          11                   1                 0.8809524   0.5698476   1.3619028
6-24 months   SAS-CompFeed     INDIA                          12                   1                 0.8036530   0.5477129   1.1791909
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5594262   0.3479614   0.8994036
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8888889   0.5949579   1.3280325
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0353982   0.7059582   1.5185735
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6674107   0.4235773   1.0516075
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7190265   0.4630486   1.1165116
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.6672185   0.4404667   1.0107020
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.5617284   0.3643214   0.8661001
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6866197   0.4519064   1.0432396
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7090909   0.4768726   1.0543903
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7416107   0.4963869   1.1079796
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7014388   0.4619825   1.0650109
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.0418002   0.8826742   1.2296129
6-24 months   ZVITAMBO         ZIMBABWE                       3                    1                 1.1053786   0.9446394   1.2934692
6-24 months   ZVITAMBO         ZIMBABWE                       4                    1                 0.9402474   0.7889961   1.1204939
6-24 months   ZVITAMBO         ZIMBABWE                       5                    1                 0.9907906   0.8319328   1.1799825
6-24 months   ZVITAMBO         ZIMBABWE                       6                    1                 0.8816215   0.7379515   1.0532624
6-24 months   ZVITAMBO         ZIMBABWE                       7                    1                 0.8744829   0.7338768   1.0420283
6-24 months   ZVITAMBO         ZIMBABWE                       8                    1                 0.9211280   0.7784276   1.0899881
6-24 months   ZVITAMBO         ZIMBABWE                       9                    1                 0.8844601   0.7509130   1.0417580
6-24 months   ZVITAMBO         ZIMBABWE                       10                   1                 1.0720942   0.9094763   1.2637888
6-24 months   ZVITAMBO         ZIMBABWE                       11                   1                 0.9200023   0.7788404   1.0867494
6-24 months   ZVITAMBO         ZIMBABWE                       12                   1                 1.0346964   0.8843919   1.2105455


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0186745   -0.0479956    0.0853445
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0228074   -0.0413883   -0.0042264
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0481147   -0.0058636    0.1020929
0-24 months   LCNI-5           MALAWI                         1                    NA                -0.0101541   -0.1191689    0.0988608
0-24 months   MAL-ED           BANGLADESH                     1                    NA                -0.0077269   -0.2074690    0.1920153
0-24 months   MAL-ED           PERU                           1                    NA                 0.0490335   -0.0896696    0.1877366
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0585381   -0.1959177    0.0788416
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0203846   -0.1208715    0.0801023
0-24 months   PROBIT           BELARUS                        1                    NA                -0.0304757   -0.0557394   -0.0052119
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.1169173   -0.2707429    0.0369083
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0011892   -0.0543226    0.0567009
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0224277   -0.0920404    0.0471850
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0098471   -0.0347954    0.0151013
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.0773657   -0.2354350    0.0807036
0-6 months    IRC              INDIA                          1                    NA                 0.0296534   -0.1187314    0.1780382
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0258017   -0.0449660   -0.0066375
0-6 months    Keneba           GAMBIA                         1                    NA                 0.0305199   -0.0215100    0.0825498
0-6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.1296905   -0.2368923   -0.0224887
0-6 months    PROBIT           BELARUS                        1                    NA                -0.0035828   -0.0218077    0.0146422
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0557895   -0.0648922    0.1764711
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0007114   -0.0722036    0.0736264
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0370134   -0.0160280    0.0900549
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0031035   -0.0252994    0.0190923
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0186745   -0.0479956    0.0853445
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0325411   -0.0610298   -0.0040524
6-24 months   Keneba           GAMBIA                         1                    NA                 0.0497702   -0.0101477    0.1096881
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.0107143   -0.1131374    0.1345660
6-24 months   NIH-Birth        BANGLADESH                     1                    NA                 0.0183575   -0.1617764    0.1984914
6-24 months   PROBIT           BELARUS                        1                    NA                -0.0293512   -0.0470813   -0.0116211
6-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0423795   -0.1892117    0.1044527
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0817248   -0.1616986   -0.0017509
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0076247   -0.0362150    0.0209656


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0515403   -0.1478583    0.2163006
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0460460   -0.0842670   -0.0091722
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0938783   -0.0178589    0.1933494
0-24 months   LCNI-5           MALAWI                         1                    NA                -0.0159428   -0.2023759    0.1415830
0-24 months   MAL-ED           BANGLADESH                     1                    NA                -0.0126396   -0.3982560    0.2666300
0-24 months   MAL-ED           PERU                           1                    NA                 0.0790274   -0.1742653    0.2776840
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.1044372   -0.3793452    0.1156807
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0306744   -0.1935750    0.1099932
0-24 months   PROBIT           BELARUS                        1                    NA                -0.2391767   -0.4533775   -0.0565451
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.2683348   -0.6763250    0.0403573
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0017198   -0.0818385    0.0788244
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0648213   -0.2862866    0.1185135
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0236055   -0.0851944    0.0344880
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.1514393   -0.5070942    0.1202856
0-6 months    IRC              INDIA                          1                    NA                 0.0698730   -0.3546046    0.3613367
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0624766   -0.1099481   -0.0170355
0-6 months    Keneba           GAMBIA                         1                    NA                 0.0977035   -0.0852035    0.2497822
0-6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.3707970   -0.7157773   -0.0951797
0-6 months    PROBIT           BELARUS                        1                    NA                -0.0522174   -0.3564637    0.1837883
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.2324561   -0.4768940    0.6011064
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0016720   -0.1852750    0.1591329
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1899019   -0.1331480    0.4208534
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0119985   -0.1015520    0.0702745
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0515403   -0.1478583    0.2163006
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.1504864   -0.2901388   -0.0259508
6-24 months   Keneba           GAMBIA                         1                    NA                 0.1386554   -0.0455346    0.2903969
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.0178571   -0.2118637    0.2040321
6-24 months   NIH-Birth        BANGLADESH                     1                    NA                 0.0319865   -0.3387739    0.3000685
6-24 months   PROBIT           BELARUS                        1                    NA                -0.4567148   -0.7468191   -0.2147897
6-24 months   SAS-CompFeed     INDIA                          1                    NA                -0.0842409   -0.4276894    0.1765867
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3616660   -0.7654315   -0.0502442
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0289874   -0.1436286    0.0741618
