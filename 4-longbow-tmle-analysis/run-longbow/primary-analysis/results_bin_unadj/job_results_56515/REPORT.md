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

agecat        studyid                    country                        month    pers_wast   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  ------  ----------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       22     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       19     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        1     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       24     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        0     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       22     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        2     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       15     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        2     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0       11     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        1     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       16     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        1     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       27     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       19     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        2     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        2     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       14     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        1     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        1     248  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       15     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       25     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       16     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       12     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       17     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0       15     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       16     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       16     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       23     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       25     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        1     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       19     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       17     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        1     218  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          1                0       15     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          1                1        1     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          2                0       22     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          2                1        2     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          3                0       20     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          3                1        1     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          4                0       16     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          4                1        2     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          5                0        7     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          5                1        1     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          6                0       14     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          6                1        4     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          7                0       21     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          7                1        0     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          8                0       19     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          8                1        5     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          9                0       21     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          9                1        0     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          10               0       23     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          10               1        1     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          11               0       22     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          11               1        2     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          12               0       20     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          INDIA                          12               1        2     241  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       19     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       20     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       20     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       20     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       19     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        1     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       19     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        1     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       19     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        0     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       18     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        1     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       20     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       20     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       20     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       20     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0     238  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           1                0       36     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           1                1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           2                0       29     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           2                1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           3                0       22     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           3                1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           4                0       18     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           4                1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           5                0       24     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           5                1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           6                0       20     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           6                1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           7                0       23     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           7                1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           8                0       15     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           8                1        1     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           9                0       22     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           9                1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           10               0       21     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           10               1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           11               0       35     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           11               1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           12               0       18     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          PERU                           12               1        0     284  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       31     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       34     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       17     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       11     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       21     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       27     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       22     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       31     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       33     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     275  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       21     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       28     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       23     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       16     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       16     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       28     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       18     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       19     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       29     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       33     253  pers_wast        
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     253  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       27     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       21     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        3     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       23     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        3     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       28     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        1     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       41     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       33     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        4     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       31     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        2     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       40     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        1     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       22     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        1     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       40     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       27     373  pers_wast        
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        2     373  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          1                0       32     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          1                1        3     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          2                0       29     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          2                1        1     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          3                0       27     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          3                1        2     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          4                0       22     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          4                1        2     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          5                0       19     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          5                1        2     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          6                0       31     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          6                1        4     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          7                0       30     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          7                1        6     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          8                0       32     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          8                1        9     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          9                0       25     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          9                1        5     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          10               0       33     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          10               1        6     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          11               0       38     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          11               1        3     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          12               0       44     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          12               1        5     410  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       1                0       84     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       1                1        7     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       2                0       68     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       2                1        5     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       3                0       37     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       3                1       10     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       4                0       21     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       4                1        1     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       5                0        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       5                1        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       6                0        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       6                1        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       7                0        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       7                1        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       8                0        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       8                1        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       9                0        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       9                1        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       10               0        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       10               1        0     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       11               0       55     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       11               1        5     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       12               0       79     377  pers_wast        
0-24 months   ki1000109-EE               PAKISTAN                       12               1        5     377  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       1                0        2     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       1                1        0     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       2                0        6     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       2                1        3     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       3                0        9     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       3                1        1     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       4                0       19     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       4                1        2     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       5                0       27     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       5                1        5     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       6                0       41     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       6                1        3     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       7                0       40     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       7                1        4     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       8                0       23     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       8                1        4     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       9                0       31     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       9                1        9     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       10               0       14     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       10               1        1     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       11               0        5     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       11               1        2     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       12               0        5     256  pers_wast        
0-24 months   ki1000109-ResPak           PAKISTAN                       12               1        0     256  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       81    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1       13    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       74    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1        6    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       73    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1        7    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       71    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1        7    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       70    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1        9    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0      102    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1        4    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0      105    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1       11    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0      138    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1       15    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0      154    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1       14    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0      139    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1        9    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0      117    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1       12    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0      128    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1        7    1366  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       50     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        6     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0       33     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1        5     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0       26     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1        8     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0       19     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        8     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0       24     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        4     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0       24     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        5     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0       14     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1        3     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0        0     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1        0     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0        9     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1        3     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0       23     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1        3     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0       42     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1        5     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       46     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1       15     375  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       49     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        5     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       44     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        2     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       45     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        5     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       40     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        5     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       34     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        6     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       36     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        4     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       42     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        3     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       32     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        3     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       27     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        2     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       47     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        5     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       44     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        4     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       47     534  pers_wast        
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        3     534  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      199    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        8    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      136    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        4    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      162    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      148    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        2    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      169    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      148    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        6    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      157    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      177    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        5    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      202    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      207    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      197    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      206    2166  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       10    2166  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         1                0      197    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         1                1        7    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         2                0      222    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         2                1       18    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         3                0      206    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         3                1        6    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         4                0      239    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         4                1       20    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         5                0      217    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         5                1       13    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         6                0      174    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         6                1       11    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         7                0      134    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         7                1        8    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         8                0      127    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         8                1       14    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         9                0      168    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         9                1        8    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         10               0      191    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         10               1       12    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         11               0      254    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         11               1       16    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         12               0      170    2444  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         12               1       12    2444  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       14     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       18     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       18     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        0     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       19     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        1     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       28     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        0     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       35     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        1     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       23     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        0     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       17     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        1     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       30     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        1     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       21     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        0     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       22     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        0     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0        7     256  pers_wast        
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        0     256  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      113    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1       13    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                0       95    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                1        9    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                0       89    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                1       14    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                0       87    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                1       12    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                0       96    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                1       17    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                0      171    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                1       20    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                0      194    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                1       20    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                0      176    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                1       34    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                0      134    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                1       17    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               0      181    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               1       19    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               0       77    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               1       11    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               0       56    1669  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               1       14    1669  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        1     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0      106     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1       14     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      196     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       32     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      214     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       34     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        0     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0     597  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     1                0       25     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     1                1        3     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     2                0       30     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     2                1        2     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     3                0       20     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     3                1        0     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     4                0       16     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     4                1        3     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     5                0       20     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     5                1        0     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     6                0       20     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     6                1        3     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     7                0       12     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     7                1        1     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     8                0       13     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     8                1        1     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     9                0       18     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     9                1        1     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     10               0       21     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     10               1        0     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     11               0        2     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     11               1        0     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     12               0       40     257  pers_wast        
0-24 months   ki1114097-CMIN             BANGLADESH                     12               1        6     257  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           1                0        9     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           1                1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           2                0       13     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           2                1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           3                0       27     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           3                1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           4                0       18     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           4                1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           5                0       25     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           5                1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           6                0       14     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           6                1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           7                0       16     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           7                1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           8                0       26     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           8                1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           9                0       19     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           9                1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           10               0       23     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           10               1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           11               0       18     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           11               1        0     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           12               0        7     215  pers_wast        
0-24 months   ki1114097-CONTENT          PERU                           12               1        0     215  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        1                0     1135   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        1                1       13   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        2                0      978   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        2                1        8   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        3                0     1158   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        3                1       11   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        4                0     1106   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        4                1       12   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        5                0     1120   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        5                1       12   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        6                0     1171   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        6                1       20   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        7                0     1438   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        7                1       15   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        8                0     1567   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        8                1       14   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        9                0     1547   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        9                1       11   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        10               0     1748   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        10               1       15   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        11               0     1660   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        11               1       20   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        12               0     1794   16581  pers_wast        
0-24 months   ki1119695-PROBIT           BELARUS                        12               1        8   16581  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      917    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       24    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      684    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1        9    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0      760    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       22    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      725    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1        8    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      689    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        8    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0      778    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       13    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0      783    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       16    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0      823    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       13    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0      873    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1       14    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      656    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1       14    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0      781    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       11    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0      890    9527  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       16    9527  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         1                0       49     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         1                1        0     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         2                0      100     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         2                1        2     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         3                0       88     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         3                1        1     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         4                0       97     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         5                0       85     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         5                1        0     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         6                0       75     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         6                1        1     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         7                0       60     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         7                1        0     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         8                0       38     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         8                1        0     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         9                0       24     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         9                1        0     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         10               0       30     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         10               1        0     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         11               0       41     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         11               1        0     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         12               0       26     719  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         12               1        2     719  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     1228   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       58   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     1078   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1       55   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0     1303   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       75   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0     1059   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1       79   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0     1035   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1       58   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0     1022   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1       74   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0     1126   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1       72   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0     1280   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1       80   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0     1353   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1       86   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0     1474   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1      108   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0     1454   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1       79   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0     1493   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1       74   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0       53    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        3    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      340    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1       19    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      426    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       36    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      835    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1       72    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      559    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1       55    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      411    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       44    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      774    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1       89    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      489    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1       34    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      453    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       34    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      295    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1       19    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0      146    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1       16    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0       74    5281  pers_wast        
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        5    5281  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       22     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       20     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        0     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       24     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        0     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                0       21     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                1        3     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                0       16     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                1        1     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                0       12     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                1        0     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                0       16     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                1        1     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                0       27     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                1        0     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                0       21     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                1        0     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               0       21     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               1        1     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               0       15     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               1        0     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               0       26     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               1        1     248  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       15     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       25     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       16     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                0       12     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                0       17     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                0       15     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                0       16     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                0       16     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                0       23     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               0       26     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               0       19     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               1        0     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               0       17     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               1        1     218  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          1                0       15     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          1                1        1     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          2                0       22     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          2                1        2     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          3                0       18     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          3                1        3     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          4                0       18     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          4                1        0     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          5                0        7     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          5                1        1     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          6                0       14     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          6                1        3     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          7                0       20     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          7                1        1     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          8                0       21     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          8                1        3     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          9                0       21     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          9                1        0     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          10               0       21     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          10               1        3     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          11               0       23     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          11               1        1     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          12               0       21     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          INDIA                          12               1        1     240  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                0       19     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                1        1     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                0       20     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                1        0     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                0       20     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                1        0     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                0       19     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                1        1     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                0       19     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                1        1     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                0       20     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                1        0     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                0       19     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                1        0     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                0       16     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                1        3     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                0       19     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                1        1     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               0       20     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               1        0     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               0       20     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               1        0     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               0       20     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               1        0     238  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           1                0       36     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           1                1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           2                0       29     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           2                1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           3                0       22     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           3                1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           4                0       18     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           4                1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           5                0       24     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           5                1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           6                0       20     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           6                1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           7                0       23     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           7                1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           8                0       16     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           8                1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           9                0       22     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           9                1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           10               0       21     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           10               1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           11               0       35     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           11               1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           12               0       18     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          PERU                           12               1        0     284  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       30     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       34     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       17     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       11     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       21     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       27     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       22     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       31     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       33     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     274  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       21     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       28     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       23     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       16     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       16     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       28     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       18     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       19     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       29     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       33     253  pers_wast        
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     253  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       27     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       18     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1        6     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       21     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        5     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                0       22     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                1        6     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                0       33     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                1        7     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                0       31     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                1        3     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                0       28     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                1        5     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                0       37     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                1        3     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                0       15     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                1        4     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               0       35     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               1        4     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               0       24     358  pers_wast        
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               1        5     358  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          1                0       29     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          1                1        5     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          2                0       25     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          2                1        4     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          3                0       24     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          3                1        5     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          4                0       22     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          4                1        2     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          5                0       18     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          5                1        2     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          6                0       29     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          6                1        6     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          7                0       28     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          7                1        7     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          8                0       32     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          8                1        9     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          9                0       25     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          9                1        2     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          10               0       31     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          10               1        8     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          11               0       37     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          11               1        4     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          12               0       38     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          12               1       10     402  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       1                0       83     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       1                1        7     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       2                0       64     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       2                1        7     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       3                0       43     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       3                1        4     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       4                0       21     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       4                1        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       5                0        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       5                1        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       6                0        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       6                1        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       7                0        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       7                1        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       8                0        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       8                1        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       9                0        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       9                1        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       10               0        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       10               1        0     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       11               0       56     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       11               1        4     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       12               0       79     371  pers_wast        
0-6 months    ki1000109-EE               PAKISTAN                       12               1        3     371  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       1                0        2     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       1                1        0     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       2                0        7     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       2                1        1     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       3                0        8     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       3                1        1     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       4                0       17     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       4                1        3     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       5                0       28     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       5                1        4     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       6                0       37     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       6                1        4     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       7                0       39     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       7                1        4     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       8                0       22     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       8                1        3     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       9                0       33     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       9                1        4     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       10               0       13     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       10               1        1     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       11               0        7     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       11               1        0     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       12               0        5     243  pers_wast        
0-6 months    ki1000109-ResPak           PAKISTAN                       12               1        0     243  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       17     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        4     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                0       18     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                1        1     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                0       17     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                1        1     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                0       15     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                1        0     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                0        7     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                1        1     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                0       13     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                1        0     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                0       10     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                1        0     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                0        7     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                1        1     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                0        6     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                1        0     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10               0       15     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10               1        1     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11               0       19     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11               1        2     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12               0       14     169  pers_wast        
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12               1        0     169  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      193    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        9    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      130    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        5    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      155    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      135    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        3    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      157    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      144    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        2    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      147    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      171    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        4    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      191    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      195    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      192    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        4    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      199    2061  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        9    2061  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         1                0      171    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         1                1        5    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         2                0      206    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         2                1        4    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         3                0      170    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         3                1        7    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         4                0      203    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         4                1        5    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         5                0      152    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         5                1        7    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         6                0      145    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         6                1        4    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         7                0      121    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         7                1        4    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         8                0      106    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         8                1        8    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         9                0      150    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         9                1        4    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         10               0      172    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         10               1        9    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         11               0      230    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         11               1        4    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         12               0      156    2045  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         12               1        2    2045  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                0        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                0        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                0        1     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                1        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                0        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                1        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                0      100     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                1       14     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                0      188     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                1       22     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                0      216     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                1       26     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                0        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                1        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               0        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               1        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               0        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               1        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               0        0     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               1        0     567  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     1                0       24     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     1                1        3     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     2                0       27     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     2                1        1     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     3                0       18     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     3                1        0     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     4                0       17     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     4                1        1     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     5                0       15     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     5                1        2     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     6                0       20     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     6                1        1     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     7                0       10     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     7                1        0     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     8                0       14     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     8                1        0     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     9                0       18     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     9                1        0     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     10               0       18     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     10               1        1     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     11               0        1     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     11               1        0     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     12               0       43     234  pers_wast        
0-6 months    ki1114097-CMIN             BANGLADESH                     12               1        0     234  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           1                0        9     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           1                1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           2                0       13     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           2                1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           3                0       27     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           3                1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           4                0       18     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           4                1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           5                0       25     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           5                1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           6                0       14     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           6                1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           7                0       16     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           7                1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           8                0       26     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           8                1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           9                0       19     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           9                1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           10               0       23     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           10               1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           11               0       18     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           11               1        0     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           12               0        7     215  pers_wast        
0-6 months    ki1114097-CONTENT          PERU                           12               1        0     215  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        1                0      788   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        1                1       64   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        2                0      712   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        2                1       70   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        3                0      859   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        3                1       75   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        4                0      846   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        4                1       75   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        5                0      835   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        5                1      101   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        6                0      886   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        6                1      102   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        7                0     1133   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        7                1      119   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        8                0     1169   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        8                1      122   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        9                0     1174   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        9                1      112   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        10               0     1357   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        10               1      121   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        11               0     1274   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        11               1       84   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        12               0     1366   13545  pers_wast        
0-6 months    ki1119695-PROBIT           BELARUS                        12               1      101   13545  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0       83     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1        0     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0       61     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1        1     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                0       29     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                1        2     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                0       35     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                1        0     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                0       34     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                1        1     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                0       64     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                1        1     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                0       25     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                1        2     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                0       46     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                1        1     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                0       80     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                1        3     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               0       43     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               1        1     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               0       69     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               1        0     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               0       49     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               1        2     632  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0       12      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0       13      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1        1      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0        2      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                0        1      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                0        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                0        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                0        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                0        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                0       11      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               0        3      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               0        6      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               1        1      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               0        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               1        0      50  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       22     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       19     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        1     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       24     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        0     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       22     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        2     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       15     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        2     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0       11     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        1     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       16     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        1     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       27     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       19     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        2     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        2     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       14     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        1     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        1     248  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       15     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       25     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       16     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       12     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       17     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0       15     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       16     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       16     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       23     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       25     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        1     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       19     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       17     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        1     218  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          1                0       15     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          1                1        1     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          2                0       22     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          2                1        2     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          3                0       20     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          3                1        1     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          4                0       16     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          4                1        2     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          5                0        7     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          5                1        1     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          6                0       14     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          6                1        4     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          7                0       21     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          7                1        0     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          8                0       19     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          8                1        5     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          9                0       21     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          9                1        0     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          10               0       23     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          10               1        1     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          11               0       22     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          11               1        2     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          12               0       20     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          INDIA                          12               1        2     241  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       19     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       20     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       20     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       20     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       19     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        1     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       19     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        1     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       19     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        0     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       18     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        1     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       20     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       20     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       20     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       20     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0     238  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           1                0       36     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           1                1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           2                0       29     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           2                1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           3                0       22     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           3                1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           4                0       18     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           4                1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           5                0       24     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           5                1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           6                0       20     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           6                1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           7                0       23     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           7                1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           8                0       15     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           8                1        1     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           9                0       22     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           9                1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           10               0       21     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           10               1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           11               0       35     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           11               1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           12               0       18     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          PERU                           12               1        0     284  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       31     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       34     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       17     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       11     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       21     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       27     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       22     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       31     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       33     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     275  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       21     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       28     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       23     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       16     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       16     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       28     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       18     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       19     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       29     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       33     253  pers_wast        
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     253  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       27     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       21     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        3     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       23     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        3     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       28     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        1     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       41     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       33     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        4     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       31     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        2     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       40     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        1     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       22     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        1     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       40     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       27     373  pers_wast        
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        2     373  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          1                0       32     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          1                1        3     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          2                0       29     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          2                1        1     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          3                0       27     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          3                1        2     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          4                0       22     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          4                1        2     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          5                0       19     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          5                1        2     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          6                0       31     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          6                1        4     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          7                0       30     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          7                1        6     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          8                0       32     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          8                1        9     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          9                0       25     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          9                1        5     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          10               0       33     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          10               1        6     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          11               0       38     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          11               1        3     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          12               0       44     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          12               1        5     410  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       1                0       84     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       1                1        7     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       2                0       68     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       2                1        5     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       3                0       37     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       3                1       10     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       4                0       21     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       4                1        1     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       5                0        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       5                1        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       6                0        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       6                1        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       7                0        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       7                1        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       8                0        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       8                1        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       9                0        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       9                1        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       10               0        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       10               1        0     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       11               0       55     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       11               1        5     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       12               0       79     377  pers_wast        
6-24 months   ki1000109-EE               PAKISTAN                       12               1        5     377  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       1                0        2     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       1                1        0     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       2                0        6     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       2                1        3     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       3                0        9     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       3                1        1     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       4                0       19     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       4                1        2     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       5                0       27     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       5                1        5     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       6                0       41     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       6                1        3     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       7                0       40     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       7                1        4     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       8                0       23     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       8                1        4     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       9                0       31     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       9                1        9     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       10               0       14     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       10               1        1     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       11               0        5     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       11               1        2     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       12               0        5     256  pers_wast        
6-24 months   ki1000109-ResPak           PAKISTAN                       12               1        0     256  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       81    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1       13    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       74    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1        6    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       73    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1        7    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       71    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1        7    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       70    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1        9    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0      102    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1        4    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0      105    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1       11    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0      138    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1       15    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0      154    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1       14    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0      139    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1        9    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0      117    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1       12    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0      128    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1        7    1366  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       50     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        6     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0       33     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1        5     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0       26     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1        8     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0       19     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        8     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0       24     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        4     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0       24     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        5     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0       14     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1        3     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0        0     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1        0     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0        9     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1        3     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0       23     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1        3     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0       42     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1        5     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       46     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1       15     375  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       49     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        5     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       44     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        2     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       45     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        5     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       40     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        5     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       34     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        6     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       36     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        4     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       42     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        3     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       32     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        3     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       27     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        2     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       47     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        5     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       44     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        4     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       47     534  pers_wast        
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        3     534  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      199    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        8    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      136    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        4    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      162    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      148    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        2    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      169    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      148    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        6    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      157    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      177    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        5    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      202    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      207    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      197    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      206    2166  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       10    2166  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         1                0      197    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         1                1        7    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         2                0      222    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         2                1       18    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         3                0      206    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         3                1        6    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         4                0      239    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         4                1       20    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         5                0      217    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         5                1       13    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         6                0      174    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         6                1       11    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         7                0      134    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         7                1        8    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         8                0      127    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         8                1       14    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         9                0      168    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         9                1        8    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         10               0      191    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         10               1       12    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         11               0      254    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         11               1       16    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         12               0      170    2444  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         12               1       12    2444  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       14     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       18     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       18     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        0     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       19     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        1     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       28     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        0     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       35     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        1     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       23     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        0     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       17     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        1     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       30     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        1     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       21     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        0     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       22     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        0     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0        7     256  pers_wast        
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        0     256  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      113    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1       13    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                0       95    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                1        9    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                0       89    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                1       14    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                0       87    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                1       12    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                0       96    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                1       17    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                0      171    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                1       20    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                0      194    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                1       20    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                0      176    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                1       34    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                0      134    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                1       17    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               0      181    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               1       19    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               0       77    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               1       11    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               0       56    1669  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               1       14    1669  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        1     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0      106     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1       14     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      196     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       32     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      214     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       34     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        0     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0     597  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     1                0       25     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     1                1        3     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     2                0       30     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     2                1        2     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     3                0       20     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     3                1        0     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     4                0       16     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     4                1        3     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     5                0       20     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     5                1        0     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     6                0       20     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     6                1        3     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     7                0       12     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     7                1        1     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     8                0       13     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     8                1        1     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     9                0       18     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     9                1        1     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     10               0       21     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     10               1        0     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     11               0        2     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     11               1        0     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     12               0       40     257  pers_wast        
6-24 months   ki1114097-CMIN             BANGLADESH                     12               1        6     257  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           1                0        9     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           1                1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           2                0       13     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           2                1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           3                0       27     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           3                1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           4                0       18     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           4                1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           5                0       25     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           5                1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           6                0       14     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           6                1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           7                0       16     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           7                1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           8                0       26     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           8                1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           9                0       19     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           9                1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           10               0       23     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           10               1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           11               0       18     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           11               1        0     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           12               0        7     215  pers_wast        
6-24 months   ki1114097-CONTENT          PERU                           12               1        0     215  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        1                0     1135   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        1                1       13   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        2                0      978   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        2                1        8   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        3                0     1158   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        3                1       11   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        4                0     1106   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        4                1       12   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        5                0     1120   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        5                1       12   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        6                0     1171   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        6                1       20   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        7                0     1438   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        7                1       15   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        8                0     1567   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        8                1       14   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        9                0     1547   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        9                1       11   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        10               0     1748   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        10               1       15   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        11               0     1660   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        11               1       20   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        12               0     1794   16581  pers_wast        
6-24 months   ki1119695-PROBIT           BELARUS                        12               1        8   16581  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      917    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       24    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      684    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1        9    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0      760    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       22    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      725    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1        8    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      689    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        8    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0      778    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       13    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0      783    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       16    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0      823    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       13    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0      873    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1       14    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      656    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1       14    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0      781    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       11    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0      890    9527  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       16    9527  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         1                0       49     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         1                1        0     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         2                0      100     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         2                1        2     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         3                0       88     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         3                1        1     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         4                0       97     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         5                0       85     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         5                1        0     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         6                0       75     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         6                1        1     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         7                0       60     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         7                1        0     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         8                0       38     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         8                1        0     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         9                0       24     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         9                1        0     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         10               0       30     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         10               1        0     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         11               0       41     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         11               1        0     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         12               0       26     719  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         12               1        2     719  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     1228   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       58   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     1078   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1       55   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0     1303   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       75   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0     1059   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1       79   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0     1035   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1       58   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0     1022   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1       74   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0     1126   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1       72   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0     1280   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1       80   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0     1353   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1       86   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0     1474   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1      108   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0     1454   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1       79   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0     1493   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1       74   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0       53    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        3    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      340    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1       19    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      426    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       36    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      835    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1       72    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      559    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1       55    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      411    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       44    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      774    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1       89    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      489    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1       34    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      453    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       34    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      295    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1       19    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0      146    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1       16    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0       74    5281  pers_wast        
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        5    5281  pers_wast        


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/8f989009-f45f-4059-98b1-00ca8f230a64/4e0f53fe-374c-4227-8bf9-944f86e81703/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f989009-f45f-4059-98b1-00ca8f230a64/4e0f53fe-374c-4227-8bf9-944f86e81703/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f989009-f45f-4059-98b1-00ca8f230a64/4e0f53fe-374c-4227-8bf9-944f86e81703/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f989009-f45f-4059-98b1-00ca8f230a64/4e0f53fe-374c-4227-8bf9-944f86e81703/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba       GAMBIA         1                    NA                0.0343137    0.0093290   0.0592984
0-24 months   ki1101329-Keneba       GAMBIA         2                    NA                0.0750000    0.0416702   0.1083298
0-24 months   ki1101329-Keneba       GAMBIA         3                    NA                0.0283019    0.0059743   0.0506295
0-24 months   ki1101329-Keneba       GAMBIA         4                    NA                0.0772201    0.0447038   0.1097364
0-24 months   ki1101329-Keneba       GAMBIA         5                    NA                0.0565217    0.0266716   0.0863719
0-24 months   ki1101329-Keneba       GAMBIA         6                    NA                0.0594595    0.0253755   0.0935434
0-24 months   ki1101329-Keneba       GAMBIA         7                    NA                0.0563380    0.0184064   0.0942697
0-24 months   ki1101329-Keneba       GAMBIA         8                    NA                0.0992908    0.0499195   0.1486620
0-24 months   ki1101329-Keneba       GAMBIA         9                    NA                0.0454545    0.0146746   0.0762345
0-24 months   ki1101329-Keneba       GAMBIA         10                   NA                0.0591133    0.0266644   0.0915622
0-24 months   ki1101329-Keneba       GAMBIA         11                   NA                0.0592593    0.0310905   0.0874280
0-24 months   ki1101329-Keneba       GAMBIA         12                   NA                0.0659341    0.0298725   0.1019957
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1031746   -0.0251156   0.2314648
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2                    NA                0.0865385    0.0041394   0.1689376
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   3                    NA                0.1359223    0.0632883   0.2085564
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   4                    NA                0.1212121   -0.0299747   0.2723989
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   5                    NA                0.1504425    0.0845608   0.2163241
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   6                    NA                0.1047120    0.0312439   0.1781802
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   7                    NA                0.0934579    0.0067666   0.1801493
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   8                    NA                0.1619048    0.1001995   0.2236101
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   9                    NA                0.1125828    0.0356469   0.1895187
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   10                   NA                0.0950000    0.0120340   0.1779660
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   11                   NA                0.1250000    0.0113568   0.2386432
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   12                   NA                0.2000000    0.1445744   0.2554256
0-24 months   ki1119695-PROBIT       BELARUS        1                    NA                0.0113240    0.0010867   0.0215614
0-24 months   ki1119695-PROBIT       BELARUS        2                    NA                0.0081136    0.0009325   0.0152947
0-24 months   ki1119695-PROBIT       BELARUS        3                    NA                0.0094098    0.0008106   0.0180089
0-24 months   ki1119695-PROBIT       BELARUS        4                    NA                0.0107335    0.0039915   0.0174754
0-24 months   ki1119695-PROBIT       BELARUS        5                    NA                0.0106007    0.0001570   0.0210444
0-24 months   ki1119695-PROBIT       BELARUS        6                    NA                0.0167926    0.0083207   0.0252645
0-24 months   ki1119695-PROBIT       BELARUS        7                    NA                0.0103235    0.0029971   0.0176498
0-24 months   ki1119695-PROBIT       BELARUS        8                    NA                0.0088552    0.0017261   0.0159842
0-24 months   ki1119695-PROBIT       BELARUS        9                    NA                0.0070603    0.0008829   0.0132377
0-24 months   ki1119695-PROBIT       BELARUS        10                   NA                0.0085082    0.0022882   0.0147282
0-24 months   ki1119695-PROBIT       BELARUS        11                   NA                0.0119048    0.0046610   0.0191485
0-24 months   ki1119695-PROBIT       BELARUS        12                   NA                0.0044395   -0.0016465   0.0105255
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                0.0255048    0.0154314   0.0355782
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       2                    NA                0.0129870    0.0045572   0.0214169
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       3                    NA                0.0281330    0.0165431   0.0397229
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       4                    NA                0.0109141    0.0033921   0.0184360
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       5                    NA                0.0114778    0.0035696   0.0193859
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       6                    NA                0.0164349    0.0075742   0.0252956
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       7                    NA                0.0200250    0.0103112   0.0297389
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       8                    NA                0.0155502    0.0071627   0.0239377
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       9                    NA                0.0157835    0.0075808   0.0239862
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       10                   NA                0.0208955    0.0100644   0.0317267
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       11                   NA                0.0138889    0.0057380   0.0220398
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       12                   NA                0.0176600    0.0090831   0.0262370
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0451011    0.0324160   0.0577862
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2                    NA                0.0485437    0.0348611   0.0622263
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     3                    NA                0.0544267    0.0409496   0.0679038
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     4                    NA                0.0694200    0.0537513   0.0850888
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     5                    NA                0.0530650    0.0387686   0.0673614
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     6                    NA                0.0675182    0.0489831   0.0860534
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     7                    NA                0.0601002    0.0464182   0.0737822
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     8                    NA                0.0588235    0.0448552   0.0727918
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     9                    NA                0.0597637    0.0461479   0.0733795
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     10                   NA                0.0682680    0.0550786   0.0814574
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     11                   NA                0.0515329    0.0401541   0.0629118
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     12                   NA                0.0472240    0.0366115   0.0578365
0-6 months    ki1119695-PROBIT       BELARUS        1                    NA                0.0751174    0.0418508   0.1083839
0-6 months    ki1119695-PROBIT       BELARUS        2                    NA                0.0895141    0.0411331   0.1378950
0-6 months    ki1119695-PROBIT       BELARUS        3                    NA                0.0802998    0.0455623   0.1150373
0-6 months    ki1119695-PROBIT       BELARUS        4                    NA                0.0814332    0.0483018   0.1145647
0-6 months    ki1119695-PROBIT       BELARUS        5                    NA                0.1079060    0.0530654   0.1627466
0-6 months    ki1119695-PROBIT       BELARUS        6                    NA                0.1032389    0.0705712   0.1359065
0-6 months    ki1119695-PROBIT       BELARUS        7                    NA                0.0950479    0.0591748   0.1309211
0-6 months    ki1119695-PROBIT       BELARUS        8                    NA                0.0945004    0.0637281   0.1252727
0-6 months    ki1119695-PROBIT       BELARUS        9                    NA                0.0870918    0.0456601   0.1285234
0-6 months    ki1119695-PROBIT       BELARUS        10                   NA                0.0818674    0.0525885   0.1111463
0-6 months    ki1119695-PROBIT       BELARUS        11                   NA                0.0618557    0.0421665   0.0815448
0-6 months    ki1119695-PROBIT       BELARUS        12                   NA                0.0688480    0.0460508   0.0916451
6-24 months   ki1101329-Keneba       GAMBIA         1                    NA                0.0343137    0.0093290   0.0592984
6-24 months   ki1101329-Keneba       GAMBIA         2                    NA                0.0750000    0.0416702   0.1083298
6-24 months   ki1101329-Keneba       GAMBIA         3                    NA                0.0283019    0.0059743   0.0506295
6-24 months   ki1101329-Keneba       GAMBIA         4                    NA                0.0772201    0.0447038   0.1097364
6-24 months   ki1101329-Keneba       GAMBIA         5                    NA                0.0565217    0.0266716   0.0863719
6-24 months   ki1101329-Keneba       GAMBIA         6                    NA                0.0594595    0.0253755   0.0935434
6-24 months   ki1101329-Keneba       GAMBIA         7                    NA                0.0563380    0.0184064   0.0942697
6-24 months   ki1101329-Keneba       GAMBIA         8                    NA                0.0992908    0.0499195   0.1486620
6-24 months   ki1101329-Keneba       GAMBIA         9                    NA                0.0454545    0.0146746   0.0762345
6-24 months   ki1101329-Keneba       GAMBIA         10                   NA                0.0591133    0.0266644   0.0915622
6-24 months   ki1101329-Keneba       GAMBIA         11                   NA                0.0592593    0.0310905   0.0874280
6-24 months   ki1101329-Keneba       GAMBIA         12                   NA                0.0659341    0.0298725   0.1019957
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1031746   -0.0251156   0.2314648
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2                    NA                0.0865385    0.0041394   0.1689376
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   3                    NA                0.1359223    0.0632883   0.2085564
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   4                    NA                0.1212121   -0.0299747   0.2723989
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   5                    NA                0.1504425    0.0845608   0.2163241
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   6                    NA                0.1047120    0.0312439   0.1781802
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   7                    NA                0.0934579    0.0067666   0.1801493
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   8                    NA                0.1619048    0.1001995   0.2236101
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   9                    NA                0.1125828    0.0356469   0.1895187
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   10                   NA                0.0950000    0.0120340   0.1779660
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   11                   NA                0.1250000    0.0113568   0.2386432
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   12                   NA                0.2000000    0.1445744   0.2554256
6-24 months   ki1119695-PROBIT       BELARUS        1                    NA                0.0113240    0.0010867   0.0215614
6-24 months   ki1119695-PROBIT       BELARUS        2                    NA                0.0081136    0.0009325   0.0152947
6-24 months   ki1119695-PROBIT       BELARUS        3                    NA                0.0094098    0.0008106   0.0180089
6-24 months   ki1119695-PROBIT       BELARUS        4                    NA                0.0107335    0.0039915   0.0174754
6-24 months   ki1119695-PROBIT       BELARUS        5                    NA                0.0106007    0.0001570   0.0210444
6-24 months   ki1119695-PROBIT       BELARUS        6                    NA                0.0167926    0.0083207   0.0252645
6-24 months   ki1119695-PROBIT       BELARUS        7                    NA                0.0103235    0.0029971   0.0176498
6-24 months   ki1119695-PROBIT       BELARUS        8                    NA                0.0088552    0.0017261   0.0159842
6-24 months   ki1119695-PROBIT       BELARUS        9                    NA                0.0070603    0.0008829   0.0132377
6-24 months   ki1119695-PROBIT       BELARUS        10                   NA                0.0085082    0.0022882   0.0147282
6-24 months   ki1119695-PROBIT       BELARUS        11                   NA                0.0119048    0.0046610   0.0191485
6-24 months   ki1119695-PROBIT       BELARUS        12                   NA                0.0044395   -0.0016465   0.0105255
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                0.0255048    0.0154314   0.0355782
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       2                    NA                0.0129870    0.0045572   0.0214169
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       3                    NA                0.0281330    0.0165431   0.0397229
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       4                    NA                0.0109141    0.0033921   0.0184360
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       5                    NA                0.0114778    0.0035696   0.0193859
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       6                    NA                0.0164349    0.0075742   0.0252956
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       7                    NA                0.0200250    0.0103112   0.0297389
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       8                    NA                0.0155502    0.0071627   0.0239377
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       9                    NA                0.0157835    0.0075808   0.0239862
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       10                   NA                0.0208955    0.0100644   0.0317267
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       11                   NA                0.0138889    0.0057380   0.0220398
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       12                   NA                0.0176600    0.0090831   0.0262370
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0451011    0.0324160   0.0577862
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2                    NA                0.0485437    0.0348611   0.0622263
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     3                    NA                0.0544267    0.0409496   0.0679038
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     4                    NA                0.0694200    0.0537513   0.0850888
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     5                    NA                0.0530650    0.0387686   0.0673614
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     6                    NA                0.0675182    0.0489831   0.0860534
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     7                    NA                0.0601002    0.0464182   0.0737822
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     8                    NA                0.0588235    0.0448552   0.0727918
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     9                    NA                0.0597637    0.0461479   0.0733795
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     10                   NA                0.0682680    0.0550786   0.0814574
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     11                   NA                0.0515329    0.0401541   0.0629118
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     12                   NA                0.0472240    0.0366115   0.0578365


