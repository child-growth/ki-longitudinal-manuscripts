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

agecat        studyid          country                        brthmon    ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  --------  -------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          1                     0        3     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          1                     1       31     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          2                     0        1     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          2                     1       15     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          3                     0        0     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          3                     1       31     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          4                     0        8     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          4                     1       36     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          5                     0        1     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          5                     1       35     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          6                     0        2     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          6                     1       35     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          7                     0        4     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          7                     1       35     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          8                     0        2     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          8                     1       16     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          9                     0        0     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          9                     1       21     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          10                    0        3     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          10                    1       26     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          11                    0        4     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          11                    1       39     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          12                    0        0     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          12                    1       25     373  ever_stunted     
0-24 months   CMIN             BANGLADESH                     1                     0        4     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     1                     1       26     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     2                     0        7     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     2                     1       20     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     3                     0        3     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     3                     1       17     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     4                     0        3     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     4                     1       20     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     5                     0        3     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     5                     1       17     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     6                     0        1     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     6                     1        8     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     7                     0        2     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     7                     1       15     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     8                     0        2     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     8                     1       22     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     9                     0        2     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     9                     1       20     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     10                    0        6     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     10                    1       21     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     11                    0        7     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     11                    1       23     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     12                    0        1     277  ever_stunted     
0-24 months   CMIN             BANGLADESH                     12                    1       27     277  ever_stunted     
0-24 months   CONTENT          PERU                           1                     0       10     215  ever_stunted     
0-24 months   CONTENT          PERU                           1                     1        0     215  ever_stunted     
0-24 months   CONTENT          PERU                           2                     0       14     215  ever_stunted     
0-24 months   CONTENT          PERU                           2                     1        4     215  ever_stunted     
0-24 months   CONTENT          PERU                           3                     0       23     215  ever_stunted     
0-24 months   CONTENT          PERU                           3                     1        7     215  ever_stunted     
0-24 months   CONTENT          PERU                           4                     0        8     215  ever_stunted     
0-24 months   CONTENT          PERU                           4                     1       11     215  ever_stunted     
0-24 months   CONTENT          PERU                           5                     0       10     215  ever_stunted     
0-24 months   CONTENT          PERU                           5                     1        4     215  ever_stunted     
0-24 months   CONTENT          PERU                           6                     0       11     215  ever_stunted     
0-24 months   CONTENT          PERU                           6                     1        2     215  ever_stunted     
0-24 months   CONTENT          PERU                           7                     0       21     215  ever_stunted     
0-24 months   CONTENT          PERU                           7                     1        7     215  ever_stunted     
0-24 months   CONTENT          PERU                           8                     0       16     215  ever_stunted     
0-24 months   CONTENT          PERU                           8                     1        7     215  ever_stunted     
0-24 months   CONTENT          PERU                           9                     0       21     215  ever_stunted     
0-24 months   CONTENT          PERU                           9                     1        5     215  ever_stunted     
0-24 months   CONTENT          PERU                           10                    0        9     215  ever_stunted     
0-24 months   CONTENT          PERU                           10                    1        5     215  ever_stunted     
0-24 months   CONTENT          PERU                           11                    0        8     215  ever_stunted     
0-24 months   CONTENT          PERU                           11                    1        1     215  ever_stunted     
0-24 months   CONTENT          PERU                           12                    0       11     215  ever_stunted     
0-24 months   CONTENT          PERU                           12                    1        0     215  ever_stunted     
0-24 months   EE               PAKISTAN                       1                     0       12     379  ever_stunted     
0-24 months   EE               PAKISTAN                       1                     1       83     379  ever_stunted     
0-24 months   EE               PAKISTAN                       2                     0        9     379  ever_stunted     
0-24 months   EE               PAKISTAN                       2                     1       58     379  ever_stunted     
0-24 months   EE               PAKISTAN                       3                     0        3     379  ever_stunted     
0-24 months   EE               PAKISTAN                       3                     1       39     379  ever_stunted     
0-24 months   EE               PAKISTAN                       4                     0        1     379  ever_stunted     
0-24 months   EE               PAKISTAN                       4                     1       15     379  ever_stunted     
0-24 months   EE               PAKISTAN                       5                     0        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       5                     1        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       6                     0        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       6                     1        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       7                     0        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       7                     1        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       8                     0        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       8                     1        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       9                     0        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       9                     1        0     379  ever_stunted     
0-24 months   EE               PAKISTAN                       10                    0        1     379  ever_stunted     
0-24 months   EE               PAKISTAN                       10                    1        3     379  ever_stunted     
0-24 months   EE               PAKISTAN                       11                    0        8     379  ever_stunted     
0-24 months   EE               PAKISTAN                       11                    1       63     379  ever_stunted     
0-24 months   EE               PAKISTAN                       12                    0        7     379  ever_stunted     
0-24 months   EE               PAKISTAN                       12                    1       77     379  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          1                     0        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          1                     1        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          2                     0        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          2                     1        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          3                     0        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          3                     1        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          4                     0        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          4                     1        1     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          5                     0        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          5                     1        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          6                     0       67     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          6                     1      105     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          7                     0       91     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          7                     1      178     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          8                     0       94     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          8                     1      162     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          9                     0        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          9                     1        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          10                    0        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          10                    1        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          11                    0        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          11                    1        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          12                    0        0     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          12                    1        0     698  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      1                     0        9     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      1                     1       20     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      2                     0       19     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      2                     1        7     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      3                     0       12     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      3                     1       15     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      4                     0       15     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      4                     1       16     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      5                     0       17     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      5                     1       18     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      6                     0       12     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      6                     1       13     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      7                     0       12     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      7                     1       10     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      8                     0        7     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      8                     1        8     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      9                     0        4     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      9                     1       12     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      10                    0       16     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      10                    1       16     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      11                    0       11     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      11                    1       13     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      12                    0       14     315  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      12                    1       19     315  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      212    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1      111    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                     0      124    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                     1       57    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                     0      123    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                     1       74    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                     0      123    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                     1       86    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                     0      139    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                     1       79    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                     0      127    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                     1       65    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                     0      120    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                     1       76    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                     0      197    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                     1      106    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                     0      251    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                     1      160    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                    0      250    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                    1      122    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                    0      211    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                    1      131    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                    0      205    3265  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                    1      116    3265  ever_stunted     
0-24 months   IRC              INDIA                          1                     0       11     410  ever_stunted     
0-24 months   IRC              INDIA                          1                     1       27     410  ever_stunted     
0-24 months   IRC              INDIA                          2                     0        8     410  ever_stunted     
0-24 months   IRC              INDIA                          2                     1       20     410  ever_stunted     
0-24 months   IRC              INDIA                          3                     0        9     410  ever_stunted     
0-24 months   IRC              INDIA                          3                     1       18     410  ever_stunted     
0-24 months   IRC              INDIA                          4                     0        4     410  ever_stunted     
0-24 months   IRC              INDIA                          4                     1       17     410  ever_stunted     
0-24 months   IRC              INDIA                          5                     0        5     410  ever_stunted     
0-24 months   IRC              INDIA                          5                     1       17     410  ever_stunted     
0-24 months   IRC              INDIA                          6                     0       16     410  ever_stunted     
0-24 months   IRC              INDIA                          6                     1       21     410  ever_stunted     
0-24 months   IRC              INDIA                          7                     0       14     410  ever_stunted     
0-24 months   IRC              INDIA                          7                     1       22     410  ever_stunted     
0-24 months   IRC              INDIA                          8                     0       21     410  ever_stunted     
0-24 months   IRC              INDIA                          8                     1       23     410  ever_stunted     
0-24 months   IRC              INDIA                          9                     0        9     410  ever_stunted     
0-24 months   IRC              INDIA                          9                     1       18     410  ever_stunted     
0-24 months   IRC              INDIA                          10                    0       20     410  ever_stunted     
0-24 months   IRC              INDIA                          10                    1       18     410  ever_stunted     
0-24 months   IRC              INDIA                          11                    0       16     410  ever_stunted     
0-24 months   IRC              INDIA                          11                    1       24     410  ever_stunted     
0-24 months   IRC              INDIA                          12                    0       14     410  ever_stunted     
0-24 months   IRC              INDIA                          12                    1       38     410  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     1                     0     1223   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     1                     1     1315   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     2                     0     1055   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     2                     1     1014   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     3                     0     1365   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     3                     1     1068   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     4                     0      999   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     4                     1      777   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     5                     0      680   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     5                     1      645   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     6                     0      744   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     6                     1      657   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     7                     0      839   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     7                     1      736   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     8                     0     1107   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     8                     1     1047   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     9                     0     1469   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     9                     1     1330   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     10                    0     1437   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     10                    1     1530   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     11                    0     1354   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     11                    1     1696   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     12                    0     1469   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     12                    1     1671   27227  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     1                     0        0    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     1                     1        0    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     2                     0      398    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     2                     1      518    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     3                     0      431    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     3                     1      593    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     4                     0      303    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     4                     1      470    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     5                     0      272    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     5                     1      369    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     6                     0      184    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     6                     1      276    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     7                     0      195    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     7                     1      342    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     8                     0      230    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     8                     1      325    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     9                     0      195    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     9                     1      208    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     10                    0       71    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     10                    1       62    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     11                    0        0    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     11                    1        0    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     12                    0        0    5442  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     12                    1        0    5442  ever_stunted     
0-24 months   Keneba           GAMBIA                         1                     0      158    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         1                     1      137    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         2                     0      127    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         2                     1      129    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         3                     0      149    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         3                     1      157    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         4                     0       98    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         4                     1       99    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         5                     0       92    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         5                     1      112    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         6                     0       74    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         6                     1       89    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         7                     0       62    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         7                     1       79    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         8                     0      116    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         8                     1      120    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         9                     0      114    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         9                     1      139    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         10                    0      166    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         10                    1      184    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         11                    0      134    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         11                    1      120    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         12                    0      131    2915  ever_stunted     
0-24 months   Keneba           GAMBIA                         12                    1      129    2915  ever_stunted     
0-24 months   LCNI-5           MALAWI                         1                     0       24     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         1                     1       44     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         2                     0       18     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         2                     1       28     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         3                     0       10     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         3                     1       16     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         4                     0       17     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         4                     1       22     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         5                     0       21     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         5                     1       23     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         6                     0       11     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         6                     1       23     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         7                     0       24     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         7                     1       38     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         8                     0       38     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         8                     1       55     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         9                     0       35     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         9                     1       58     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         10                    0       39     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         10                    1       96     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         11                    0       37     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         11                    1       68     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         12                    0       31     840  ever_stunted     
0-24 months   LCNI-5           MALAWI                         12                    1       64     840  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     1                     0        8     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     1                     1       13     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     2                     0        7     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     2                     1       18     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     3                     0        8     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     3                     1       17     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     4                     0       12     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     4                     1       10     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     5                     0        5     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     5                     1       17     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     6                     0        5     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     6                     1        6     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     7                     0        6     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     7                     1       14     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     8                     0       10     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     8                     1       16     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     9                     0       10     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     9                     1       13     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     10                    0       13     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     10                    1       12     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     11                    0        8     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     11                    1        9     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     12                    0       11     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     12                    1       17     265  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         1                     0       12     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         1                     1        3     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         2                     0       17     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         2                     1        8     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         3                     0       16     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         3                     1        4     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         4                     0       10     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         4                     1        2     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         5                     0       16     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         5                     1        7     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         6                     0        6     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         6                     1        3     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         7                     0       10     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         7                     1        8     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         8                     0       15     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         8                     1        6     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         9                     0       23     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         9                     1        9     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         10                    0       17     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         10                    1        4     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         11                    0       19     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         11                    1        3     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         12                    0        9     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         12                    1        6     233  ever_stunted     
0-24 months   MAL-ED           INDIA                          1                     0        4     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          1                     1       16     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          2                     0       14     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          2                     1        7     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          3                     0       10     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          3                     1       13     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          4                     0        6     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          4                     1       11     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          5                     0        3     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          5                     1        5     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          6                     0       10     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          6                     1       10     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          7                     0       11     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          7                     1       14     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          8                     0        7     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          8                     1       17     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          9                     0       10     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          9                     1       13     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          10                    0        9     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          10                    1       17     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          11                    0        8     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          11                    1       17     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          12                    0        7     251  ever_stunted     
0-24 months   MAL-ED           INDIA                          12                    1       12     251  ever_stunted     
0-24 months   MAL-ED           NEPAL                          1                     0       12     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          1                     1        8     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          2                     0       12     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          2                     1        7     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          3                     0        7     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          3                     1       10     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          4                     0       17     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          4                     1        5     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          5                     0       12     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          5                     1       10     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          6                     0       15     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          6                     1        3     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          7                     0       14     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          7                     1        6     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          8                     0       17     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          8                     1        7     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          9                     0       13     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          9                     1        3     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          10                    0       15     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          10                    1        6     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          11                    0       12     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          11                    1       12     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          12                    0       10     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          12                    1        7     240  ever_stunted     
0-24 months   MAL-ED           PERU                           1                     0       18     303  ever_stunted     
0-24 months   MAL-ED           PERU                           1                     1       24     303  ever_stunted     
0-24 months   MAL-ED           PERU                           2                     0        7     303  ever_stunted     
0-24 months   MAL-ED           PERU                           2                     1       16     303  ever_stunted     
0-24 months   MAL-ED           PERU                           3                     0       10     303  ever_stunted     
0-24 months   MAL-ED           PERU                           3                     1       13     303  ever_stunted     
0-24 months   MAL-ED           PERU                           4                     0        8     303  ever_stunted     
0-24 months   MAL-ED           PERU                           4                     1       13     303  ever_stunted     
0-24 months   MAL-ED           PERU                           5                     0        9     303  ever_stunted     
0-24 months   MAL-ED           PERU                           5                     1       19     303  ever_stunted     
0-24 months   MAL-ED           PERU                           6                     0        6     303  ever_stunted     
0-24 months   MAL-ED           PERU                           6                     1       11     303  ever_stunted     
0-24 months   MAL-ED           PERU                           7                     0        5     303  ever_stunted     
0-24 months   MAL-ED           PERU                           7                     1       19     303  ever_stunted     
0-24 months   MAL-ED           PERU                           8                     0       10     303  ever_stunted     
0-24 months   MAL-ED           PERU                           8                     1        9     303  ever_stunted     
0-24 months   MAL-ED           PERU                           9                     0        9     303  ever_stunted     
0-24 months   MAL-ED           PERU                           9                     1       14     303  ever_stunted     
0-24 months   MAL-ED           PERU                           10                    0       16     303  ever_stunted     
0-24 months   MAL-ED           PERU                           10                    1       11     303  ever_stunted     
0-24 months   MAL-ED           PERU                           11                    0        9     303  ever_stunted     
0-24 months   MAL-ED           PERU                           11                    1       24     303  ever_stunted     
0-24 months   MAL-ED           PERU                           12                    0        8     303  ever_stunted     
0-24 months   MAL-ED           PERU                           12                    1       15     303  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0       16     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1       26     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   2                     0       12     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   2                     1       18     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   3                     0       12     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   3                     1        6     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   4                     0        8     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   4                     1        7     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   5                     0       11     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   5                     1        5     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   6                     0       11     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   6                     1       12     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   7                     0       11     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   7                     1       15     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   8                     0        6     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   8                     1        6     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   9                     0       12     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   9                     1       13     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   10                    0       10     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   10                    1       21     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   11                    0       12     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   11                    1       19     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   12                    0       17     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   12                    1       28     314  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        7     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1       13     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0        5     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1       26     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0        4     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1       15     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0        2     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        8     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0        3     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1       17     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        1     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1       18     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0        5     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1       18     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        2     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1       10     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        3     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1       20     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        1     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1       23     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        2     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1       25     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        5     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1       29     262  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     1                     0       23     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     1                     1       50     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     2                     0       19     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     2                     1       39     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     3                     0       26     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     3                     1       33     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     4                     0       18     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     4                     1       35     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     5                     0       16     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     5                     1       33     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     6                     0       15     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     6                     1       35     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     7                     0       14     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     7                     1       27     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     8                     0       14     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     8                     1       27     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     9                     0       15     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     9                     1       33     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     10                    0       17     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     10                    1       32     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     11                    0       14     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     11                    1       39     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     12                    0       20     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     12                    1       35     629  ever_stunted     
0-24 months   PROBIT           BELARUS                        1                     0      864   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        1                     1      162   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        2                     0      805   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        2                     1      178   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        3                     0      998   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        3                     1      147   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        4                     0     1027   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        4                     1      136   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        5                     0     1046   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        5                     1      128   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        6                     0     1081   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        6                     1      130   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        7                     0     1413   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        7                     1      177   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        8                     0     1423   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        8                     1      165   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        9                     0     1425   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        9                     1      202   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        10                    0     1583   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        10                    1      231   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        11                    0     1466   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        11                    1      236   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        12                    0     1613   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        12                    1      261   16897  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     1                     0       17     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     1                     1       21     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     2                     0       17     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     2                     1       18     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     3                     0       38     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     3                     1       15     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     4                     0       21     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     4                     1       18     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     5                     0       37     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     5                     1       15     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     6                     0       46     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     6                     1       48     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     7                     0       54     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     7                     1       38     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     8                     0       44     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     8                     1       25     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     9                     0       46     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     9                     1       30     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     10                    0       41     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     10                    1       38     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     11                    0       19     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     11                    1       23     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     12                    0       15     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     12                    1       16     700  ever_stunted     
0-24 months   ResPak           PAKISTAN                       1                     0        2     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       1                     1       10     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       2                     0        3     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       2                     1        8     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       3                     0        8     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       3                     1       20     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       4                     0        8     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       4                     1       22     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       5                     0       20     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       5                     1       35     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       6                     0       16     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       6                     1       31     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       7                     0        7     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       7                     1       24     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       8                     0       21     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       8                     1       20     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       9                     0        8     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       9                     1        8     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       10                    0        3     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       10                    1        3     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       11                    0        1     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       11                    1        3     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       12                    0        0     284  ever_stunted     
0-24 months   ResPak           PAKISTAN                       12                    1        3     284  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          1                     0       35    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          1                     1       78    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          2                     0       33    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          2                     1       58    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          3                     0       28    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          3                     1       54    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          4                     0       18    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          4                     1       57    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          5                     0       30    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          5                     1       71    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          6                     0       39    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          6                     1       70    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          7                     0       33    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          7                     1      103    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          8                     0       42    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          8                     1      140    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          9                     0       71    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          9                     1      121    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          10                    0       48    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          10                    1      120    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          11                    0       50    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          11                    1       92    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          12                    0       46    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          12                    1       96    1533  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          1                     0        4     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          1                     1       22     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          2                     0       10     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          2                     1       26     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          3                     0        3     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          3                     1       18     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          4                     0        2     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          4                     1        2     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          5                     0        3     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          5                     1       11     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          6                     0        1     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          6                     1       24     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          7                     0        8     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          7                     1       29     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          8                     0       13     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          8                     1       54     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          9                     0        8     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          9                     1       58     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          10                    0        8     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          10                    1       43     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          11                    0        7     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          11                    1       26     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          12                    0        5     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          12                    1       33     418  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      108    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       63    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      125    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       53    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      106    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       58    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      114    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       76    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      124    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       61    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      110    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       56    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      138    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       80    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      158    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       74    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      137    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       79    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      165    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       85    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      142    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       79    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      140    2396  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       65    2396  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0      781   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1      582   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       2                     0      600   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       2                     1      473   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       3                     0      673   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       3                     1      532   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       4                     0      580   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       4                     1      428   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       5                     0      561   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       5                     1      477   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       6                     0      631   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       6                     1      523   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       7                     0      682   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       7                     1      500   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       8                     0      742   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       8                     1      524   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       9                     0      841   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       9                     1      466   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       10                    0      635   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       10                    1      417   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       11                    0      743   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       11                    1      457   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       12                    0      734   14074  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       12                    1      492   14074  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          1                     0       14     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          1                     1       20     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          2                     0        9     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          2                     1        6     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          3                     0       19     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          3                     1       12     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          4                     0       28     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          4                     1       16     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          5                     0       19     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          5                     1       17     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          6                     0       15     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          6                     1       21     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          7                     0       16     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          7                     1       23     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          8                     0        8     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          8                     1        9     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          9                     0       11     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          9                     1       10     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          10                    0       13     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          10                    1       16     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          11                    0       20     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          11                    1       21     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          12                    0        8     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          12                    1       17     368  ever_stunted     
0-6 months    CMIN             BANGLADESH                     1                     0       11     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     1                     1       19     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     2                     0       17     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     2                     1       10     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     3                     0       11     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     3                     1        9     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     4                     0       12     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     4                     1       11     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     5                     0        8     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     5                     1       12     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     6                     0        2     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     6                     1        7     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     7                     0        9     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     7                     1        8     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     8                     0        5     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     8                     1       19     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     9                     0        9     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     9                     1       13     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     10                    0       14     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     10                    1       13     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     11                    0       14     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     11                    1       16     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     12                    0        8     277  ever_stunted     
0-6 months    CMIN             BANGLADESH                     12                    1       20     277  ever_stunted     
0-6 months    CONTENT          PERU                           1                     0       10     215  ever_stunted     
0-6 months    CONTENT          PERU                           1                     1        0     215  ever_stunted     
0-6 months    CONTENT          PERU                           2                     0       18     215  ever_stunted     
0-6 months    CONTENT          PERU                           2                     1        0     215  ever_stunted     
0-6 months    CONTENT          PERU                           3                     0       25     215  ever_stunted     
0-6 months    CONTENT          PERU                           3                     1        5     215  ever_stunted     
0-6 months    CONTENT          PERU                           4                     0       16     215  ever_stunted     
0-6 months    CONTENT          PERU                           4                     1        3     215  ever_stunted     
0-6 months    CONTENT          PERU                           5                     0       11     215  ever_stunted     
0-6 months    CONTENT          PERU                           5                     1        3     215  ever_stunted     
0-6 months    CONTENT          PERU                           6                     0       13     215  ever_stunted     
0-6 months    CONTENT          PERU                           6                     1        0     215  ever_stunted     
0-6 months    CONTENT          PERU                           7                     0       22     215  ever_stunted     
0-6 months    CONTENT          PERU                           7                     1        6     215  ever_stunted     
0-6 months    CONTENT          PERU                           8                     0       18     215  ever_stunted     
0-6 months    CONTENT          PERU                           8                     1        5     215  ever_stunted     
0-6 months    CONTENT          PERU                           9                     0       23     215  ever_stunted     
0-6 months    CONTENT          PERU                           9                     1        3     215  ever_stunted     
0-6 months    CONTENT          PERU                           10                    0       13     215  ever_stunted     
0-6 months    CONTENT          PERU                           10                    1        1     215  ever_stunted     
0-6 months    CONTENT          PERU                           11                    0        8     215  ever_stunted     
0-6 months    CONTENT          PERU                           11                    1        1     215  ever_stunted     
0-6 months    CONTENT          PERU                           12                    0       11     215  ever_stunted     
0-6 months    CONTENT          PERU                           12                    1        0     215  ever_stunted     
0-6 months    EE               PAKISTAN                       1                     0       20     379  ever_stunted     
0-6 months    EE               PAKISTAN                       1                     1       75     379  ever_stunted     
0-6 months    EE               PAKISTAN                       2                     0       21     379  ever_stunted     
0-6 months    EE               PAKISTAN                       2                     1       46     379  ever_stunted     
0-6 months    EE               PAKISTAN                       3                     0       15     379  ever_stunted     
0-6 months    EE               PAKISTAN                       3                     1       27     379  ever_stunted     
0-6 months    EE               PAKISTAN                       4                     0        2     379  ever_stunted     
0-6 months    EE               PAKISTAN                       4                     1       14     379  ever_stunted     
0-6 months    EE               PAKISTAN                       5                     0        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       5                     1        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       6                     0        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       6                     1        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       7                     0        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       7                     1        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       8                     0        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       8                     1        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       9                     0        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       9                     1        0     379  ever_stunted     
0-6 months    EE               PAKISTAN                       10                    0        2     379  ever_stunted     
0-6 months    EE               PAKISTAN                       10                    1        2     379  ever_stunted     
0-6 months    EE               PAKISTAN                       11                    0       21     379  ever_stunted     
0-6 months    EE               PAKISTAN                       11                    1       50     379  ever_stunted     
0-6 months    EE               PAKISTAN                       12                    0       14     379  ever_stunted     
0-6 months    EE               PAKISTAN                       12                    1       70     379  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          1                     0        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          1                     1        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          2                     0        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          2                     1        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          3                     0        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          3                     1        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          4                     0        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          4                     1        1     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          5                     0        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          5                     1        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          6                     0      119     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          6                     1       53     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          7                     0      181     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          7                     1       88     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          8                     0      176     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          8                     1       80     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          9                     0        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          9                     1        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          10                    0        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          10                    1        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          11                    0        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          11                    1        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          12                    0        0     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          12                    1        0     698  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      1                     0       16     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      1                     1       13     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      2                     0       20     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      2                     1        3     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      3                     0       16     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      3                     1        9     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      4                     0       19     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      4                     1       11     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      5                     0       23     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      5                     1       12     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      6                     0       16     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      6                     1        9     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      7                     0       15     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      7                     1        6     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      8                     0       10     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      8                     1        5     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      9                     0        9     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      9                     1        6     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      10                    0       21     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      10                    1        5     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      11                    0       13     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      11                    1        7     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      12                    0       24     295  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      12                    1        7     295  ever_stunted     
0-6 months    IRC              INDIA                          1                     0       23     410  ever_stunted     
0-6 months    IRC              INDIA                          1                     1       15     410  ever_stunted     
0-6 months    IRC              INDIA                          2                     0       13     410  ever_stunted     
0-6 months    IRC              INDIA                          2                     1       15     410  ever_stunted     
0-6 months    IRC              INDIA                          3                     0       16     410  ever_stunted     
0-6 months    IRC              INDIA                          3                     1       11     410  ever_stunted     
0-6 months    IRC              INDIA                          4                     0       11     410  ever_stunted     
0-6 months    IRC              INDIA                          4                     1       10     410  ever_stunted     
0-6 months    IRC              INDIA                          5                     0       11     410  ever_stunted     
0-6 months    IRC              INDIA                          5                     1       11     410  ever_stunted     
0-6 months    IRC              INDIA                          6                     0       23     410  ever_stunted     
0-6 months    IRC              INDIA                          6                     1       14     410  ever_stunted     
0-6 months    IRC              INDIA                          7                     0       20     410  ever_stunted     
0-6 months    IRC              INDIA                          7                     1       16     410  ever_stunted     
0-6 months    IRC              INDIA                          8                     0       31     410  ever_stunted     
0-6 months    IRC              INDIA                          8                     1       13     410  ever_stunted     
0-6 months    IRC              INDIA                          9                     0       15     410  ever_stunted     
0-6 months    IRC              INDIA                          9                     1       12     410  ever_stunted     
0-6 months    IRC              INDIA                          10                    0       25     410  ever_stunted     
0-6 months    IRC              INDIA                          10                    1       13     410  ever_stunted     
0-6 months    IRC              INDIA                          11                    0       25     410  ever_stunted     
0-6 months    IRC              INDIA                          11                    1       15     410  ever_stunted     
0-6 months    IRC              INDIA                          12                    0       23     410  ever_stunted     
0-6 months    IRC              INDIA                          12                    1       29     410  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     1                     0     1421   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     1                     1     1111   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     2                     0     1253   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     2                     1      813   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     3                     0     1549   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     3                     1      879   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     4                     0     1149   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     4                     1      623   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     5                     0      838   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     5                     1      481   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     6                     0      921   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     6                     1      472   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     7                     0     1027   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     7                     1      546   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     8                     0     1298   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     8                     1      854   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     9                     0     1656   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     9                     1     1137   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     10                    0     1625   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     10                    1     1333   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     11                    0     1547   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     11                    1     1492   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     12                    0     1660   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     12                    1     1476   27161  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     1                     0        0    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     1                     1        0    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     2                     0      499    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     2                     1      290    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     3                     0      600    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     3                     1      335    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     4                     0      464    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     4                     1      266    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     5                     0      405    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     5                     1      209    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     6                     0      301    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     6                     1      153    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     7                     0      343    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     7                     1      191    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     8                     0      374    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     8                     1      176    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     9                     0      266    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     9                     1      127    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     10                    0       94    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     10                    1       37    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     11                    0        0    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     11                    1        0    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     12                    0        0    5130  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     12                    1        0    5130  ever_stunted     
0-6 months    Keneba           GAMBIA                         1                     0      186    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         1                     1       73    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         2                     0      158    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         2                     1       58    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         3                     0      190    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         3                     1       72    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         4                     0      118    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         4                     1       49    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         5                     0      114    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         5                     1       55    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         6                     0       97    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         6                     1       44    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         7                     0       64    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         7                     1       41    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         8                     0      133    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         8                     1       65    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         9                     0      143    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         9                     1       71    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         10                    0      183    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         10                    1      107    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         11                    0      153    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         11                    1       65    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         12                    0      156    2465  ever_stunted     
0-6 months    Keneba           GAMBIA                         12                    1       70    2465  ever_stunted     
0-6 months    LCNI-5           MALAWI                         1                     0       18     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         1                     1       11     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         2                     0        4     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         2                     1        0     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         3                     0        2     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         3                     1        2     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         4                     0        2     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         4                     1        3     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         5                     0        9     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         5                     1        1     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         6                     0        2     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         6                     1        3     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         7                     0        2     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         7                     1        1     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         8                     0       25     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         8                     1        7     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         9                     0       33     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         9                     1       20     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         10                    0       40     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         10                    1       29     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         11                    0       19     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         11                    1       11     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         12                    0       19     272  ever_stunted     
0-6 months    LCNI-5           MALAWI                         12                    1        9     272  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     1                     0       15     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     1                     1        6     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     2                     0       13     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     2                     1       12     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     3                     0       12     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     3                     1       13     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     4                     0       21     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     4                     1        1     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     5                     0       12     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     5                     1       10     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     6                     0        6     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     6                     1        5     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     7                     0       12     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     7                     1        8     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     8                     0       16     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     8                     1       10     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     9                     0       16     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     9                     1        7     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     10                    0       15     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     10                    1       10     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     11                    0       12     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     11                    1        5     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     12                    0       20     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     12                    1        8     265  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         1                     0       13     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         1                     1        2     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         2                     0       19     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         2                     1        6     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         3                     0       16     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         3                     1        4     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         4                     0       10     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         4                     1        2     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         5                     0       18     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         5                     1        5     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         6                     0        6     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         6                     1        3     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         7                     0       13     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         7                     1        5     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         8                     0       15     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         8                     1        6     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         9                     0       24     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         9                     1        8     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         10                    0       18     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         10                    1        3     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         11                    0       20     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         11                    1        2     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         12                    0        9     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         12                    1        6     233  ever_stunted     
0-6 months    MAL-ED           INDIA                          1                     0       11     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          1                     1        9     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          2                     0       19     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          2                     1        2     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          3                     0       15     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          3                     1        8     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          4                     0       11     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          4                     1        6     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          5                     0        6     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          5                     1        2     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          6                     0       17     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          6                     1        3     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          7                     0       14     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          7                     1       11     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          8                     0       15     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          8                     1        9     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          9                     0       16     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          9                     1        7     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          10                    0       15     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          10                    1       11     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          11                    0       14     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          11                    1       11     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          12                    0       11     251  ever_stunted     
0-6 months    MAL-ED           INDIA                          12                    1        8     251  ever_stunted     
0-6 months    MAL-ED           NEPAL                          1                     0       14     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          1                     1        6     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          2                     0       17     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          2                     1        2     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          3                     0       14     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          3                     1        3     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          4                     0       19     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          4                     1        3     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          5                     0       17     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          5                     1        5     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          6                     0       17     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          6                     1        1     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          7                     0       16     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          7                     1        4     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          8                     0       20     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          8                     1        4     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          9                     0       14     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          9                     1        2     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          10                    0       18     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          10                    1        3     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          11                    0       18     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          11                    1        6     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          12                    0       13     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          12                    1        4     240  ever_stunted     
0-6 months    MAL-ED           PERU                           1                     0       23     303  ever_stunted     
0-6 months    MAL-ED           PERU                           1                     1       19     303  ever_stunted     
0-6 months    MAL-ED           PERU                           2                     0       11     303  ever_stunted     
0-6 months    MAL-ED           PERU                           2                     1       12     303  ever_stunted     
0-6 months    MAL-ED           PERU                           3                     0       14     303  ever_stunted     
0-6 months    MAL-ED           PERU                           3                     1        9     303  ever_stunted     
0-6 months    MAL-ED           PERU                           4                     0       14     303  ever_stunted     
0-6 months    MAL-ED           PERU                           4                     1        7     303  ever_stunted     
0-6 months    MAL-ED           PERU                           5                     0       16     303  ever_stunted     
0-6 months    MAL-ED           PERU                           5                     1       12     303  ever_stunted     
0-6 months    MAL-ED           PERU                           6                     0        9     303  ever_stunted     
0-6 months    MAL-ED           PERU                           6                     1        8     303  ever_stunted     
0-6 months    MAL-ED           PERU                           7                     0       12     303  ever_stunted     
0-6 months    MAL-ED           PERU                           7                     1       12     303  ever_stunted     
0-6 months    MAL-ED           PERU                           8                     0       15     303  ever_stunted     
0-6 months    MAL-ED           PERU                           8                     1        4     303  ever_stunted     
0-6 months    MAL-ED           PERU                           9                     0       14     303  ever_stunted     
0-6 months    MAL-ED           PERU                           9                     1        9     303  ever_stunted     
0-6 months    MAL-ED           PERU                           10                    0       19     303  ever_stunted     
0-6 months    MAL-ED           PERU                           10                    1        8     303  ever_stunted     
0-6 months    MAL-ED           PERU                           11                    0       13     303  ever_stunted     
0-6 months    MAL-ED           PERU                           11                    1       20     303  ever_stunted     
0-6 months    MAL-ED           PERU                           12                    0       14     303  ever_stunted     
0-6 months    MAL-ED           PERU                           12                    1        9     303  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0       27     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1       15     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   2                     0       21     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   2                     1        9     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   3                     0       14     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   3                     1        4     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   4                     0       11     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   4                     1        4     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   5                     0       13     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   5                     1        3     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   6                     0       15     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   6                     1        8     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   7                     0       13     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   7                     1       13     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   8                     0        7     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   8                     1        5     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   9                     0       18     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   9                     1        7     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   10                    0       19     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   10                    1       12     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   11                    0       15     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   11                    1       16     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   12                    0       25     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   12                    1       20     314  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       13     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        7     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0       17     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1       14     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0        8     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1       11     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0        5     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        5     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0       14     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1        6     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0       12     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1        7     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0       13     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1       10     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        8     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        4     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0       13     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1       10     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        8     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1       16     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0       20     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1        7     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0       22     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1       12     262  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     1                     0       38     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     1                     1       35     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     2                     0       39     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     2                     1       19     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     3                     0       46     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     3                     1       13     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     4                     0       36     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     4                     1       17     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     5                     0       35     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     5                     1       14     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     6                     0       29     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     6                     1       21     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     7                     0       25     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     7                     1       16     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     8                     0       27     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     8                     1       14     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     9                     0       28     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     9                     1       20     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     10                    0       34     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     10                    1       15     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     11                    0       29     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     11                    1       24     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     12                    0       43     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     12                    1       12     629  ever_stunted     
0-6 months    PROBIT           BELARUS                        1                     0      951   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        1                     1       74   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        2                     0      918   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        2                     1       65   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        3                     0     1068   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        3                     1       77   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        4                     0     1089   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        4                     1       72   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        5                     0     1107   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        5                     1       67   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        6                     0     1153   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        6                     1       58   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        7                     0     1478   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        7                     1      112   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        8                     0     1505   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        8                     1       82   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        9                     0     1496   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        9                     1      131   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        10                    0     1675   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        10                    1      139   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        11                    0     1555   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        11                    1      147   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        12                    0     1738   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        12                    1      135   16892  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     1                     0       31     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     1                     1        7     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     2                     0       20     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     2                     1       15     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     3                     0       43     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     3                     1       10     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     4                     0       32     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     4                     1        7     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     5                     0       44     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     5                     1        8     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     6                     0       69     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     6                     1       25     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     7                     0       68     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     7                     1       24     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     8                     0       52     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     8                     1       17     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     9                     0       63     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     9                     1       13     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     10                    0       59     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     10                    1       20     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     11                    0       25     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     11                    1       17     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     12                    0       26     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     12                    1        5     700  ever_stunted     
0-6 months    ResPak           PAKISTAN                       1                     0        3     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       1                     1        9     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       2                     0        6     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       2                     1        5     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       3                     0       10     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       3                     1       17     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       4                     0        9     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       4                     1       21     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       5                     0       22     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       5                     1       33     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       6                     0       17     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       6                     1       29     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       7                     0        9     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       7                     1       22     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       8                     0       24     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       8                     1       17     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       9                     0       10     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       9                     1        6     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       10                    0        3     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       10                    1        3     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       11                    0        1     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       11                    1        3     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       12                    0        0     282  ever_stunted     
0-6 months    ResPak           PAKISTAN                       12                    1        3     282  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          1                     0       65    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          1                     1       48    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          2                     0       53    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          2                     1       38    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          3                     0       48    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          3                     1       34    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          4                     0       42    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          4                     1       33    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          5                     0       59    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          5                     1       42    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          6                     0       60    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          6                     1       49    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          7                     0       67    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          7                     1       67    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          8                     0       94    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          8                     1       88    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          9                     0      129    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          9                     1       63    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          10                    0       98    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          10                    1       70    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          11                    0       87    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          11                    1       55    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          12                    0       77    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          12                    1       64    1530  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          1                     0       16     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          1                     1       10     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          2                     0       27     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          2                     1        9     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          3                     0       12     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          3                     1        9     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          4                     0        3     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          4                     1        1     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          5                     0       11     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          5                     1        3     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          6                     0       13     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          6                     1       12     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          7                     0       26     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          7                     1       11     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          8                     0       44     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          8                     1       23     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          9                     0       34     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          9                     1       31     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          10                    0       26     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          10                    1       24     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          11                    0       19     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          11                    1       14     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          12                    0       23     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          12                    1       15     416  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      144    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       27    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      146    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       32    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      138    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       26    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      150    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       40    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      147    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       38    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      135    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       31    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      169    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       49    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      186    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       46    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      167    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       49    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      201    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       49    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      176    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       45    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      170    2396  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       35    2396  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0     1004   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1      356   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       2                     0      780   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       2                     1      290   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       3                     0      887   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       3                     1      313   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       4                     0      735   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       4                     1      272   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       5                     0      714   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       5                     1      322   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       6                     0      783   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       6                     1      371   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       7                     0      841   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       7                     1      340   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       8                     0      923   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       8                     1      343   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       9                     0     1044   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       9                     1      263   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       10                    0      820   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       10                    1      231   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       11                    0      930   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       11                    1      269   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       12                    0      960   14057  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       12                    1      266   14057  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          1                     0        3     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          1                     1       11     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          2                     0        1     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          2                     1        9     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          3                     0        0     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          3                     1       19     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          4                     0        8     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          4                     1       20     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          5                     0        1     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          5                     1       18     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          6                     0        2     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          6                     1       14     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          7                     0        4     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          7                     1       12     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          8                     0        2     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          8                     1        7     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          9                     0        0     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          9                     1       11     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          10                    0        3     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          10                    1       10     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          11                    0        4     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          11                    1       18     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          12                    0        0     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          12                    1        8     185  ever_stunted     
6-24 months   CMIN             BANGLADESH                     1                     0        3     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     1                     1        7     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     2                     0        5     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     2                     1       10     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     3                     0        2     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     3                     1        8     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     4                     0        3     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     4                     1        9     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     5                     0        2     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     5                     1        5     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     6                     0        1     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     6                     1        1     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     7                     0        2     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     7                     1        7     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     8                     0        2     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     8                     1        3     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     9                     0        1     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     9                     1        7     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     10                    0        5     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     10                    1        8     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     11                    0        5     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     11                    1        7     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     12                    0        1     111  ever_stunted     
6-24 months   CMIN             BANGLADESH                     12                    1        7     111  ever_stunted     
6-24 months   CONTENT          PERU                           1                     0       10     188  ever_stunted     
6-24 months   CONTENT          PERU                           1                     1        0     188  ever_stunted     
6-24 months   CONTENT          PERU                           2                     0       14     188  ever_stunted     
6-24 months   CONTENT          PERU                           2                     1        4     188  ever_stunted     
6-24 months   CONTENT          PERU                           3                     0       23     188  ever_stunted     
6-24 months   CONTENT          PERU                           3                     1        2     188  ever_stunted     
6-24 months   CONTENT          PERU                           4                     0        8     188  ever_stunted     
6-24 months   CONTENT          PERU                           4                     1        8     188  ever_stunted     
6-24 months   CONTENT          PERU                           5                     0       10     188  ever_stunted     
6-24 months   CONTENT          PERU                           5                     1        1     188  ever_stunted     
6-24 months   CONTENT          PERU                           6                     0       11     188  ever_stunted     
6-24 months   CONTENT          PERU                           6                     1        2     188  ever_stunted     
6-24 months   CONTENT          PERU                           7                     0       21     188  ever_stunted     
6-24 months   CONTENT          PERU                           7                     1        1     188  ever_stunted     
6-24 months   CONTENT          PERU                           8                     0       16     188  ever_stunted     
6-24 months   CONTENT          PERU                           8                     1        2     188  ever_stunted     
6-24 months   CONTENT          PERU                           9                     0       21     188  ever_stunted     
6-24 months   CONTENT          PERU                           9                     1        2     188  ever_stunted     
6-24 months   CONTENT          PERU                           10                    0        9     188  ever_stunted     
6-24 months   CONTENT          PERU                           10                    1        4     188  ever_stunted     
6-24 months   CONTENT          PERU                           11                    0        8     188  ever_stunted     
6-24 months   CONTENT          PERU                           11                    1        0     188  ever_stunted     
6-24 months   CONTENT          PERU                           12                    0       11     188  ever_stunted     
6-24 months   CONTENT          PERU                           12                    1        0     188  ever_stunted     
6-24 months   EE               PAKISTAN                       1                     0       11      93  ever_stunted     
6-24 months   EE               PAKISTAN                       1                     1        8      93  ever_stunted     
6-24 months   EE               PAKISTAN                       2                     0        8      93  ever_stunted     
6-24 months   EE               PAKISTAN                       2                     1       12      93  ever_stunted     
6-24 months   EE               PAKISTAN                       3                     0        3      93  ever_stunted     
6-24 months   EE               PAKISTAN                       3                     1       12      93  ever_stunted     
6-24 months   EE               PAKISTAN                       4                     0        1      93  ever_stunted     
6-24 months   EE               PAKISTAN                       4                     1        1      93  ever_stunted     
6-24 months   EE               PAKISTAN                       5                     0        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       5                     1        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       6                     0        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       6                     1        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       7                     0        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       7                     1        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       8                     0        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       8                     1        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       9                     0        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       9                     1        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       10                    0        1      93  ever_stunted     
6-24 months   EE               PAKISTAN                       10                    1        1      93  ever_stunted     
6-24 months   EE               PAKISTAN                       11                    0        8      93  ever_stunted     
6-24 months   EE               PAKISTAN                       11                    1       13      93  ever_stunted     
6-24 months   EE               PAKISTAN                       12                    0        7      93  ever_stunted     
6-24 months   EE               PAKISTAN                       12                    1        7      93  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          1                     0        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          1                     1        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          2                     0        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          2                     1        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          3                     0        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          3                     1        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          4                     0        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          4                     1        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          5                     0        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          5                     1        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          6                     0       34     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          6                     1       52     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          7                     0       64     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          7                     1       90     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          8                     0       75     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          8                     1       82     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          9                     0        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          9                     1        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          10                    0        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          10                    1        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          11                    0        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          11                    1        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          12                    0        0     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          12                    1        0     397  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      1                     0        8     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      1                     1        7     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      2                     0       16     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      2                     1        4     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      3                     0       12     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      3                     1        6     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      4                     0       15     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      4                     1        5     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      5                     0       13     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      5                     1        6     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      6                     0        8     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      6                     1        4     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      7                     0       11     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      7                     1        4     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      8                     0        5     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      8                     1        3     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      9                     0        2     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      9                     1        6     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      10                    0       12     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      10                    1       11     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      11                    0        9     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      11                    1        6     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      12                    0       10     195  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      12                    1       12     195  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      212    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1      111    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                     0      124    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                     1       57    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                     0      123    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                     1       74    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                     0      123    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                     1       86    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                     0      139    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                     1       79    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                     0      127    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                     1       65    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                     0      120    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                     1       76    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                     0      197    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                     1      106    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                     0      251    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                     1      160    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                    0      250    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                    1      122    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                    0      211    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                    1      131    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                    0      205    3265  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                    1      116    3265  ever_stunted     
6-24 months   IRC              INDIA                          1                     0       11     236  ever_stunted     
6-24 months   IRC              INDIA                          1                     1       12     236  ever_stunted     
6-24 months   IRC              INDIA                          2                     0        8     236  ever_stunted     
6-24 months   IRC              INDIA                          2                     1        5     236  ever_stunted     
6-24 months   IRC              INDIA                          3                     0        9     236  ever_stunted     
6-24 months   IRC              INDIA                          3                     1        7     236  ever_stunted     
6-24 months   IRC              INDIA                          4                     0        4     236  ever_stunted     
6-24 months   IRC              INDIA                          4                     1        7     236  ever_stunted     
6-24 months   IRC              INDIA                          5                     0        5     236  ever_stunted     
6-24 months   IRC              INDIA                          5                     1        6     236  ever_stunted     
6-24 months   IRC              INDIA                          6                     0       16     236  ever_stunted     
6-24 months   IRC              INDIA                          6                     1        7     236  ever_stunted     
6-24 months   IRC              INDIA                          7                     0       14     236  ever_stunted     
6-24 months   IRC              INDIA                          7                     1        6     236  ever_stunted     
6-24 months   IRC              INDIA                          8                     0       21     236  ever_stunted     
6-24 months   IRC              INDIA                          8                     1       10     236  ever_stunted     
6-24 months   IRC              INDIA                          9                     0        9     236  ever_stunted     
6-24 months   IRC              INDIA                          9                     1        6     236  ever_stunted     
6-24 months   IRC              INDIA                          10                    0       20     236  ever_stunted     
6-24 months   IRC              INDIA                          10                    1        5     236  ever_stunted     
6-24 months   IRC              INDIA                          11                    0       16     236  ever_stunted     
6-24 months   IRC              INDIA                          11                    1        9     236  ever_stunted     
6-24 months   IRC              INDIA                          12                    0       14     236  ever_stunted     
6-24 months   IRC              INDIA                          12                    1        9     236  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     1                     0      616   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     1                     1      204   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     2                     0      529   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     2                     1      201   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     3                     0      751   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     3                     1      189   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     4                     0      631   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     4                     1      154   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     5                     0      589   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     5                     1      164   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     6                     0      656   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     6                     1      185   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     7                     0      694   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     7                     1      190   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     8                     0      792   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     8                     1      193   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     9                     0      801   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     9                     1      193   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     10                    0      770   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     10                    1      197   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     11                    0      717   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     11                    1      204   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     12                    0      678   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     12                    1      195   10493  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     1                     0        0    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     1                     1        0    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     2                     0      398    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     2                     1      228    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     3                     0      427    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     3                     1      258    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     4                     0      303    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     4                     1      204    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     5                     0      270    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     5                     1      160    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     6                     0      183    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     6                     1      123    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     7                     0      195    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     7                     1      151    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     8                     0      230    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     8                     1      149    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     9                     0      193    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     9                     1       81    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     10                    0       71    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     10                    1       25    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     11                    0        0    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     11                    1        0    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     12                    0        0    3649  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     12                    1        0    3649  ever_stunted     
6-24 months   Keneba           GAMBIA                         1                     0      143    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         1                     1       64    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         2                     0      119    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         2                     1       71    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         3                     0      134    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         3                     1       85    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         4                     0       90    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         4                     1       50    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         5                     0       83    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         5                     1       57    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         6                     0       65    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         6                     1       45    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         7                     0       60    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         7                     1       38    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         8                     0      110    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         8                     1       55    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         9                     0      102    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         9                     1       68    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         10                    0      150    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         10                    1       77    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         11                    0      118    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         11                    1       55    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         12                    0      119    2017  ever_stunted     
6-24 months   Keneba           GAMBIA                         12                    1       59    2017  ever_stunted     
6-24 months   LCNI-5           MALAWI                         1                     0       23     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         1                     1       33     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         2                     0       18     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         2                     1       28     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         3                     0       10     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         3                     1       14     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         4                     0       17     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         4                     1       19     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         5                     0       19     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         5                     1       22     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         6                     0       11     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         6                     1       20     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         7                     0       24     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         7                     1       37     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         8                     0       37     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         8                     1       48     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         9                     0       34     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         9                     1       38     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         10                    0       34     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         10                    1       67     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         11                    0       35     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         11                    1       57     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         12                    0       30     730  ever_stunted     
6-24 months   LCNI-5           MALAWI                         12                    1       55     730  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     1                     0        7     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     1                     1        7     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     2                     0        4     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     2                     1        6     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     3                     0        7     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     3                     1        4     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     4                     0       12     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     4                     1        9     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     5                     0        5     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     5                     1        7     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     6                     0        5     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     6                     1        1     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     7                     0        4     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     7                     1        6     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     8                     0       10     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     8                     1        6     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     9                     0        8     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     9                     1        6     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     10                    0       11     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     10                    1        2     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     11                    0        7     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     11                    1        4     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     12                    0       11     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     12                    1        9     158  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         1                     0       12     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         1                     1        1     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         2                     0       14     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         2                     1        2     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         3                     0       13     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         3                     1        0     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         4                     0        9     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         4                     1        0     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         5                     0       15     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         5                     1        2     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         6                     0        6     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         6                     1        0     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         7                     0        9     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         7                     1        3     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         8                     0       11     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         8                     1        0     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         9                     0       22     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         9                     1        1     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         10                    0       16     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         10                    1        1     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         11                    0       18     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         11                    1        1     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         12                    0        7     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         12                    1        0     163  ever_stunted     
6-24 months   MAL-ED           INDIA                          1                     0        4     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          1                     1        7     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          2                     0       11     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          2                     1        5     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          3                     0       10     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          3                     1        5     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          4                     0        5     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          4                     1        5     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          5                     0        3     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          5                     1        3     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          6                     0        9     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          6                     1        7     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          7                     0       10     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          7                     1        3     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          8                     0        6     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          8                     1        8     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          9                     0        7     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          9                     1        6     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          10                    0        9     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          10                    1        6     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          11                    0        8     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          11                    1        6     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          12                    0        7     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          12                    1        4     154  ever_stunted     
6-24 months   MAL-ED           NEPAL                          1                     0       12     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          1                     1        2     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          2                     0       12     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          2                     1        5     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          3                     0        7     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          3                     1        7     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          4                     0       17     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          4                     1        2     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          5                     0       11     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          5                     1        5     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          6                     0       15     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          6                     1        2     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          7                     0       13     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          7                     1        2     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          8                     0       17     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          8                     1        3     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          9                     0       12     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          9                     1        1     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          10                    0       15     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          10                    1        3     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          11                    0       12     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          11                    1        6     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          12                    0       10     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          12                    1        3     194  ever_stunted     
6-24 months   MAL-ED           PERU                           1                     0       15     149  ever_stunted     
6-24 months   MAL-ED           PERU                           1                     1        5     149  ever_stunted     
6-24 months   MAL-ED           PERU                           2                     0        5     149  ever_stunted     
6-24 months   MAL-ED           PERU                           2                     1        4     149  ever_stunted     
6-24 months   MAL-ED           PERU                           3                     0        9     149  ever_stunted     
6-24 months   MAL-ED           PERU                           3                     1        4     149  ever_stunted     
6-24 months   MAL-ED           PERU                           4                     0        6     149  ever_stunted     
6-24 months   MAL-ED           PERU                           4                     1        6     149  ever_stunted     
6-24 months   MAL-ED           PERU                           5                     0        8     149  ever_stunted     
6-24 months   MAL-ED           PERU                           5                     1        7     149  ever_stunted     
6-24 months   MAL-ED           PERU                           6                     0        5     149  ever_stunted     
6-24 months   MAL-ED           PERU                           6                     1        3     149  ever_stunted     
6-24 months   MAL-ED           PERU                           7                     0        4     149  ever_stunted     
6-24 months   MAL-ED           PERU                           7                     1        7     149  ever_stunted     
6-24 months   MAL-ED           PERU                           8                     0        7     149  ever_stunted     
6-24 months   MAL-ED           PERU                           8                     1        5     149  ever_stunted     
6-24 months   MAL-ED           PERU                           9                     0        9     149  ever_stunted     
6-24 months   MAL-ED           PERU                           9                     1        5     149  ever_stunted     
6-24 months   MAL-ED           PERU                           10                    0        9     149  ever_stunted     
6-24 months   MAL-ED           PERU                           10                    1        3     149  ever_stunted     
6-24 months   MAL-ED           PERU                           11                    0        8     149  ever_stunted     
6-24 months   MAL-ED           PERU                           11                    1        4     149  ever_stunted     
6-24 months   MAL-ED           PERU                           12                    0        5     149  ever_stunted     
6-24 months   MAL-ED           PERU                           12                    1        6     149  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   1                     0       13     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   1                     1       11     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   2                     0        6     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   2                     1        9     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   3                     0        9     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   3                     1        2     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   4                     0        7     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   4                     1        3     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   5                     0        8     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   5                     1        2     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   6                     0        8     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   6                     1        4     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   7                     0        9     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   7                     1        2     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   8                     0        4     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   8                     1        1     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   9                     0        7     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   9                     1        6     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   10                    0        8     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   10                    1        9     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   11                    0        7     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   11                    1        3     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   12                    0       12     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   12                    1        8     158  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        6     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        6     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0        5     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1       12     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0        3     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1        4     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     0        1     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                     1        3     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     0        2     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                     1       11     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     0        1     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                     1       11     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     0        5     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                     1        8     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     0        2     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                     1        6     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     0        2     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                     1       10     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    0        1     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                    1        7     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    0        2     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                    1       18     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    0        1     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                    1       17     144  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     1                     0       12     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     1                     1       15     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     2                     0       12     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     2                     1       20     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     3                     0       18     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     3                     1       20     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     4                     0       11     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     4                     1       18     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     5                     0       12     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     5                     1       19     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     6                     0       10     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     6                     1       14     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     7                     0       12     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     7                     1       11     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     8                     0        9     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     8                     1       13     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     9                     0       10     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     9                     1       13     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     10                    0       13     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     10                    1       17     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     11                    0       12     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     11                    1       15     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     12                    0       16     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     12                    1       23     345  ever_stunted     
6-24 months   PROBIT           BELARUS                        1                     0      852   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        1                     1       88   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        2                     0      793   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        2                     1      113   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        3                     0      983   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        3                     1       70   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        4                     0     1008   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        4                     1       64   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        5                     0     1021   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        5                     1       61   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        6                     0     1062   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        6                     1       72   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        7                     0     1382   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        7                     1       65   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        8                     0     1401   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        8                     1       83   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        9                     0     1385   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        9                     1       71   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        10                    0     1561   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        10                    1       92   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        11                    0     1444   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        11                    1       89   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        12                    0     1581   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        12                    1      126   15467  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     1                     0       16     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     1                     1       14     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     2                     0       17     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     2                     1        3     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     3                     0       30     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     3                     1        5     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     4                     0       18     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     4                     1       11     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     5                     0       29     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     5                     1        7     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     6                     0       31     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     6                     1       23     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     7                     0       40     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     7                     1       14     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     8                     0       38     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     8                     1        8     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     9                     0       39     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     9                     1       17     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     10                    0       32     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     10                    1       18     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     11                    0       16     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     11                    1        6     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     12                    0       13     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     12                    1       11     456  ever_stunted     
6-24 months   ResPak           PAKISTAN                       1                     0        2      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       1                     1        1      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       2                     0        3      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       2                     1        3      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       3                     0        7      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       3                     1        3      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       4                     0        4      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       4                     1        1      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       5                     0       17      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       5                     1        2      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       6                     0       12      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       6                     1        2      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       7                     0        4      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       7                     1        2      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       8                     0       17      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       8                     1        3      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       9                     0        8      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       9                     1        2      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       10                    0        3      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       10                    1        0      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       11                    0        1      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       11                    1        0      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       12                    0        0      97  ever_stunted     
6-24 months   ResPak           PAKISTAN                       12                    1        0      97  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          1                     0       25     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          1                     1       30     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          2                     0       28     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          2                     1       20     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          3                     0       26     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          3                     1       20     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          4                     0       17     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          4                     1       24     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          5                     0       29     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          5                     1       29     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          6                     0       33     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          6                     1       21     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          7                     0       28     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          7                     1       36     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          8                     0       38     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          8                     1       52     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          9                     0       63     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          9                     1       58     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          10                    0       36     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          10                    1       50     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          11                    0       40     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          11                    1       37     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          12                    0       41     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          12                    1       32     813  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          1                     0        4     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          1                     1       12     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          2                     0        9     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          2                     1       17     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          3                     0        3     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          3                     1        9     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          4                     0        2     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          4                     1        1     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          5                     0        1     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          5                     1        8     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          6                     0        1     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          6                     1       12     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          7                     0        8     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          7                     1       18     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          8                     0       11     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          8                     1       31     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          9                     0        6     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          9                     1       27     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          10                    0        5     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          10                    1       19     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          11                    0        5     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          11                    1       12     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          12                    0        4     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          12                    1       18     243  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       81    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       36    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      101    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       21    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0       85    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       32    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0       77    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       36    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0       89    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       23    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0       88    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       25    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      120    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       31    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      134    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       28    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      112    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       30    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      129    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       36    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      115    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       34    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      109    1602  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       30    1602  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       1                     0      609    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       1                     1      226    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       2                     0      466    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       2                     1      183    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       3                     0      513    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       3                     1      219    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       4                     0      457    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       4                     1      156    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       5                     0      423    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       5                     1      155    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       6                     0      485    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       6                     1      152    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       7                     0      516    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       7                     1      160    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       8                     0      545    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       8                     1      181    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       9                     0      645    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       9                     1      203    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       10                    0      455    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       10                    1      186    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       11                    0      567    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       11                    1      188    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       12                    0      581    8497  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       12                    1      226    8497  ever_stunted     


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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
