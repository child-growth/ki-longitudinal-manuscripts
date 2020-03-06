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

**Outcome Variable:** ever_sstunted

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

agecat        studyid          country                        brthmon    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  --------  --------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1                      0       14     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                      1       20     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                      0        4     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                      1       12     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                      0       11     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                      1       20     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                      0       22     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                      1       22     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                      0       14     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                      1       22     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                      0       15     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                      1       22     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                      0       13     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                      1       26     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                      0        6     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                      1       12     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                      0        7     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                      1       14     373
0-24 months   CMC-V-BCS-2002   INDIA                          10                     0       11     373
0-24 months   CMC-V-BCS-2002   INDIA                          10                     1       18     373
0-24 months   CMC-V-BCS-2002   INDIA                          11                     0       15     373
0-24 months   CMC-V-BCS-2002   INDIA                          11                     1       28     373
0-24 months   CMC-V-BCS-2002   INDIA                          12                     0        4     373
0-24 months   CMC-V-BCS-2002   INDIA                          12                     1       21     373
0-24 months   CMIN             BANGLADESH                     1                      0       14     277
0-24 months   CMIN             BANGLADESH                     1                      1       16     277
0-24 months   CMIN             BANGLADESH                     2                      0       19     277
0-24 months   CMIN             BANGLADESH                     2                      1        8     277
0-24 months   CMIN             BANGLADESH                     3                      0       12     277
0-24 months   CMIN             BANGLADESH                     3                      1        8     277
0-24 months   CMIN             BANGLADESH                     4                      0       12     277
0-24 months   CMIN             BANGLADESH                     4                      1       11     277
0-24 months   CMIN             BANGLADESH                     5                      0       12     277
0-24 months   CMIN             BANGLADESH                     5                      1        8     277
0-24 months   CMIN             BANGLADESH                     6                      0        2     277
0-24 months   CMIN             BANGLADESH                     6                      1        7     277
0-24 months   CMIN             BANGLADESH                     7                      0       12     277
0-24 months   CMIN             BANGLADESH                     7                      1        5     277
0-24 months   CMIN             BANGLADESH                     8                      0        7     277
0-24 months   CMIN             BANGLADESH                     8                      1       17     277
0-24 months   CMIN             BANGLADESH                     9                      0       17     277
0-24 months   CMIN             BANGLADESH                     9                      1        5     277
0-24 months   CMIN             BANGLADESH                     10                     0       10     277
0-24 months   CMIN             BANGLADESH                     10                     1       17     277
0-24 months   CMIN             BANGLADESH                     11                     0       12     277
0-24 months   CMIN             BANGLADESH                     11                     1       18     277
0-24 months   CMIN             BANGLADESH                     12                     0       10     277
0-24 months   CMIN             BANGLADESH                     12                     1       18     277
0-24 months   CONTENT          PERU                           1                      0       10     215
0-24 months   CONTENT          PERU                           1                      1        0     215
0-24 months   CONTENT          PERU                           2                      0       17     215
0-24 months   CONTENT          PERU                           2                      1        1     215
0-24 months   CONTENT          PERU                           3                      0       28     215
0-24 months   CONTENT          PERU                           3                      1        2     215
0-24 months   CONTENT          PERU                           4                      0       18     215
0-24 months   CONTENT          PERU                           4                      1        1     215
0-24 months   CONTENT          PERU                           5                      0       13     215
0-24 months   CONTENT          PERU                           5                      1        1     215
0-24 months   CONTENT          PERU                           6                      0       13     215
0-24 months   CONTENT          PERU                           6                      1        0     215
0-24 months   CONTENT          PERU                           7                      0       27     215
0-24 months   CONTENT          PERU                           7                      1        1     215
0-24 months   CONTENT          PERU                           8                      0       21     215
0-24 months   CONTENT          PERU                           8                      1        2     215
0-24 months   CONTENT          PERU                           9                      0       26     215
0-24 months   CONTENT          PERU                           9                      1        0     215
0-24 months   CONTENT          PERU                           10                     0       13     215
0-24 months   CONTENT          PERU                           10                     1        1     215
0-24 months   CONTENT          PERU                           11                     0        8     215
0-24 months   CONTENT          PERU                           11                     1        1     215
0-24 months   CONTENT          PERU                           12                     0       11     215
0-24 months   CONTENT          PERU                           12                     1        0     215
0-24 months   EE               PAKISTAN                       1                      0       37     379
0-24 months   EE               PAKISTAN                       1                      1       58     379
0-24 months   EE               PAKISTAN                       2                      0       32     379
0-24 months   EE               PAKISTAN                       2                      1       35     379
0-24 months   EE               PAKISTAN                       3                      0       22     379
0-24 months   EE               PAKISTAN                       3                      1       20     379
0-24 months   EE               PAKISTAN                       4                      0        3     379
0-24 months   EE               PAKISTAN                       4                      1       13     379
0-24 months   EE               PAKISTAN                       5                      0        0     379
0-24 months   EE               PAKISTAN                       5                      1        0     379
0-24 months   EE               PAKISTAN                       6                      0        0     379
0-24 months   EE               PAKISTAN                       6                      1        0     379
0-24 months   EE               PAKISTAN                       7                      0        0     379
0-24 months   EE               PAKISTAN                       7                      1        0     379
0-24 months   EE               PAKISTAN                       8                      0        0     379
0-24 months   EE               PAKISTAN                       8                      1        0     379
0-24 months   EE               PAKISTAN                       9                      0        0     379
0-24 months   EE               PAKISTAN                       9                      1        0     379
0-24 months   EE               PAKISTAN                       10                     0        2     379
0-24 months   EE               PAKISTAN                       10                     1        2     379
0-24 months   EE               PAKISTAN                       11                     0       27     379
0-24 months   EE               PAKISTAN                       11                     1       44     379
0-24 months   EE               PAKISTAN                       12                     0       28     379
0-24 months   EE               PAKISTAN                       12                     1       56     379
0-24 months   GMS-Nepal        NEPAL                          1                      0        0     698
0-24 months   GMS-Nepal        NEPAL                          1                      1        0     698
0-24 months   GMS-Nepal        NEPAL                          2                      0        0     698
0-24 months   GMS-Nepal        NEPAL                          2                      1        0     698
0-24 months   GMS-Nepal        NEPAL                          3                      0        0     698
0-24 months   GMS-Nepal        NEPAL                          3                      1        0     698
0-24 months   GMS-Nepal        NEPAL                          4                      0        0     698
0-24 months   GMS-Nepal        NEPAL                          4                      1        1     698
0-24 months   GMS-Nepal        NEPAL                          5                      0        0     698
0-24 months   GMS-Nepal        NEPAL                          5                      1        0     698
0-24 months   GMS-Nepal        NEPAL                          6                      0      130     698
0-24 months   GMS-Nepal        NEPAL                          6                      1       42     698
0-24 months   GMS-Nepal        NEPAL                          7                      0      200     698
0-24 months   GMS-Nepal        NEPAL                          7                      1       69     698
0-24 months   GMS-Nepal        NEPAL                          8                      0      199     698
0-24 months   GMS-Nepal        NEPAL                          8                      1       57     698
0-24 months   GMS-Nepal        NEPAL                          9                      0        0     698
0-24 months   GMS-Nepal        NEPAL                          9                      1        0     698
0-24 months   GMS-Nepal        NEPAL                          10                     0        0     698
0-24 months   GMS-Nepal        NEPAL                          10                     1        0     698
0-24 months   GMS-Nepal        NEPAL                          11                     0        0     698
0-24 months   GMS-Nepal        NEPAL                          11                     1        0     698
0-24 months   GMS-Nepal        NEPAL                          12                     0        0     698
0-24 months   GMS-Nepal        NEPAL                          12                     1        0     698
0-24 months   Guatemala BSC    GUATEMALA                      1                      0       20     315
0-24 months   Guatemala BSC    GUATEMALA                      1                      1        9     315
0-24 months   Guatemala BSC    GUATEMALA                      2                      0       21     315
0-24 months   Guatemala BSC    GUATEMALA                      2                      1        5     315
0-24 months   Guatemala BSC    GUATEMALA                      3                      0       21     315
0-24 months   Guatemala BSC    GUATEMALA                      3                      1        6     315
0-24 months   Guatemala BSC    GUATEMALA                      4                      0       25     315
0-24 months   Guatemala BSC    GUATEMALA                      4                      1        6     315
0-24 months   Guatemala BSC    GUATEMALA                      5                      0       27     315
0-24 months   Guatemala BSC    GUATEMALA                      5                      1        8     315
0-24 months   Guatemala BSC    GUATEMALA                      6                      0       22     315
0-24 months   Guatemala BSC    GUATEMALA                      6                      1        3     315
0-24 months   Guatemala BSC    GUATEMALA                      7                      0       18     315
0-24 months   Guatemala BSC    GUATEMALA                      7                      1        4     315
0-24 months   Guatemala BSC    GUATEMALA                      8                      0       12     315
0-24 months   Guatemala BSC    GUATEMALA                      8                      1        3     315
0-24 months   Guatemala BSC    GUATEMALA                      9                      0       14     315
0-24 months   Guatemala BSC    GUATEMALA                      9                      1        2     315
0-24 months   Guatemala BSC    GUATEMALA                      10                     0       29     315
0-24 months   Guatemala BSC    GUATEMALA                      10                     1        3     315
0-24 months   Guatemala BSC    GUATEMALA                      11                     0       20     315
0-24 months   Guatemala BSC    GUATEMALA                      11                     1        4     315
0-24 months   Guatemala BSC    GUATEMALA                      12                     0       30     315
0-24 months   Guatemala BSC    GUATEMALA                      12                     1        3     315
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0      286    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1       37    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                      0      167    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                      1       14    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                      0      179    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                      1       18    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                      0      186    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                      1       23    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                      0      196    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                      1       22    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                      0      169    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                      1       23    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                      0      165    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                      1       31    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                      0      270    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                      1       33    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                      0      365    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                      1       46    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                     0      332    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                     1       40    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                     0      305    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                     1       37    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                     0      288    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                     1       33    3265
0-24 months   IRC              INDIA                          1                      0       28     410
0-24 months   IRC              INDIA                          1                      1       10     410
0-24 months   IRC              INDIA                          2                      0       17     410
0-24 months   IRC              INDIA                          2                      1       11     410
0-24 months   IRC              INDIA                          3                      0       18     410
0-24 months   IRC              INDIA                          3                      1        9     410
0-24 months   IRC              INDIA                          4                      0       16     410
0-24 months   IRC              INDIA                          4                      1        5     410
0-24 months   IRC              INDIA                          5                      0       11     410
0-24 months   IRC              INDIA                          5                      1       11     410
0-24 months   IRC              INDIA                          6                      0       30     410
0-24 months   IRC              INDIA                          6                      1        7     410
0-24 months   IRC              INDIA                          7                      0       30     410
0-24 months   IRC              INDIA                          7                      1        6     410
0-24 months   IRC              INDIA                          8                      0       39     410
0-24 months   IRC              INDIA                          8                      1        5     410
0-24 months   IRC              INDIA                          9                      0       20     410
0-24 months   IRC              INDIA                          9                      1        7     410
0-24 months   IRC              INDIA                          10                     0       32     410
0-24 months   IRC              INDIA                          10                     1        6     410
0-24 months   IRC              INDIA                          11                     0       33     410
0-24 months   IRC              INDIA                          11                     1        7     410
0-24 months   IRC              INDIA                          12                     0       34     410
0-24 months   IRC              INDIA                          12                     1       18     410
0-24 months   Keneba           GAMBIA                         1                      0      233    2915
0-24 months   Keneba           GAMBIA                         1                      1       62    2915
0-24 months   Keneba           GAMBIA                         2                      0      205    2915
0-24 months   Keneba           GAMBIA                         2                      1       51    2915
0-24 months   Keneba           GAMBIA                         3                      0      239    2915
0-24 months   Keneba           GAMBIA                         3                      1       67    2915
0-24 months   Keneba           GAMBIA                         4                      0      157    2915
0-24 months   Keneba           GAMBIA                         4                      1       40    2915
0-24 months   Keneba           GAMBIA                         5                      0      158    2915
0-24 months   Keneba           GAMBIA                         5                      1       46    2915
0-24 months   Keneba           GAMBIA                         6                      0      122    2915
0-24 months   Keneba           GAMBIA                         6                      1       41    2915
0-24 months   Keneba           GAMBIA                         7                      0      105    2915
0-24 months   Keneba           GAMBIA                         7                      1       36    2915
0-24 months   Keneba           GAMBIA                         8                      0      191    2915
0-24 months   Keneba           GAMBIA                         8                      1       45    2915
0-24 months   Keneba           GAMBIA                         9                      0      199    2915
0-24 months   Keneba           GAMBIA                         9                      1       54    2915
0-24 months   Keneba           GAMBIA                         10                     0      277    2915
0-24 months   Keneba           GAMBIA                         10                     1       73    2915
0-24 months   Keneba           GAMBIA                         11                     0      207    2915
0-24 months   Keneba           GAMBIA                         11                     1       47    2915
0-24 months   Keneba           GAMBIA                         12                     0      203    2915
0-24 months   Keneba           GAMBIA                         12                     1       57    2915
0-24 months   LCNI-5           MALAWI                         1                      0       51     840
0-24 months   LCNI-5           MALAWI                         1                      1       17     840
0-24 months   LCNI-5           MALAWI                         2                      0       43     840
0-24 months   LCNI-5           MALAWI                         2                      1        3     840
0-24 months   LCNI-5           MALAWI                         3                      0       21     840
0-24 months   LCNI-5           MALAWI                         3                      1        5     840
0-24 months   LCNI-5           MALAWI                         4                      0       34     840
0-24 months   LCNI-5           MALAWI                         4                      1        5     840
0-24 months   LCNI-5           MALAWI                         5                      0       33     840
0-24 months   LCNI-5           MALAWI                         5                      1       11     840
0-24 months   LCNI-5           MALAWI                         6                      0       20     840
0-24 months   LCNI-5           MALAWI                         6                      1       14     840
0-24 months   LCNI-5           MALAWI                         7                      0       51     840
0-24 months   LCNI-5           MALAWI                         7                      1       11     840
0-24 months   LCNI-5           MALAWI                         8                      0       79     840
0-24 months   LCNI-5           MALAWI                         8                      1       14     840
0-24 months   LCNI-5           MALAWI                         9                      0       74     840
0-24 months   LCNI-5           MALAWI                         9                      1       19     840
0-24 months   LCNI-5           MALAWI                         10                     0       96     840
0-24 months   LCNI-5           MALAWI                         10                     1       39     840
0-24 months   LCNI-5           MALAWI                         11                     0       85     840
0-24 months   LCNI-5           MALAWI                         11                     1       20     840
0-24 months   LCNI-5           MALAWI                         12                     0       76     840
0-24 months   LCNI-5           MALAWI                         12                     1       19     840
0-24 months   MAL-ED           BANGLADESH                     1                      0       17     265
0-24 months   MAL-ED           BANGLADESH                     1                      1        4     265
0-24 months   MAL-ED           BANGLADESH                     2                      0       18     265
0-24 months   MAL-ED           BANGLADESH                     2                      1        7     265
0-24 months   MAL-ED           BANGLADESH                     3                      0       19     265
0-24 months   MAL-ED           BANGLADESH                     3                      1        6     265
0-24 months   MAL-ED           BANGLADESH                     4                      0       19     265
0-24 months   MAL-ED           BANGLADESH                     4                      1        3     265
0-24 months   MAL-ED           BANGLADESH                     5                      0       15     265
0-24 months   MAL-ED           BANGLADESH                     5                      1        7     265
0-24 months   MAL-ED           BANGLADESH                     6                      0       10     265
0-24 months   MAL-ED           BANGLADESH                     6                      1        1     265
0-24 months   MAL-ED           BANGLADESH                     7                      0       15     265
0-24 months   MAL-ED           BANGLADESH                     7                      1        5     265
0-24 months   MAL-ED           BANGLADESH                     8                      0       17     265
0-24 months   MAL-ED           BANGLADESH                     8                      1        9     265
0-24 months   MAL-ED           BANGLADESH                     9                      0       18     265
0-24 months   MAL-ED           BANGLADESH                     9                      1        5     265
0-24 months   MAL-ED           BANGLADESH                     10                     0       18     265
0-24 months   MAL-ED           BANGLADESH                     10                     1        7     265
0-24 months   MAL-ED           BANGLADESH                     11                     0       16     265
0-24 months   MAL-ED           BANGLADESH                     11                     1        1     265
0-24 months   MAL-ED           BANGLADESH                     12                     0       25     265
0-24 months   MAL-ED           BANGLADESH                     12                     1        3     265
0-24 months   MAL-ED           BRAZIL                         1                      0       13     233
0-24 months   MAL-ED           BRAZIL                         1                      1        2     233
0-24 months   MAL-ED           BRAZIL                         2                      0       23     233
0-24 months   MAL-ED           BRAZIL                         2                      1        2     233
0-24 months   MAL-ED           BRAZIL                         3                      0       19     233
0-24 months   MAL-ED           BRAZIL                         3                      1        1     233
0-24 months   MAL-ED           BRAZIL                         4                      0       11     233
0-24 months   MAL-ED           BRAZIL                         4                      1        1     233
0-24 months   MAL-ED           BRAZIL                         5                      0       19     233
0-24 months   MAL-ED           BRAZIL                         5                      1        4     233
0-24 months   MAL-ED           BRAZIL                         6                      0        7     233
0-24 months   MAL-ED           BRAZIL                         6                      1        2     233
0-24 months   MAL-ED           BRAZIL                         7                      0       16     233
0-24 months   MAL-ED           BRAZIL                         7                      1        2     233
0-24 months   MAL-ED           BRAZIL                         8                      0       21     233
0-24 months   MAL-ED           BRAZIL                         8                      1        0     233
0-24 months   MAL-ED           BRAZIL                         9                      0       28     233
0-24 months   MAL-ED           BRAZIL                         9                      1        4     233
0-24 months   MAL-ED           BRAZIL                         10                     0       20     233
0-24 months   MAL-ED           BRAZIL                         10                     1        1     233
0-24 months   MAL-ED           BRAZIL                         11                     0       21     233
0-24 months   MAL-ED           BRAZIL                         11                     1        1     233
0-24 months   MAL-ED           BRAZIL                         12                     0       13     233
0-24 months   MAL-ED           BRAZIL                         12                     1        2     233
0-24 months   MAL-ED           INDIA                          1                      0       15     251
0-24 months   MAL-ED           INDIA                          1                      1        5     251
0-24 months   MAL-ED           INDIA                          2                      0       19     251
0-24 months   MAL-ED           INDIA                          2                      1        2     251
0-24 months   MAL-ED           INDIA                          3                      0       20     251
0-24 months   MAL-ED           INDIA                          3                      1        3     251
0-24 months   MAL-ED           INDIA                          4                      0       12     251
0-24 months   MAL-ED           INDIA                          4                      1        5     251
0-24 months   MAL-ED           INDIA                          5                      0        5     251
0-24 months   MAL-ED           INDIA                          5                      1        3     251
0-24 months   MAL-ED           INDIA                          6                      0       17     251
0-24 months   MAL-ED           INDIA                          6                      1        3     251
0-24 months   MAL-ED           INDIA                          7                      0       15     251
0-24 months   MAL-ED           INDIA                          7                      1       10     251
0-24 months   MAL-ED           INDIA                          8                      0       18     251
0-24 months   MAL-ED           INDIA                          8                      1        6     251
0-24 months   MAL-ED           INDIA                          9                      0       18     251
0-24 months   MAL-ED           INDIA                          9                      1        5     251
0-24 months   MAL-ED           INDIA                          10                     0       19     251
0-24 months   MAL-ED           INDIA                          10                     1        7     251
0-24 months   MAL-ED           INDIA                          11                     0       18     251
0-24 months   MAL-ED           INDIA                          11                     1        7     251
0-24 months   MAL-ED           INDIA                          12                     0       16     251
0-24 months   MAL-ED           INDIA                          12                     1        3     251
0-24 months   MAL-ED           NEPAL                          1                      0       17     240
0-24 months   MAL-ED           NEPAL                          1                      1        3     240
0-24 months   MAL-ED           NEPAL                          2                      0       16     240
0-24 months   MAL-ED           NEPAL                          2                      1        3     240
0-24 months   MAL-ED           NEPAL                          3                      0       14     240
0-24 months   MAL-ED           NEPAL                          3                      1        3     240
0-24 months   MAL-ED           NEPAL                          4                      0       20     240
0-24 months   MAL-ED           NEPAL                          4                      1        2     240
0-24 months   MAL-ED           NEPAL                          5                      0       19     240
0-24 months   MAL-ED           NEPAL                          5                      1        3     240
0-24 months   MAL-ED           NEPAL                          6                      0       18     240
0-24 months   MAL-ED           NEPAL                          6                      1        0     240
0-24 months   MAL-ED           NEPAL                          7                      0       19     240
0-24 months   MAL-ED           NEPAL                          7                      1        1     240
0-24 months   MAL-ED           NEPAL                          8                      0       23     240
0-24 months   MAL-ED           NEPAL                          8                      1        1     240
0-24 months   MAL-ED           NEPAL                          9                      0       15     240
0-24 months   MAL-ED           NEPAL                          9                      1        1     240
0-24 months   MAL-ED           NEPAL                          10                     0       21     240
0-24 months   MAL-ED           NEPAL                          10                     1        0     240
0-24 months   MAL-ED           NEPAL                          11                     0       21     240
0-24 months   MAL-ED           NEPAL                          11                     1        3     240
0-24 months   MAL-ED           NEPAL                          12                     0       16     240
0-24 months   MAL-ED           NEPAL                          12                     1        1     240
0-24 months   MAL-ED           PERU                           1                      0       29     303
0-24 months   MAL-ED           PERU                           1                      1       13     303
0-24 months   MAL-ED           PERU                           2                      0       18     303
0-24 months   MAL-ED           PERU                           2                      1        5     303
0-24 months   MAL-ED           PERU                           3                      0       19     303
0-24 months   MAL-ED           PERU                           3                      1        4     303
0-24 months   MAL-ED           PERU                           4                      0       18     303
0-24 months   MAL-ED           PERU                           4                      1        3     303
0-24 months   MAL-ED           PERU                           5                      0       20     303
0-24 months   MAL-ED           PERU                           5                      1        8     303
0-24 months   MAL-ED           PERU                           6                      0       13     303
0-24 months   MAL-ED           PERU                           6                      1        4     303
0-24 months   MAL-ED           PERU                           7                      0       17     303
0-24 months   MAL-ED           PERU                           7                      1        7     303
0-24 months   MAL-ED           PERU                           8                      0       16     303
0-24 months   MAL-ED           PERU                           8                      1        3     303
0-24 months   MAL-ED           PERU                           9                      0       22     303
0-24 months   MAL-ED           PERU                           9                      1        1     303
0-24 months   MAL-ED           PERU                           10                     0       22     303
0-24 months   MAL-ED           PERU                           10                     1        5     303
0-24 months   MAL-ED           PERU                           11                     0       25     303
0-24 months   MAL-ED           PERU                           11                     1        8     303
0-24 months   MAL-ED           PERU                           12                     0       20     303
0-24 months   MAL-ED           PERU                           12                     1        3     303
0-24 months   MAL-ED           SOUTH AFRICA                   1                      0       27     314
0-24 months   MAL-ED           SOUTH AFRICA                   1                      1       15     314
0-24 months   MAL-ED           SOUTH AFRICA                   2                      0       24     314
0-24 months   MAL-ED           SOUTH AFRICA                   2                      1        6     314
0-24 months   MAL-ED           SOUTH AFRICA                   3                      0       15     314
0-24 months   MAL-ED           SOUTH AFRICA                   3                      1        3     314
0-24 months   MAL-ED           SOUTH AFRICA                   4                      0       14     314
0-24 months   MAL-ED           SOUTH AFRICA                   4                      1        1     314
0-24 months   MAL-ED           SOUTH AFRICA                   5                      0       13     314
0-24 months   MAL-ED           SOUTH AFRICA                   5                      1        3     314
0-24 months   MAL-ED           SOUTH AFRICA                   6                      0       18     314
0-24 months   MAL-ED           SOUTH AFRICA                   6                      1        5     314
0-24 months   MAL-ED           SOUTH AFRICA                   7                      0       19     314
0-24 months   MAL-ED           SOUTH AFRICA                   7                      1        7     314
0-24 months   MAL-ED           SOUTH AFRICA                   8                      0       10     314
0-24 months   MAL-ED           SOUTH AFRICA                   8                      1        2     314
0-24 months   MAL-ED           SOUTH AFRICA                   9                      0       24     314
0-24 months   MAL-ED           SOUTH AFRICA                   9                      1        1     314
0-24 months   MAL-ED           SOUTH AFRICA                   10                     0       23     314
0-24 months   MAL-ED           SOUTH AFRICA                   10                     1        8     314
0-24 months   MAL-ED           SOUTH AFRICA                   11                     0       21     314
0-24 months   MAL-ED           SOUTH AFRICA                   11                     1       10     314
0-24 months   MAL-ED           SOUTH AFRICA                   12                     0       33     314
0-24 months   MAL-ED           SOUTH AFRICA                   12                     1       12     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       11     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        9     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0       11     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1       20     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0        8     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1       11     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0        5     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1        5     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0       13     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1        7     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0       11     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        8     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0       10     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1       13     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0        8     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        4     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0        9     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1       14     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0        9     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1       15     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0       11     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1       16     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0       19     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1       15     262
0-24 months   NIH-Birth        BANGLADESH                     1                      0       48     629
0-24 months   NIH-Birth        BANGLADESH                     1                      1       25     629
0-24 months   NIH-Birth        BANGLADESH                     2                      0       48     629
0-24 months   NIH-Birth        BANGLADESH                     2                      1       10     629
0-24 months   NIH-Birth        BANGLADESH                     3                      0       45     629
0-24 months   NIH-Birth        BANGLADESH                     3                      1       14     629
0-24 months   NIH-Birth        BANGLADESH                     4                      0       37     629
0-24 months   NIH-Birth        BANGLADESH                     4                      1       16     629
0-24 months   NIH-Birth        BANGLADESH                     5                      0       36     629
0-24 months   NIH-Birth        BANGLADESH                     5                      1       13     629
0-24 months   NIH-Birth        BANGLADESH                     6                      0       32     629
0-24 months   NIH-Birth        BANGLADESH                     6                      1       18     629
0-24 months   NIH-Birth        BANGLADESH                     7                      0       28     629
0-24 months   NIH-Birth        BANGLADESH                     7                      1       13     629
0-24 months   NIH-Birth        BANGLADESH                     8                      0       24     629
0-24 months   NIH-Birth        BANGLADESH                     8                      1       17     629
0-24 months   NIH-Birth        BANGLADESH                     9                      0       34     629
0-24 months   NIH-Birth        BANGLADESH                     9                      1       14     629
0-24 months   NIH-Birth        BANGLADESH                     10                     0       33     629
0-24 months   NIH-Birth        BANGLADESH                     10                     1       16     629
0-24 months   NIH-Birth        BANGLADESH                     11                     0       33     629
0-24 months   NIH-Birth        BANGLADESH                     11                     1       20     629
0-24 months   NIH-Birth        BANGLADESH                     12                     0       35     629
0-24 months   NIH-Birth        BANGLADESH                     12                     1       20     629
0-24 months   PROBIT           BELARUS                        1                      0      979   16897
0-24 months   PROBIT           BELARUS                        1                      1       47   16897
0-24 months   PROBIT           BELARUS                        2                      0      949   16897
0-24 months   PROBIT           BELARUS                        2                      1       34   16897
0-24 months   PROBIT           BELARUS                        3                      0     1106   16897
0-24 months   PROBIT           BELARUS                        3                      1       39   16897
0-24 months   PROBIT           BELARUS                        4                      0     1131   16897
0-24 months   PROBIT           BELARUS                        4                      1       32   16897
0-24 months   PROBIT           BELARUS                        5                      0     1147   16897
0-24 months   PROBIT           BELARUS                        5                      1       27   16897
0-24 months   PROBIT           BELARUS                        6                      0     1177   16897
0-24 months   PROBIT           BELARUS                        6                      1       34   16897
0-24 months   PROBIT           BELARUS                        7                      0     1556   16897
0-24 months   PROBIT           BELARUS                        7                      1       34   16897
0-24 months   PROBIT           BELARUS                        8                      0     1558   16897
0-24 months   PROBIT           BELARUS                        8                      1       30   16897
0-24 months   PROBIT           BELARUS                        9                      0     1591   16897
0-24 months   PROBIT           BELARUS                        9                      1       36   16897
0-24 months   PROBIT           BELARUS                        10                     0     1766   16897
0-24 months   PROBIT           BELARUS                        10                     1       48   16897
0-24 months   PROBIT           BELARUS                        11                     0     1659   16897
0-24 months   PROBIT           BELARUS                        11                     1       43   16897
0-24 months   PROBIT           BELARUS                        12                     0     1811   16897
0-24 months   PROBIT           BELARUS                        12                     1       63   16897
0-24 months   PROVIDE          BANGLADESH                     1                      0       34     700
0-24 months   PROVIDE          BANGLADESH                     1                      1        4     700
0-24 months   PROVIDE          BANGLADESH                     2                      0       27     700
0-24 months   PROVIDE          BANGLADESH                     2                      1        8     700
0-24 months   PROVIDE          BANGLADESH                     3                      0       48     700
0-24 months   PROVIDE          BANGLADESH                     3                      1        5     700
0-24 months   PROVIDE          BANGLADESH                     4                      0       35     700
0-24 months   PROVIDE          BANGLADESH                     4                      1        4     700
0-24 months   PROVIDE          BANGLADESH                     5                      0       48     700
0-24 months   PROVIDE          BANGLADESH                     5                      1        4     700
0-24 months   PROVIDE          BANGLADESH                     6                      0       76     700
0-24 months   PROVIDE          BANGLADESH                     6                      1       18     700
0-24 months   PROVIDE          BANGLADESH                     7                      0       79     700
0-24 months   PROVIDE          BANGLADESH                     7                      1       13     700
0-24 months   PROVIDE          BANGLADESH                     8                      0       57     700
0-24 months   PROVIDE          BANGLADESH                     8                      1       12     700
0-24 months   PROVIDE          BANGLADESH                     9                      0       69     700
0-24 months   PROVIDE          BANGLADESH                     9                      1        7     700
0-24 months   PROVIDE          BANGLADESH                     10                     0       69     700
0-24 months   PROVIDE          BANGLADESH                     10                     1       10     700
0-24 months   PROVIDE          BANGLADESH                     11                     0       34     700
0-24 months   PROVIDE          BANGLADESH                     11                     1        8     700
0-24 months   PROVIDE          BANGLADESH                     12                     0       29     700
0-24 months   PROVIDE          BANGLADESH                     12                     1        2     700
0-24 months   ResPak           PAKISTAN                       1                      0        5     284
0-24 months   ResPak           PAKISTAN                       1                      1        7     284
0-24 months   ResPak           PAKISTAN                       2                      0       10     284
0-24 months   ResPak           PAKISTAN                       2                      1        1     284
0-24 months   ResPak           PAKISTAN                       3                      0       11     284
0-24 months   ResPak           PAKISTAN                       3                      1       17     284
0-24 months   ResPak           PAKISTAN                       4                      0       14     284
0-24 months   ResPak           PAKISTAN                       4                      1       16     284
0-24 months   ResPak           PAKISTAN                       5                      0       31     284
0-24 months   ResPak           PAKISTAN                       5                      1       24     284
0-24 months   ResPak           PAKISTAN                       6                      0       26     284
0-24 months   ResPak           PAKISTAN                       6                      1       21     284
0-24 months   ResPak           PAKISTAN                       7                      0       19     284
0-24 months   ResPak           PAKISTAN                       7                      1       12     284
0-24 months   ResPak           PAKISTAN                       8                      0       31     284
0-24 months   ResPak           PAKISTAN                       8                      1       10     284
0-24 months   ResPak           PAKISTAN                       9                      0       11     284
0-24 months   ResPak           PAKISTAN                       9                      1        5     284
0-24 months   ResPak           PAKISTAN                       10                     0        5     284
0-24 months   ResPak           PAKISTAN                       10                     1        1     284
0-24 months   ResPak           PAKISTAN                       11                     0        2     284
0-24 months   ResPak           PAKISTAN                       11                     1        2     284
0-24 months   ResPak           PAKISTAN                       12                     0        0     284
0-24 months   ResPak           PAKISTAN                       12                     1        3     284
0-24 months   SAS-CompFeed     INDIA                          1                      0       76    1533
0-24 months   SAS-CompFeed     INDIA                          1                      1       37    1533
0-24 months   SAS-CompFeed     INDIA                          2                      0       65    1533
0-24 months   SAS-CompFeed     INDIA                          2                      1       26    1533
0-24 months   SAS-CompFeed     INDIA                          3                      0       55    1533
0-24 months   SAS-CompFeed     INDIA                          3                      1       27    1533
0-24 months   SAS-CompFeed     INDIA                          4                      0       55    1533
0-24 months   SAS-CompFeed     INDIA                          4                      1       20    1533
0-24 months   SAS-CompFeed     INDIA                          5                      0       67    1533
0-24 months   SAS-CompFeed     INDIA                          5                      1       34    1533
0-24 months   SAS-CompFeed     INDIA                          6                      0       75    1533
0-24 months   SAS-CompFeed     INDIA                          6                      1       34    1533
0-24 months   SAS-CompFeed     INDIA                          7                      0       72    1533
0-24 months   SAS-CompFeed     INDIA                          7                      1       64    1533
0-24 months   SAS-CompFeed     INDIA                          8                      0      110    1533
0-24 months   SAS-CompFeed     INDIA                          8                      1       72    1533
0-24 months   SAS-CompFeed     INDIA                          9                      0      133    1533
0-24 months   SAS-CompFeed     INDIA                          9                      1       59    1533
0-24 months   SAS-CompFeed     INDIA                          10                     0      115    1533
0-24 months   SAS-CompFeed     INDIA                          10                     1       53    1533
0-24 months   SAS-CompFeed     INDIA                          11                     0      101    1533
0-24 months   SAS-CompFeed     INDIA                          11                     1       41    1533
0-24 months   SAS-CompFeed     INDIA                          12                     0      102    1533
0-24 months   SAS-CompFeed     INDIA                          12                     1       40    1533
0-24 months   SAS-FoodSuppl    INDIA                          1                      0       19     418
0-24 months   SAS-FoodSuppl    INDIA                          1                      1        7     418
0-24 months   SAS-FoodSuppl    INDIA                          2                      0       22     418
0-24 months   SAS-FoodSuppl    INDIA                          2                      1       14     418
0-24 months   SAS-FoodSuppl    INDIA                          3                      0        9     418
0-24 months   SAS-FoodSuppl    INDIA                          3                      1       12     418
0-24 months   SAS-FoodSuppl    INDIA                          4                      0        4     418
0-24 months   SAS-FoodSuppl    INDIA                          4                      1        0     418
0-24 months   SAS-FoodSuppl    INDIA                          5                      0        6     418
0-24 months   SAS-FoodSuppl    INDIA                          5                      1        8     418
0-24 months   SAS-FoodSuppl    INDIA                          6                      0       12     418
0-24 months   SAS-FoodSuppl    INDIA                          6                      1       13     418
0-24 months   SAS-FoodSuppl    INDIA                          7                      0       20     418
0-24 months   SAS-FoodSuppl    INDIA                          7                      1       17     418
0-24 months   SAS-FoodSuppl    INDIA                          8                      0       34     418
0-24 months   SAS-FoodSuppl    INDIA                          8                      1       33     418
0-24 months   SAS-FoodSuppl    INDIA                          9                      0       29     418
0-24 months   SAS-FoodSuppl    INDIA                          9                      1       37     418
0-24 months   SAS-FoodSuppl    INDIA                          10                     0       23     418
0-24 months   SAS-FoodSuppl    INDIA                          10                     1       28     418
0-24 months   SAS-FoodSuppl    INDIA                          11                     0       18     418
0-24 months   SAS-FoodSuppl    INDIA                          11                     1       15     418
0-24 months   SAS-FoodSuppl    INDIA                          12                     0       21     418
0-24 months   SAS-FoodSuppl    INDIA                          12                     1       17     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      154    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       17    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      161    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       17    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      140    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       24    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      169    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       21    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0      167    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1       18    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0      153    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1       13    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0      193    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1       25    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0      210    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1       22    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0      197    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1       19    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0      220    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1       30    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      201    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1       20    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0      192    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1       13    2396
0-24 months   ZVITAMBO         ZIMBABWE                       1                      0     1134   14074
0-24 months   ZVITAMBO         ZIMBABWE                       1                      1      229   14074
0-24 months   ZVITAMBO         ZIMBABWE                       2                      0      868   14074
0-24 months   ZVITAMBO         ZIMBABWE                       2                      1      205   14074
0-24 months   ZVITAMBO         ZIMBABWE                       3                      0      984   14074
0-24 months   ZVITAMBO         ZIMBABWE                       3                      1      221   14074
0-24 months   ZVITAMBO         ZIMBABWE                       4                      0      834   14074
0-24 months   ZVITAMBO         ZIMBABWE                       4                      1      174   14074
0-24 months   ZVITAMBO         ZIMBABWE                       5                      0      839   14074
0-24 months   ZVITAMBO         ZIMBABWE                       5                      1      199   14074
0-24 months   ZVITAMBO         ZIMBABWE                       6                      0      904   14074
0-24 months   ZVITAMBO         ZIMBABWE                       6                      1      250   14074
0-24 months   ZVITAMBO         ZIMBABWE                       7                      0      968   14074
0-24 months   ZVITAMBO         ZIMBABWE                       7                      1      214   14074
0-24 months   ZVITAMBO         ZIMBABWE                       8                      0     1080   14074
0-24 months   ZVITAMBO         ZIMBABWE                       8                      1      186   14074
0-24 months   ZVITAMBO         ZIMBABWE                       9                      0     1136   14074
0-24 months   ZVITAMBO         ZIMBABWE                       9                      1      171   14074
0-24 months   ZVITAMBO         ZIMBABWE                       10                     0      892   14074
0-24 months   ZVITAMBO         ZIMBABWE                       10                     1      160   14074
0-24 months   ZVITAMBO         ZIMBABWE                       11                     0     1024   14074
0-24 months   ZVITAMBO         ZIMBABWE                       11                     1      176   14074
0-24 months   ZVITAMBO         ZIMBABWE                       12                     0     1045   14074
0-24 months   ZVITAMBO         ZIMBABWE                       12                     1      181   14074
0-6 months    CMC-V-BCS-2002   INDIA                          1                      0       26     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                      1        8     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                      0       12     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                      1        3     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                      0       26     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                      1        5     368
0-6 months    CMC-V-BCS-2002   INDIA                          4                      0       37     368
0-6 months    CMC-V-BCS-2002   INDIA                          4                      1        7     368
0-6 months    CMC-V-BCS-2002   INDIA                          5                      0       29     368
0-6 months    CMC-V-BCS-2002   INDIA                          5                      1        7     368
0-6 months    CMC-V-BCS-2002   INDIA                          6                      0       29     368
0-6 months    CMC-V-BCS-2002   INDIA                          6                      1        7     368
0-6 months    CMC-V-BCS-2002   INDIA                          7                      0       27     368
0-6 months    CMC-V-BCS-2002   INDIA                          7                      1       12     368
0-6 months    CMC-V-BCS-2002   INDIA                          8                      0        9     368
0-6 months    CMC-V-BCS-2002   INDIA                          8                      1        8     368
0-6 months    CMC-V-BCS-2002   INDIA                          9                      0       16     368
0-6 months    CMC-V-BCS-2002   INDIA                          9                      1        5     368
0-6 months    CMC-V-BCS-2002   INDIA                          10                     0       22     368
0-6 months    CMC-V-BCS-2002   INDIA                          10                     1        7     368
0-6 months    CMC-V-BCS-2002   INDIA                          11                     0       29     368
0-6 months    CMC-V-BCS-2002   INDIA                          11                     1       12     368
0-6 months    CMC-V-BCS-2002   INDIA                          12                     0       15     368
0-6 months    CMC-V-BCS-2002   INDIA                          12                     1       10     368
0-6 months    CMIN             BANGLADESH                     1                      0       24     277
0-6 months    CMIN             BANGLADESH                     1                      1        6     277
0-6 months    CMIN             BANGLADESH                     2                      0       25     277
0-6 months    CMIN             BANGLADESH                     2                      1        2     277
0-6 months    CMIN             BANGLADESH                     3                      0       18     277
0-6 months    CMIN             BANGLADESH                     3                      1        2     277
0-6 months    CMIN             BANGLADESH                     4                      0       18     277
0-6 months    CMIN             BANGLADESH                     4                      1        5     277
0-6 months    CMIN             BANGLADESH                     5                      0       12     277
0-6 months    CMIN             BANGLADESH                     5                      1        8     277
0-6 months    CMIN             BANGLADESH                     6                      0        5     277
0-6 months    CMIN             BANGLADESH                     6                      1        4     277
0-6 months    CMIN             BANGLADESH                     7                      0       16     277
0-6 months    CMIN             BANGLADESH                     7                      1        1     277
0-6 months    CMIN             BANGLADESH                     8                      0       13     277
0-6 months    CMIN             BANGLADESH                     8                      1       11     277
0-6 months    CMIN             BANGLADESH                     9                      0       17     277
0-6 months    CMIN             BANGLADESH                     9                      1        5     277
0-6 months    CMIN             BANGLADESH                     10                     0       20     277
0-6 months    CMIN             BANGLADESH                     10                     1        7     277
0-6 months    CMIN             BANGLADESH                     11                     0       22     277
0-6 months    CMIN             BANGLADESH                     11                     1        8     277
0-6 months    CMIN             BANGLADESH                     12                     0       17     277
0-6 months    CMIN             BANGLADESH                     12                     1       11     277
0-6 months    CONTENT          PERU                           1                      0       10     215
0-6 months    CONTENT          PERU                           1                      1        0     215
0-6 months    CONTENT          PERU                           2                      0       18     215
0-6 months    CONTENT          PERU                           2                      1        0     215
0-6 months    CONTENT          PERU                           3                      0       29     215
0-6 months    CONTENT          PERU                           3                      1        1     215
0-6 months    CONTENT          PERU                           4                      0       18     215
0-6 months    CONTENT          PERU                           4                      1        1     215
0-6 months    CONTENT          PERU                           5                      0       13     215
0-6 months    CONTENT          PERU                           5                      1        1     215
0-6 months    CONTENT          PERU                           6                      0       13     215
0-6 months    CONTENT          PERU                           6                      1        0     215
0-6 months    CONTENT          PERU                           7                      0       27     215
0-6 months    CONTENT          PERU                           7                      1        1     215
0-6 months    CONTENT          PERU                           8                      0       21     215
0-6 months    CONTENT          PERU                           8                      1        2     215
0-6 months    CONTENT          PERU                           9                      0       26     215
0-6 months    CONTENT          PERU                           9                      1        0     215
0-6 months    CONTENT          PERU                           10                     0       13     215
0-6 months    CONTENT          PERU                           10                     1        1     215
0-6 months    CONTENT          PERU                           11                     0        8     215
0-6 months    CONTENT          PERU                           11                     1        1     215
0-6 months    CONTENT          PERU                           12                     0       11     215
0-6 months    CONTENT          PERU                           12                     1        0     215
0-6 months    EE               PAKISTAN                       1                      0       48     379
0-6 months    EE               PAKISTAN                       1                      1       47     379
0-6 months    EE               PAKISTAN                       2                      0       45     379
0-6 months    EE               PAKISTAN                       2                      1       22     379
0-6 months    EE               PAKISTAN                       3                      0       30     379
0-6 months    EE               PAKISTAN                       3                      1       12     379
0-6 months    EE               PAKISTAN                       4                      0        6     379
0-6 months    EE               PAKISTAN                       4                      1       10     379
0-6 months    EE               PAKISTAN                       5                      0        0     379
0-6 months    EE               PAKISTAN                       5                      1        0     379
0-6 months    EE               PAKISTAN                       6                      0        0     379
0-6 months    EE               PAKISTAN                       6                      1        0     379
0-6 months    EE               PAKISTAN                       7                      0        0     379
0-6 months    EE               PAKISTAN                       7                      1        0     379
0-6 months    EE               PAKISTAN                       8                      0        0     379
0-6 months    EE               PAKISTAN                       8                      1        0     379
0-6 months    EE               PAKISTAN                       9                      0        0     379
0-6 months    EE               PAKISTAN                       9                      1        0     379
0-6 months    EE               PAKISTAN                       10                     0        3     379
0-6 months    EE               PAKISTAN                       10                     1        1     379
0-6 months    EE               PAKISTAN                       11                     0       38     379
0-6 months    EE               PAKISTAN                       11                     1       33     379
0-6 months    EE               PAKISTAN                       12                     0       48     379
0-6 months    EE               PAKISTAN                       12                     1       36     379
0-6 months    GMS-Nepal        NEPAL                          1                      0        0     698
0-6 months    GMS-Nepal        NEPAL                          1                      1        0     698
0-6 months    GMS-Nepal        NEPAL                          2                      0        0     698
0-6 months    GMS-Nepal        NEPAL                          2                      1        0     698
0-6 months    GMS-Nepal        NEPAL                          3                      0        0     698
0-6 months    GMS-Nepal        NEPAL                          3                      1        0     698
0-6 months    GMS-Nepal        NEPAL                          4                      0        0     698
0-6 months    GMS-Nepal        NEPAL                          4                      1        1     698
0-6 months    GMS-Nepal        NEPAL                          5                      0        0     698
0-6 months    GMS-Nepal        NEPAL                          5                      1        0     698
0-6 months    GMS-Nepal        NEPAL                          6                      0      160     698
0-6 months    GMS-Nepal        NEPAL                          6                      1       12     698
0-6 months    GMS-Nepal        NEPAL                          7                      0      239     698
0-6 months    GMS-Nepal        NEPAL                          7                      1       30     698
0-6 months    GMS-Nepal        NEPAL                          8                      0      239     698
0-6 months    GMS-Nepal        NEPAL                          8                      1       17     698
0-6 months    GMS-Nepal        NEPAL                          9                      0        0     698
0-6 months    GMS-Nepal        NEPAL                          9                      1        0     698
0-6 months    GMS-Nepal        NEPAL                          10                     0        0     698
0-6 months    GMS-Nepal        NEPAL                          10                     1        0     698
0-6 months    GMS-Nepal        NEPAL                          11                     0        0     698
0-6 months    GMS-Nepal        NEPAL                          11                     1        0     698
0-6 months    GMS-Nepal        NEPAL                          12                     0        0     698
0-6 months    GMS-Nepal        NEPAL                          12                     1        0     698
0-6 months    Guatemala BSC    GUATEMALA                      1                      0       25     295
0-6 months    Guatemala BSC    GUATEMALA                      1                      1        4     295
0-6 months    Guatemala BSC    GUATEMALA                      2                      0       21     295
0-6 months    Guatemala BSC    GUATEMALA                      2                      1        2     295
0-6 months    Guatemala BSC    GUATEMALA                      3                      0       21     295
0-6 months    Guatemala BSC    GUATEMALA                      3                      1        4     295
0-6 months    Guatemala BSC    GUATEMALA                      4                      0       27     295
0-6 months    Guatemala BSC    GUATEMALA                      4                      1        3     295
0-6 months    Guatemala BSC    GUATEMALA                      5                      0       30     295
0-6 months    Guatemala BSC    GUATEMALA                      5                      1        5     295
0-6 months    Guatemala BSC    GUATEMALA                      6                      0       22     295
0-6 months    Guatemala BSC    GUATEMALA                      6                      1        3     295
0-6 months    Guatemala BSC    GUATEMALA                      7                      0       20     295
0-6 months    Guatemala BSC    GUATEMALA                      7                      1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      8                      0       13     295
0-6 months    Guatemala BSC    GUATEMALA                      8                      1        2     295
0-6 months    Guatemala BSC    GUATEMALA                      9                      0       15     295
0-6 months    Guatemala BSC    GUATEMALA                      9                      1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      10                     0       25     295
0-6 months    Guatemala BSC    GUATEMALA                      10                     1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      11                     0       19     295
0-6 months    Guatemala BSC    GUATEMALA                      11                     1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      12                     0       30     295
0-6 months    Guatemala BSC    GUATEMALA                      12                     1        1     295
0-6 months    IRC              INDIA                          1                      0       31     410
0-6 months    IRC              INDIA                          1                      1        7     410
0-6 months    IRC              INDIA                          2                      0       20     410
0-6 months    IRC              INDIA                          2                      1        8     410
0-6 months    IRC              INDIA                          3                      0       22     410
0-6 months    IRC              INDIA                          3                      1        5     410
0-6 months    IRC              INDIA                          4                      0       17     410
0-6 months    IRC              INDIA                          4                      1        4     410
0-6 months    IRC              INDIA                          5                      0       17     410
0-6 months    IRC              INDIA                          5                      1        5     410
0-6 months    IRC              INDIA                          6                      0       32     410
0-6 months    IRC              INDIA                          6                      1        5     410
0-6 months    IRC              INDIA                          7                      0       33     410
0-6 months    IRC              INDIA                          7                      1        3     410
0-6 months    IRC              INDIA                          8                      0       43     410
0-6 months    IRC              INDIA                          8                      1        1     410
0-6 months    IRC              INDIA                          9                      0       23     410
0-6 months    IRC              INDIA                          9                      1        4     410
0-6 months    IRC              INDIA                          10                     0       34     410
0-6 months    IRC              INDIA                          10                     1        4     410
0-6 months    IRC              INDIA                          11                     0       34     410
0-6 months    IRC              INDIA                          11                     1        6     410
0-6 months    IRC              INDIA                          12                     0       42     410
0-6 months    IRC              INDIA                          12                     1       10     410
0-6 months    Keneba           GAMBIA                         1                      0      225    2465
0-6 months    Keneba           GAMBIA                         1                      1       34    2465
0-6 months    Keneba           GAMBIA                         2                      0      190    2465
0-6 months    Keneba           GAMBIA                         2                      1       26    2465
0-6 months    Keneba           GAMBIA                         3                      0      240    2465
0-6 months    Keneba           GAMBIA                         3                      1       22    2465
0-6 months    Keneba           GAMBIA                         4                      0      150    2465
0-6 months    Keneba           GAMBIA                         4                      1       17    2465
0-6 months    Keneba           GAMBIA                         5                      0      150    2465
0-6 months    Keneba           GAMBIA                         5                      1       19    2465
0-6 months    Keneba           GAMBIA                         6                      0      122    2465
0-6 months    Keneba           GAMBIA                         6                      1       19    2465
0-6 months    Keneba           GAMBIA                         7                      0       90    2465
0-6 months    Keneba           GAMBIA                         7                      1       15    2465
0-6 months    Keneba           GAMBIA                         8                      0      175    2465
0-6 months    Keneba           GAMBIA                         8                      1       23    2465
0-6 months    Keneba           GAMBIA                         9                      0      186    2465
0-6 months    Keneba           GAMBIA                         9                      1       28    2465
0-6 months    Keneba           GAMBIA                         10                     0      259    2465
0-6 months    Keneba           GAMBIA                         10                     1       31    2465
0-6 months    Keneba           GAMBIA                         11                     0      199    2465
0-6 months    Keneba           GAMBIA                         11                     1       19    2465
0-6 months    Keneba           GAMBIA                         12                     0      192    2465
0-6 months    Keneba           GAMBIA                         12                     1       34    2465
0-6 months    LCNI-5           MALAWI                         1                      0       26     272
0-6 months    LCNI-5           MALAWI                         1                      1        3     272
0-6 months    LCNI-5           MALAWI                         2                      0        4     272
0-6 months    LCNI-5           MALAWI                         2                      1        0     272
0-6 months    LCNI-5           MALAWI                         3                      0        3     272
0-6 months    LCNI-5           MALAWI                         3                      1        1     272
0-6 months    LCNI-5           MALAWI                         4                      0        5     272
0-6 months    LCNI-5           MALAWI                         4                      1        0     272
0-6 months    LCNI-5           MALAWI                         5                      0        9     272
0-6 months    LCNI-5           MALAWI                         5                      1        1     272
0-6 months    LCNI-5           MALAWI                         6                      0        3     272
0-6 months    LCNI-5           MALAWI                         6                      1        2     272
0-6 months    LCNI-5           MALAWI                         7                      0        2     272
0-6 months    LCNI-5           MALAWI                         7                      1        1     272
0-6 months    LCNI-5           MALAWI                         8                      0       31     272
0-6 months    LCNI-5           MALAWI                         8                      1        1     272
0-6 months    LCNI-5           MALAWI                         9                      0       51     272
0-6 months    LCNI-5           MALAWI                         9                      1        2     272
0-6 months    LCNI-5           MALAWI                         10                     0       61     272
0-6 months    LCNI-5           MALAWI                         10                     1        8     272
0-6 months    LCNI-5           MALAWI                         11                     0       29     272
0-6 months    LCNI-5           MALAWI                         11                     1        1     272
0-6 months    LCNI-5           MALAWI                         12                     0       28     272
0-6 months    LCNI-5           MALAWI                         12                     1        0     272
0-6 months    MAL-ED           BANGLADESH                     1                      0       19     265
0-6 months    MAL-ED           BANGLADESH                     1                      1        2     265
0-6 months    MAL-ED           BANGLADESH                     2                      0       23     265
0-6 months    MAL-ED           BANGLADESH                     2                      1        2     265
0-6 months    MAL-ED           BANGLADESH                     3                      0       24     265
0-6 months    MAL-ED           BANGLADESH                     3                      1        1     265
0-6 months    MAL-ED           BANGLADESH                     4                      0       22     265
0-6 months    MAL-ED           BANGLADESH                     4                      1        0     265
0-6 months    MAL-ED           BANGLADESH                     5                      0       18     265
0-6 months    MAL-ED           BANGLADESH                     5                      1        4     265
0-6 months    MAL-ED           BANGLADESH                     6                      0       11     265
0-6 months    MAL-ED           BANGLADESH                     6                      1        0     265
0-6 months    MAL-ED           BANGLADESH                     7                      0       19     265
0-6 months    MAL-ED           BANGLADESH                     7                      1        1     265
0-6 months    MAL-ED           BANGLADESH                     8                      0       22     265
0-6 months    MAL-ED           BANGLADESH                     8                      1        4     265
0-6 months    MAL-ED           BANGLADESH                     9                      0       21     265
0-6 months    MAL-ED           BANGLADESH                     9                      1        2     265
0-6 months    MAL-ED           BANGLADESH                     10                     0       21     265
0-6 months    MAL-ED           BANGLADESH                     10                     1        4     265
0-6 months    MAL-ED           BANGLADESH                     11                     0       17     265
0-6 months    MAL-ED           BANGLADESH                     11                     1        0     265
0-6 months    MAL-ED           BANGLADESH                     12                     0       27     265
0-6 months    MAL-ED           BANGLADESH                     12                     1        1     265
0-6 months    MAL-ED           BRAZIL                         1                      0       14     233
0-6 months    MAL-ED           BRAZIL                         1                      1        1     233
0-6 months    MAL-ED           BRAZIL                         2                      0       24     233
0-6 months    MAL-ED           BRAZIL                         2                      1        1     233
0-6 months    MAL-ED           BRAZIL                         3                      0       19     233
0-6 months    MAL-ED           BRAZIL                         3                      1        1     233
0-6 months    MAL-ED           BRAZIL                         4                      0       11     233
0-6 months    MAL-ED           BRAZIL                         4                      1        1     233
0-6 months    MAL-ED           BRAZIL                         5                      0       19     233
0-6 months    MAL-ED           BRAZIL                         5                      1        4     233
0-6 months    MAL-ED           BRAZIL                         6                      0        8     233
0-6 months    MAL-ED           BRAZIL                         6                      1        1     233
0-6 months    MAL-ED           BRAZIL                         7                      0       17     233
0-6 months    MAL-ED           BRAZIL                         7                      1        1     233
0-6 months    MAL-ED           BRAZIL                         8                      0       21     233
0-6 months    MAL-ED           BRAZIL                         8                      1        0     233
0-6 months    MAL-ED           BRAZIL                         9                      0       28     233
0-6 months    MAL-ED           BRAZIL                         9                      1        4     233
0-6 months    MAL-ED           BRAZIL                         10                     0       20     233
0-6 months    MAL-ED           BRAZIL                         10                     1        1     233
0-6 months    MAL-ED           BRAZIL                         11                     0       22     233
0-6 months    MAL-ED           BRAZIL                         11                     1        0     233
0-6 months    MAL-ED           BRAZIL                         12                     0       13     233
0-6 months    MAL-ED           BRAZIL                         12                     1        2     233
0-6 months    MAL-ED           INDIA                          1                      0       19     251
0-6 months    MAL-ED           INDIA                          1                      1        1     251
0-6 months    MAL-ED           INDIA                          2                      0       21     251
0-6 months    MAL-ED           INDIA                          2                      1        0     251
0-6 months    MAL-ED           INDIA                          3                      0       21     251
0-6 months    MAL-ED           INDIA                          3                      1        2     251
0-6 months    MAL-ED           INDIA                          4                      0       15     251
0-6 months    MAL-ED           INDIA                          4                      1        2     251
0-6 months    MAL-ED           INDIA                          5                      0        8     251
0-6 months    MAL-ED           INDIA                          5                      1        0     251
0-6 months    MAL-ED           INDIA                          6                      0       20     251
0-6 months    MAL-ED           INDIA                          6                      1        0     251
0-6 months    MAL-ED           INDIA                          7                      0       19     251
0-6 months    MAL-ED           INDIA                          7                      1        6     251
0-6 months    MAL-ED           INDIA                          8                      0       22     251
0-6 months    MAL-ED           INDIA                          8                      1        2     251
0-6 months    MAL-ED           INDIA                          9                      0       20     251
0-6 months    MAL-ED           INDIA                          9                      1        3     251
0-6 months    MAL-ED           INDIA                          10                     0       23     251
0-6 months    MAL-ED           INDIA                          10                     1        3     251
0-6 months    MAL-ED           INDIA                          11                     0       24     251
0-6 months    MAL-ED           INDIA                          11                     1        1     251
0-6 months    MAL-ED           INDIA                          12                     0       18     251
0-6 months    MAL-ED           INDIA                          12                     1        1     251
0-6 months    MAL-ED           NEPAL                          1                      0       18     240
0-6 months    MAL-ED           NEPAL                          1                      1        2     240
0-6 months    MAL-ED           NEPAL                          2                      0       18     240
0-6 months    MAL-ED           NEPAL                          2                      1        1     240
0-6 months    MAL-ED           NEPAL                          3                      0       16     240
0-6 months    MAL-ED           NEPAL                          3                      1        1     240
0-6 months    MAL-ED           NEPAL                          4                      0       22     240
0-6 months    MAL-ED           NEPAL                          4                      1        0     240
0-6 months    MAL-ED           NEPAL                          5                      0       21     240
0-6 months    MAL-ED           NEPAL                          5                      1        1     240
0-6 months    MAL-ED           NEPAL                          6                      0       18     240
0-6 months    MAL-ED           NEPAL                          6                      1        0     240
0-6 months    MAL-ED           NEPAL                          7                      0       19     240
0-6 months    MAL-ED           NEPAL                          7                      1        1     240
0-6 months    MAL-ED           NEPAL                          8                      0       23     240
0-6 months    MAL-ED           NEPAL                          8                      1        1     240
0-6 months    MAL-ED           NEPAL                          9                      0       15     240
0-6 months    MAL-ED           NEPAL                          9                      1        1     240
0-6 months    MAL-ED           NEPAL                          10                     0       21     240
0-6 months    MAL-ED           NEPAL                          10                     1        0     240
0-6 months    MAL-ED           NEPAL                          11                     0       22     240
0-6 months    MAL-ED           NEPAL                          11                     1        2     240
0-6 months    MAL-ED           NEPAL                          12                     0       17     240
0-6 months    MAL-ED           NEPAL                          12                     1        0     240
0-6 months    MAL-ED           PERU                           1                      0       36     303
0-6 months    MAL-ED           PERU                           1                      1        6     303
0-6 months    MAL-ED           PERU                           2                      0       20     303
0-6 months    MAL-ED           PERU                           2                      1        3     303
0-6 months    MAL-ED           PERU                           3                      0       22     303
0-6 months    MAL-ED           PERU                           3                      1        1     303
0-6 months    MAL-ED           PERU                           4                      0       19     303
0-6 months    MAL-ED           PERU                           4                      1        2     303
0-6 months    MAL-ED           PERU                           5                      0       21     303
0-6 months    MAL-ED           PERU                           5                      1        7     303
0-6 months    MAL-ED           PERU                           6                      0       15     303
0-6 months    MAL-ED           PERU                           6                      1        2     303
0-6 months    MAL-ED           PERU                           7                      0       20     303
0-6 months    MAL-ED           PERU                           7                      1        4     303
0-6 months    MAL-ED           PERU                           8                      0       17     303
0-6 months    MAL-ED           PERU                           8                      1        2     303
0-6 months    MAL-ED           PERU                           9                      0       23     303
0-6 months    MAL-ED           PERU                           9                      1        0     303
0-6 months    MAL-ED           PERU                           10                     0       23     303
0-6 months    MAL-ED           PERU                           10                     1        4     303
0-6 months    MAL-ED           PERU                           11                     0       28     303
0-6 months    MAL-ED           PERU                           11                     1        5     303
0-6 months    MAL-ED           PERU                           12                     0       21     303
0-6 months    MAL-ED           PERU                           12                     1        2     303
0-6 months    MAL-ED           SOUTH AFRICA                   1                      0       36     314
0-6 months    MAL-ED           SOUTH AFRICA                   1                      1        6     314
0-6 months    MAL-ED           SOUTH AFRICA                   2                      0       28     314
0-6 months    MAL-ED           SOUTH AFRICA                   2                      1        2     314
0-6 months    MAL-ED           SOUTH AFRICA                   3                      0       16     314
0-6 months    MAL-ED           SOUTH AFRICA                   3                      1        2     314
0-6 months    MAL-ED           SOUTH AFRICA                   4                      0       15     314
0-6 months    MAL-ED           SOUTH AFRICA                   4                      1        0     314
0-6 months    MAL-ED           SOUTH AFRICA                   5                      0       15     314
0-6 months    MAL-ED           SOUTH AFRICA                   5                      1        1     314
0-6 months    MAL-ED           SOUTH AFRICA                   6                      0       21     314
0-6 months    MAL-ED           SOUTH AFRICA                   6                      1        2     314
0-6 months    MAL-ED           SOUTH AFRICA                   7                      0       25     314
0-6 months    MAL-ED           SOUTH AFRICA                   7                      1        1     314
0-6 months    MAL-ED           SOUTH AFRICA                   8                      0       11     314
0-6 months    MAL-ED           SOUTH AFRICA                   8                      1        1     314
0-6 months    MAL-ED           SOUTH AFRICA                   9                      0       24     314
0-6 months    MAL-ED           SOUTH AFRICA                   9                      1        1     314
0-6 months    MAL-ED           SOUTH AFRICA                   10                     0       27     314
0-6 months    MAL-ED           SOUTH AFRICA                   10                     1        4     314
0-6 months    MAL-ED           SOUTH AFRICA                   11                     0       26     314
0-6 months    MAL-ED           SOUTH AFRICA                   11                     1        5     314
0-6 months    MAL-ED           SOUTH AFRICA                   12                     0       41     314
0-6 months    MAL-ED           SOUTH AFRICA                   12                     1        4     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       17     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        3     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0       28     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1        3     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0       16     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1        3     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0        9     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1        1     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0       18     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1        2     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0       18     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        1     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0       19     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1        4     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0       10     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        2     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0       17     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1        6     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0       19     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1        5     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0       25     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1        2     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0       28     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1        6     262
0-6 months    NIH-Birth        BANGLADESH                     1                      0       61     629
0-6 months    NIH-Birth        BANGLADESH                     1                      1       12     629
0-6 months    NIH-Birth        BANGLADESH                     2                      0       57     629
0-6 months    NIH-Birth        BANGLADESH                     2                      1        1     629
0-6 months    NIH-Birth        BANGLADESH                     3                      0       55     629
0-6 months    NIH-Birth        BANGLADESH                     3                      1        4     629
0-6 months    NIH-Birth        BANGLADESH                     4                      0       47     629
0-6 months    NIH-Birth        BANGLADESH                     4                      1        6     629
0-6 months    NIH-Birth        BANGLADESH                     5                      0       44     629
0-6 months    NIH-Birth        BANGLADESH                     5                      1        5     629
0-6 months    NIH-Birth        BANGLADESH                     6                      0       43     629
0-6 months    NIH-Birth        BANGLADESH                     6                      1        7     629
0-6 months    NIH-Birth        BANGLADESH                     7                      0       39     629
0-6 months    NIH-Birth        BANGLADESH                     7                      1        2     629
0-6 months    NIH-Birth        BANGLADESH                     8                      0       35     629
0-6 months    NIH-Birth        BANGLADESH                     8                      1        6     629
0-6 months    NIH-Birth        BANGLADESH                     9                      0       46     629
0-6 months    NIH-Birth        BANGLADESH                     9                      1        2     629
0-6 months    NIH-Birth        BANGLADESH                     10                     0       45     629
0-6 months    NIH-Birth        BANGLADESH                     10                     1        4     629
0-6 months    NIH-Birth        BANGLADESH                     11                     0       47     629
0-6 months    NIH-Birth        BANGLADESH                     11                     1        6     629
0-6 months    NIH-Birth        BANGLADESH                     12                     0       51     629
0-6 months    NIH-Birth        BANGLADESH                     12                     1        4     629
0-6 months    PROBIT           BELARUS                        1                      0     1010   16892
0-6 months    PROBIT           BELARUS                        1                      1       15   16892
0-6 months    PROBIT           BELARUS                        2                      0      975   16892
0-6 months    PROBIT           BELARUS                        2                      1        8   16892
0-6 months    PROBIT           BELARUS                        3                      0     1131   16892
0-6 months    PROBIT           BELARUS                        3                      1       14   16892
0-6 months    PROBIT           BELARUS                        4                      0     1150   16892
0-6 months    PROBIT           BELARUS                        4                      1       11   16892
0-6 months    PROBIT           BELARUS                        5                      0     1164   16892
0-6 months    PROBIT           BELARUS                        5                      1       10   16892
0-6 months    PROBIT           BELARUS                        6                      0     1196   16892
0-6 months    PROBIT           BELARUS                        6                      1       15   16892
0-6 months    PROBIT           BELARUS                        7                      0     1571   16892
0-6 months    PROBIT           BELARUS                        7                      1       19   16892
0-6 months    PROBIT           BELARUS                        8                      0     1577   16892
0-6 months    PROBIT           BELARUS                        8                      1       10   16892
0-6 months    PROBIT           BELARUS                        9                      0     1606   16892
0-6 months    PROBIT           BELARUS                        9                      1       21   16892
0-6 months    PROBIT           BELARUS                        10                     0     1789   16892
0-6 months    PROBIT           BELARUS                        10                     1       25   16892
0-6 months    PROBIT           BELARUS                        11                     0     1682   16892
0-6 months    PROBIT           BELARUS                        11                     1       20   16892
0-6 months    PROBIT           BELARUS                        12                     0     1856   16892
0-6 months    PROBIT           BELARUS                        12                     1       17   16892
0-6 months    PROVIDE          BANGLADESH                     1                      0       37     700
0-6 months    PROVIDE          BANGLADESH                     1                      1        1     700
0-6 months    PROVIDE          BANGLADESH                     2                      0       34     700
0-6 months    PROVIDE          BANGLADESH                     2                      1        1     700
0-6 months    PROVIDE          BANGLADESH                     3                      0       50     700
0-6 months    PROVIDE          BANGLADESH                     3                      1        3     700
0-6 months    PROVIDE          BANGLADESH                     4                      0       38     700
0-6 months    PROVIDE          BANGLADESH                     4                      1        1     700
0-6 months    PROVIDE          BANGLADESH                     5                      0       51     700
0-6 months    PROVIDE          BANGLADESH                     5                      1        1     700
0-6 months    PROVIDE          BANGLADESH                     6                      0       84     700
0-6 months    PROVIDE          BANGLADESH                     6                      1       10     700
0-6 months    PROVIDE          BANGLADESH                     7                      0       88     700
0-6 months    PROVIDE          BANGLADESH                     7                      1        4     700
0-6 months    PROVIDE          BANGLADESH                     8                      0       67     700
0-6 months    PROVIDE          BANGLADESH                     8                      1        2     700
0-6 months    PROVIDE          BANGLADESH                     9                      0       73     700
0-6 months    PROVIDE          BANGLADESH                     9                      1        3     700
0-6 months    PROVIDE          BANGLADESH                     10                     0       77     700
0-6 months    PROVIDE          BANGLADESH                     10                     1        2     700
0-6 months    PROVIDE          BANGLADESH                     11                     0       39     700
0-6 months    PROVIDE          BANGLADESH                     11                     1        3     700
0-6 months    PROVIDE          BANGLADESH                     12                     0       31     700
0-6 months    PROVIDE          BANGLADESH                     12                     1        0     700
0-6 months    ResPak           PAKISTAN                       1                      0        8     282
0-6 months    ResPak           PAKISTAN                       1                      1        4     282
0-6 months    ResPak           PAKISTAN                       2                      0       10     282
0-6 months    ResPak           PAKISTAN                       2                      1        1     282
0-6 months    ResPak           PAKISTAN                       3                      0       14     282
0-6 months    ResPak           PAKISTAN                       3                      1       13     282
0-6 months    ResPak           PAKISTAN                       4                      0       15     282
0-6 months    ResPak           PAKISTAN                       4                      1       15     282
0-6 months    ResPak           PAKISTAN                       5                      0       35     282
0-6 months    ResPak           PAKISTAN                       5                      1       20     282
0-6 months    ResPak           PAKISTAN                       6                      0       26     282
0-6 months    ResPak           PAKISTAN                       6                      1       20     282
0-6 months    ResPak           PAKISTAN                       7                      0       19     282
0-6 months    ResPak           PAKISTAN                       7                      1       12     282
0-6 months    ResPak           PAKISTAN                       8                      0       32     282
0-6 months    ResPak           PAKISTAN                       8                      1        9     282
0-6 months    ResPak           PAKISTAN                       9                      0       13     282
0-6 months    ResPak           PAKISTAN                       9                      1        3     282
0-6 months    ResPak           PAKISTAN                       10                     0        5     282
0-6 months    ResPak           PAKISTAN                       10                     1        1     282
0-6 months    ResPak           PAKISTAN                       11                     0        2     282
0-6 months    ResPak           PAKISTAN                       11                     1        2     282
0-6 months    ResPak           PAKISTAN                       12                     0        0     282
0-6 months    ResPak           PAKISTAN                       12                     1        3     282
0-6 months    SAS-CompFeed     INDIA                          1                      0       96    1530
0-6 months    SAS-CompFeed     INDIA                          1                      1       17    1530
0-6 months    SAS-CompFeed     INDIA                          2                      0       76    1530
0-6 months    SAS-CompFeed     INDIA                          2                      1       15    1530
0-6 months    SAS-CompFeed     INDIA                          3                      0       68    1530
0-6 months    SAS-CompFeed     INDIA                          3                      1       14    1530
0-6 months    SAS-CompFeed     INDIA                          4                      0       69    1530
0-6 months    SAS-CompFeed     INDIA                          4                      1        6    1530
0-6 months    SAS-CompFeed     INDIA                          5                      0       82    1530
0-6 months    SAS-CompFeed     INDIA                          5                      1       19    1530
0-6 months    SAS-CompFeed     INDIA                          6                      0       89    1530
0-6 months    SAS-CompFeed     INDIA                          6                      1       20    1530
0-6 months    SAS-CompFeed     INDIA                          7                      0      114    1530
0-6 months    SAS-CompFeed     INDIA                          7                      1       20    1530
0-6 months    SAS-CompFeed     INDIA                          8                      0      147    1530
0-6 months    SAS-CompFeed     INDIA                          8                      1       35    1530
0-6 months    SAS-CompFeed     INDIA                          9                      0      170    1530
0-6 months    SAS-CompFeed     INDIA                          9                      1       22    1530
0-6 months    SAS-CompFeed     INDIA                          10                     0      144    1530
0-6 months    SAS-CompFeed     INDIA                          10                     1       24    1530
0-6 months    SAS-CompFeed     INDIA                          11                     0      123    1530
0-6 months    SAS-CompFeed     INDIA                          11                     1       19    1530
0-6 months    SAS-CompFeed     INDIA                          12                     0      123    1530
0-6 months    SAS-CompFeed     INDIA                          12                     1       18    1530
0-6 months    SAS-FoodSuppl    INDIA                          1                      0       24     416
0-6 months    SAS-FoodSuppl    INDIA                          1                      1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          2                      0       33     416
0-6 months    SAS-FoodSuppl    INDIA                          2                      1        3     416
0-6 months    SAS-FoodSuppl    INDIA                          3                      0       20     416
0-6 months    SAS-FoodSuppl    INDIA                          3                      1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          4                      0        4     416
0-6 months    SAS-FoodSuppl    INDIA                          4                      1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          5                      0       13     416
0-6 months    SAS-FoodSuppl    INDIA                          5                      1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          6                      0       18     416
0-6 months    SAS-FoodSuppl    INDIA                          6                      1        7     416
0-6 months    SAS-FoodSuppl    INDIA                          7                      0       35     416
0-6 months    SAS-FoodSuppl    INDIA                          7                      1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          8                      0       62     416
0-6 months    SAS-FoodSuppl    INDIA                          8                      1        5     416
0-6 months    SAS-FoodSuppl    INDIA                          9                      0       54     416
0-6 months    SAS-FoodSuppl    INDIA                          9                      1       11     416
0-6 months    SAS-FoodSuppl    INDIA                          10                     0       41     416
0-6 months    SAS-FoodSuppl    INDIA                          10                     1        9     416
0-6 months    SAS-FoodSuppl    INDIA                          11                     0       27     416
0-6 months    SAS-FoodSuppl    INDIA                          11                     1        6     416
0-6 months    SAS-FoodSuppl    INDIA                          12                     0       35     416
0-6 months    SAS-FoodSuppl    INDIA                          12                     1        3     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      164    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        7    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      171    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        7    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      157    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        7    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      182    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        8    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0      176    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1        9    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0      162    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1        4    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0      209    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1        9    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0      218    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1       14    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0      206    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1       10    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0      232    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1       18    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      215    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1        6    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0      199    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1        6    2396
0-6 months    ZVITAMBO         ZIMBABWE                       1                      0     1245   14057
0-6 months    ZVITAMBO         ZIMBABWE                       1                      1      115   14057
0-6 months    ZVITAMBO         ZIMBABWE                       2                      0      971   14057
0-6 months    ZVITAMBO         ZIMBABWE                       2                      1       99   14057
0-6 months    ZVITAMBO         ZIMBABWE                       3                      0     1088   14057
0-6 months    ZVITAMBO         ZIMBABWE                       3                      1      112   14057
0-6 months    ZVITAMBO         ZIMBABWE                       4                      0      904   14057
0-6 months    ZVITAMBO         ZIMBABWE                       4                      1      103   14057
0-6 months    ZVITAMBO         ZIMBABWE                       5                      0      922   14057
0-6 months    ZVITAMBO         ZIMBABWE                       5                      1      114   14057
0-6 months    ZVITAMBO         ZIMBABWE                       6                      0      993   14057
0-6 months    ZVITAMBO         ZIMBABWE                       6                      1      161   14057
0-6 months    ZVITAMBO         ZIMBABWE                       7                      0     1058   14057
0-6 months    ZVITAMBO         ZIMBABWE                       7                      1      123   14057
0-6 months    ZVITAMBO         ZIMBABWE                       8                      0     1147   14057
0-6 months    ZVITAMBO         ZIMBABWE                       8                      1      119   14057
0-6 months    ZVITAMBO         ZIMBABWE                       9                      0     1230   14057
0-6 months    ZVITAMBO         ZIMBABWE                       9                      1       77   14057
0-6 months    ZVITAMBO         ZIMBABWE                       10                     0      965   14057
0-6 months    ZVITAMBO         ZIMBABWE                       10                     1       86   14057
0-6 months    ZVITAMBO         ZIMBABWE                       11                     0     1107   14057
0-6 months    ZVITAMBO         ZIMBABWE                       11                     1       92   14057
0-6 months    ZVITAMBO         ZIMBABWE                       12                     0     1145   14057
0-6 months    ZVITAMBO         ZIMBABWE                       12                     1       81   14057


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/d2777e63-eecc-41f3-9e10-46978b0c872a/24bd54d7-1146-4b3f-8844-168fcae9382d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2777e63-eecc-41f3-9e10-46978b0c872a/24bd54d7-1146-4b3f-8844-168fcae9382d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d2777e63-eecc-41f3-9e10-46978b0c872a/24bd54d7-1146-4b3f-8844-168fcae9382d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d2777e63-eecc-41f3-9e10-46978b0c872a/24bd54d7-1146-4b3f-8844-168fcae9382d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1145511   0.0656331   0.1634691
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                    NA                0.0773481   0.0065816   0.1481146
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                    NA                0.0913706   0.0543252   0.1284160
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                    NA                0.1100478   0.0520423   0.1680534
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1009174   0.0566853   0.1451496
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                    NA                0.1197917   0.0683115   0.1712718
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                    NA                0.1581633   0.0933138   0.2230127
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                    NA                0.1089109   0.0706911   0.1471307
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                    NA                0.1119221   0.0777494   0.1460949
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1075269   0.0634422   0.1516116
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                   NA                0.1081871   0.0640286   0.1523457
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                   NA                0.1028037   0.0287486   0.1768588
0-24 months   IRC              INDIA                          1                    NA                0.2631579   0.1229792   0.4033366
0-24 months   IRC              INDIA                          2                    NA                0.3928571   0.2117389   0.5739754
0-24 months   IRC              INDIA                          3                    NA                0.3333333   0.1553045   0.5113621
0-24 months   IRC              INDIA                          4                    NA                0.2380952   0.0557080   0.4204825
0-24 months   IRC              INDIA                          5                    NA                0.5000000   0.2908119   0.7091881
0-24 months   IRC              INDIA                          6                    NA                0.1891892   0.0628362   0.3155422
0-24 months   IRC              INDIA                          7                    NA                0.1666667   0.0447787   0.2885546
0-24 months   IRC              INDIA                          8                    NA                0.1136364   0.0197469   0.2075258
0-24 months   IRC              INDIA                          9                    NA                0.2592593   0.0937597   0.4247588
0-24 months   IRC              INDIA                          10                   NA                0.1578947   0.0418158   0.2739737
0-24 months   IRC              INDIA                          11                   NA                0.1750000   0.0571053   0.2928947
0-24 months   IRC              INDIA                          12                   NA                0.3461538   0.2166898   0.4756179
0-24 months   Keneba           GAMBIA                         1                    NA                0.2101695   0.1636684   0.2566706
0-24 months   Keneba           GAMBIA                         2                    NA                0.1992188   0.1502832   0.2481543
0-24 months   Keneba           GAMBIA                         3                    NA                0.2189542   0.1726120   0.2652965
0-24 months   Keneba           GAMBIA                         4                    NA                0.2030457   0.1468629   0.2592284
0-24 months   Keneba           GAMBIA                         5                    NA                0.2254902   0.1681334   0.2828470
0-24 months   Keneba           GAMBIA                         6                    NA                0.2515337   0.1849125   0.3181550
0-24 months   Keneba           GAMBIA                         7                    NA                0.2553191   0.1833345   0.3273038
0-24 months   Keneba           GAMBIA                         8                    NA                0.1906780   0.1405503   0.2408056
0-24 months   Keneba           GAMBIA                         9                    NA                0.2134387   0.1629418   0.2639357
0-24 months   Keneba           GAMBIA                         10                   NA                0.2085714   0.1659996   0.2511432
0-24 months   Keneba           GAMBIA                         11                   NA                0.1850394   0.1372748   0.2328040
0-24 months   Keneba           GAMBIA                         12                   NA                0.2192308   0.1689331   0.2695285
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.3424658   0.2335226   0.4514089
0-24 months   NIH-Birth        BANGLADESH                     2                    NA                0.1724138   0.0751229   0.2697047
0-24 months   NIH-Birth        BANGLADESH                     3                    NA                0.2372881   0.1286491   0.3459272
0-24 months   NIH-Birth        BANGLADESH                     4                    NA                0.3018868   0.1781951   0.4255785
0-24 months   NIH-Birth        BANGLADESH                     5                    NA                0.2653061   0.1415911   0.3890211
0-24 months   NIH-Birth        BANGLADESH                     6                    NA                0.3600000   0.2268473   0.4931527
0-24 months   NIH-Birth        BANGLADESH                     7                    NA                0.3170732   0.1745228   0.4596236
0-24 months   NIH-Birth        BANGLADESH                     8                    NA                0.4146341   0.2637138   0.5655545
0-24 months   NIH-Birth        BANGLADESH                     9                    NA                0.2916667   0.1629795   0.4203538
0-24 months   NIH-Birth        BANGLADESH                     10                   NA                0.3265306   0.1951242   0.4579370
0-24 months   NIH-Birth        BANGLADESH                     11                   NA                0.3773585   0.2467559   0.5079611
0-24 months   NIH-Birth        BANGLADESH                     12                   NA                0.3636364   0.2364037   0.4908690
0-24 months   PROBIT           BELARUS                        1                    NA                0.0458090   0.0293455   0.0622724
0-24 months   PROBIT           BELARUS                        2                    NA                0.0345880   0.0208807   0.0482953
0-24 months   PROBIT           BELARUS                        3                    NA                0.0340611   0.0205924   0.0475299
0-24 months   PROBIT           BELARUS                        4                    NA                0.0275150   0.0129574   0.0420727
0-24 months   PROBIT           BELARUS                        5                    NA                0.0229983   0.0128789   0.0331177
0-24 months   PROBIT           BELARUS                        6                    NA                0.0280760   0.0122327   0.0439192
0-24 months   PROBIT           BELARUS                        7                    NA                0.0213836   0.0100403   0.0327270
0-24 months   PROBIT           BELARUS                        8                    NA                0.0188917   0.0102514   0.0275320
0-24 months   PROBIT           BELARUS                        9                    NA                0.0221266   0.0115950   0.0326582
0-24 months   PROBIT           BELARUS                        10                   NA                0.0264609   0.0166497   0.0362720
0-24 months   PROBIT           BELARUS                        11                   NA                0.0252644   0.0151803   0.0353485
0-24 months   PROBIT           BELARUS                        12                   NA                0.0336179   0.0182640   0.0489718
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.3274336   0.2590419   0.3958253
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.2857143   0.1998973   0.3715313
0-24 months   SAS-CompFeed     INDIA                          3                    NA                0.3292683   0.2067976   0.4517390
0-24 months   SAS-CompFeed     INDIA                          4                    NA                0.2666667   0.1419314   0.3914019
0-24 months   SAS-CompFeed     INDIA                          5                    NA                0.3366337   0.2186540   0.4546133
0-24 months   SAS-CompFeed     INDIA                          6                    NA                0.3119266   0.2149766   0.4088766
0-24 months   SAS-CompFeed     INDIA                          7                    NA                0.4705882   0.3972341   0.5439424
0-24 months   SAS-CompFeed     INDIA                          8                    NA                0.3956044   0.3114544   0.4797544
0-24 months   SAS-CompFeed     INDIA                          9                    NA                0.3072917   0.2329668   0.3816165
0-24 months   SAS-CompFeed     INDIA                          10                   NA                0.3154762   0.2553351   0.3756172
0-24 months   SAS-CompFeed     INDIA                          11                   NA                0.2887324   0.2303684   0.3470964
0-24 months   SAS-CompFeed     INDIA                          12                   NA                0.2816901   0.2298652   0.3335150
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0994152   0.0545583   0.1442721
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0955056   0.0523193   0.1386919
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1463415   0.0922358   0.2004471
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1105263   0.0659339   0.1551188
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0972973   0.0545828   0.1400118
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0783133   0.0374348   0.1191917
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1146789   0.0723728   0.1569850
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0948276   0.0571201   0.1325351
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0879630   0.0501824   0.1257435
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1200000   0.0797097   0.1602903
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0904977   0.0526654   0.1283301
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0634146   0.0300466   0.0967826
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1680117   0.1481625   0.1878610
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1910531   0.1675297   0.2145766
0-24 months   ZVITAMBO         ZIMBABWE                       3                    NA                0.1834025   0.1615512   0.2052538
0-24 months   ZVITAMBO         ZIMBABWE                       4                    NA                0.1726190   0.1492882   0.1959499
0-24 months   ZVITAMBO         ZIMBABWE                       5                    NA                0.1917148   0.1677665   0.2156632
0-24 months   ZVITAMBO         ZIMBABWE                       6                    NA                0.2166378   0.1928689   0.2404067
0-24 months   ZVITAMBO         ZIMBABWE                       7                    NA                0.1810491   0.1590967   0.2030015
0-24 months   ZVITAMBO         ZIMBABWE                       8                    NA                0.1469194   0.1274173   0.1664215
0-24 months   ZVITAMBO         ZIMBABWE                       9                    NA                0.1308340   0.1125514   0.1491165
0-24 months   ZVITAMBO         ZIMBABWE                       10                   NA                0.1520913   0.1303901   0.1737924
0-24 months   ZVITAMBO         ZIMBABWE                       11                   NA                0.1466667   0.1266497   0.1666836
0-24 months   ZVITAMBO         ZIMBABWE                       12                   NA                0.1476346   0.1277771   0.1674921
0-6 months    Keneba           GAMBIA                         1                    NA                0.1312741   0.0901386   0.1724097
0-6 months    Keneba           GAMBIA                         2                    NA                0.1203704   0.0769674   0.1637733
0-6 months    Keneba           GAMBIA                         3                    NA                0.0839695   0.0503801   0.1175588
0-6 months    Keneba           GAMBIA                         4                    NA                0.1017964   0.0559261   0.1476667
0-6 months    Keneba           GAMBIA                         5                    NA                0.1124260   0.0647908   0.1600613
0-6 months    Keneba           GAMBIA                         6                    NA                0.1347518   0.0783797   0.1911239
0-6 months    Keneba           GAMBIA                         7                    NA                0.1428571   0.0759120   0.2098023
0-6 months    Keneba           GAMBIA                         8                    NA                0.1161616   0.0715219   0.1608013
0-6 months    Keneba           GAMBIA                         9                    NA                0.1308411   0.0856502   0.1760320
0-6 months    Keneba           GAMBIA                         10                   NA                0.1068966   0.0713277   0.1424654
0-6 months    Keneba           GAMBIA                         11                   NA                0.0871560   0.0497057   0.1246062
0-6 months    Keneba           GAMBIA                         12                   NA                0.1504425   0.1038234   0.1970615
0-6 months    PROBIT           BELARUS                        1                    NA                0.0146341   0.0061883   0.0230800
0-6 months    PROBIT           BELARUS                        2                    NA                0.0081384   0.0026547   0.0136220
0-6 months    PROBIT           BELARUS                        3                    NA                0.0122271   0.0055162   0.0189380
0-6 months    PROBIT           BELARUS                        4                    NA                0.0094746   0.0012587   0.0176905
0-6 months    PROBIT           BELARUS                        5                    NA                0.0085179   0.0022019   0.0148338
0-6 months    PROBIT           BELARUS                        6                    NA                0.0123865   0.0036389   0.0211340
0-6 months    PROBIT           BELARUS                        7                    NA                0.0119497   0.0046041   0.0192952
0-6 months    PROBIT           BELARUS                        8                    NA                0.0063012   0.0008254   0.0117770
0-6 months    PROBIT           BELARUS                        9                    NA                0.0129072   0.0069267   0.0188877
0-6 months    PROBIT           BELARUS                        10                   NA                0.0137817   0.0066697   0.0208937
0-6 months    PROBIT           BELARUS                        11                   NA                0.0117509   0.0059154   0.0175864
0-6 months    PROBIT           BELARUS                        12                   NA                0.0090763   0.0031851   0.0149676
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.1504425   0.0864346   0.2144503
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.1648352   0.1046046   0.2250657
0-6 months    SAS-CompFeed     INDIA                          3                    NA                0.1707317   0.0690084   0.2724550
0-6 months    SAS-CompFeed     INDIA                          4                    NA                0.0800000   0.0161558   0.1438442
0-6 months    SAS-CompFeed     INDIA                          5                    NA                0.1881188   0.0786320   0.2976057
0-6 months    SAS-CompFeed     INDIA                          6                    NA                0.1834862   0.0952200   0.2717525
0-6 months    SAS-CompFeed     INDIA                          7                    NA                0.1492537   0.0632332   0.2352743
0-6 months    SAS-CompFeed     INDIA                          8                    NA                0.1923077   0.1438745   0.2407409
0-6 months    SAS-CompFeed     INDIA                          9                    NA                0.1145833   0.0706286   0.1585380
0-6 months    SAS-CompFeed     INDIA                          10                   NA                0.1428571   0.0914850   0.1942293
0-6 months    SAS-CompFeed     INDIA                          11                   NA                0.1338028   0.0912428   0.1763628
0-6 months    SAS-CompFeed     INDIA                          12                   NA                0.1276596   0.1018106   0.1535085
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0845588   0.0697715   0.0993461
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.0925234   0.0751608   0.1098860
0-6 months    ZVITAMBO         ZIMBABWE                       3                    NA                0.0933333   0.0768739   0.1097928
0-6 months    ZVITAMBO         ZIMBABWE                       4                    NA                0.1022840   0.0835676   0.1210004
0-6 months    ZVITAMBO         ZIMBABWE                       5                    NA                0.1100386   0.0909822   0.1290951
0-6 months    ZVITAMBO         ZIMBABWE                       6                    NA                0.1395147   0.1195234   0.1595061
0-6 months    ZVITAMBO         ZIMBABWE                       7                    NA                0.1041490   0.0867276   0.1215705
0-6 months    ZVITAMBO         ZIMBABWE                       8                    NA                0.0939968   0.0779212   0.1100725
0-6 months    ZVITAMBO         ZIMBABWE                       9                    NA                0.0589135   0.0461477   0.0716793
0-6 months    ZVITAMBO         ZIMBABWE                       10                   NA                0.0818268   0.0652549   0.0983987
0-6 months    ZVITAMBO         ZIMBABWE                       11                   NA                0.0767306   0.0616645   0.0917968
0-6 months    ZVITAMBO         ZIMBABWE                       12                   NA                0.0660685   0.0521634   0.0799736


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1093415   0.0900773   0.1286057
0-24 months   IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   Keneba           GAMBIA                         NA                   NA                0.2123499   0.1975010   0.2271989
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0276380   0.0201988   0.0350773
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0997496   0.0877482   0.1117510
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1681114   0.1619329   0.1742900
0-6 months    Keneba           GAMBIA                         NA                   NA                0.1164300   0.1037657   0.1290943
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0109519   0.0074064   0.0144975
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912001   0.0864407   0.0959595


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                    1                 0.6752277   0.2177221   2.0941028
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                    1                 0.7976403   0.4284328   1.4850171
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                    1                 0.9606880   0.5072730   1.8193781
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                    1                 0.8809819   0.5070830   1.5305760
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                    1                 1.0457489   0.5808310   1.8828037
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                    1                 1.3807226   0.7093261   2.6876139
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                    1                 0.9507626   0.5617538   1.6091563
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                    1                 0.9770500   0.6068383   1.5731155
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9386806   0.5327073   1.6540438
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                   1                 0.9444444   0.5396290   1.6529416
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                   1                 0.8974489   0.4079217   1.9744341
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2                    1                 1.4928571   0.7380162   3.0197472
0-24 months   IRC              INDIA                          3                    1                 1.2666667   0.5957531   2.6931364
0-24 months   IRC              INDIA                          4                    1                 0.9047619   0.3558975   2.3000840
0-24 months   IRC              INDIA                          5                    1                 1.9000000   0.9651389   3.7403943
0-24 months   IRC              INDIA                          6                    1                 0.7189189   0.3059649   1.6892280
0-24 months   IRC              INDIA                          7                    1                 0.6333333   0.2562718   1.5651783
0-24 months   IRC              INDIA                          8                    1                 0.4318182   0.1615717   1.1540814
0-24 months   IRC              INDIA                          9                    1                 0.9851852   0.4289835   2.2625340
0-24 months   IRC              INDIA                          10                   1                 0.6000000   0.2420309   1.4874132
0-24 months   IRC              INDIA                          11                   1                 0.6650000   0.2817309   1.5696718
0-24 months   IRC              INDIA                          12                   1                 1.3153846   0.6860957   2.5218593
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 0.9478957   0.6810608   1.3192746
0-24 months   Keneba           GAMBIA                         3                    1                 1.0417984   0.7670227   1.4150089
0-24 months   Keneba           GAMBIA                         4                    1                 0.9661045   0.6778923   1.3768528
0-24 months   Keneba           GAMBIA                         5                    1                 1.0728969   0.7658524   1.5030412
0-24 months   Keneba           GAMBIA                         6                    1                 1.1968138   0.8475098   1.6900846
0-24 months   Keneba           GAMBIA                         7                    1                 1.2148250   0.8489196   1.7384447
0-24 months   Keneba           GAMBIA                         8                    1                 0.9072581   0.6434341   1.2792564
0-24 months   Keneba           GAMBIA                         9                    1                 1.0155553   0.7345555   1.4040499
0-24 months   Keneba           GAMBIA                         10                   1                 0.9923963   0.7344330   1.3409671
0-24 months   Keneba           GAMBIA                         11                   1                 0.8804293   0.6266762   1.2369317
0-24 months   Keneba           GAMBIA                         12                   1                 1.0431141   0.7584161   1.4346835
0-24 months   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     2                    1                 0.5034483   0.2634076   0.9622354
0-24 months   NIH-Birth        BANGLADESH                     3                    1                 0.6928814   0.3967694   1.2099839
0-24 months   NIH-Birth        BANGLADESH                     4                    1                 0.8815094   0.5247448   1.4808320
0-24 months   NIH-Birth        BANGLADESH                     5                    1                 0.7746939   0.4405325   1.3623300
0-24 months   NIH-Birth        BANGLADESH                     6                    1                 1.0512000   0.6453779   1.7122084
0-24 months   NIH-Birth        BANGLADESH                     7                    1                 0.9258537   0.5337730   1.6059354
0-24 months   NIH-Birth        BANGLADESH                     8                    1                 1.2107317   0.7466334   1.9633078
0-24 months   NIH-Birth        BANGLADESH                     9                    1                 0.8516667   0.4943580   1.4672284
0-24 months   NIH-Birth        BANGLADESH                     10                   1                 0.9534694   0.5708507   1.5925422
0-24 months   NIH-Birth        BANGLADESH                     11                   1                 1.1018868   0.6886235   1.7631616
0-24 months   NIH-Birth        BANGLADESH                     12                   1                 1.0618182   0.6617275   1.7038098
0-24 months   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        2                    1                 0.7550486   0.5214510   1.0932924
0-24 months   PROBIT           BELARUS                        3                    1                 0.7435473   0.5555562   0.9951517
0-24 months   PROBIT           BELARUS                        4                    1                 0.6006476   0.3428708   1.0522261
0-24 months   PROBIT           BELARUS                        5                    1                 0.5020479   0.3270949   0.7705778
0-24 months   PROBIT           BELARUS                        6                    1                 0.6128925   0.3708059   1.0130291
0-24 months   PROBIT           BELARUS                        7                    1                 0.4668005   0.2509054   0.8684656
0-24 months   PROBIT           BELARUS                        8                    1                 0.4124015   0.2509756   0.6776555
0-24 months   PROBIT           BELARUS                        9                    1                 0.4830193   0.3064891   0.7612264
0-24 months   PROBIT           BELARUS                        10                   1                 0.5776349   0.3763585   0.8865541
0-24 months   PROBIT           BELARUS                        11                   1                 0.5515164   0.3486005   0.8725468
0-24 months   PROBIT           BELARUS                        12                   1                 0.7338722   0.4345986   1.2392319
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.8725869   0.6578014   1.1575042
0-24 months   SAS-CompFeed     INDIA                          3                    1                 1.0056032   0.6911970   1.4630239
0-24 months   SAS-CompFeed     INDIA                          4                    1                 0.8144144   0.4363099   1.5201828
0-24 months   SAS-CompFeed     INDIA                          5                    1                 1.0280974   0.7536315   1.4025213
0-24 months   SAS-CompFeed     INDIA                          6                    1                 0.9526407   0.6313796   1.4373672
0-24 months   SAS-CompFeed     INDIA                          7                    1                 1.4372019   1.0931353   1.8895642
0-24 months   SAS-CompFeed     INDIA                          8                    1                 1.2081972   0.9780004   1.4925766
0-24 months   SAS-CompFeed     INDIA                          9                    1                 0.9384854   0.6394321   1.3774016
0-24 months   SAS-CompFeed     INDIA                          10                   1                 0.9634813   0.6936680   1.3382430
0-24 months   SAS-CompFeed     INDIA                          11                   1                 0.8818043   0.6924148   1.1229958
0-24 months   SAS-CompFeed     INDIA                          12                   1                 0.8602969   0.6513979   1.1361884
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9606742   0.5071663   1.8197085
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.4720230   0.8214370   2.6378791
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1117647   0.6069358   2.0364933
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.9786963   0.5214863   1.8367626
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7877392   0.3951232   1.5704797
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.1535348   0.6440418   2.0660811
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.9538540   0.5227424   1.7405082
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8848039   0.4745747   1.6496412
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.2070588   0.6878152   2.1182886
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9103008   0.4920949   1.6839179
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6378766   0.3189362   1.2757615
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 1.1371415   0.9587544   1.3487196
0-24 months   ZVITAMBO         ZIMBABWE                       3                    1                 1.0916052   0.9229884   1.2910259
0-24 months   ZVITAMBO         ZIMBABWE                       4                    1                 1.0274225   0.8585928   1.2294502
0-24 months   ZVITAMBO         ZIMBABWE                       5                    1                 1.1410800   0.9608281   1.3551473
0-24 months   ZVITAMBO         ZIMBABWE                       6                    1                 1.2894205   1.0974200   1.5150127
0-24 months   ZVITAMBO         ZIMBABWE                       7                    1                 1.0775977   0.9097763   1.2763762
0-24 months   ZVITAMBO         ZIMBABWE                       8                    1                 0.8744593   0.7320913   1.0445133
0-24 months   ZVITAMBO         ZIMBABWE                       9                    1                 0.7787192   0.6485006   0.9350856
0-24 months   ZVITAMBO         ZIMBABWE                       10                   1                 0.9052418   0.7521644   1.0894729
0-24 months   ZVITAMBO         ZIMBABWE                       11                   1                 0.8729549   0.7287809   1.0456506
0-24 months   ZVITAMBO         ZIMBABWE                       12                   1                 0.8787159   0.7346831   1.0509860
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 0.9169390   0.5686863   1.4784549
0-6 months    Keneba           GAMBIA                         3                    1                 0.6396498   0.3848218   1.0632241
0-6 months    Keneba           GAMBIA                         4                    1                 0.7754491   0.4479086   1.3425090
0-6 months    Keneba           GAMBIA                         5                    1                 0.8564219   0.5056148   1.4506269
0-6 months    Keneba           GAMBIA                         6                    1                 1.0264914   0.6086333   1.7312309
0-6 months    Keneba           GAMBIA                         7                    1                 1.0882353   0.6192947   1.9122657
0-6 months    Keneba           GAMBIA                         8                    1                 0.8848782   0.5389359   1.4528805
0-6 months    Keneba           GAMBIA                         9                    1                 0.9967015   0.6252170   1.5889104
0-6 months    Keneba           GAMBIA                         10                   1                 0.8143002   0.5155653   1.2861316
0-6 months    Keneba           GAMBIA                         11                   1                 0.6639234   0.3900798   1.1300104
0-6 months    Keneba           GAMBIA                         12                   1                 1.1460177   0.7375598   1.7806780
0-6 months    PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        2                    1                 0.5561207   0.2866902   1.0787612
0-6 months    PROBIT           BELARUS                        3                    1                 0.8355167   0.4477293   1.5591746
0-6 months    PROBIT           BELARUS                        4                    1                 0.6474304   0.2686825   1.5600797
0-6 months    PROBIT           BELARUS                        5                    1                 0.5820557   0.2387973   1.4187297
0-6 months    PROBIT           BELARUS                        6                    1                 0.8464079   0.4243915   1.6880788
0-6 months    PROBIT           BELARUS                        7                    1                 0.8165618   0.3707675   1.7983594
0-6 months    PROBIT           BELARUS                        8                    1                 0.4305818   0.1562808   1.1863306
0-6 months    PROBIT           BELARUS                        9                    1                 0.8819914   0.4385270   1.7739131
0-6 months    PROBIT           BELARUS                        10                   1                 0.9417494   0.4117378   2.1540208
0-6 months    PROBIT           BELARUS                        11                   1                 0.8029769   0.3634996   1.7737898
0-6 months    PROBIT           BELARUS                        12                   1                 0.6202171   0.2634344   1.4602087
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 1.0956690   0.5895600   2.0362485
0-6 months    SAS-CompFeed     INDIA                          3                    1                 1.1348637   0.4811570   2.6767055
0-6 months    SAS-CompFeed     INDIA                          4                    1                 0.5317647   0.2248478   1.2576229
0-6 months    SAS-CompFeed     INDIA                          5                    1                 1.2504368   0.5462962   2.8621695
0-6 months    SAS-CompFeed     INDIA                          6                    1                 1.2196438   0.5727018   2.5973921
0-6 months    SAS-CompFeed     INDIA                          7                    1                 0.9920983   0.5424587   1.8144406
0-6 months    SAS-CompFeed     INDIA                          8                    1                 1.2782805   0.8946976   1.8263166
0-6 months    SAS-CompFeed     INDIA                          9                    1                 0.7616422   0.4279955   1.3553851
0-6 months    SAS-CompFeed     INDIA                          10                   1                 0.9495798   0.5240972   1.7204858
0-6 months    SAS-CompFeed     INDIA                          11                   1                 0.8893952   0.5456753   1.4496237
0-6 months    SAS-CompFeed     INDIA                          12                   1                 0.8485607   0.4962372   1.4510303
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 1.0941894   0.8466274   1.4141408
0-6 months    ZVITAMBO         ZIMBABWE                       3                    1                 1.1037681   0.8610288   1.4149399
0-6 months    ZVITAMBO         ZIMBABWE                       4                    1                 1.2096196   0.9391270   1.5580210
0-6 months    ZVITAMBO         ZIMBABWE                       5                    1                 1.3013262   1.0174186   1.6644574
0-6 months    ZVITAMBO         ZIMBABWE                       6                    1                 1.6499133   1.3160545   2.0684660
0-6 months    ZVITAMBO         ZIMBABWE                       7                    1                 1.2316754   0.9669380   1.5688952
0-6 months    ZVITAMBO         ZIMBABWE                       8                    1                 1.1116148   0.8704117   1.4196586
0-6 months    ZVITAMBO         ZIMBABWE                       9                    1                 0.6967167   0.5273835   0.9204196
0-6 months    ZVITAMBO         ZIMBABWE                       10                   1                 0.9676912   0.7405076   1.2645736
0-6 months    ZVITAMBO         ZIMBABWE                       11                   1                 0.9074229   0.6976185   1.1803245
0-6 months    ZVITAMBO         ZIMBABWE                       12                   1                 0.7813320   0.5942879   1.0272457


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0052096   -0.0517005    0.0412813
0-24 months   IRC              INDIA                          1                    NA                -0.0143774   -0.1476551    0.1189002
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0021804   -0.0419238    0.0462846
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0308600   -0.1329672    0.0712471
0-24 months   PROBIT           BELARUS                        1                    NA                -0.0181709   -0.0311026   -0.0052392
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0032904   -0.0623284    0.0689093
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003344   -0.0428972    0.0435659
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0000997   -0.0187644    0.0189638
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0148441   -0.0535343    0.0238461
0-6 months    PROBIT           BELARUS                        1                    NA                -0.0036822   -0.0115013    0.0041369
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0007693   -0.0652700    0.0637315
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0066413   -0.0074656    0.0207482


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0476451   -0.5731823    0.3023312
0-24 months   IRC              INDIA                          1                    NA                -0.0577915   -0.7552536    0.3625292
0-24 months   Keneba           GAMBIA                         1                    NA                 0.0102681   -0.2208276    0.1976186
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0990355   -0.4808036    0.1843084
0-24 months   PROBIT           BELARUS                        1                    NA                -0.6574606   -1.1832032   -0.2583234
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0099492   -0.2096216    0.1896635
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0033522   -0.5395662    0.3548138
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0005929   -0.1181610    0.1067346
0-6 months    Keneba           GAMBIA                         1                    NA                -0.1274938   -0.5136818    0.1601654
0-6 months    PROBIT           BELARUS                        1                    NA                -0.3362162   -1.3019609    0.2243683
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0051397   -0.5433860    0.3453965
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0728211   -0.0954659    0.2152556