### Parameter: E(Y)


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba       GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1119695-PROBIT       BELARUS        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348
0-6 months    ki1119695-PROBIT       BELARUS        NA                   NA                0.0846069   0.0570929   0.1121208
6-24 months   ki1101329-Keneba       GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   ki1119695-PROBIT       BELARUS        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348


### Parameter: RR


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba       GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba       GAMBIA         2                    1                 2.1857143   0.9313833   5.1293028
0-24 months   ki1101329-Keneba       GAMBIA         3                    1                 0.8247978   0.2819056   2.4131886
0-24 months   ki1101329-Keneba       GAMBIA         4                    1                 2.2504137   0.9704416   5.2186157
0-24 months   ki1101329-Keneba       GAMBIA         5                    1                 1.6472050   0.6700479   4.0493885
0-24 months   ki1101329-Keneba       GAMBIA         6                    1                 1.7328185   0.6859549   4.3773434
0-24 months   ki1101329-Keneba       GAMBIA         7                    1                 1.6418511   0.6090335   4.4261522
0-24 months   ki1101329-Keneba       GAMBIA         8                    1                 2.8936170   1.1981721   6.9881609
0-24 months   ki1101329-Keneba       GAMBIA         9                    1                 1.3246753   0.4900875   3.5805132
0-24 months   ki1101329-Keneba       GAMBIA         10                   1                 1.7227305   0.6921526   4.2877833
0-24 months   ki1101329-Keneba       GAMBIA         11                   1                 1.7269841   0.7238463   4.1203142
0-24 months   ki1101329-Keneba       GAMBIA         12                   1                 1.9215071   0.7729422   4.7767988
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2                    1                 0.8387576   0.1688396   4.1667617
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   3                    1                 1.3174010   0.3363297   5.1602511
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   4                    1                 1.1748252   0.2005119   6.8834521
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   5                    1                 1.4581348   0.3738117   5.6877751
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   6                    1                 1.0149013   0.2242300   4.5936084
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   7                    1                 0.9058232   0.1805737   4.5439377
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   8                    1                 1.5692308   0.4238967   5.8091632
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   9                    1                 1.0911870   0.2082314   5.7181056
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   10                   1                 0.9207693   0.2024908   4.1869367
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   11                   1                 1.2115385   0.2162089   6.7889223
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   12                   1                 1.9384615   0.5414145   6.9404002
0-24 months   ki1119695-PROBIT       BELARUS        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT       BELARUS        2                    1                 0.7164924   0.2994582   1.7143007
0-24 months   ki1119695-PROBIT       BELARUS        3                    1                 0.8309535   0.2761792   2.5001290
0-24 months   ki1119695-PROBIT       BELARUS        4                    1                 0.9478464   0.3580057   2.5094933
0-24 months   ki1119695-PROBIT       BELARUS        5                    1                 0.9361239   0.3017788   2.9038758
0-24 months   ki1119695-PROBIT       BELARUS        6                    1                 1.4829167   0.6028643   3.6476570
0-24 months   ki1119695-PROBIT       BELARUS        7                    1                 0.9116417   0.3515855   2.3638365
0-24 months   ki1119695-PROBIT       BELARUS        8                    1                 0.7819783   0.3717019   1.6451090
0-24 months   ki1119695-PROBIT       BELARUS        9                    1                 0.6234818   0.2028102   1.9167155
0-24 months   ki1119695-PROBIT       BELARUS        10                   1                 0.7513417   0.3491740   1.6167135
0-24 months   ki1119695-PROBIT       BELARUS        11                   1                 1.0512821   0.4191211   2.6369325
0-24 months   ki1119695-PROBIT       BELARUS        12                   1                 0.3920430   0.1032044   1.4892558
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       2                    1                 0.5091991   0.2381785   1.0886111
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       3                    1                 1.1030477   0.6233576   1.9518720
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       4                    1                 0.4279218   0.1933678   0.9469885
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       5                    1                 0.4500239   0.2033899   0.9957306
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       6                    1                 0.6443847   0.3302881   1.2571802
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       7                    1                 0.7851481   0.4200317   1.4676451
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       8                    1                 0.6096990   0.3124484   1.1897416
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       9                    1                 0.6188463   0.3221790   1.1886895
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       10                   1                 0.8192786   0.4269854   1.5719915
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       11                   1                 0.5445602   0.2684289   1.1047463
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       12                   1                 0.6924209   0.3702573   1.2949014
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2                    1                 1.0763307   0.7262645   1.5951323
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     3                    1                 1.2067714   0.8436990   1.7260863
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     4                    1                 1.5392097   1.0737284   2.2064858
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     5                    1                 1.1765782   0.7928128   1.7461073
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     6                    1                 1.4970425   1.0041922   2.2317801
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     7                    1                 1.3325657   0.9296485   1.9101106
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     8                    1                 1.3042596   0.9093935   1.8705798
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     9                    1                 1.3251060   0.9183218   1.9120812
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     10                   1                 1.5136666   1.0758946   2.1295643
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     11                   1                 1.1426097   0.8035441   1.6247482
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     12                   1                 1.0470699   0.7328154   1.4960869
0-6 months    ki1119695-PROBIT       BELARUS        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT       BELARUS        2                    1                 1.1916560   0.8012822   1.7722146
0-6 months    ki1119695-PROBIT       BELARUS        3                    1                 1.0689909   0.7130567   1.6025957
0-6 months    ki1119695-PROBIT       BELARUS        4                    1                 1.0840798   0.7502640   1.5664207
0-6 months    ki1119695-PROBIT       BELARUS        5                    1                 1.4364984   0.9772656   2.1115321
0-6 months    ki1119695-PROBIT       BELARUS        6                    1                 1.3743674   0.9584757   1.9707184
0-6 months    ki1119695-PROBIT       BELARUS        7                    1                 1.2653255   0.9388373   1.7053526
0-6 months    ki1119695-PROBIT       BELARUS        8                    1                 1.2580364   0.8868040   1.7846734
0-6 months    ki1119695-PROBIT       BELARUS        9                    1                 1.1594090   0.7989188   1.6825605
0-6 months    ki1119695-PROBIT       BELARUS        10                   1                 1.0898596   0.7759098   1.5308402
0-6 months    ki1119695-PROBIT       BELARUS        11                   1                 0.8234536   0.6124087   1.1072277
0-6 months    ki1119695-PROBIT       BELARUS        12                   1                 0.9165389   0.6050062   1.3884874
6-24 months   ki1101329-Keneba       GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba       GAMBIA         2                    1                 2.1857143   0.9313833   5.1293028
6-24 months   ki1101329-Keneba       GAMBIA         3                    1                 0.8247978   0.2819056   2.4131886
6-24 months   ki1101329-Keneba       GAMBIA         4                    1                 2.2504137   0.9704416   5.2186157
6-24 months   ki1101329-Keneba       GAMBIA         5                    1                 1.6472050   0.6700479   4.0493885
6-24 months   ki1101329-Keneba       GAMBIA         6                    1                 1.7328185   0.6859549   4.3773434
6-24 months   ki1101329-Keneba       GAMBIA         7                    1                 1.6418511   0.6090335   4.4261522
6-24 months   ki1101329-Keneba       GAMBIA         8                    1                 2.8936170   1.1981721   6.9881609
6-24 months   ki1101329-Keneba       GAMBIA         9                    1                 1.3246753   0.4900875   3.5805132
6-24 months   ki1101329-Keneba       GAMBIA         10                   1                 1.7227305   0.6921526   4.2877833
6-24 months   ki1101329-Keneba       GAMBIA         11                   1                 1.7269841   0.7238463   4.1203142
6-24 months   ki1101329-Keneba       GAMBIA         12                   1                 1.9215071   0.7729422   4.7767988
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2                    1                 0.8387576   0.1688396   4.1667617
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   3                    1                 1.3174010   0.3363297   5.1602511
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   4                    1                 1.1748252   0.2005119   6.8834521
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   5                    1                 1.4581348   0.3738117   5.6877751
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   6                    1                 1.0149013   0.2242300   4.5936084
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   7                    1                 0.9058232   0.1805737   4.5439377
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   8                    1                 1.5692308   0.4238967   5.8091632
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   9                    1                 1.0911870   0.2082314   5.7181056
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   10                   1                 0.9207693   0.2024908   4.1869367
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   11                   1                 1.2115385   0.2162089   6.7889223
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   12                   1                 1.9384615   0.5414145   6.9404002
6-24 months   ki1119695-PROBIT       BELARUS        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT       BELARUS        2                    1                 0.7164924   0.2994582   1.7143007
6-24 months   ki1119695-PROBIT       BELARUS        3                    1                 0.8309535   0.2761792   2.5001290
6-24 months   ki1119695-PROBIT       BELARUS        4                    1                 0.9478464   0.3580057   2.5094933
6-24 months   ki1119695-PROBIT       BELARUS        5                    1                 0.9361239   0.3017788   2.9038758
6-24 months   ki1119695-PROBIT       BELARUS        6                    1                 1.4829167   0.6028643   3.6476570
6-24 months   ki1119695-PROBIT       BELARUS        7                    1                 0.9116417   0.3515855   2.3638365
6-24 months   ki1119695-PROBIT       BELARUS        8                    1                 0.7819783   0.3717019   1.6451090
6-24 months   ki1119695-PROBIT       BELARUS        9                    1                 0.6234818   0.2028102   1.9167155
6-24 months   ki1119695-PROBIT       BELARUS        10                   1                 0.7513417   0.3491740   1.6167135
6-24 months   ki1119695-PROBIT       BELARUS        11                   1                 1.0512821   0.4191211   2.6369325
6-24 months   ki1119695-PROBIT       BELARUS        12                   1                 0.3920430   0.1032044   1.4892558
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       2                    1                 0.5091991   0.2381785   1.0886111
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       3                    1                 1.1030477   0.6233576   1.9518720
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       4                    1                 0.4279218   0.1933678   0.9469885
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       5                    1                 0.4500239   0.2033899   0.9957306
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       6                    1                 0.6443847   0.3302881   1.2571802
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       7                    1                 0.7851481   0.4200317   1.4676451
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       8                    1                 0.6096990   0.3124484   1.1897416
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       9                    1                 0.6188463   0.3221790   1.1886895
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       10                   1                 0.8192786   0.4269854   1.5719915
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       11                   1                 0.5445602   0.2684289   1.1047463
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       12                   1                 0.6924209   0.3702573   1.2949014
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2                    1                 1.0763307   0.7262645   1.5951323
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     3                    1                 1.2067714   0.8436990   1.7260863
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     4                    1                 1.5392097   1.0737284   2.2064858
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     5                    1                 1.1765782   0.7928128   1.7461073
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     6                    1                 1.4970425   1.0041922   2.2317801
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     7                    1                 1.3325657   0.9296485   1.9101106
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     8                    1                 1.3042596   0.9093935   1.8705798
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     9                    1                 1.3251060   0.9183218   1.9120812
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     10                   1                 1.5136666   1.0758946   2.1295643
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     11                   1                 1.1426097   0.8035441   1.6247482
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     12                   1                 1.0470699   0.7328154   1.4960869


