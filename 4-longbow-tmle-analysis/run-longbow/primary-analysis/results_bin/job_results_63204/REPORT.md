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

agecat        studyid          country                        brthmon    ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  --------  --------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          1                      0       14     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          1                      1       20     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          2                      0        4     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          2                      1       12     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          3                      0       11     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          3                      1       20     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          4                      0       22     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          4                      1       22     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          5                      0       14     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          5                      1       22     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          6                      0       15     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          6                      1       22     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          7                      0       13     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          7                      1       26     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          8                      0        6     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          8                      1       12     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          9                      0        7     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          9                      1       14     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          10                     0       11     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          10                     1       18     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          11                     0       15     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          11                     1       28     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          12                     0        4     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          12                     1       21     373  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     1                      0       14     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     1                      1       16     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     2                      0       19     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     2                      1        8     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     3                      0       12     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     3                      1        8     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     4                      0       12     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     4                      1       11     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     5                      0       12     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     5                      1        8     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     6                      0        2     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     6                      1        7     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     7                      0       12     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     7                      1        5     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     8                      0        7     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     8                      1       17     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     9                      0       17     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     9                      1        5     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     10                     0       10     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     10                     1       17     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     11                     0       12     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     11                     1       18     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     12                     0       10     277  ever_sstunted    
0-24 months   CMIN             BANGLADESH                     12                     1       18     277  ever_sstunted    
0-24 months   CONTENT          PERU                           1                      0       10     215  ever_sstunted    
0-24 months   CONTENT          PERU                           1                      1        0     215  ever_sstunted    
0-24 months   CONTENT          PERU                           2                      0       17     215  ever_sstunted    
0-24 months   CONTENT          PERU                           2                      1        1     215  ever_sstunted    
0-24 months   CONTENT          PERU                           3                      0       28     215  ever_sstunted    
0-24 months   CONTENT          PERU                           3                      1        2     215  ever_sstunted    
0-24 months   CONTENT          PERU                           4                      0       18     215  ever_sstunted    
0-24 months   CONTENT          PERU                           4                      1        1     215  ever_sstunted    
0-24 months   CONTENT          PERU                           5                      0       13     215  ever_sstunted    
0-24 months   CONTENT          PERU                           5                      1        1     215  ever_sstunted    
0-24 months   CONTENT          PERU                           6                      0       13     215  ever_sstunted    
0-24 months   CONTENT          PERU                           6                      1        0     215  ever_sstunted    
0-24 months   CONTENT          PERU                           7                      0       27     215  ever_sstunted    
0-24 months   CONTENT          PERU                           7                      1        1     215  ever_sstunted    
0-24 months   CONTENT          PERU                           8                      0       21     215  ever_sstunted    
0-24 months   CONTENT          PERU                           8                      1        2     215  ever_sstunted    
0-24 months   CONTENT          PERU                           9                      0       26     215  ever_sstunted    
0-24 months   CONTENT          PERU                           9                      1        0     215  ever_sstunted    
0-24 months   CONTENT          PERU                           10                     0       13     215  ever_sstunted    
0-24 months   CONTENT          PERU                           10                     1        1     215  ever_sstunted    
0-24 months   CONTENT          PERU                           11                     0        8     215  ever_sstunted    
0-24 months   CONTENT          PERU                           11                     1        1     215  ever_sstunted    
0-24 months   CONTENT          PERU                           12                     0       11     215  ever_sstunted    
0-24 months   CONTENT          PERU                           12                     1        0     215  ever_sstunted    
0-24 months   EE               PAKISTAN                       1                      0       37     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       1                      1       58     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       2                      0       32     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       2                      1       35     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       3                      0       22     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       3                      1       20     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       4                      0        3     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       4                      1       13     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       5                      0        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       5                      1        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       6                      0        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       6                      1        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       7                      0        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       7                      1        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       8                      0        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       8                      1        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       9                      0        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       9                      1        0     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       10                     0        2     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       10                     1        2     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       11                     0       27     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       11                     1       44     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       12                     0       28     379  ever_sstunted    
0-24 months   EE               PAKISTAN                       12                     1       56     379  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          1                      0        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          1                      1        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          2                      0        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          2                      1        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          3                      0        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          3                      1        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          4                      0        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          4                      1        1     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          5                      0        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          5                      1        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          6                      0      130     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          6                      1       42     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          7                      0      200     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          7                      1       69     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          8                      0      199     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          8                      1       57     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          9                      0        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          9                      1        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          10                     0        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          10                     1        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          11                     0        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          11                     1        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          12                     0        0     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          12                     1        0     698  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      1                      0       20     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      1                      1        9     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      2                      0       21     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      2                      1        5     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      3                      0       21     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      3                      1        6     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      4                      0       25     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      4                      1        6     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      5                      0       27     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      5                      1        8     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      6                      0       22     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      6                      1        3     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      7                      0       18     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      7                      1        4     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      8                      0       12     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      8                      1        3     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      9                      0       14     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      9                      1        2     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      10                     0       29     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      10                     1        3     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      11                     0       20     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      11                     1        4     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      12                     0       30     315  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      12                     1        3     315  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0      286    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1       37    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                      0      167    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                      1       14    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                      0      179    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                      1       18    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                      0      186    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                      1       23    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                      0      196    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                      1       22    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                      0      169    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                      1       23    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                      0      165    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                      1       31    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                      0      270    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                      1       33    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                      0      365    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                      1       46    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                     0      332    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                     1       40    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                     0      305    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                     1       37    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                     0      288    3265  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                     1       33    3265  ever_sstunted    
0-24 months   IRC              INDIA                          1                      0       28     410  ever_sstunted    
0-24 months   IRC              INDIA                          1                      1       10     410  ever_sstunted    
0-24 months   IRC              INDIA                          2                      0       17     410  ever_sstunted    
0-24 months   IRC              INDIA                          2                      1       11     410  ever_sstunted    
0-24 months   IRC              INDIA                          3                      0       18     410  ever_sstunted    
0-24 months   IRC              INDIA                          3                      1        9     410  ever_sstunted    
0-24 months   IRC              INDIA                          4                      0       16     410  ever_sstunted    
0-24 months   IRC              INDIA                          4                      1        5     410  ever_sstunted    
0-24 months   IRC              INDIA                          5                      0       11     410  ever_sstunted    
0-24 months   IRC              INDIA                          5                      1       11     410  ever_sstunted    
0-24 months   IRC              INDIA                          6                      0       30     410  ever_sstunted    
0-24 months   IRC              INDIA                          6                      1        7     410  ever_sstunted    
0-24 months   IRC              INDIA                          7                      0       30     410  ever_sstunted    
0-24 months   IRC              INDIA                          7                      1        6     410  ever_sstunted    
0-24 months   IRC              INDIA                          8                      0       39     410  ever_sstunted    
0-24 months   IRC              INDIA                          8                      1        5     410  ever_sstunted    
0-24 months   IRC              INDIA                          9                      0       20     410  ever_sstunted    
0-24 months   IRC              INDIA                          9                      1        7     410  ever_sstunted    
0-24 months   IRC              INDIA                          10                     0       32     410  ever_sstunted    
0-24 months   IRC              INDIA                          10                     1        6     410  ever_sstunted    
0-24 months   IRC              INDIA                          11                     0       33     410  ever_sstunted    
0-24 months   IRC              INDIA                          11                     1        7     410  ever_sstunted    
0-24 months   IRC              INDIA                          12                     0       34     410  ever_sstunted    
0-24 months   IRC              INDIA                          12                     1       18     410  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     1                      0     2014   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     1                      1      524   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     2                      0     1692   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     2                      1      377   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     3                      0     2086   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     3                      1      347   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     4                      0     1540   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     4                      1      236   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     5                      0     1095   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     5                      1      230   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     6                      0     1175   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     6                      1      226   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     7                      0     1317   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     7                      1      258   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     8                      0     1763   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     8                      1      391   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     9                      0     2317   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     9                      1      482   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     10                     0     2366   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     10                     1      601   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     11                     0     2370   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     11                     1      680   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     12                     0     2470   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     12                     1      670   27227  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     1                      0        0    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     1                      1        0    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     2                      0      735    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     2                      1      181    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     3                      0      812    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     3                      1      212    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     4                      0      597    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     4                      1      176    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     5                      0      494    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     5                      1      147    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     6                      0      370    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     6                      1       90    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     7                      0      421    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     7                      1      116    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     8                      0      457    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     8                      1       98    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     9                      0      335    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     9                      1       68    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     10                     0      115    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     10                     1       18    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     11                     0        0    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     11                     1        0    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     12                     0        0    5442  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     12                     1        0    5442  ever_sstunted    
0-24 months   Keneba           GAMBIA                         1                      0      233    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         1                      1       62    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         2                      0      205    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         2                      1       51    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         3                      0      239    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         3                      1       67    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         4                      0      157    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         4                      1       40    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         5                      0      158    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         5                      1       46    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         6                      0      122    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         6                      1       41    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         7                      0      105    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         7                      1       36    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         8                      0      191    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         8                      1       45    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         9                      0      199    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         9                      1       54    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         10                     0      277    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         10                     1       73    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         11                     0      207    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         11                     1       47    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         12                     0      203    2915  ever_sstunted    
0-24 months   Keneba           GAMBIA                         12                     1       57    2915  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         1                      0       51     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         1                      1       17     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         2                      0       43     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         2                      1        3     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         3                      0       21     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         3                      1        5     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         4                      0       34     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         4                      1        5     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         5                      0       33     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         5                      1       11     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         6                      0       20     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         6                      1       14     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         7                      0       51     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         7                      1       11     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         8                      0       79     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         8                      1       14     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         9                      0       74     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         9                      1       19     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         10                     0       96     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         10                     1       39     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         11                     0       85     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         11                     1       20     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         12                     0       76     840  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         12                     1       19     840  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     1                      0       17     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     1                      1        4     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     2                      0       18     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     2                      1        7     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     3                      0       19     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     3                      1        6     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     4                      0       19     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     4                      1        3     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     5                      0       15     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     5                      1        7     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     6                      0       10     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     6                      1        1     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     7                      0       15     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     7                      1        5     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     8                      0       17     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     8                      1        9     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     9                      0       18     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     9                      1        5     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     10                     0       18     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     10                     1        7     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     11                     0       16     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     11                     1        1     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     12                     0       25     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     12                     1        3     265  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         1                      0       13     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         1                      1        2     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         2                      0       23     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         2                      1        2     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         3                      0       19     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         3                      1        1     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         4                      0       11     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         4                      1        1     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         5                      0       19     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         5                      1        4     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         6                      0        7     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         6                      1        2     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         7                      0       16     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         7                      1        2     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         8                      0       21     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         8                      1        0     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         9                      0       28     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         9                      1        4     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         10                     0       20     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         10                     1        1     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         11                     0       21     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         11                     1        1     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         12                     0       13     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         12                     1        2     233  ever_sstunted    
0-24 months   MAL-ED           INDIA                          1                      0       15     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          1                      1        5     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          2                      0       19     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          2                      1        2     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          3                      0       20     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          3                      1        3     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          4                      0       12     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          4                      1        5     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          5                      0        5     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          5                      1        3     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          6                      0       17     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          6                      1        3     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          7                      0       15     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          7                      1       10     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          8                      0       18     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          8                      1        6     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          9                      0       18     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          9                      1        5     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          10                     0       19     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          10                     1        7     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          11                     0       18     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          11                     1        7     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          12                     0       16     251  ever_sstunted    
0-24 months   MAL-ED           INDIA                          12                     1        3     251  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          1                      0       17     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          1                      1        3     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          2                      0       16     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          2                      1        3     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          3                      0       14     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          3                      1        3     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          4                      0       20     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          4                      1        2     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          5                      0       19     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          5                      1        3     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          6                      0       18     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          6                      1        0     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          7                      0       19     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          7                      1        1     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          8                      0       23     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          8                      1        1     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          9                      0       15     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          9                      1        1     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          10                     0       21     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          10                     1        0     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          11                     0       21     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          11                     1        3     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          12                     0       16     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          12                     1        1     240  ever_sstunted    
0-24 months   MAL-ED           PERU                           1                      0       29     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           1                      1       13     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           2                      0       18     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           2                      1        5     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           3                      0       19     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           3                      1        4     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           4                      0       18     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           4                      1        3     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           5                      0       20     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           5                      1        8     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           6                      0       13     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           6                      1        4     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           7                      0       17     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           7                      1        7     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           8                      0       16     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           8                      1        3     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           9                      0       22     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           9                      1        1     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           10                     0       22     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           10                     1        5     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           11                     0       25     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           11                     1        8     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           12                     0       20     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           12                     1        3     303  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   1                      0       27     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   1                      1       15     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   2                      0       24     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   2                      1        6     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   3                      0       15     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   3                      1        3     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   4                      0       14     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   4                      1        1     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   5                      0       13     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   5                      1        3     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   6                      0       18     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   6                      1        5     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   7                      0       19     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   7                      1        7     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   8                      0       10     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   8                      1        2     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   9                      0       24     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   9                      1        1     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   10                     0       23     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   10                     1        8     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   11                     0       21     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   11                     1       10     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   12                     0       33     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   12                     1       12     314  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       11     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        9     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0       11     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1       20     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0        8     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1       11     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0        5     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1        5     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0       13     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1        7     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0       11     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        8     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0       10     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1       13     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0        8     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        4     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0        9     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1       14     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0        9     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1       15     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0       11     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1       16     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0       19     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1       15     262  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     1                      0       48     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     1                      1       25     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     2                      0       48     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     2                      1       10     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     3                      0       45     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     3                      1       14     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     4                      0       37     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     4                      1       16     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     5                      0       36     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     5                      1       13     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     6                      0       32     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     6                      1       18     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     7                      0       28     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     7                      1       13     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     8                      0       24     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     8                      1       17     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     9                      0       34     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     9                      1       14     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     10                     0       33     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     10                     1       16     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     11                     0       33     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     11                     1       20     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     12                     0       35     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     12                     1       20     629  ever_sstunted    
0-24 months   PROBIT           BELARUS                        1                      0      979   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        1                      1       47   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        2                      0      949   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        2                      1       34   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        3                      0     1106   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        3                      1       39   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        4                      0     1131   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        4                      1       32   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        5                      0     1147   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        5                      1       27   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        6                      0     1177   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        6                      1       34   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        7                      0     1556   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        7                      1       34   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        8                      0     1558   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        8                      1       30   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        9                      0     1591   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        9                      1       36   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        10                     0     1766   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        10                     1       48   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        11                     0     1659   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        11                     1       43   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        12                     0     1811   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        12                     1       63   16897  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     1                      0       34     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     1                      1        4     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     2                      0       27     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     2                      1        8     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     3                      0       48     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     3                      1        5     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     4                      0       35     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     4                      1        4     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     5                      0       48     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     5                      1        4     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     6                      0       76     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     6                      1       18     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     7                      0       79     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     7                      1       13     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     8                      0       57     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     8                      1       12     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     9                      0       69     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     9                      1        7     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     10                     0       69     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     10                     1       10     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     11                     0       34     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     11                     1        8     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     12                     0       29     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     12                     1        2     700  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       1                      0        5     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       1                      1        7     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       2                      0       10     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       2                      1        1     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       3                      0       11     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       3                      1       17     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       4                      0       14     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       4                      1       16     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       5                      0       31     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       5                      1       24     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       6                      0       26     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       6                      1       21     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       7                      0       19     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       7                      1       12     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       8                      0       31     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       8                      1       10     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       9                      0       11     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       9                      1        5     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       10                     0        5     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       10                     1        1     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       11                     0        2     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       11                     1        2     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       12                     0        0     284  ever_sstunted    
0-24 months   ResPak           PAKISTAN                       12                     1        3     284  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          1                      0       76    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          1                      1       37    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          2                      0       65    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          2                      1       26    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          3                      0       55    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          3                      1       27    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          4                      0       55    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          4                      1       20    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          5                      0       67    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          5                      1       34    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          6                      0       75    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          6                      1       34    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          7                      0       72    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          7                      1       64    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          8                      0      110    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          8                      1       72    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          9                      0      133    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          9                      1       59    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          10                     0      115    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          10                     1       53    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          11                     0      101    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          11                     1       41    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          12                     0      102    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          12                     1       40    1533  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          1                      0       19     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          1                      1        7     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          2                      0       22     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          2                      1       14     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          3                      0        9     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          3                      1       12     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          4                      0        4     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          4                      1        0     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          5                      0        6     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          5                      1        8     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          6                      0       12     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          6                      1       13     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          7                      0       20     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          7                      1       17     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          8                      0       34     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          8                      1       33     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          9                      0       29     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          9                      1       37     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          10                     0       23     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          10                     1       28     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          11                     0       18     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          11                     1       15     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          12                     0       21     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          12                     1       17     418  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      154    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       17    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      161    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       17    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      140    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       24    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      169    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       21    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0      167    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1       18    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0      153    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1       13    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0      193    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1       25    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0      210    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1       22    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0      197    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1       19    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0      220    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1       30    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      201    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1       20    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0      192    2396  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1       13    2396  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       1                      0     1134   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       1                      1      229   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       2                      0      868   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       2                      1      205   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       3                      0      984   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       3                      1      221   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       4                      0      834   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       4                      1      174   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       5                      0      839   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       5                      1      199   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       6                      0      904   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       6                      1      250   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       7                      0      968   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       7                      1      214   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       8                      0     1080   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       8                      1      186   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       9                      0     1136   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       9                      1      171   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       10                     0      892   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       10                     1      160   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       11                     0     1024   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       11                     1      176   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       12                     0     1045   14074  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       12                     1      181   14074  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          1                      0       26     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          1                      1        8     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          2                      0       12     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          2                      1        3     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          3                      0       26     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          3                      1        5     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          4                      0       37     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          4                      1        7     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          5                      0       29     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          5                      1        7     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          6                      0       29     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          6                      1        7     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          7                      0       27     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          7                      1       12     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          8                      0        9     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          8                      1        8     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          9                      0       16     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          9                      1        5     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          10                     0       22     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          10                     1        7     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          11                     0       29     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          11                     1       12     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          12                     0       15     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          12                     1       10     368  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     1                      0       24     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     1                      1        6     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     2                      0       25     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     2                      1        2     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     3                      0       18     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     3                      1        2     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     4                      0       18     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     4                      1        5     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     5                      0       12     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     5                      1        8     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     6                      0        5     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     6                      1        4     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     7                      0       16     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     7                      1        1     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     8                      0       13     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     8                      1       11     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     9                      0       17     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     9                      1        5     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     10                     0       20     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     10                     1        7     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     11                     0       22     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     11                     1        8     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     12                     0       17     277  ever_sstunted    
0-6 months    CMIN             BANGLADESH                     12                     1       11     277  ever_sstunted    
0-6 months    CONTENT          PERU                           1                      0       10     215  ever_sstunted    
0-6 months    CONTENT          PERU                           1                      1        0     215  ever_sstunted    
0-6 months    CONTENT          PERU                           2                      0       18     215  ever_sstunted    
0-6 months    CONTENT          PERU                           2                      1        0     215  ever_sstunted    
0-6 months    CONTENT          PERU                           3                      0       29     215  ever_sstunted    
0-6 months    CONTENT          PERU                           3                      1        1     215  ever_sstunted    
0-6 months    CONTENT          PERU                           4                      0       18     215  ever_sstunted    
0-6 months    CONTENT          PERU                           4                      1        1     215  ever_sstunted    
0-6 months    CONTENT          PERU                           5                      0       13     215  ever_sstunted    
0-6 months    CONTENT          PERU                           5                      1        1     215  ever_sstunted    
0-6 months    CONTENT          PERU                           6                      0       13     215  ever_sstunted    
0-6 months    CONTENT          PERU                           6                      1        0     215  ever_sstunted    
0-6 months    CONTENT          PERU                           7                      0       27     215  ever_sstunted    
0-6 months    CONTENT          PERU                           7                      1        1     215  ever_sstunted    
0-6 months    CONTENT          PERU                           8                      0       21     215  ever_sstunted    
0-6 months    CONTENT          PERU                           8                      1        2     215  ever_sstunted    
0-6 months    CONTENT          PERU                           9                      0       26     215  ever_sstunted    
0-6 months    CONTENT          PERU                           9                      1        0     215  ever_sstunted    
0-6 months    CONTENT          PERU                           10                     0       13     215  ever_sstunted    
0-6 months    CONTENT          PERU                           10                     1        1     215  ever_sstunted    
0-6 months    CONTENT          PERU                           11                     0        8     215  ever_sstunted    
0-6 months    CONTENT          PERU                           11                     1        1     215  ever_sstunted    
0-6 months    CONTENT          PERU                           12                     0       11     215  ever_sstunted    
0-6 months    CONTENT          PERU                           12                     1        0     215  ever_sstunted    
0-6 months    EE               PAKISTAN                       1                      0       48     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       1                      1       47     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       2                      0       45     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       2                      1       22     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       3                      0       30     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       3                      1       12     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       4                      0        6     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       4                      1       10     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       5                      0        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       5                      1        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       6                      0        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       6                      1        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       7                      0        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       7                      1        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       8                      0        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       8                      1        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       9                      0        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       9                      1        0     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       10                     0        3     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       10                     1        1     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       11                     0       38     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       11                     1       33     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       12                     0       48     379  ever_sstunted    
0-6 months    EE               PAKISTAN                       12                     1       36     379  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          1                      0        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          1                      1        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          2                      0        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          2                      1        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          3                      0        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          3                      1        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          4                      0        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          4                      1        1     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          5                      0        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          5                      1        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          6                      0      160     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          6                      1       12     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          7                      0      239     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          7                      1       30     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          8                      0      239     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          8                      1       17     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          9                      0        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          9                      1        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          10                     0        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          10                     1        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          11                     0        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          11                     1        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          12                     0        0     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          12                     1        0     698  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      1                      0       25     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      1                      1        4     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      2                      0       21     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      2                      1        2     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      3                      0       21     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      3                      1        4     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      4                      0       27     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      4                      1        3     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      5                      0       30     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      5                      1        5     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      6                      0       22     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      6                      1        3     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      7                      0       20     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      7                      1        1     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      8                      0       13     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      8                      1        2     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      9                      0       15     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      9                      1        0     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      10                     0       25     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      10                     1        1     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      11                     0       19     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      11                     1        1     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      12                     0       30     295  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      12                     1        1     295  ever_sstunted    
0-6 months    IRC              INDIA                          1                      0       31     410  ever_sstunted    
0-6 months    IRC              INDIA                          1                      1        7     410  ever_sstunted    
0-6 months    IRC              INDIA                          2                      0       20     410  ever_sstunted    
0-6 months    IRC              INDIA                          2                      1        8     410  ever_sstunted    
0-6 months    IRC              INDIA                          3                      0       22     410  ever_sstunted    
0-6 months    IRC              INDIA                          3                      1        5     410  ever_sstunted    
0-6 months    IRC              INDIA                          4                      0       17     410  ever_sstunted    
0-6 months    IRC              INDIA                          4                      1        4     410  ever_sstunted    
0-6 months    IRC              INDIA                          5                      0       17     410  ever_sstunted    
0-6 months    IRC              INDIA                          5                      1        5     410  ever_sstunted    
0-6 months    IRC              INDIA                          6                      0       32     410  ever_sstunted    
0-6 months    IRC              INDIA                          6                      1        5     410  ever_sstunted    
0-6 months    IRC              INDIA                          7                      0       33     410  ever_sstunted    
0-6 months    IRC              INDIA                          7                      1        3     410  ever_sstunted    
0-6 months    IRC              INDIA                          8                      0       43     410  ever_sstunted    
0-6 months    IRC              INDIA                          8                      1        1     410  ever_sstunted    
0-6 months    IRC              INDIA                          9                      0       23     410  ever_sstunted    
0-6 months    IRC              INDIA                          9                      1        4     410  ever_sstunted    
0-6 months    IRC              INDIA                          10                     0       34     410  ever_sstunted    
0-6 months    IRC              INDIA                          10                     1        4     410  ever_sstunted    
0-6 months    IRC              INDIA                          11                     0       34     410  ever_sstunted    
0-6 months    IRC              INDIA                          11                     1        6     410  ever_sstunted    
0-6 months    IRC              INDIA                          12                     0       42     410  ever_sstunted    
0-6 months    IRC              INDIA                          12                     1       10     410  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     1                      0     2110   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     1                      1      422   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     2                      0     1770   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     2                      1      296   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     3                      0     2165   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     3                      1      263   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     4                      0     1603   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     4                      1      169   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     5                      0     1160   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     5                      1      159   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     6                      0     1238   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     6                      1      155   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     7                      0     1383   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     7                      1      190   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     8                      0     1836   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     8                      1      316   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     9                      0     2385   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     9                      1      408   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     10                     0     2462   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     10                     1      496   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     11                     0     2470   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     11                     1      569   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     12                     0     2576   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     12                     1      560   27161  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     1                      0        0    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     1                      1        0    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     2                      0      712    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     2                      1       77    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     3                      0      826    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     3                      1      109    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     4                      0      645    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     4                      1       85    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     5                      0      548    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     5                      1       66    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     6                      0      402    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     6                      1       52    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     7                      0      486    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     7                      1       48    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     8                      0      510    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     8                      1       40    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     9                      0      360    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     9                      1       33    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     10                     0      121    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     10                     1       10    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     11                     0        0    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     11                     1        0    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     12                     0        0    5130  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     12                     1        0    5130  ever_sstunted    
0-6 months    Keneba           GAMBIA                         1                      0      225    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         1                      1       34    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         2                      0      190    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         2                      1       26    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         3                      0      240    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         3                      1       22    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         4                      0      150    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         4                      1       17    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         5                      0      150    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         5                      1       19    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         6                      0      122    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         6                      1       19    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         7                      0       90    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         7                      1       15    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         8                      0      175    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         8                      1       23    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         9                      0      186    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         9                      1       28    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         10                     0      259    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         10                     1       31    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         11                     0      199    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         11                     1       19    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         12                     0      192    2465  ever_sstunted    
0-6 months    Keneba           GAMBIA                         12                     1       34    2465  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         1                      0       26     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         1                      1        3     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         2                      0        4     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         2                      1        0     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         3                      0        3     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         3                      1        1     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         4                      0        5     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         4                      1        0     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         5                      0        9     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         5                      1        1     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         6                      0        3     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         6                      1        2     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         7                      0        2     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         7                      1        1     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         8                      0       31     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         8                      1        1     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         9                      0       51     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         9                      1        2     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         10                     0       61     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         10                     1        8     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         11                     0       29     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         11                     1        1     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         12                     0       28     272  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         12                     1        0     272  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     1                      0       19     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     1                      1        2     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     2                      0       23     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     2                      1        2     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     3                      0       24     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     3                      1        1     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     4                      0       22     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     4                      1        0     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     5                      0       18     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     5                      1        4     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     6                      0       11     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     6                      1        0     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     7                      0       19     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     7                      1        1     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     8                      0       22     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     8                      1        4     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     9                      0       21     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     9                      1        2     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     10                     0       21     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     10                     1        4     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     11                     0       17     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     11                     1        0     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     12                     0       27     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     12                     1        1     265  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         1                      0       14     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         1                      1        1     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         2                      0       24     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         2                      1        1     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         3                      0       19     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         3                      1        1     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         4                      0       11     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         4                      1        1     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         5                      0       19     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         5                      1        4     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         6                      0        8     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         6                      1        1     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         7                      0       17     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         7                      1        1     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         8                      0       21     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         8                      1        0     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         9                      0       28     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         9                      1        4     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         10                     0       20     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         10                     1        1     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         11                     0       22     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         11                     1        0     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         12                     0       13     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         12                     1        2     233  ever_sstunted    
0-6 months    MAL-ED           INDIA                          1                      0       19     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          1                      1        1     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          2                      0       21     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          2                      1        0     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          3                      0       21     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          3                      1        2     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          4                      0       15     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          4                      1        2     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          5                      0        8     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          5                      1        0     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          6                      0       20     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          6                      1        0     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          7                      0       19     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          7                      1        6     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          8                      0       22     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          8                      1        2     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          9                      0       20     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          9                      1        3     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          10                     0       23     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          10                     1        3     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          11                     0       24     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          11                     1        1     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          12                     0       18     251  ever_sstunted    
0-6 months    MAL-ED           INDIA                          12                     1        1     251  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          1                      0       18     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          1                      1        2     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          2                      0       18     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          2                      1        1     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          3                      0       16     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          3                      1        1     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          4                      0       22     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          4                      1        0     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          5                      0       21     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          5                      1        1     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          6                      0       18     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          6                      1        0     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          7                      0       19     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          7                      1        1     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          8                      0       23     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          8                      1        1     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          9                      0       15     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          9                      1        1     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          10                     0       21     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          10                     1        0     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          11                     0       22     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          11                     1        2     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          12                     0       17     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          12                     1        0     240  ever_sstunted    
0-6 months    MAL-ED           PERU                           1                      0       36     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           1                      1        6     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           2                      0       20     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           2                      1        3     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           3                      0       22     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           3                      1        1     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           4                      0       19     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           4                      1        2     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           5                      0       21     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           5                      1        7     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           6                      0       15     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           6                      1        2     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           7                      0       20     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           7                      1        4     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           8                      0       17     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           8                      1        2     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           9                      0       23     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           9                      1        0     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           10                     0       23     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           10                     1        4     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           11                     0       28     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           11                     1        5     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           12                     0       21     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           12                     1        2     303  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   1                      0       36     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   1                      1        6     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   2                      0       28     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   2                      1        2     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   3                      0       16     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   3                      1        2     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   4                      0       15     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   4                      1        0     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   5                      0       15     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   5                      1        1     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   6                      0       21     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   6                      1        2     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   7                      0       25     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   7                      1        1     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   8                      0       11     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   8                      1        1     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   9                      0       24     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   9                      1        1     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   10                     0       27     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   10                     1        4     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   11                     0       26     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   11                     1        5     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   12                     0       41     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   12                     1        4     314  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       17     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        3     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      0       28     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                      1        3     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      0       16     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                      1        3     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      0        9     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                      1        1     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      0       18     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                      1        2     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      0       18     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                      1        1     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      0       19     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                      1        4     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      0       10     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                      1        2     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      0       17     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                      1        6     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     0       19     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                     1        5     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     0       25     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                     1        2     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     0       28     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                     1        6     262  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     1                      0       61     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     1                      1       12     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     2                      0       57     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     2                      1        1     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     3                      0       55     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     3                      1        4     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     4                      0       47     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     4                      1        6     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     5                      0       44     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     5                      1        5     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     6                      0       43     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     6                      1        7     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     7                      0       39     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     7                      1        2     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     8                      0       35     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     8                      1        6     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     9                      0       46     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     9                      1        2     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     10                     0       45     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     10                     1        4     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     11                     0       47     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     11                     1        6     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     12                     0       51     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     12                     1        4     629  ever_sstunted    
0-6 months    PROBIT           BELARUS                        1                      0     1010   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        1                      1       15   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        2                      0      975   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        2                      1        8   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        3                      0     1131   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        3                      1       14   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        4                      0     1150   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        4                      1       11   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        5                      0     1164   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        5                      1       10   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        6                      0     1196   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        6                      1       15   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        7                      0     1571   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        7                      1       19   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        8                      0     1577   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        8                      1       10   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        9                      0     1606   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        9                      1       21   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        10                     0     1789   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        10                     1       25   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        11                     0     1682   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        11                     1       20   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        12                     0     1856   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        12                     1       17   16892  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     1                      0       37     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     1                      1        1     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     2                      0       34     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     2                      1        1     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     3                      0       50     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     3                      1        3     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     4                      0       38     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     4                      1        1     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     5                      0       51     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     5                      1        1     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     6                      0       84     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     6                      1       10     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     7                      0       88     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     7                      1        4     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     8                      0       67     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     8                      1        2     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     9                      0       73     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     9                      1        3     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     10                     0       77     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     10                     1        2     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     11                     0       39     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     11                     1        3     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     12                     0       31     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     12                     1        0     700  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       1                      0        8     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       1                      1        4     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       2                      0       10     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       2                      1        1     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       3                      0       14     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       3                      1       13     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       4                      0       15     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       4                      1       15     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       5                      0       35     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       5                      1       20     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       6                      0       26     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       6                      1       20     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       7                      0       19     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       7                      1       12     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       8                      0       32     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       8                      1        9     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       9                      0       13     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       9                      1        3     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       10                     0        5     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       10                     1        1     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       11                     0        2     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       11                     1        2     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       12                     0        0     282  ever_sstunted    
0-6 months    ResPak           PAKISTAN                       12                     1        3     282  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          1                      0       96    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          1                      1       17    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          2                      0       76    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          2                      1       15    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          3                      0       68    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          3                      1       14    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          4                      0       69    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          4                      1        6    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          5                      0       82    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          5                      1       19    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          6                      0       89    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          6                      1       20    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          7                      0      114    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          7                      1       20    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          8                      0      147    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          8                      1       35    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          9                      0      170    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          9                      1       22    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          10                     0      144    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          10                     1       24    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          11                     0      123    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          11                     1       19    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          12                     0      123    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          12                     1       18    1530  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          1                      0       24     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          1                      1        2     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          2                      0       33     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          2                      1        3     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          3                      0       20     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          3                      1        1     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          4                      0        4     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          4                      1        0     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          5                      0       13     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          5                      1        1     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          6                      0       18     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          6                      1        7     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          7                      0       35     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          7                      1        2     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          8                      0       62     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          8                      1        5     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          9                      0       54     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          9                      1       11     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          10                     0       41     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          10                     1        9     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          11                     0       27     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          11                     1        6     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          12                     0       35     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          12                     1        3     416  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      164    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        7    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      171    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        7    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      157    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        7    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      182    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        8    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0      176    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1        9    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0      162    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1        4    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0      209    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1        9    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0      218    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1       14    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0      206    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1       10    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0      232    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1       18    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      215    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1        6    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0      199    2396  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1        6    2396  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       1                      0     1245   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       1                      1      115   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       2                      0      971   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       2                      1       99   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       3                      0     1088   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       3                      1      112   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       4                      0      904   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       4                      1      103   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       5                      0      922   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       5                      1      114   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       6                      0      993   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       6                      1      161   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       7                      0     1058   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       7                      1      123   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       8                      0     1147   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       8                      1      119   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       9                      0     1230   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       9                      1       77   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       10                     0      965   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       10                     1       86   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       11                     0     1107   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       11                     1       92   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       12                     0     1145   14057  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       12                     1       81   14057  ever_sstunted    


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
