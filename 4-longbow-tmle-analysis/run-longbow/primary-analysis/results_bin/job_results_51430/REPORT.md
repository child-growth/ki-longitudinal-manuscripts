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

agecat        studyid                    country                        month    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       19     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       25     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       21     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       19     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        7     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       19     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       24     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       15     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        1     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       13     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       26     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       18     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       10     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       20     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0       10     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       17     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       18     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       28     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       20     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       21     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       14     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                0       17     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                0       19     241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                0       21     241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                1        1     241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                0       14     241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                1        1     241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                0        6     241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                0       15     241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                1        3     241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                0       22     241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                1        3     241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                0       19     241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                0       21     241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                1        0     241
0-24 months   ki0047075b-MAL-ED          INDIA                          10               0       25     241
0-24 months   ki0047075b-MAL-ED          INDIA                          10               1        1     241
0-24 months   ki0047075b-MAL-ED          INDIA                          11               0       22     241
0-24 months   ki0047075b-MAL-ED          INDIA                          11               1        3     241
0-24 months   ki0047075b-MAL-ED          INDIA                          12               0       19     241
0-24 months   ki0047075b-MAL-ED          INDIA                          12               1        1     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       24     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       21     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       20     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       22     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       23     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           1                0       40     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           2                0       25     284
0-24 months   ki0047075b-MAL-ED          PERU                           2                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           3                0       21     284
0-24 months   ki0047075b-MAL-ED          PERU                           3                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           4                0       20     284
0-24 months   ki0047075b-MAL-ED          PERU                           4                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           5                0       24     284
0-24 months   ki0047075b-MAL-ED          PERU                           5                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           6                0       19     284
0-24 months   ki0047075b-MAL-ED          PERU                           6                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           7                0       22     284
0-24 months   ki0047075b-MAL-ED          PERU                           7                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           8                0       16     284
0-24 months   ki0047075b-MAL-ED          PERU                           8                1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           9                0       22     284
0-24 months   ki0047075b-MAL-ED          PERU                           9                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           10               0       21     284
0-24 months   ki0047075b-MAL-ED          PERU                           10               1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           11               0       33     284
0-24 months   ki0047075b-MAL-ED          PERU                           11               1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           12               0       20     284
0-24 months   ki0047075b-MAL-ED          PERU                           12               1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       27     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       18     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       25     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       25     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       27     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       37     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       23     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       27     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       22     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       17     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       25     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       18     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       30     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       29     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       43     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       40     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       24     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       39     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        3     373
0-24 months   ki1000108-IRC              INDIA                          1                0       33     410
0-24 months   ki1000108-IRC              INDIA                          1                1        3     410
0-24 months   ki1000108-IRC              INDIA                          2                0       25     410
0-24 months   ki1000108-IRC              INDIA                          2                1        2     410
0-24 months   ki1000108-IRC              INDIA                          3                0       28     410
0-24 months   ki1000108-IRC              INDIA                          3                1        1     410
0-24 months   ki1000108-IRC              INDIA                          4                0       20     410
0-24 months   ki1000108-IRC              INDIA                          4                1        2     410
0-24 months   ki1000108-IRC              INDIA                          5                0       19     410
0-24 months   ki1000108-IRC              INDIA                          5                1        2     410
0-24 months   ki1000108-IRC              INDIA                          6                0       32     410
0-24 months   ki1000108-IRC              INDIA                          6                1        5     410
0-24 months   ki1000108-IRC              INDIA                          7                0       31     410
0-24 months   ki1000108-IRC              INDIA                          7                1        5     410
0-24 months   ki1000108-IRC              INDIA                          8                0       36     410
0-24 months   ki1000108-IRC              INDIA                          8                1        9     410
0-24 months   ki1000108-IRC              INDIA                          9                0       22     410
0-24 months   ki1000108-IRC              INDIA                          9                1        5     410
0-24 months   ki1000108-IRC              INDIA                          10               0       31     410
0-24 months   ki1000108-IRC              INDIA                          10               1        6     410
0-24 months   ki1000108-IRC              INDIA                          11               0       38     410
0-24 months   ki1000108-IRC              INDIA                          11               1        3     410
0-24 months   ki1000108-IRC              INDIA                          12               0       47     410
0-24 months   ki1000108-IRC              INDIA                          12               1        5     410
0-24 months   ki1000109-EE               PAKISTAN                       1                0       82     377
0-24 months   ki1000109-EE               PAKISTAN                       1                1        8     377
0-24 months   ki1000109-EE               PAKISTAN                       2                0       77     377
0-24 months   ki1000109-EE               PAKISTAN                       2                1        4     377
0-24 months   ki1000109-EE               PAKISTAN                       3                0       37     377
0-24 months   ki1000109-EE               PAKISTAN                       3                1        5     377
0-24 months   ki1000109-EE               PAKISTAN                       4                0       26     377
0-24 months   ki1000109-EE               PAKISTAN                       4                1        3     377
0-24 months   ki1000109-EE               PAKISTAN                       5                0        2     377
0-24 months   ki1000109-EE               PAKISTAN                       5                1        0     377
0-24 months   ki1000109-EE               PAKISTAN                       6                0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       6                1        0     377
0-24 months   ki1000109-EE               PAKISTAN                       7                0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       7                1        0     377
0-24 months   ki1000109-EE               PAKISTAN                       8                0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       8                1        0     377
0-24 months   ki1000109-EE               PAKISTAN                       9                0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       9                1        0     377
0-24 months   ki1000109-EE               PAKISTAN                       10               0        0     377
0-24 months   ki1000109-EE               PAKISTAN                       10               1        0     377
0-24 months   ki1000109-EE               PAKISTAN                       11               0       46     377
0-24 months   ki1000109-EE               PAKISTAN                       11               1        3     377
0-24 months   ki1000109-EE               PAKISTAN                       12               0       79     377
0-24 months   ki1000109-EE               PAKISTAN                       12               1        5     377
0-24 months   ki1000109-ResPak           PAKISTAN                       1                0        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       1                1        2     251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                0        9     251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                1        2     251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                0       14     251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                1        0     251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                0       24     251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                1        6     251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                0       29     251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                1        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                0       44     251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                1        3     251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                0       31     251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                1        4     251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                0       28     251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                1        8     251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                0       21     251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                1        1     251
0-24 months   ki1000109-ResPak           PAKISTAN                       10               0        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       10               1        2     251
0-24 months   ki1000109-ResPak           PAKISTAN                       11               0        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       11               1        1     251
0-24 months   ki1000109-ResPak           PAKISTAN                       12               0        2     251
0-24 months   ki1000109-ResPak           PAKISTAN                       12               1        0     251
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       81    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1       13    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       74    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1        6    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       73    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1        7    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       71    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1        7    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       70    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1        9    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0      102    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1        4    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0      105    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1       11    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0      138    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1       15    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0      154    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1       14    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0      139    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1        9    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0      117    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1       12    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0      128    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1        7    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       50     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        6     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0       33     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1        5     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0       26     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1        8     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0       19     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        8     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0       24     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        4     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0       24     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        5     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0       14     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1        3     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0        0     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1        0     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0        9     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1        3     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0       23     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1        3     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0       42     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1        5     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       46     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1       15     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       49     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       44     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        2     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       45     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       40     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       34     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        6     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       36     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        4     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       42     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        3     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       32     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        3     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       27     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        2     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       47     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       44     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        4     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       47     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        3     534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      199    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        8    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      136    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        4    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      162    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      148    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        2    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      168    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      149    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        6    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      157    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      177    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        5    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      202    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      207    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      197    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      206    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       10    2166
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       14     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       18     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       18     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       19     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       28     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       35     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       23     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       17     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       30     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       21     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       22     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0        7     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        0     256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      113    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1       13    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                0       95    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                1        9    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                0       89    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                1       14    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                0       87    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                1       12    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                0       96    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                1       17    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                0      171    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                1       20    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                0      194    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                1       20    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                0      176    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                1       34    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                0      134    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                1       17    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               0      181    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               1       19    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               0       77    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               1       11    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               0       56    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               1       14    1669
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        2     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1        0     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      106     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       20     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      200     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       32     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0      183     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1       30     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0       12     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        2     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        3     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        1     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        1     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0     592
0-24 months   ki1114097-CMIN             BANGLADESH                     1                0       25     257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                1        3     257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                0       30     257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                1        2     257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                0       20     257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                0       16     257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                1        3     257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                0       20     257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                0       20     257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                1        3     257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                0       12     257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                1        1     257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                0       13     257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                1        1     257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                0       18     257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                1        1     257
0-24 months   ki1114097-CMIN             BANGLADESH                     10               0       21     257
0-24 months   ki1114097-CMIN             BANGLADESH                     10               1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     11               0        2     257
0-24 months   ki1114097-CMIN             BANGLADESH                     11               1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     12               0       40     257
0-24 months   ki1114097-CMIN             BANGLADESH                     12               1        6     257
0-24 months   ki1114097-CMIN             BRAZIL                         1                0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         10               0       16     119
0-24 months   ki1114097-CMIN             BRAZIL                         10               1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         11               0       12     119
0-24 months   ki1114097-CMIN             BRAZIL                         11               1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         12               0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         12               1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       28    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        1    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0      116    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        4    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0      127    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1        4    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0      189    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        8    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0      145    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        3    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       75    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        2    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       64    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        3    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0       61    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        5    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0      122    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1        1    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0       39    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1        2    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0       52    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1        1    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0       99    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1        2    1153
0-24 months   ki1114097-CMIN             PERU                           1                0       47     830
0-24 months   ki1114097-CMIN             PERU                           1                1        0     830
0-24 months   ki1114097-CMIN             PERU                           2                0      131     830
0-24 months   ki1114097-CMIN             PERU                           2                1        1     830
0-24 months   ki1114097-CMIN             PERU                           3                0      109     830
0-24 months   ki1114097-CMIN             PERU                           3                1        2     830
0-24 months   ki1114097-CMIN             PERU                           4                0       75     830
0-24 months   ki1114097-CMIN             PERU                           4                1        0     830
0-24 months   ki1114097-CMIN             PERU                           5                0       85     830
0-24 months   ki1114097-CMIN             PERU                           5                1        0     830
0-24 months   ki1114097-CMIN             PERU                           6                0       53     830
0-24 months   ki1114097-CMIN             PERU                           6                1        0     830
0-24 months   ki1114097-CMIN             PERU                           7                0       53     830
0-24 months   ki1114097-CMIN             PERU                           7                1        0     830
0-24 months   ki1114097-CMIN             PERU                           8                0       70     830
0-24 months   ki1114097-CMIN             PERU                           8                1        0     830
0-24 months   ki1114097-CMIN             PERU                           9                0       48     830
0-24 months   ki1114097-CMIN             PERU                           9                1        0     830
0-24 months   ki1114097-CMIN             PERU                           10               0       38     830
0-24 months   ki1114097-CMIN             PERU                           10               1        1     830
0-24 months   ki1114097-CMIN             PERU                           11               0       70     830
0-24 months   ki1114097-CMIN             PERU                           11               1        0     830
0-24 months   ki1114097-CMIN             PERU                           12               0       46     830
0-24 months   ki1114097-CMIN             PERU                           12               1        1     830
0-24 months   ki1114097-CONTENT          PERU                           1                0        9     215
0-24 months   ki1114097-CONTENT          PERU                           1                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                0       13     215
0-24 months   ki1114097-CONTENT          PERU                           2                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                0       27     215
0-24 months   ki1114097-CONTENT          PERU                           3                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           4                0       18     215
0-24 months   ki1114097-CONTENT          PERU                           4                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           5                0       25     215
0-24 months   ki1114097-CONTENT          PERU                           5                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           6                0       14     215
0-24 months   ki1114097-CONTENT          PERU                           6                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           7                0       16     215
0-24 months   ki1114097-CONTENT          PERU                           7                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           8                0       26     215
0-24 months   ki1114097-CONTENT          PERU                           8                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           9                0       19     215
0-24 months   ki1114097-CONTENT          PERU                           9                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           10               0       23     215
0-24 months   ki1114097-CONTENT          PERU                           10               1        0     215
0-24 months   ki1114097-CONTENT          PERU                           11               0       18     215
0-24 months   ki1114097-CONTENT          PERU                           11               1        0     215
0-24 months   ki1114097-CONTENT          PERU                           12               0        7     215
0-24 months   ki1114097-CONTENT          PERU                           12               1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                0     1135   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                1       13   16581
0-24 months   ki1119695-PROBIT           BELARUS                        2                0      978   16581
0-24 months   ki1119695-PROBIT           BELARUS                        2                1        8   16581
0-24 months   ki1119695-PROBIT           BELARUS                        3                0     1158   16581
0-24 months   ki1119695-PROBIT           BELARUS                        3                1       11   16581
0-24 months   ki1119695-PROBIT           BELARUS                        4                0     1106   16581
0-24 months   ki1119695-PROBIT           BELARUS                        4                1       12   16581
0-24 months   ki1119695-PROBIT           BELARUS                        5                0     1120   16581
0-24 months   ki1119695-PROBIT           BELARUS                        5                1       12   16581
0-24 months   ki1119695-PROBIT           BELARUS                        6                0     1171   16581
0-24 months   ki1119695-PROBIT           BELARUS                        6                1       20   16581
0-24 months   ki1119695-PROBIT           BELARUS                        7                0     1438   16581
0-24 months   ki1119695-PROBIT           BELARUS                        7                1       15   16581
0-24 months   ki1119695-PROBIT           BELARUS                        8                0     1567   16581
0-24 months   ki1119695-PROBIT           BELARUS                        8                1       14   16581
0-24 months   ki1119695-PROBIT           BELARUS                        9                0     1547   16581
0-24 months   ki1119695-PROBIT           BELARUS                        9                1       11   16581
0-24 months   ki1119695-PROBIT           BELARUS                        10               0     1748   16581
0-24 months   ki1119695-PROBIT           BELARUS                        10               1       15   16581
0-24 months   ki1119695-PROBIT           BELARUS                        11               0     1660   16581
0-24 months   ki1119695-PROBIT           BELARUS                        11               1       20   16581
0-24 months   ki1119695-PROBIT           BELARUS                        12               0     1794   16581
0-24 months   ki1119695-PROBIT           BELARUS                        12               1        8   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      904    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       25    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      662    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       10    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0      746    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       22    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      708    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1        8    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      677    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        8    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0      765    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       12    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0      761    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       15    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0      814    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       13    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0      852    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1       14    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      637    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1       14    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0      754    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       11    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0      865    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       15    9312
0-24 months   ki1148112-LCNI-5           MALAWI                         1                0       49     719
0-24 months   ki1148112-LCNI-5           MALAWI                         1                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                0      100     719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                1        2     719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                0       88     719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                1        1     719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                0       97     719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                0       85     719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                0       75     719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                1        1     719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                0       60     719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                0       38     719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                0       24     719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         10               0       30     719
0-24 months   ki1148112-LCNI-5           MALAWI                         10               1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         11               0       41     719
0-24 months   ki1148112-LCNI-5           MALAWI                         11               1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         12               0       26     719
0-24 months   ki1148112-LCNI-5           MALAWI                         12               1        2     719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     1213   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       59   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     1070   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1       54   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0     1293   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       76   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0     1055   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1       78   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0     1026   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1       55   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0     1012   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1       76   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0     1116   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1       69   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0     1271   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1       82   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0     1357   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1       86   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0     1451   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1      106   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0     1472   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1       80   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0     1445   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1       77   15679
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0       53    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        3    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      340    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1       19    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      426    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       36    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      835    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1       72    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      559    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1       55    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      411    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       44    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      774    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1       89    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      489    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1       34    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      453    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       34    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      295    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1       19    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0      146    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1       16    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0       74    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        5    5281
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       25     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                0        8     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                0       19     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                0       24     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                0       22     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               0       21     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               0       16     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               0       26     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               1        1     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       13     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       26     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       18     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                0       10     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                0       20     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                0       10     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                0       17     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                0       18     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                0       28     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               0       21     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               0       21     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               0       14     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               1        1     217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                0       17     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                0       19     240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                0       20     240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                0       15     240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                1        0     240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                0        7     240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                1        1     240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                0       14     240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                1        3     240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                0       23     240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                0       19     240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                0       21     240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                1        0     240
0-6 months    ki0047075b-MAL-ED          INDIA                          10               0       23     240
0-6 months    ki0047075b-MAL-ED          INDIA                          10               1        3     240
0-6 months    ki0047075b-MAL-ED          INDIA                          11               0       23     240
0-6 months    ki0047075b-MAL-ED          INDIA                          11               1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          12               0       20     240
0-6 months    ki0047075b-MAL-ED          INDIA                          12               1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                0       24     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                0       17     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                0       19     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                0       18     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                0       21     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                0       18     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                0       19     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                1        2     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                0       18     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                0       17     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               0       22     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               0       23     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               0       16     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           1                0       40     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           2                0       25     284
0-6 months    ki0047075b-MAL-ED          PERU                           2                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           3                0       21     284
0-6 months    ki0047075b-MAL-ED          PERU                           3                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           4                0       20     284
0-6 months    ki0047075b-MAL-ED          PERU                           4                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           5                0       24     284
0-6 months    ki0047075b-MAL-ED          PERU                           5                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           6                0       19     284
0-6 months    ki0047075b-MAL-ED          PERU                           6                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           7                0       22     284
0-6 months    ki0047075b-MAL-ED          PERU                           7                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           8                0       17     284
0-6 months    ki0047075b-MAL-ED          PERU                           8                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           9                0       22     284
0-6 months    ki0047075b-MAL-ED          PERU                           9                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           10               0       21     284
0-6 months    ki0047075b-MAL-ED          PERU                           10               1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           11               0       33     284
0-6 months    ki0047075b-MAL-ED          PERU                           11               1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           12               0       20     284
0-6 months    ki0047075b-MAL-ED          PERU                           12               1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       33     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       27     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       17     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       25     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       25     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       25     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       26     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       37     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       23     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       27     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       22     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       17     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       25     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       18     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       30     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       29     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       27     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       18     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1        6     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       21     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        4     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                0       22     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                1        6     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                0       35     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                1        7     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                0       29     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                1        3     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                0       28     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                1        5     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                0       37     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                1        3     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                0       17     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                1        4     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               0       34     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               1        4     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               0       23     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               1        6     358
0-6 months    ki1000108-IRC              INDIA                          1                0       30     402
0-6 months    ki1000108-IRC              INDIA                          1                1        5     402
0-6 months    ki1000108-IRC              INDIA                          2                0       23     402
0-6 months    ki1000108-IRC              INDIA                          2                1        4     402
0-6 months    ki1000108-IRC              INDIA                          3                0       24     402
0-6 months    ki1000108-IRC              INDIA                          3                1        5     402
0-6 months    ki1000108-IRC              INDIA                          4                0       20     402
0-6 months    ki1000108-IRC              INDIA                          4                1        2     402
0-6 months    ki1000108-IRC              INDIA                          5                0       18     402
0-6 months    ki1000108-IRC              INDIA                          5                1        2     402
0-6 months    ki1000108-IRC              INDIA                          6                0       29     402
0-6 months    ki1000108-IRC              INDIA                          6                1        7     402
0-6 months    ki1000108-IRC              INDIA                          7                0       29     402
0-6 months    ki1000108-IRC              INDIA                          7                1        6     402
0-6 months    ki1000108-IRC              INDIA                          8                0       36     402
0-6 months    ki1000108-IRC              INDIA                          8                1        9     402
0-6 months    ki1000108-IRC              INDIA                          9                0       23     402
0-6 months    ki1000108-IRC              INDIA                          9                1        2     402
0-6 months    ki1000108-IRC              INDIA                          10               0       29     402
0-6 months    ki1000108-IRC              INDIA                          10               1        8     402
0-6 months    ki1000108-IRC              INDIA                          11               0       36     402
0-6 months    ki1000108-IRC              INDIA                          11               1        4     402
0-6 months    ki1000108-IRC              INDIA                          12               0       41     402
0-6 months    ki1000108-IRC              INDIA                          12               1       10     402
0-6 months    ki1000109-EE               PAKISTAN                       1                0       76     366
0-6 months    ki1000109-EE               PAKISTAN                       1                1       11     366
0-6 months    ki1000109-EE               PAKISTAN                       2                0       71     366
0-6 months    ki1000109-EE               PAKISTAN                       2                1        7     366
0-6 months    ki1000109-EE               PAKISTAN                       3                0       39     366
0-6 months    ki1000109-EE               PAKISTAN                       3                1        2     366
0-6 months    ki1000109-EE               PAKISTAN                       4                0       26     366
0-6 months    ki1000109-EE               PAKISTAN                       4                1        2     366
0-6 months    ki1000109-EE               PAKISTAN                       5                0        2     366
0-6 months    ki1000109-EE               PAKISTAN                       5                1        0     366
0-6 months    ki1000109-EE               PAKISTAN                       6                0        0     366
0-6 months    ki1000109-EE               PAKISTAN                       6                1        0     366
0-6 months    ki1000109-EE               PAKISTAN                       7                0        0     366
0-6 months    ki1000109-EE               PAKISTAN                       7                1        0     366
0-6 months    ki1000109-EE               PAKISTAN                       8                0        0     366
0-6 months    ki1000109-EE               PAKISTAN                       8                1        0     366
0-6 months    ki1000109-EE               PAKISTAN                       9                0        0     366
0-6 months    ki1000109-EE               PAKISTAN                       9                1        0     366
0-6 months    ki1000109-EE               PAKISTAN                       10               0        0     366
0-6 months    ki1000109-EE               PAKISTAN                       10               1        0     366
0-6 months    ki1000109-EE               PAKISTAN                       11               0       47     366
0-6 months    ki1000109-EE               PAKISTAN                       11               1        2     366
0-6 months    ki1000109-EE               PAKISTAN                       12               0       78     366
0-6 months    ki1000109-EE               PAKISTAN                       12               1        3     366
0-6 months    ki1000109-ResPak           PAKISTAN                       1                0        5     240
0-6 months    ki1000109-ResPak           PAKISTAN                       1                1        1     240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                0       10     240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                1        1     240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                0       13     240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                1        1     240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                0       26     240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                1        4     240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                0       28     240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                1        5     240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                0       42     240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                1        4     240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                0       30     240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                1        2     240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                0       27     240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                1        5     240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                0       20     240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                1        2     240
0-6 months    ki1000109-ResPak           PAKISTAN                       10               0        6     240
0-6 months    ki1000109-ResPak           PAKISTAN                       10               1        0     240
0-6 months    ki1000109-ResPak           PAKISTAN                       11               0        6     240
0-6 months    ki1000109-ResPak           PAKISTAN                       11               1        0     240
0-6 months    ki1000109-ResPak           PAKISTAN                       12               0        2     240
0-6 months    ki1000109-ResPak           PAKISTAN                       12               1        0     240
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       17     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        4     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                0       18     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                1        1     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                0       17     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                1        1     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                0       15     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                1        0     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                0        7     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                1        1     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                0       13     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                1        0     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                0       10     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                1        0     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                0        7     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                1        1     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                0        6     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                1        0     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10               0       15     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10               1        1     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11               0       19     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11               1        2     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12               0       14     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12               1        0     169
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      193    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        9    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      130    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        5    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      155    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      135    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        3    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      156    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      145    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        2    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      147    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      171    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      191    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      195    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      192    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      199    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        9    2061
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                0        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                0        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                0        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                1        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                0        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                1        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                0        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                1        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                0       97     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                1       17     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                0      193     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                1       23     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                0      178     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                1       23     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               0        9     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               1        1     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               0        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               1        1     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               0        0     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               1        0     542
0-6 months    ki1114097-CMIN             BANGLADESH                     1                0       24     234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                1        3     234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                0       27     234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                0       18     234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                0       17     234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                0       15     234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                1        2     234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                0       20     234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                0       10     234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                0       14     234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                0       18     234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     10               0       18     234
0-6 months    ki1114097-CMIN             BANGLADESH                     10               1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     11               0        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     11               1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     12               0       43     234
0-6 months    ki1114097-CMIN             BANGLADESH                     12               1        0     234
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                0        4      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                0        1      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                0        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                0        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                0        3      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                0        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                0        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                0        2      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               0        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               0        1      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               0        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               1        0      11
0-6 months    ki1114097-CMIN             PERU                           1                0       40     558
0-6 months    ki1114097-CMIN             PERU                           1                1        0     558
0-6 months    ki1114097-CMIN             PERU                           2                0       42     558
0-6 months    ki1114097-CMIN             PERU                           2                1        1     558
0-6 months    ki1114097-CMIN             PERU                           3                0       57     558
0-6 months    ki1114097-CMIN             PERU                           3                1        2     558
0-6 months    ki1114097-CMIN             PERU                           4                0       61     558
0-6 months    ki1114097-CMIN             PERU                           4                1        1     558
0-6 months    ki1114097-CMIN             PERU                           5                0       68     558
0-6 months    ki1114097-CMIN             PERU                           5                1        2     558
0-6 months    ki1114097-CMIN             PERU                           6                0       48     558
0-6 months    ki1114097-CMIN             PERU                           6                1        1     558
0-6 months    ki1114097-CMIN             PERU                           7                0       41     558
0-6 months    ki1114097-CMIN             PERU                           7                1        0     558
0-6 months    ki1114097-CMIN             PERU                           8                0       45     558
0-6 months    ki1114097-CMIN             PERU                           8                1        1     558
0-6 months    ki1114097-CMIN             PERU                           9                0       37     558
0-6 months    ki1114097-CMIN             PERU                           9                1        0     558
0-6 months    ki1114097-CMIN             PERU                           10               0       31     558
0-6 months    ki1114097-CMIN             PERU                           10               1        1     558
0-6 months    ki1114097-CMIN             PERU                           11               0       42     558
0-6 months    ki1114097-CMIN             PERU                           11               1        1     558
0-6 months    ki1114097-CMIN             PERU                           12               0       34     558
0-6 months    ki1114097-CMIN             PERU                           12               1        2     558
0-6 months    ki1114097-CONTENT          PERU                           1                0        9     215
0-6 months    ki1114097-CONTENT          PERU                           1                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                0       13     215
0-6 months    ki1114097-CONTENT          PERU                           2                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                0       27     215
0-6 months    ki1114097-CONTENT          PERU                           3                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4                0       18     215
0-6 months    ki1114097-CONTENT          PERU                           4                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           5                0       25     215
0-6 months    ki1114097-CONTENT          PERU                           5                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           6                0       14     215
0-6 months    ki1114097-CONTENT          PERU                           6                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7                0       16     215
0-6 months    ki1114097-CONTENT          PERU                           7                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           8                0       26     215
0-6 months    ki1114097-CONTENT          PERU                           8                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           9                0       19     215
0-6 months    ki1114097-CONTENT          PERU                           9                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           10               0       23     215
0-6 months    ki1114097-CONTENT          PERU                           10               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           11               0       18     215
0-6 months    ki1114097-CONTENT          PERU                           11               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           12               0        7     215
0-6 months    ki1114097-CONTENT          PERU                           12               1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                0      788   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                1       64   13545
0-6 months    ki1119695-PROBIT           BELARUS                        2                0      712   13545
0-6 months    ki1119695-PROBIT           BELARUS                        2                1       70   13545
0-6 months    ki1119695-PROBIT           BELARUS                        3                0      859   13545
0-6 months    ki1119695-PROBIT           BELARUS                        3                1       75   13545
0-6 months    ki1119695-PROBIT           BELARUS                        4                0      846   13545
0-6 months    ki1119695-PROBIT           BELARUS                        4                1       75   13545
0-6 months    ki1119695-PROBIT           BELARUS                        5                0      835   13545
0-6 months    ki1119695-PROBIT           BELARUS                        5                1      101   13545
0-6 months    ki1119695-PROBIT           BELARUS                        6                0      886   13545
0-6 months    ki1119695-PROBIT           BELARUS                        6                1      102   13545
0-6 months    ki1119695-PROBIT           BELARUS                        7                0     1133   13545
0-6 months    ki1119695-PROBIT           BELARUS                        7                1      119   13545
0-6 months    ki1119695-PROBIT           BELARUS                        8                0     1169   13545
0-6 months    ki1119695-PROBIT           BELARUS                        8                1      122   13545
0-6 months    ki1119695-PROBIT           BELARUS                        9                0     1174   13545
0-6 months    ki1119695-PROBIT           BELARUS                        9                1      112   13545
0-6 months    ki1119695-PROBIT           BELARUS                        10               0     1357   13545
0-6 months    ki1119695-PROBIT           BELARUS                        10               1      121   13545
0-6 months    ki1119695-PROBIT           BELARUS                        11               0     1274   13545
0-6 months    ki1119695-PROBIT           BELARUS                        11               1       84   13545
0-6 months    ki1119695-PROBIT           BELARUS                        12               0     1366   13545
0-6 months    ki1119695-PROBIT           BELARUS                        12               1      101   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0       83     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1        0     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0       57     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1        1     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                0       27     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                1        2     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                0       34     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                1        0     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                0       32     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                1        1     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                0       60     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                1        1     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                0       23     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                1        2     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                0       44     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                1        1     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                0       77     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                1        3     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               0       42     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               1        1     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               0       69     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               1        0     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               0       48     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               1        2     610
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0       10      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0       14      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                0        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                0        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                0        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                0        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                0        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                0       12      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               0        2      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               0        6      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               0        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               1        0      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       20     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       19     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        1     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       25     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        1     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       21     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        1     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       19     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        2     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        7     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        1     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       19     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        1     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       24     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       20     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        2     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        2     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       15     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        1     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        1     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       13     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       26     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       18     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       10     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       20     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0       10     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       17     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       18     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       28     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       20     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        1     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       21     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       14     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        1     217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                0       17     241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                1        2     241
6-24 months   ki0047075b-MAL-ED          INDIA                          2                0       19     241
6-24 months   ki0047075b-MAL-ED          INDIA                          2                1        2     241
6-24 months   ki0047075b-MAL-ED          INDIA                          3                0       21     241
6-24 months   ki0047075b-MAL-ED          INDIA                          3                1        1     241
6-24 months   ki0047075b-MAL-ED          INDIA                          4                0       14     241
6-24 months   ki0047075b-MAL-ED          INDIA                          4                1        1     241
6-24 months   ki0047075b-MAL-ED          INDIA                          5                0        6     241
6-24 months   ki0047075b-MAL-ED          INDIA                          5                1        2     241
6-24 months   ki0047075b-MAL-ED          INDIA                          6                0       15     241
6-24 months   ki0047075b-MAL-ED          INDIA                          6                1        3     241
6-24 months   ki0047075b-MAL-ED          INDIA                          7                0       22     241
6-24 months   ki0047075b-MAL-ED          INDIA                          7                1        3     241
6-24 months   ki0047075b-MAL-ED          INDIA                          8                0       19     241
6-24 months   ki0047075b-MAL-ED          INDIA                          8                1        2     241
6-24 months   ki0047075b-MAL-ED          INDIA                          9                0       21     241
6-24 months   ki0047075b-MAL-ED          INDIA                          9                1        0     241
6-24 months   ki0047075b-MAL-ED          INDIA                          10               0       25     241
6-24 months   ki0047075b-MAL-ED          INDIA                          10               1        1     241
6-24 months   ki0047075b-MAL-ED          INDIA                          11               0       22     241
6-24 months   ki0047075b-MAL-ED          INDIA                          11               1        3     241
6-24 months   ki0047075b-MAL-ED          INDIA                          12               0       19     241
6-24 months   ki0047075b-MAL-ED          INDIA                          12               1        1     241
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       24     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       17     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       19     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       19     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       21     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        1     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       17     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        1     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       20     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        1     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       19     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       17     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       22     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       23     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0     238
6-24 months   ki0047075b-MAL-ED          PERU                           1                0       40     284
6-24 months   ki0047075b-MAL-ED          PERU                           1                1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           2                0       25     284
6-24 months   ki0047075b-MAL-ED          PERU                           2                1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           3                0       21     284
6-24 months   ki0047075b-MAL-ED          PERU                           3                1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           4                0       20     284
6-24 months   ki0047075b-MAL-ED          PERU                           4                1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           5                0       24     284
6-24 months   ki0047075b-MAL-ED          PERU                           5                1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           6                0       19     284
6-24 months   ki0047075b-MAL-ED          PERU                           6                1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           7                0       22     284
6-24 months   ki0047075b-MAL-ED          PERU                           7                1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           8                0       16     284
6-24 months   ki0047075b-MAL-ED          PERU                           8                1        1     284
6-24 months   ki0047075b-MAL-ED          PERU                           9                0       22     284
6-24 months   ki0047075b-MAL-ED          PERU                           9                1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           10               0       21     284
6-24 months   ki0047075b-MAL-ED          PERU                           10               1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           11               0       33     284
6-24 months   ki0047075b-MAL-ED          PERU                           11               1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           12               0       20     284
6-24 months   ki0047075b-MAL-ED          PERU                           12               1        0     284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       27     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       18     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       25     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       25     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        1     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       27     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       37     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       23     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       27     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       22     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       17     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       25     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       18     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       30     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       29     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       26     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       21     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       23     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       28     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       43     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       32     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        4     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       31     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       40     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       39     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       26     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        3     373
6-24 months   ki1000108-IRC              INDIA                          1                0       33     410
6-24 months   ki1000108-IRC              INDIA                          1                1        3     410
6-24 months   ki1000108-IRC              INDIA                          2                0       25     410
6-24 months   ki1000108-IRC              INDIA                          2                1        2     410
6-24 months   ki1000108-IRC              INDIA                          3                0       28     410
6-24 months   ki1000108-IRC              INDIA                          3                1        1     410
6-24 months   ki1000108-IRC              INDIA                          4                0       20     410
6-24 months   ki1000108-IRC              INDIA                          4                1        2     410
6-24 months   ki1000108-IRC              INDIA                          5                0       19     410
6-24 months   ki1000108-IRC              INDIA                          5                1        2     410
6-24 months   ki1000108-IRC              INDIA                          6                0       32     410
6-24 months   ki1000108-IRC              INDIA                          6                1        5     410
6-24 months   ki1000108-IRC              INDIA                          7                0       31     410
6-24 months   ki1000108-IRC              INDIA                          7                1        5     410
6-24 months   ki1000108-IRC              INDIA                          8                0       36     410
6-24 months   ki1000108-IRC              INDIA                          8                1        9     410
6-24 months   ki1000108-IRC              INDIA                          9                0       22     410
6-24 months   ki1000108-IRC              INDIA                          9                1        5     410
6-24 months   ki1000108-IRC              INDIA                          10               0       31     410
6-24 months   ki1000108-IRC              INDIA                          10               1        6     410
6-24 months   ki1000108-IRC              INDIA                          11               0       38     410
6-24 months   ki1000108-IRC              INDIA                          11               1        3     410
6-24 months   ki1000108-IRC              INDIA                          12               0       47     410
6-24 months   ki1000108-IRC              INDIA                          12               1        5     410
6-24 months   ki1000109-EE               PAKISTAN                       1                0       82     377
6-24 months   ki1000109-EE               PAKISTAN                       1                1        8     377
6-24 months   ki1000109-EE               PAKISTAN                       2                0       77     377
6-24 months   ki1000109-EE               PAKISTAN                       2                1        4     377
6-24 months   ki1000109-EE               PAKISTAN                       3                0       37     377
6-24 months   ki1000109-EE               PAKISTAN                       3                1        5     377
6-24 months   ki1000109-EE               PAKISTAN                       4                0       26     377
6-24 months   ki1000109-EE               PAKISTAN                       4                1        3     377
6-24 months   ki1000109-EE               PAKISTAN                       5                0        2     377
6-24 months   ki1000109-EE               PAKISTAN                       5                1        0     377
6-24 months   ki1000109-EE               PAKISTAN                       6                0        0     377
6-24 months   ki1000109-EE               PAKISTAN                       6                1        0     377
6-24 months   ki1000109-EE               PAKISTAN                       7                0        0     377
6-24 months   ki1000109-EE               PAKISTAN                       7                1        0     377
6-24 months   ki1000109-EE               PAKISTAN                       8                0        0     377
6-24 months   ki1000109-EE               PAKISTAN                       8                1        0     377
6-24 months   ki1000109-EE               PAKISTAN                       9                0        0     377
6-24 months   ki1000109-EE               PAKISTAN                       9                1        0     377
6-24 months   ki1000109-EE               PAKISTAN                       10               0        0     377
6-24 months   ki1000109-EE               PAKISTAN                       10               1        0     377
6-24 months   ki1000109-EE               PAKISTAN                       11               0       46     377
6-24 months   ki1000109-EE               PAKISTAN                       11               1        3     377
6-24 months   ki1000109-EE               PAKISTAN                       12               0       79     377
6-24 months   ki1000109-EE               PAKISTAN                       12               1        5     377
6-24 months   ki1000109-ResPak           PAKISTAN                       1                0        5     251
6-24 months   ki1000109-ResPak           PAKISTAN                       1                1        2     251
6-24 months   ki1000109-ResPak           PAKISTAN                       2                0        9     251
6-24 months   ki1000109-ResPak           PAKISTAN                       2                1        2     251
6-24 months   ki1000109-ResPak           PAKISTAN                       3                0       14     251
6-24 months   ki1000109-ResPak           PAKISTAN                       3                1        0     251
6-24 months   ki1000109-ResPak           PAKISTAN                       4                0       24     251
6-24 months   ki1000109-ResPak           PAKISTAN                       4                1        6     251
6-24 months   ki1000109-ResPak           PAKISTAN                       5                0       29     251
6-24 months   ki1000109-ResPak           PAKISTAN                       5                1        5     251
6-24 months   ki1000109-ResPak           PAKISTAN                       6                0       44     251
6-24 months   ki1000109-ResPak           PAKISTAN                       6                1        3     251
6-24 months   ki1000109-ResPak           PAKISTAN                       7                0       31     251
6-24 months   ki1000109-ResPak           PAKISTAN                       7                1        4     251
6-24 months   ki1000109-ResPak           PAKISTAN                       8                0       28     251
6-24 months   ki1000109-ResPak           PAKISTAN                       8                1        8     251
6-24 months   ki1000109-ResPak           PAKISTAN                       9                0       21     251
6-24 months   ki1000109-ResPak           PAKISTAN                       9                1        1     251
6-24 months   ki1000109-ResPak           PAKISTAN                       10               0        5     251
6-24 months   ki1000109-ResPak           PAKISTAN                       10               1        2     251
6-24 months   ki1000109-ResPak           PAKISTAN                       11               0        5     251
6-24 months   ki1000109-ResPak           PAKISTAN                       11               1        1     251
6-24 months   ki1000109-ResPak           PAKISTAN                       12               0        2     251
6-24 months   ki1000109-ResPak           PAKISTAN                       12               1        0     251
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       81    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1       13    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       74    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1        6    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       73    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1        7    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       71    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1        7    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       70    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1        9    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0      102    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1        4    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0      105    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1       11    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0      138    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1       15    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0      154    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1       14    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0      139    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1        9    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0      117    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1       12    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0      128    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1        7    1366
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       50     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        6     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0       33     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1        5     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0       26     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1        8     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0       19     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        8     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0       24     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        4     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0       24     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        5     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0       14     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1        3     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0        0     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1        0     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0        9     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1        3     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0       23     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1        3     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0       42     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1        5     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       46     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1       15     375
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       49     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        5     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       44     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        2     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       45     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        5     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       40     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        5     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       34     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        6     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       36     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        4     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       42     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        3     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       32     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        3     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       27     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        2     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       47     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        5     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       44     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        4     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       47     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        3     534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      199    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        8    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      136    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        4    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      162    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      148    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        2    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      168    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      149    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        6    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      157    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      177    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        5    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      202    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      207    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      197    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      206    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       10    2166
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       14     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       18     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       18     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        0     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       19     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        1     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       28     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        0     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       35     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        1     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       23     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        0     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       17     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        1     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       30     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        1     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       21     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        0     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       22     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        0     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0        7     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        0     256
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      113    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1       13    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                0       95    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                1        9    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                0       89    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                1       14    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                0       87    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                1       12    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                0       96    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                1       17    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                0      171    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                1       20    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                0      194    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                1       20    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                0      176    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                1       34    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                0      134    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                1       17    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               0      181    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               1       19    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               0       77    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               1       11    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               0       56    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               1       14    1669
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        2     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1        0     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      106     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       20     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      200     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       32     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0      183     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1       30     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0       12     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        2     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        3     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        1     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        1     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0     592
6-24 months   ki1114097-CMIN             BANGLADESH                     1                0       25     257
6-24 months   ki1114097-CMIN             BANGLADESH                     1                1        3     257
6-24 months   ki1114097-CMIN             BANGLADESH                     2                0       30     257
6-24 months   ki1114097-CMIN             BANGLADESH                     2                1        2     257
6-24 months   ki1114097-CMIN             BANGLADESH                     3                0       20     257
6-24 months   ki1114097-CMIN             BANGLADESH                     3                1        0     257
6-24 months   ki1114097-CMIN             BANGLADESH                     4                0       16     257
6-24 months   ki1114097-CMIN             BANGLADESH                     4                1        3     257
6-24 months   ki1114097-CMIN             BANGLADESH                     5                0       20     257
6-24 months   ki1114097-CMIN             BANGLADESH                     5                1        0     257
6-24 months   ki1114097-CMIN             BANGLADESH                     6                0       20     257
6-24 months   ki1114097-CMIN             BANGLADESH                     6                1        3     257
6-24 months   ki1114097-CMIN             BANGLADESH                     7                0       12     257
6-24 months   ki1114097-CMIN             BANGLADESH                     7                1        1     257
6-24 months   ki1114097-CMIN             BANGLADESH                     8                0       13     257
6-24 months   ki1114097-CMIN             BANGLADESH                     8                1        1     257
6-24 months   ki1114097-CMIN             BANGLADESH                     9                0       18     257
6-24 months   ki1114097-CMIN             BANGLADESH                     9                1        1     257
6-24 months   ki1114097-CMIN             BANGLADESH                     10               0       21     257
6-24 months   ki1114097-CMIN             BANGLADESH                     10               1        0     257
6-24 months   ki1114097-CMIN             BANGLADESH                     11               0        2     257
6-24 months   ki1114097-CMIN             BANGLADESH                     11               1        0     257
6-24 months   ki1114097-CMIN             BANGLADESH                     12               0       40     257
6-24 months   ki1114097-CMIN             BANGLADESH                     12               1        6     257
6-24 months   ki1114097-CMIN             BRAZIL                         1                0       13     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                0       14     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                0       10     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                0        5     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                0        6     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                0        4     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                0       13     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                0        9     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         10               0       16     119
6-24 months   ki1114097-CMIN             BRAZIL                         10               1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         11               0       12     119
6-24 months   ki1114097-CMIN             BRAZIL                         11               1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         12               0       10     119
6-24 months   ki1114097-CMIN             BRAZIL                         12               1        0     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       28    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        1    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0      116    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        4    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0      127    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1        4    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0      189    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        8    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0      145    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        3    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       75    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        2    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       64    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        3    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0       61    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        5    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0      122    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1        1    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0       39    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1        2    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0       52    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1        1    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0       99    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1        2    1153
6-24 months   ki1114097-CMIN             PERU                           1                0       47     830
6-24 months   ki1114097-CMIN             PERU                           1                1        0     830
6-24 months   ki1114097-CMIN             PERU                           2                0      131     830
6-24 months   ki1114097-CMIN             PERU                           2                1        1     830
6-24 months   ki1114097-CMIN             PERU                           3                0      109     830
6-24 months   ki1114097-CMIN             PERU                           3                1        2     830
6-24 months   ki1114097-CMIN             PERU                           4                0       75     830
6-24 months   ki1114097-CMIN             PERU                           4                1        0     830
6-24 months   ki1114097-CMIN             PERU                           5                0       85     830
6-24 months   ki1114097-CMIN             PERU                           5                1        0     830
6-24 months   ki1114097-CMIN             PERU                           6                0       53     830
6-24 months   ki1114097-CMIN             PERU                           6                1        0     830
6-24 months   ki1114097-CMIN             PERU                           7                0       53     830
6-24 months   ki1114097-CMIN             PERU                           7                1        0     830
6-24 months   ki1114097-CMIN             PERU                           8                0       70     830
6-24 months   ki1114097-CMIN             PERU                           8                1        0     830
6-24 months   ki1114097-CMIN             PERU                           9                0       48     830
6-24 months   ki1114097-CMIN             PERU                           9                1        0     830
6-24 months   ki1114097-CMIN             PERU                           10               0       38     830
6-24 months   ki1114097-CMIN             PERU                           10               1        1     830
6-24 months   ki1114097-CMIN             PERU                           11               0       70     830
6-24 months   ki1114097-CMIN             PERU                           11               1        0     830
6-24 months   ki1114097-CMIN             PERU                           12               0       46     830
6-24 months   ki1114097-CMIN             PERU                           12               1        1     830
6-24 months   ki1114097-CONTENT          PERU                           1                0        9     215
6-24 months   ki1114097-CONTENT          PERU                           1                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                0       13     215
6-24 months   ki1114097-CONTENT          PERU                           2                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                0       27     215
6-24 months   ki1114097-CONTENT          PERU                           3                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4                0       18     215
6-24 months   ki1114097-CONTENT          PERU                           4                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           5                0       25     215
6-24 months   ki1114097-CONTENT          PERU                           5                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           6                0       14     215
6-24 months   ki1114097-CONTENT          PERU                           6                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           7                0       16     215
6-24 months   ki1114097-CONTENT          PERU                           7                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           8                0       26     215
6-24 months   ki1114097-CONTENT          PERU                           8                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           9                0       19     215
6-24 months   ki1114097-CONTENT          PERU                           9                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           10               0       23     215
6-24 months   ki1114097-CONTENT          PERU                           10               1        0     215
6-24 months   ki1114097-CONTENT          PERU                           11               0       18     215
6-24 months   ki1114097-CONTENT          PERU                           11               1        0     215
6-24 months   ki1114097-CONTENT          PERU                           12               0        7     215
6-24 months   ki1114097-CONTENT          PERU                           12               1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        1                0     1135   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                1       13   16581
6-24 months   ki1119695-PROBIT           BELARUS                        2                0      978   16581
6-24 months   ki1119695-PROBIT           BELARUS                        2                1        8   16581
6-24 months   ki1119695-PROBIT           BELARUS                        3                0     1158   16581
6-24 months   ki1119695-PROBIT           BELARUS                        3                1       11   16581
6-24 months   ki1119695-PROBIT           BELARUS                        4                0     1106   16581
6-24 months   ki1119695-PROBIT           BELARUS                        4                1       12   16581
6-24 months   ki1119695-PROBIT           BELARUS                        5                0     1120   16581
6-24 months   ki1119695-PROBIT           BELARUS                        5                1       12   16581
6-24 months   ki1119695-PROBIT           BELARUS                        6                0     1171   16581
6-24 months   ki1119695-PROBIT           BELARUS                        6                1       20   16581
6-24 months   ki1119695-PROBIT           BELARUS                        7                0     1438   16581
6-24 months   ki1119695-PROBIT           BELARUS                        7                1       15   16581
6-24 months   ki1119695-PROBIT           BELARUS                        8                0     1567   16581
6-24 months   ki1119695-PROBIT           BELARUS                        8                1       14   16581
6-24 months   ki1119695-PROBIT           BELARUS                        9                0     1547   16581
6-24 months   ki1119695-PROBIT           BELARUS                        9                1       11   16581
6-24 months   ki1119695-PROBIT           BELARUS                        10               0     1748   16581
6-24 months   ki1119695-PROBIT           BELARUS                        10               1       15   16581
6-24 months   ki1119695-PROBIT           BELARUS                        11               0     1660   16581
6-24 months   ki1119695-PROBIT           BELARUS                        11               1       20   16581
6-24 months   ki1119695-PROBIT           BELARUS                        12               0     1794   16581
6-24 months   ki1119695-PROBIT           BELARUS                        12               1        8   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      904    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       25    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      662    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       10    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0      746    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       22    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      708    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1        8    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      677    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        8    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0      765    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       12    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0      761    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       15    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0      814    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       13    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0      852    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1       14    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      637    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1       14    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0      754    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       11    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0      865    9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       15    9312
6-24 months   ki1148112-LCNI-5           MALAWI                         1                0       49     719
6-24 months   ki1148112-LCNI-5           MALAWI                         1                1        0     719
6-24 months   ki1148112-LCNI-5           MALAWI                         2                0      100     719
6-24 months   ki1148112-LCNI-5           MALAWI                         2                1        2     719
6-24 months   ki1148112-LCNI-5           MALAWI                         3                0       88     719
6-24 months   ki1148112-LCNI-5           MALAWI                         3                1        1     719
6-24 months   ki1148112-LCNI-5           MALAWI                         4                0       97     719
6-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     719
6-24 months   ki1148112-LCNI-5           MALAWI                         5                0       85     719
6-24 months   ki1148112-LCNI-5           MALAWI                         5                1        0     719
6-24 months   ki1148112-LCNI-5           MALAWI                         6                0       75     719
6-24 months   ki1148112-LCNI-5           MALAWI                         6                1        1     719
6-24 months   ki1148112-LCNI-5           MALAWI                         7                0       60     719
6-24 months   ki1148112-LCNI-5           MALAWI                         7                1        0     719
6-24 months   ki1148112-LCNI-5           MALAWI                         8                0       38     719
6-24 months   ki1148112-LCNI-5           MALAWI                         8                1        0     719
6-24 months   ki1148112-LCNI-5           MALAWI                         9                0       24     719
6-24 months   ki1148112-LCNI-5           MALAWI                         9                1        0     719
6-24 months   ki1148112-LCNI-5           MALAWI                         10               0       30     719
6-24 months   ki1148112-LCNI-5           MALAWI                         10               1        0     719
6-24 months   ki1148112-LCNI-5           MALAWI                         11               0       41     719
6-24 months   ki1148112-LCNI-5           MALAWI                         11               1        0     719
6-24 months   ki1148112-LCNI-5           MALAWI                         12               0       26     719
6-24 months   ki1148112-LCNI-5           MALAWI                         12               1        2     719
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     1213   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       59   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     1070   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1       54   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0     1293   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       76   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0     1055   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1       78   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0     1026   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1       55   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0     1012   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1       76   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0     1116   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1       69   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0     1271   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1       82   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0     1357   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1       86   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0     1451   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1      106   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0     1472   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1       80   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0     1445   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1       77   15679
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0       53    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        3    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      340    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1       19    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      426    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       36    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      835    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1       72    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      559    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1       55    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      411    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       44    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      774    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1       89    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      489    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1       34    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      453    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       34    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      295    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1       19    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0      146    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1       16    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0       74    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        5    5281


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
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/6fc7319c-67a3-44a6-acfa-10bb55e139ab/998a25d9-f5ca-41ba-9f9c-5094e77d58bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6fc7319c-67a3-44a6-acfa-10bb55e139ab/998a25d9-f5ca-41ba-9f9c-5094e77d58bc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6fc7319c-67a3-44a6-acfa-10bb55e139ab/998a25d9-f5ca-41ba-9f9c-5094e77d58bc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6fc7319c-67a3-44a6-acfa-10bb55e139ab/998a25d9-f5ca-41ba-9f9c-5094e77d58bc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
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
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                0.0269107    0.0165042   0.0373171
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       2                    NA                0.0148810    0.0057262   0.0240357
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       3                    NA                0.0286458    0.0168478   0.0404439
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       4                    NA                0.0111732    0.0034737   0.0188727
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       5                    NA                0.0116788    0.0036329   0.0197247
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       6                    NA                0.0154440    0.0067732   0.0241149
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       7                    NA                0.0193299    0.0096423   0.0290175
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       8                    NA                0.0157195    0.0072414   0.0241975
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       9                    NA                0.0161663    0.0077663   0.0245663
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       10                   NA                0.0215054    0.0103616   0.0326492
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       11                   NA                0.0143791    0.0059426   0.0228156
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       12                   NA                0.0170455    0.0084928   0.0255981
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0463836    0.0335536   0.0592137
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2                    NA                0.0480427    0.0342647   0.0618207
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     3                    NA                0.0555150    0.0419663   0.0690637
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     4                    NA                0.0688438    0.0531809   0.0845067
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     5                    NA                0.0508788    0.0367213   0.0650363
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     6                    NA                0.0698529    0.0511883   0.0885176
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     7                    NA                0.0582278    0.0448088   0.0716468
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     8                    NA                0.0606061    0.0465748   0.0746373
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     9                    NA                0.0595981    0.0458736   0.0733225
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     10                   NA                0.0680796    0.0547463   0.0814130
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     11                   NA                0.0515464    0.0401910   0.0629018
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     12                   NA                0.0505913    0.0392808   0.0619018
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
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                0.0269107    0.0165042   0.0373171
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       2                    NA                0.0148810    0.0057262   0.0240357
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       3                    NA                0.0286458    0.0168478   0.0404439
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       4                    NA                0.0111732    0.0034737   0.0188727
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       5                    NA                0.0116788    0.0036329   0.0197247
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       6                    NA                0.0154440    0.0067732   0.0241149
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       7                    NA                0.0193299    0.0096423   0.0290175
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       8                    NA                0.0157195    0.0072414   0.0241975
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       9                    NA                0.0161663    0.0077663   0.0245663
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       10                   NA                0.0215054    0.0103616   0.0326492
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       11                   NA                0.0143791    0.0059426   0.0228156
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       12                   NA                0.0170455    0.0084928   0.0255981
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0463836    0.0335536   0.0592137
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2                    NA                0.0480427    0.0342647   0.0618207
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     3                    NA                0.0555150    0.0419663   0.0690637
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     4                    NA                0.0688438    0.0531809   0.0845067
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     5                    NA                0.0508788    0.0367213   0.0650363
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     6                    NA                0.0698529    0.0511883   0.0885176
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     7                    NA                0.0582278    0.0448088   0.0716468
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     8                    NA                0.0606061    0.0465748   0.0746373
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     9                    NA                0.0595981    0.0458736   0.0733225
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     10                   NA                0.0680796    0.0547463   0.0814130
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     11                   NA                0.0515464    0.0401910   0.0629018
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     12                   NA                0.0505913    0.0392808   0.0619018