### Parameter: PAR


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1101329-Keneba       GAMBIA         1                    NA                 0.0250152    0.0003620   0.0496685
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0166576   -0.1127007   0.1460159
0-24 months   ki1119695-PROBIT       BELARUS        1                    NA                -0.0017348   -0.0093684   0.0058989
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                -0.0078707   -0.0172736   0.0015322
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0117236   -0.0004460   0.0238932
0-6 months    ki1119695-PROBIT       BELARUS        1                    NA                 0.0094895   -0.0098853   0.0288643
6-24 months   ki1101329-Keneba       GAMBIA         1                    NA                 0.0250152    0.0003620   0.0496685
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0166576   -0.1127007   0.1460159
6-24 months   ki1119695-PROBIT       BELARUS        1                    NA                -0.0017348   -0.0093684   0.0058989
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                -0.0078707   -0.0172736   0.0015322
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0117236   -0.0004460   0.0238932


### Parameter: PAF


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1101329-Keneba       GAMBIA         1                    NA                 0.4216362   -0.1762285    0.7156125
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1390079   -2.0034569    0.7531820
0-24 months   ki1119695-PROBIT       BELARUS        1                    NA                -0.1809053   -1.2570620    0.3821449
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                -0.4463337   -1.0853600   -0.0031271
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.2063112   -0.0394100    0.3939428
0-6 months    ki1119695-PROBIT       BELARUS        1                    NA                 0.1121599   -0.1516931    0.3155641
6-24 months   ki1101329-Keneba       GAMBIA         1                    NA                 0.4216362   -0.1762285    0.7156125
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1390079   -2.0034569    0.7531820
6-24 months   ki1119695-PROBIT       BELARUS        1                    NA                -0.1809053   -1.2570620    0.3821449
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                -0.4463337   -1.0853600   -0.0031271
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.2063112   -0.0394100    0.3939428