### Parameter: E(Y)


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1119695-PROBIT       BELARUS        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       NA                   NA                0.0179338   0.0152382   0.0206295
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0572741   0.0531873   0.0613609
0-6 months    ki1119695-PROBIT       BELARUS        NA                   NA                0.0846069   0.0570929   0.1121208
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   ki1119695-PROBIT       BELARUS        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       NA                   NA                0.0179338   0.0152382   0.0206295
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0572741   0.0531873   0.0613609


### Parameter: RR


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
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
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       2                    1                 0.5529762   0.2673804   1.1436241
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       3                    1                 1.0644792   0.6050384   1.8728001
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       4                    1                 0.4151955   0.1883977   0.9150184
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       5                    1                 0.4339854   0.1969539   0.9562811
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       6                    1                 0.5738996   0.2902458   1.1347650
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       7                    1                 0.7182990   0.3814069   1.3527638
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       8                    1                 0.5841354   0.3008132   1.1343058
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       9                    1                 0.6007390   0.3143337   1.1481028
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       10                   1                 0.7991398   0.4186195   1.5255486
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       11                   1                 0.5343268   0.2646251   1.0789043
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       12                   1                 0.6334091   0.3361762   1.1934429
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2                    1                 1.0357681   0.6977408   1.5375561
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     3                    1                 1.1968652   0.8429108   1.6994519
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     4                    1                 1.4842251   1.0386778   2.1208928
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     5                    1                 1.0969128   0.7302034   1.6477842
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     6                    1                 1.5059820   1.0194079   2.2248030
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     7                    1                 1.2553529   0.8777699   1.7953576
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     8                    1                 1.3066256   0.9166414   1.8625281
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     9                    1                 1.2848937   0.8922270   1.8503720
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     10                   1                 1.4677509   1.0457146   2.0601152
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     11                   1                 1.1113052   0.7850022   1.5732432
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     12                   1                 1.0907147   0.7676613   1.5497180
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
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       2                    1                 0.5529762   0.2673804   1.1436241
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       3                    1                 1.0644792   0.6050384   1.8728001
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       4                    1                 0.4151955   0.1883977   0.9150184
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       5                    1                 0.4339854   0.1969539   0.9562811
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       6                    1                 0.5738996   0.2902458   1.1347650
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       7                    1                 0.7182990   0.3814069   1.3527638
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       8                    1                 0.5841354   0.3008132   1.1343058
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       9                    1                 0.6007390   0.3143337   1.1481028
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       10                   1                 0.7991398   0.4186195   1.5255486
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       11                   1                 0.5343268   0.2646251   1.0789043
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       12                   1                 0.6334091   0.3361762   1.1934429
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2                    1                 1.0357681   0.6977408   1.5375561
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     3                    1                 1.1968652   0.8429108   1.6994519
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     4                    1                 1.4842251   1.0386778   2.1208928
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     5                    1                 1.0969128   0.7302034   1.6477842
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     6                    1                 1.5059820   1.0194079   2.2248030
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     7                    1                 1.2553529   0.8777699   1.7953576
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     8                    1                 1.3066256   0.9166414   1.8625281
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     9                    1                 1.2848937   0.8922270   1.8503720
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     10                   1                 1.4677509   1.0457146   2.0601152
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     11                   1                 1.1113052   0.7850022   1.5732432
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     12                   1                 1.0907147   0.7676613   1.5497180


### Parameter: PAR


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0166576   -0.1127007   0.1460159
0-24 months   ki1119695-PROBIT       BELARUS        1                    NA                -0.0017348   -0.0093684   0.0058989
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                -0.0089768   -0.0186697   0.0007161
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0108904   -0.0014271   0.0232079
0-6 months    ki1119695-PROBIT       BELARUS        1                    NA                 0.0094895   -0.0098853   0.0288643
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0166576   -0.1127007   0.1460159
6-24 months   ki1119695-PROBIT       BELARUS        1                    NA                -0.0017348   -0.0093684   0.0058989
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                -0.0089768   -0.0186697   0.0007161
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0108904   -0.0014271   0.0232079


### Parameter: PAF


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1390079   -2.0034569    0.7531820
0-24 months   ki1119695-PROBIT       BELARUS        1                    NA                -0.1809053   -1.2570620    0.3821449
0-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                -0.5005511   -1.1440733   -0.0501757
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.1901456   -0.0560649    0.3789547
0-6 months    ki1119695-PROBIT       BELARUS        1                    NA                 0.1121599   -0.1516931    0.3155641
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1390079   -2.0034569    0.7531820
6-24 months   ki1119695-PROBIT       BELARUS        1                    NA                -0.1809053   -1.2570620    0.3821449
6-24 months   ki1126311-ZVITAMBO     ZIMBABWE       1                    NA                -0.5005511   -1.1440733   -0.0501757
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.1901456   -0.0560649    0.3789547
