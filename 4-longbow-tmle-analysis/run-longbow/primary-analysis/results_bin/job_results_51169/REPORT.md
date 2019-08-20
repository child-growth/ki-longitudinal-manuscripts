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

agecat        studyid                    country                        brthmon    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  --------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       17     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1        4     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                      0       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                      1        7     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                      0       19     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                      1        6     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                      0       19     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                      1        3     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                      0       15     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                      1        7     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                      0       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                      1        1     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                      0       16     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                      1        4     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                      0       17     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                      1        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                      0       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                      1        5     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                     0       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                     1        7     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                     0       16     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                     1        1     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                     0       25     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                     1        3     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0       13     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                      0       23     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                      1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                      0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                      1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                      0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                      1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                      0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                      1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                      0        8     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                      1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                      0       16     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                      1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                      0       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                      1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                      0       28     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                      1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                     0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                     1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                     0       22     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                     0       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                     1        0     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                      0       19     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                      1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                      0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                      1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                      0       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                      1        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                      0        6     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                      1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                      0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                      1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                      0       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                      1       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                      0       19     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                      1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                      0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                      1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                     0       19     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                     1        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                     0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                     1        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                     0       16     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                     1        3     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                      0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                      1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                      0       14     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                      1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                      0       20     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                      1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                      0       19     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                      1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                      0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                      1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                      0       19     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                      1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                      0       23     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                      1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                      0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                      1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                     0       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                     0       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                     1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                     0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                     1        1     240
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0       29     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                      0       18     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                      1        5     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                      0       19     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                      1        4     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                      0       18     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                      1        3     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                      0       20     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                      1        8     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                      0       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                      1        4     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                      0       17     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                      1        7     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                      0       16     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                      1        3     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                      0       22     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                      1        1     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                     0       22     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                     1        5     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                     0       25     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                     1        8     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                     0       20     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                     1        3     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       27     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       15     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       24     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1        6     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       15     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1        3     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       14     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1        1     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                      0       14     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                      1        2     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                      0       18     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                      1        5     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                      0       19     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                      1        7     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                      0       10     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                      1        2     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                      0       24     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                      1        1     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                     0       23     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                     1        8     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                     0       21     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                     1       10     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                     0       33     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                     1       12     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       11     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        9     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0       11     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1       20     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1       11     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                      0       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                      1        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                      0       11     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                      1        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                      0       10     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                      1       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                      0        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                      1        4     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                      0       10     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                      1       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                     0        9     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                     1       15     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                     0       11     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                     1       16     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                     0       20     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                     1       14     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      0        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      0       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      1       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      0       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      1       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                      0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                      1       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                      0       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                      1       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                      0       13     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                      1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                      0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                      1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                      0        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                      1       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                     0       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                     1       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                     0       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                     1       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                     0        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                     1       21     373
0-24 months   ki1000108-IRC              INDIA                          1                      0       28     410
0-24 months   ki1000108-IRC              INDIA                          1                      1       10     410
0-24 months   ki1000108-IRC              INDIA                          2                      0       17     410
0-24 months   ki1000108-IRC              INDIA                          2                      1       11     410
0-24 months   ki1000108-IRC              INDIA                          3                      0       18     410
0-24 months   ki1000108-IRC              INDIA                          3                      1        9     410
0-24 months   ki1000108-IRC              INDIA                          4                      0       16     410
0-24 months   ki1000108-IRC              INDIA                          4                      1        5     410
0-24 months   ki1000108-IRC              INDIA                          5                      0       11     410
0-24 months   ki1000108-IRC              INDIA                          5                      1       11     410
0-24 months   ki1000108-IRC              INDIA                          6                      0       30     410
0-24 months   ki1000108-IRC              INDIA                          6                      1        7     410
0-24 months   ki1000108-IRC              INDIA                          7                      0       30     410
0-24 months   ki1000108-IRC              INDIA                          7                      1        6     410
0-24 months   ki1000108-IRC              INDIA                          8                      0       39     410
0-24 months   ki1000108-IRC              INDIA                          8                      1        5     410
0-24 months   ki1000108-IRC              INDIA                          9                      0       20     410
0-24 months   ki1000108-IRC              INDIA                          9                      1        7     410
0-24 months   ki1000108-IRC              INDIA                          10                     0       32     410
0-24 months   ki1000108-IRC              INDIA                          10                     1        6     410
0-24 months   ki1000108-IRC              INDIA                          11                     0       33     410
0-24 months   ki1000108-IRC              INDIA                          11                     1        7     410
0-24 months   ki1000108-IRC              INDIA                          12                     0       34     410
0-24 months   ki1000108-IRC              INDIA                          12                     1       18     410
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       30     379
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       65     379
0-24 months   ki1000109-EE               PAKISTAN                       2                      0       29     379
0-24 months   ki1000109-EE               PAKISTAN                       2                      1       38     379
0-24 months   ki1000109-EE               PAKISTAN                       3                      0       16     379
0-24 months   ki1000109-EE               PAKISTAN                       3                      1       26     379
0-24 months   ki1000109-EE               PAKISTAN                       4                      0        4     379
0-24 months   ki1000109-EE               PAKISTAN                       4                      1       12     379
0-24 months   ki1000109-EE               PAKISTAN                       5                      0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       5                      1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       6                      0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       6                      1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7                      0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7                      1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8                      0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8                      1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9                      0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9                      1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       10                     0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       10                     1        3     379
0-24 months   ki1000109-EE               PAKISTAN                       11                     0       24     379
0-24 months   ki1000109-EE               PAKISTAN                       11                     1       46     379
0-24 months   ki1000109-EE               PAKISTAN                       12                     0       27     379
0-24 months   ki1000109-EE               PAKISTAN                       12                     1       58     379
0-24 months   ki1000109-ResPak           PAKISTAN                       1                      0        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                      1        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                      0       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                      1        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                      0        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                      1       12     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                      0       13     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                      1       14     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                      0       31     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                      1       22     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                      0       27     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                      1       22     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                      0       19     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                      1       15     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                      0       28     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                      1        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                      0       15     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                      1        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                     0        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                     1        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                     0        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                     1        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                     0        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                     1        4     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       76    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       37    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                      0       65    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                      1       26    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                      0       55    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                      1       27    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                      0       55    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                      1       20    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                      0       67    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                      1       34    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                      0       75    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                      1       34    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                      0       72    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                      1       64    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                      0      110    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                      1       72    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                      0      133    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                      1       59    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                     0      115    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                     1       53    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                     0      101    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                     1       41    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                     0      102    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                     1       40    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0       19     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                      0       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                      1       14     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                      0        9     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                      1       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                      0        4     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                      1        0     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                      0        6     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                      1        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                      0       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                      1       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                      0       20     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                      1       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                      0       34     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                      1       33     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                      0       29     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                      1       37     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                     0       23     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                     1       28     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                     0       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                     1       15     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                     0       21     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                     1       17     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                      0       48     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                      1       25     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                      0       48     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                      1       10     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                      0       45     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                      1       14     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                      0       37     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                      1       16     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                      0       36     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                      1       13     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                      0       32     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                      1       18     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                      0       28     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                      1       13     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                      0       24     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                      1       17     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                      0       34     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                      1       14     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                     0       33     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                     1       16     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                     0       33     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                     1       20     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                     0       35     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                     1       20     629
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      154    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       17    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      161    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       17    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      140    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       24    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      169    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       21    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0      167    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1       18    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0      153    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1       13    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0      193    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1       25    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0      210    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1       22    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0      197    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1       19    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0      220    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1       30    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      201    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1       20    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0      192    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1       13    2396
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      233    2915
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1       62    2915
0-24 months   ki1101329-Keneba           GAMBIA                         2                      0      205    2915
0-24 months   ki1101329-Keneba           GAMBIA                         2                      1       51    2915
0-24 months   ki1101329-Keneba           GAMBIA                         3                      0      239    2915
0-24 months   ki1101329-Keneba           GAMBIA                         3                      1       67    2915
0-24 months   ki1101329-Keneba           GAMBIA                         4                      0      157    2915
0-24 months   ki1101329-Keneba           GAMBIA                         4                      1       40    2915
0-24 months   ki1101329-Keneba           GAMBIA                         5                      0      158    2915
0-24 months   ki1101329-Keneba           GAMBIA                         5                      1       46    2915
0-24 months   ki1101329-Keneba           GAMBIA                         6                      0      122    2915
0-24 months   ki1101329-Keneba           GAMBIA                         6                      1       41    2915
0-24 months   ki1101329-Keneba           GAMBIA                         7                      0      105    2915
0-24 months   ki1101329-Keneba           GAMBIA                         7                      1       36    2915
0-24 months   ki1101329-Keneba           GAMBIA                         8                      0      191    2915
0-24 months   ki1101329-Keneba           GAMBIA                         8                      1       45    2915
0-24 months   ki1101329-Keneba           GAMBIA                         9                      0      199    2915
0-24 months   ki1101329-Keneba           GAMBIA                         9                      1       54    2915
0-24 months   ki1101329-Keneba           GAMBIA                         10                     0      277    2915
0-24 months   ki1101329-Keneba           GAMBIA                         10                     1       73    2915
0-24 months   ki1101329-Keneba           GAMBIA                         11                     0      207    2915
0-24 months   ki1101329-Keneba           GAMBIA                         11                     1       47    2915
0-24 months   ki1101329-Keneba           GAMBIA                         12                     0      203    2915
0-24 months   ki1101329-Keneba           GAMBIA                         12                     1       57    2915
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      0       20     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      1        9     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                      0       21     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                      1        5     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                      0       21     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                      1        6     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                      0       25     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                      1        6     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                      0       27     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                      1        8     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                      0       22     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                      1        3     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                      0       18     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                      1        4     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                      0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                      1        3     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                      0       14     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                      1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                     0       29     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                     1        3     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                     0       20     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                     1        4     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                     0       30     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                     1        3     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      286    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1       37    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                      0      167    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                      1       14    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                      0      179    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                      1       18    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                      0      186    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                      1       23    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                      0      196    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                      1       22    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                      0      169    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                      1       23    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                      0      165    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                      1       31    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                      0      270    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                      1       33    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                      0      365    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                      1       46    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                     0      332    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                     1       40    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                     0      305    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                     1       37    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                     0      288    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                     1       33    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                      0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                      1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                      0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                      1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                      0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                      1        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                      0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                      1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                      0       90     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                      1       39     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                      0      174     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                      1       61     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                      0      184     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                      1       53     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                      0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                      1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                     1        0     602
0-24 months   ki1114097-CMIN             BANGLADESH                     1                      0       14     277
0-24 months   ki1114097-CMIN             BANGLADESH                     1                      1       16     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                      0       19     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                      1        8     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                      0       12     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                      1        8     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                      0       12     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                      1       11     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                      0       12     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                      1        8     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                      0        2     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                      1        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                      0       12     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                      1        5     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                      0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                      1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                      0       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                      1        5     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                     0       10     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                     1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                     0       12     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                     1       18     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                     0       10     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                     1       18     277
0-24 months   ki1114097-CMIN             BRAZIL                         1                      0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                      1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                      0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                      1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                      0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                      1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                      0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                      1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                      0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                      1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                      0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                      1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                      0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                      1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                      0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                      1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                      0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                      1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                     0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                     1        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                     0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                     0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                     1        3     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                      0      124    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                      1       27    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                      0       94    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                      1       21    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                      0      107    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                      1       12    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                      0       83    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                      1       19    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                      0       95    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                      1       17    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                      0       73    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                      1       12    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                      0       88    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                      1       12    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                      0      104    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                      1       19    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                      0      139    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                      1       24    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                     0      138    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                     1       18    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                     0      114    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                     1       23    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                     0      124    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                     1       20    1507
0-24 months   ki1114097-CMIN             PERU                           1                      0       47     929
0-24 months   ki1114097-CMIN             PERU                           1                      1        3     929
0-24 months   ki1114097-CMIN             PERU                           2                      0       72     929
0-24 months   ki1114097-CMIN             PERU                           2                      1        9     929
0-24 months   ki1114097-CMIN             PERU                           3                      0       87     929
0-24 months   ki1114097-CMIN             PERU                           3                      1       11     929
0-24 months   ki1114097-CMIN             PERU                           4                      0       78     929
0-24 months   ki1114097-CMIN             PERU                           4                      1       14     929
0-24 months   ki1114097-CMIN             PERU                           5                      0       78     929
0-24 months   ki1114097-CMIN             PERU                           5                      1       15     929
0-24 months   ki1114097-CMIN             PERU                           6                      0       75     929
0-24 months   ki1114097-CMIN             PERU                           6                      1        8     929
0-24 months   ki1114097-CMIN             PERU                           7                      0       69     929
0-24 months   ki1114097-CMIN             PERU                           7                      1        6     929
0-24 months   ki1114097-CMIN             PERU                           8                      0       79     929
0-24 months   ki1114097-CMIN             PERU                           8                      1        8     929
0-24 months   ki1114097-CMIN             PERU                           9                      0       65     929
0-24 months   ki1114097-CMIN             PERU                           9                      1        7     929
0-24 months   ki1114097-CMIN             PERU                           10                     0       54     929
0-24 months   ki1114097-CMIN             PERU                           10                     1       12     929
0-24 months   ki1114097-CMIN             PERU                           11                     0       50     929
0-24 months   ki1114097-CMIN             PERU                           11                     1       10     929
0-24 months   ki1114097-CMIN             PERU                           12                     0       63     929
0-24 months   ki1114097-CMIN             PERU                           12                     1        9     929
0-24 months   ki1114097-CONTENT          PERU                           1                      0       10     215
0-24 months   ki1114097-CONTENT          PERU                           1                      1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                      0       18     215
0-24 months   ki1114097-CONTENT          PERU                           2                      1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                      0       28     215
0-24 months   ki1114097-CONTENT          PERU                           3                      1        2     215
0-24 months   ki1114097-CONTENT          PERU                           4                      0       16     215
0-24 months   ki1114097-CONTENT          PERU                           4                      1        3     215
0-24 months   ki1114097-CONTENT          PERU                           5                      0       12     215
0-24 months   ki1114097-CONTENT          PERU                           5                      1        2     215
0-24 months   ki1114097-CONTENT          PERU                           6                      0       12     215
0-24 months   ki1114097-CONTENT          PERU                           6                      1        1     215
0-24 months   ki1114097-CONTENT          PERU                           7                      0       27     215
0-24 months   ki1114097-CONTENT          PERU                           7                      1        1     215
0-24 months   ki1114097-CONTENT          PERU                           8                      0       21     215
0-24 months   ki1114097-CONTENT          PERU                           8                      1        2     215
0-24 months   ki1114097-CONTENT          PERU                           9                      0       25     215
0-24 months   ki1114097-CONTENT          PERU                           9                      1        1     215
0-24 months   ki1114097-CONTENT          PERU                           10                     0       11     215
0-24 months   ki1114097-CONTENT          PERU                           10                     1        3     215
0-24 months   ki1114097-CONTENT          PERU                           11                     0        9     215
0-24 months   ki1114097-CONTENT          PERU                           11                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           12                     0       11     215
0-24 months   ki1114097-CONTENT          PERU                           12                     1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                      0      964   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                      1       62   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                      0      925   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                      1       58   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                      0     1102   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                      1       43   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                      0     1116   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                      1       47   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                      0     1136   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                      1       38   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                      0     1166   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                      1       45   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                      0     1543   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                      1       47   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                      0     1539   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                      1       49   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                      0     1565   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                      1       62   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                     0     1753   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                     1       61   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                     0     1628   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                     1       74   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                     0     1794   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                     1       80   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                      0     1150   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                      1      213   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                      0      879   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                      1      194   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                      0      993   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                      1      212   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                      0      843   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                      1      165   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                      0      847   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                      1      191   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                      0      910   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                      1      244   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                      0      973   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                      1      208   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                      0     1088   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                      1      178   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                      0     1143   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                      1      164   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                     0      897   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                     1      155   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                     0     1032   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                     1      168   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                     0     1052   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                     1      174   14073
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0       51     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1       17     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                      0       43     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                      1        3     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                      0       21     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                      1        5     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                      0       34     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                      1        5     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                      0       33     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                      1       11     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                      0       20     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                      1       14     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                      0       51     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                      1       11     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                      0       79     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                      1       14     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                      0       74     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                      1       19     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                     0       96     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                     1       39     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                     0       85     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                     1       20     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                     0       76     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                     1       19     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2017   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      522   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                      0     1694   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                      1      375   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                      0     2088   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                      1      345   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                      0     1542   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                      1      234   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                      0     1096   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                      1      230   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                      0     1175   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                      1      228   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                      0     1319   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                      1      257   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                      0     1765   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                      1      389   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                      0     2320   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                      1      479   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                     0     2367   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                     1      601   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                     0     2373   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                     1      677   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                     0     2476   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                     1      667   27236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                      0      735    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                      1      181    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                      0      813    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                      1      211    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                      0      597    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                      1      176    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                      0      494    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                      1      147    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                      0      370    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                      1       90    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                      0      421    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                      1      116    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                      0      457    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                      1       98    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                      0      335    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                      1       68    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                     0      115    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                     1       18    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                     0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                     1        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                     0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                     1        0    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0       19     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        2     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                      0       23     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                      1        2     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                      0       24     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                      1        1     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                      0       22     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                      1        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                      0       18     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                      1        4     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                      0       11     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                      1        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                      0       19     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                      1        1     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                      0       22     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                      1        4     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                      0       21     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                      1        2     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                     0       21     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                     1        4     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                     0       17     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                     1        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                     0       27     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                     1        1     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0       14     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                      0       24     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                      1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                      0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                      1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                      0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                      1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                      0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                      1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                      0        8     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                      1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                      0       17     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                      1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                      0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                      1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                      0       28     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                      1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                     0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                     1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                     0       22     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                     0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                     1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                      0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                      1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                      0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                      1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                      0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                      1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                      0        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                      1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                      0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                      1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                      0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                      1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                      0       23     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                      1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                      0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                      1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                     0       23     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                     0       24     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                     0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                     1        1     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                      0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                      1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                      0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                      1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                      0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                      1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                      0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                      1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                      0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                      1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                      0       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                      1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                      0       23     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                      1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                      0       15     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                      1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                     0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                     0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                     0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                     1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0       36     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        6     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                      0       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                      1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                      0       22     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                      1        1     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                      0       19     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                      1        2     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                      0       21     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                      1        7     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                      0       15     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                      1        2     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                      0       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                      1        4     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                      0       17     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                      1        2     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                      0       23     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                      1        0     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                     0       23     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                     1        4     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                     0       28     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                     1        5     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                     0       21     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                     1        2     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       36     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        6     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       28     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       16     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       15     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1        0     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                      0       15     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                      1        1     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                      0       21     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                      1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                      0       25     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                      1        1     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                      0       11     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                      1        1     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                      0       24     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                      1        1     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                     0       27     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                     1        4     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                     0       26     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                     1        5     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                     0       41     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                     1        4     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       17     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        3     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0       28     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1        3     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0       16     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1        3     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0        9     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1        1     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                      0       18     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                      1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                      0       18     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                      1        1     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                      0       19     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                      1        4     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                      0       10     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                      1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                      0       18     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                      1        5     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                     0       19     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                     1        5     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                     0       25     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                     1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                     0       28     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                     1        6     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       26     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        8     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                      0       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                      1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                      0       26     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                      1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                      0       37     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                      1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                      0       29     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                      1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                      0       29     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                      1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                      0       27     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                      1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                      0        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                      1        8     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                      0       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                      1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                     0       22     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                     1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                     0       29     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                     1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                     0       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                     1       10     368
0-6 months    ki1000108-IRC              INDIA                          1                      0       31     410
0-6 months    ki1000108-IRC              INDIA                          1                      1        7     410
0-6 months    ki1000108-IRC              INDIA                          2                      0       20     410
0-6 months    ki1000108-IRC              INDIA                          2                      1        8     410
0-6 months    ki1000108-IRC              INDIA                          3                      0       22     410
0-6 months    ki1000108-IRC              INDIA                          3                      1        5     410
0-6 months    ki1000108-IRC              INDIA                          4                      0       17     410
0-6 months    ki1000108-IRC              INDIA                          4                      1        4     410
0-6 months    ki1000108-IRC              INDIA                          5                      0       17     410
0-6 months    ki1000108-IRC              INDIA                          5                      1        5     410
0-6 months    ki1000108-IRC              INDIA                          6                      0       32     410
0-6 months    ki1000108-IRC              INDIA                          6                      1        5     410
0-6 months    ki1000108-IRC              INDIA                          7                      0       33     410
0-6 months    ki1000108-IRC              INDIA                          7                      1        3     410
0-6 months    ki1000108-IRC              INDIA                          8                      0       43     410
0-6 months    ki1000108-IRC              INDIA                          8                      1        1     410
0-6 months    ki1000108-IRC              INDIA                          9                      0       23     410
0-6 months    ki1000108-IRC              INDIA                          9                      1        4     410
0-6 months    ki1000108-IRC              INDIA                          10                     0       34     410
0-6 months    ki1000108-IRC              INDIA                          10                     1        4     410
0-6 months    ki1000108-IRC              INDIA                          11                     0       34     410
0-6 months    ki1000108-IRC              INDIA                          11                     1        6     410
0-6 months    ki1000108-IRC              INDIA                          12                     0       42     410
0-6 months    ki1000108-IRC              INDIA                          12                     1       10     410
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       47     379
0-6 months    ki1000109-EE               PAKISTAN                       1                      1       48     379
0-6 months    ki1000109-EE               PAKISTAN                       2                      0       45     379
0-6 months    ki1000109-EE               PAKISTAN                       2                      1       22     379
0-6 months    ki1000109-EE               PAKISTAN                       3                      0       30     379
0-6 months    ki1000109-EE               PAKISTAN                       3                      1       12     379
0-6 months    ki1000109-EE               PAKISTAN                       4                      0        7     379
0-6 months    ki1000109-EE               PAKISTAN                       4                      1        9     379
0-6 months    ki1000109-EE               PAKISTAN                       5                      0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       5                      1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       6                      0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       6                      1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7                      0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7                      1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8                      0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8                      1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9                      0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9                      1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       10                     0        3     379
0-6 months    ki1000109-EE               PAKISTAN                       10                     1        1     379
0-6 months    ki1000109-EE               PAKISTAN                       11                     0       34     379
0-6 months    ki1000109-EE               PAKISTAN                       11                     1       36     379
0-6 months    ki1000109-EE               PAKISTAN                       12                     0       48     379
0-6 months    ki1000109-EE               PAKISTAN                       12                     1       37     379
0-6 months    ki1000109-ResPak           PAKISTAN                       1                      0        8     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                      1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                      0       10     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                      1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                      0       11     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                      1       10     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                      0       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                      1       14     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                      0       36     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                      1       17     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                      0       27     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                      1       22     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                      0       19     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                      1       15     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                      0       30     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                      1        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                      0       17     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                      1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                     0        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                     1        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                     0        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                     1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                     0        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                     1        3     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       96    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1       17    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                      0       76    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                      1       15    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                      0       68    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                      1       14    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                      0       69    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                      1        6    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                      0       82    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                      1       19    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                      0       89    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                      1       20    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                      0      114    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                      1       20    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                      0      147    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                      1       35    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                      0      170    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                      1       22    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                     0      144    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                     1       24    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                     0      123    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                     1       19    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                     0      123    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                     1       18    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0       24     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        2     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                      0       33     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                      1        3     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                      0       20     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                      1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                      0        4     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                      1        0     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                      0       13     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                      1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                      0       18     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                      1        7     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                      0       35     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                      1        2     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                      0       62     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                      1        5     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                      0       54     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                      1       11     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                     0       41     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                     1        9     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                     0       27     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                     1        6     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                     0       35     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                     1        3     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                      0       61     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                      1       12     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                      0       57     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                      1        1     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                      0       55     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                      1        4     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                      0       47     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                      1        6     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                      0       44     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                      1        5     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                      0       43     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                      1        7     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                      0       39     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                      1        2     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                      0       35     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                      1        6     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                      0       46     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                      1        2     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                     0       45     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                     1        4     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                     0       47     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                     1        6     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                     0       51     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                     1        4     629
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      164    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        7    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      171    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        7    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      157    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        7    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      182    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        8    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      0      176    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                      1        9    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      0      162    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                      1        4    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      0      209    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                      1        9    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      0      218    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                      1       14    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      0      206    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                      1       10    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     0      232    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                     1       18    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     0      215    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                     1        6    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     0      199    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                     1        6    2396
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0      225    2465
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1       34    2465
0-6 months    ki1101329-Keneba           GAMBIA                         2                      0      190    2465
0-6 months    ki1101329-Keneba           GAMBIA                         2                      1       26    2465
0-6 months    ki1101329-Keneba           GAMBIA                         3                      0      240    2465
0-6 months    ki1101329-Keneba           GAMBIA                         3                      1       22    2465
0-6 months    ki1101329-Keneba           GAMBIA                         4                      0      150    2465
0-6 months    ki1101329-Keneba           GAMBIA                         4                      1       17    2465
0-6 months    ki1101329-Keneba           GAMBIA                         5                      0      150    2465
0-6 months    ki1101329-Keneba           GAMBIA                         5                      1       19    2465
0-6 months    ki1101329-Keneba           GAMBIA                         6                      0      122    2465
0-6 months    ki1101329-Keneba           GAMBIA                         6                      1       19    2465
0-6 months    ki1101329-Keneba           GAMBIA                         7                      0       90    2465
0-6 months    ki1101329-Keneba           GAMBIA                         7                      1       15    2465
0-6 months    ki1101329-Keneba           GAMBIA                         8                      0      175    2465
0-6 months    ki1101329-Keneba           GAMBIA                         8                      1       23    2465
0-6 months    ki1101329-Keneba           GAMBIA                         9                      0      186    2465
0-6 months    ki1101329-Keneba           GAMBIA                         9                      1       28    2465
0-6 months    ki1101329-Keneba           GAMBIA                         10                     0      259    2465
0-6 months    ki1101329-Keneba           GAMBIA                         10                     1       31    2465
0-6 months    ki1101329-Keneba           GAMBIA                         11                     0      199    2465
0-6 months    ki1101329-Keneba           GAMBIA                         11                     1       19    2465
0-6 months    ki1101329-Keneba           GAMBIA                         12                     0      192    2465
0-6 months    ki1101329-Keneba           GAMBIA                         12                     1       34    2465
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      1        4     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                      0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                      1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                      0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                      1        4     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                      0       27     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                      1        3     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                      0       30     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                      1        5     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                      0       22     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                      1        3     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                      0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                      1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                      0       13     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                      1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                      0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                      1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                     0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                     1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                     0       19     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                     1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                     0       30     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                     1        1     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                      0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                      1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                      0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                      1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                      0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                      1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                      0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                      1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                      0      121     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                      1        8     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                      0      214     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                      1       21     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                      0      225     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                      1       12     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                      0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                      1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                     1        0     602
0-6 months    ki1114097-CMIN             BANGLADESH                     1                      0       24     277
0-6 months    ki1114097-CMIN             BANGLADESH                     1                      1        6     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                      0       25     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                      1        2     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                      0       18     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                      1        2     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                      0       18     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                      1        5     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                      0       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                      1        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                      0        5     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                      1        4     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                      0       16     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                      1        1     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                      0       13     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                      1       11     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                      0       17     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                      1        5     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                     0       20     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                     1        7     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                     0       22     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                     1        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                     0       17     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                     1       11     277
0-6 months    ki1114097-CMIN             BRAZIL                         1                      0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                      1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                      0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                      1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                      0       12     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                      1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                      0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                      1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                      0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                      1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                      0        6     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                      1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                      0        3     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                      1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                      0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                      1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                      0        8     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                      1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                     0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                     1        3     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                     0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                     0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                     1        0     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                      0      109     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                      1        6     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                      0       74     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                      1        6     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                      0       68     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                      1        5     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                      0       54     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                      1        2     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                      0       63     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                      1        2     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                      0       56     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                      1        1     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                      0       61     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                      1        2     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                      0       59     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                      1        2     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                      0       95     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                      1        7     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                     0       96     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                     1        0     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                     0       83     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                     1        3     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                     0      106     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                     1        5     965
0-6 months    ki1114097-CMIN             PERU                           1                      0       43     699
0-6 months    ki1114097-CMIN             PERU                           1                      1        0     699
0-6 months    ki1114097-CMIN             PERU                           2                      0       63     699
0-6 months    ki1114097-CMIN             PERU                           2                      1        4     699
0-6 months    ki1114097-CMIN             PERU                           3                      0       71     699
0-6 months    ki1114097-CMIN             PERU                           3                      1        1     699
0-6 months    ki1114097-CMIN             PERU                           4                      0       59     699
0-6 months    ki1114097-CMIN             PERU                           4                      1        3     699
0-6 months    ki1114097-CMIN             PERU                           5                      0       64     699
0-6 months    ki1114097-CMIN             PERU                           5                      1        1     699
0-6 months    ki1114097-CMIN             PERU                           6                      0       56     699
0-6 months    ki1114097-CMIN             PERU                           6                      1        2     699
0-6 months    ki1114097-CMIN             PERU                           7                      0       55     699
0-6 months    ki1114097-CMIN             PERU                           7                      1        2     699
0-6 months    ki1114097-CMIN             PERU                           8                      0       72     699
0-6 months    ki1114097-CMIN             PERU                           8                      1        1     699
0-6 months    ki1114097-CMIN             PERU                           9                      0       55     699
0-6 months    ki1114097-CMIN             PERU                           9                      1        1     699
0-6 months    ki1114097-CMIN             PERU                           10                     0       50     699
0-6 months    ki1114097-CMIN             PERU                           10                     1        3     699
0-6 months    ki1114097-CMIN             PERU                           11                     0       40     699
0-6 months    ki1114097-CMIN             PERU                           11                     1        2     699
0-6 months    ki1114097-CMIN             PERU                           12                     0       50     699
0-6 months    ki1114097-CMIN             PERU                           12                     1        1     699
0-6 months    ki1114097-CONTENT          PERU                           1                      0       10     215
0-6 months    ki1114097-CONTENT          PERU                           1                      1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                      0       18     215
0-6 months    ki1114097-CONTENT          PERU                           2                      1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                      0       28     215
0-6 months    ki1114097-CONTENT          PERU                           3                      1        2     215
0-6 months    ki1114097-CONTENT          PERU                           4                      0       18     215
0-6 months    ki1114097-CONTENT          PERU                           4                      1        1     215
0-6 months    ki1114097-CONTENT          PERU                           5                      0       13     215
0-6 months    ki1114097-CONTENT          PERU                           5                      1        1     215
0-6 months    ki1114097-CONTENT          PERU                           6                      0       13     215
0-6 months    ki1114097-CONTENT          PERU                           6                      1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7                      0       27     215
0-6 months    ki1114097-CONTENT          PERU                           7                      1        1     215
0-6 months    ki1114097-CONTENT          PERU                           8                      0       21     215
0-6 months    ki1114097-CONTENT          PERU                           8                      1        2     215
0-6 months    ki1114097-CONTENT          PERU                           9                      0       25     215
0-6 months    ki1114097-CONTENT          PERU                           9                      1        1     215
0-6 months    ki1114097-CONTENT          PERU                           10                     0       13     215
0-6 months    ki1114097-CONTENT          PERU                           10                     1        1     215
0-6 months    ki1114097-CONTENT          PERU                           11                     0        9     215
0-6 months    ki1114097-CONTENT          PERU                           11                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           12                     0       11     215
0-6 months    ki1114097-CONTENT          PERU                           12                     1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                      0     1006   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                      1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                      0      975   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                      1        8   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                      0     1128   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                      1       17   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                      0     1142   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                      1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                      0     1163   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                      1       11   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                      0     1196   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                      1       15   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                      0     1574   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                      1       16   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                      0     1574   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                      1       13   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                      0     1598   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                      1       29   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                     0     1783   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                     1       31   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                     0     1669   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                     1       33   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                     0     1845   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                     1       29   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                      0     1245   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                      1      114   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                      0      971   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                      1       99   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                      0     1087   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                      1      112   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                      0      905   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                      1      101   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                      0      923   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                      1      113   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                      0      994   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                      1      160   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                      0     1057   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                      1      123   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                      0     1146   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                      1      119   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                      0     1230   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                      1       77   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                     0      964   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                     1       86   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                     0     1107   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                     1       92   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                     0     1145   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                     1       81   14051
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0       26     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                      0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                      1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                      0        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                      1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                      0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                      1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                      0        9     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                      1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                      0        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                      1        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                      0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                      1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                      0       31     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                      1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                      0       51     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                      1        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                     0       61     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                     1        8     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                     0       29     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                     1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                     0       28     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                     1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2114   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      419   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                      0     1772   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                      1      294   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                      0     2167   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                      1      261   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                      0     1605   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                      1      167   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                      0     1161   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                      1      159   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                      0     1238   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                      1      157   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                      0     1385   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                      1      189   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                      0     1837   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                      1      315   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                      0     2388   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                      1      405   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                     0     2463   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                     1      496   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                     0     2474   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                     1      565   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                     0     2582   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                     1      557   27170
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                      0      712    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                      1       77    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                      0      826    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                      1      109    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                      0      645    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                      1       85    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                      0      548    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                      1       66    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                      0      402    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                      1       52    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                      0      486    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                      1       48    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                      0      510    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                      1       40    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                      0      360    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                      1       33    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                     0      121    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                     1       10    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                     0        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                     1        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                     0        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                     1        0    5130


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/860dc80b-7977-4554-a289-a8a1ac1fb70c/9004767d-83da-46bf-9894-533504495555/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/860dc80b-7977-4554-a289-a8a1ac1fb70c/9004767d-83da-46bf-9894-533504495555/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/860dc80b-7977-4554-a289-a8a1ac1fb70c/9004767d-83da-46bf-9894-533504495555/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/860dc80b-7977-4554-a289-a8a1ac1fb70c/9004767d-83da-46bf-9894-533504495555/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2631579    0.1229792   0.4033366
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.3928571    0.2117389   0.5739754
0-24 months   ki1000108-IRC              INDIA                          3                    NA                0.3333333    0.1553045   0.5113621
0-24 months   ki1000108-IRC              INDIA                          4                    NA                0.2380952    0.0557080   0.4204825
0-24 months   ki1000108-IRC              INDIA                          5                    NA                0.5000000    0.2908119   0.7091881
0-24 months   ki1000108-IRC              INDIA                          6                    NA                0.1891892    0.0628362   0.3155422
0-24 months   ki1000108-IRC              INDIA                          7                    NA                0.1666667    0.0447787   0.2885546
0-24 months   ki1000108-IRC              INDIA                          8                    NA                0.1136364    0.0197469   0.2075258
0-24 months   ki1000108-IRC              INDIA                          9                    NA                0.2592593    0.0937597   0.4247588
0-24 months   ki1000108-IRC              INDIA                          10                   NA                0.1578947    0.0418158   0.2739737
0-24 months   ki1000108-IRC              INDIA                          11                   NA                0.1750000    0.0571053   0.2928947
0-24 months   ki1000108-IRC              INDIA                          12                   NA                0.3461538    0.2166898   0.4756179
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3274336    0.2590419   0.3958253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2857143    0.1998973   0.3715313
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.3292683    0.2067976   0.4517390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2666667    0.1419314   0.3914019
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.3366337    0.2186540   0.4546133
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.3119266    0.2149766   0.4088766
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.4705882    0.3972341   0.5439424
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3956044    0.3114544   0.4797544
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.3072917    0.2329668   0.3816165
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.3154762    0.2553351   0.3756172
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2887324    0.2303684   0.3470964
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2816901    0.2298652   0.3335150
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3424658    0.2335226   0.4514089
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.1724138    0.0751229   0.2697047
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2372881    0.1286491   0.3459272
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.3018868    0.1781951   0.4255785
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2653061    0.1415911   0.3890211
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.3600000    0.2268473   0.4931527
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3170732    0.1745228   0.4596236
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.4146341    0.2637138   0.5655545
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2916667    0.1629795   0.4203538
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3265306    0.1951242   0.4579370
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.3773585    0.2467559   0.5079611
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.3636364    0.2364037   0.4908690
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0994152    0.0545583   0.1442721
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0955056    0.0523193   0.1386919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1463415    0.0922358   0.2004471
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1105263    0.0659339   0.1551188
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0972973    0.0545828   0.1400118
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0783133    0.0374348   0.1191917
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1146789    0.0723728   0.1569850
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0948276    0.0571201   0.1325351
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0879630    0.0501824   0.1257435
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1200000    0.0797097   0.1602903
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0904977    0.0526654   0.1283301
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0634146    0.0300466   0.0967826
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2101695    0.1636684   0.2566706
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1992188    0.1502832   0.2481543
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2189542    0.1726120   0.2652965
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.2030457    0.1468629   0.2592284
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.2254902    0.1681334   0.2828470
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.2515337    0.1849125   0.3181550
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.2553191    0.1833345   0.3273038
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.1906780    0.1405503   0.2408056
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.2134387    0.1629418   0.2639357
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.2085714    0.1659996   0.2511432
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.1850394    0.1372748   0.2328040
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.2192308    0.1689331   0.2695285
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1145511    0.0656331   0.1634691
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.0773481    0.0065816   0.1481146
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.0913706    0.0543252   0.1284160
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.1100478    0.0520423   0.1680534
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1009174    0.0566853   0.1451496
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.1197917    0.0683115   0.1712718
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.1581633    0.0933138   0.2230127
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.1089109    0.0706911   0.1471307
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.1119221    0.0777494   0.1460949
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1075269    0.0634422   0.1516116
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.1081871    0.0640286   0.1523457
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.1028037    0.0287486   0.1768588
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1788079    0.1176688   0.2399471
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.1826087    0.1119738   0.2532435
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.1008403    0.0467208   0.1549599
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.1862745    0.1106943   0.2618547
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1517857    0.0853118   0.2182597
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1411765    0.0671280   0.2152249
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1200000    0.0562876   0.1837124
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1544715    0.0905823   0.2183608
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.1472393    0.0928236   0.2016549
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.1153846    0.0652334   0.1655358
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.1678832    0.1052755   0.2304909
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.1388889    0.0823855   0.1953923
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0604288    0.0405685   0.0802892
0-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.0590031    0.0328569   0.0851492
0-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0375546    0.0256391   0.0494701
0-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0404127    0.0237358   0.0570896
0-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0323680    0.0171087   0.0476273
0-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0371594    0.0226683   0.0516504
0-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0295597    0.0189543   0.0401652
0-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0308564    0.0202068   0.0415060
0-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0381069    0.0212673   0.0549465
0-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.0336273    0.0266076   0.0406471
0-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.0434783    0.0287667   0.0581898
0-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.0426894    0.0295965   0.0557824
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1562729    0.1369951   0.1755508
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1808015    0.1577733   0.2038297
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1759336    0.1544343   0.1974330
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1636905    0.1408488   0.1865322
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1840077    0.1604341   0.2075813
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2114385    0.1878787   0.2349982
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1761219    0.1543961   0.1978478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1406003    0.1214517   0.1597489
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1254782    0.1075187   0.1434377
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1473384    0.1259193   0.1687575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1400000    0.1203670   0.1596330
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1419250    0.1223901   0.1614598
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2055928    0.1892999   0.2218856
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1812470    0.1632738   0.1992201
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1418002    0.1268263   0.1567742
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1317568    0.1153641   0.1481494
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1734540    0.1516701   0.1952379
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1625089    0.1405436   0.1844742
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.1630711    0.1432269   0.1829153
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1805942    0.1636384   0.1975501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1711325    0.1564646   0.1858005
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.2024933    0.1872619   0.2177246
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2219672    0.2052543   0.2386801
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2122176    0.1967422   0.2276931
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1504425    0.0864346   0.2144503
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1648352    0.1046046   0.2250657
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.1707317    0.0690084   0.2724550
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.0800001    0.0161559   0.1438442
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.1881188    0.0786320   0.2976057
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.1834862    0.0952200   0.2717525
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.1492537    0.0632332   0.2352743
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.1923077    0.1438745   0.2407409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.1145833    0.0706286   0.1585380
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.1428571    0.0914850   0.1942293
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.1338028    0.0912428   0.1763628
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.1276596    0.1018106   0.1535085
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1312741    0.0901386   0.1724097
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1203704    0.0769674   0.1637733
0-6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.0839695    0.0503801   0.1175588
0-6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1017964    0.0559261   0.1476667
0-6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.1124260    0.0647908   0.1600613
0-6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.1347518    0.0783797   0.1911239
0-6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.1428571    0.0759120   0.2098023
0-6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.1161616    0.0715219   0.1608013
0-6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.1308411    0.0856502   0.1760320
0-6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.1068966    0.0713277   0.1424654
0-6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.0871560    0.0497057   0.1246062
0-6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.1504425    0.1038234   0.1970615
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0185366    0.0042398   0.0328334
0-6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0081384    0.0029340   0.0133427
0-6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0148472    0.0068420   0.0228523
0-6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0163652    0.0045136   0.0282168
0-6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0093697   -0.0030743   0.0218137
0-6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0123865    0.0049143   0.0198587
0-6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0100629    0.0052964   0.0148294
0-6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0081916    0.0028771   0.0135060
0-6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0178242    0.0068570   0.0287914
0-6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0170893    0.0111504   0.0230282
0-6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0193890    0.0099568   0.0288211
0-6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0154749    0.0082384   0.0227115
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0838852    0.0691461   0.0986243
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0925234    0.0751608   0.1098860
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0934112    0.0769387   0.1098836
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1003976    0.0818259   0.1189693
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1090734    0.0900904   0.1280563
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1386482    0.1187090   0.1585874
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1042373    0.0868019   0.1216726
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0940711    0.0779835   0.1101588
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0589135    0.0461477   0.0716793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0819048    0.0653178   0.0984917
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0767306    0.0616645   0.0917968
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0660685    0.0521634   0.0799736
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1654165    0.1505038   0.1803292
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1423040    0.1253441   0.1592638
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1074959    0.0939889   0.1210028
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0942438    0.0799794   0.1085082
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1204545    0.1008731   0.1400360
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1125448    0.0930060   0.1320836
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.1200762    0.1024101   0.1377424
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1463755    0.1304843   0.1622667
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1450054    0.1314041   0.1586067
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1676242    0.1534248   0.1818236
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.1859164    0.1707438   0.2010890
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.1774450    0.1628225   0.1920676


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0997496   0.0877482   0.1117510
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2123499   0.1975010   0.2271989
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1093415   0.0900773   0.1286057
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1486397   0.1306733   0.1666060
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0394153   0.0310085   0.0478221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1610176   0.1549448   0.1670903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1837274   0.1781609   0.1892940
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1496732   0.1307572   0.1685893
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1164300   0.1037657   0.1290943
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0142071   0.0107237   0.0176904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0908832   0.0861303   0.0956361
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1466323   0.1416239   0.1516407


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2                    1                 1.4928571   0.7380162   3.0197472
0-24 months   ki1000108-IRC              INDIA                          3                    1                 1.2666667   0.5957531   2.6931364
0-24 months   ki1000108-IRC              INDIA                          4                    1                 0.9047619   0.3558975   2.3000840
0-24 months   ki1000108-IRC              INDIA                          5                    1                 1.9000000   0.9651389   3.7403943
0-24 months   ki1000108-IRC              INDIA                          6                    1                 0.7189189   0.3059649   1.6892280
0-24 months   ki1000108-IRC              INDIA                          7                    1                 0.6333333   0.2562718   1.5651783
0-24 months   ki1000108-IRC              INDIA                          8                    1                 0.4318182   0.1615717   1.1540814
0-24 months   ki1000108-IRC              INDIA                          9                    1                 0.9851852   0.4289835   2.2625340
0-24 months   ki1000108-IRC              INDIA                          10                   1                 0.6000000   0.2420309   1.4874132
0-24 months   ki1000108-IRC              INDIA                          11                   1                 0.6650000   0.2817309   1.5696718
0-24 months   ki1000108-IRC              INDIA                          12                   1                 1.3153846   0.6860957   2.5218593
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8725869   0.6578014   1.1575042
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 1.0056032   0.6911970   1.4630239
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.8144144   0.4363099   1.5201828
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.0280974   0.7536315   1.4025213
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.9526407   0.6313796   1.4373672
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.4372019   1.0931353   1.8895642
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.2081972   0.9780004   1.4925766
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.9384854   0.6394321   1.3774016
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9634813   0.6936680   1.3382430
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8818043   0.6924148   1.1229958
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.8602969   0.6513979   1.1361884
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.5034483   0.2634076   0.9622354
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.6928814   0.3967694   1.2099839
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.8815094   0.5247448   1.4808320
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7746939   0.4405325   1.3623300
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0512000   0.6453779   1.7122084
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9258537   0.5337730   1.6059354
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.2107317   0.7466334   1.9633078
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8516667   0.4943580   1.4672284
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.9534694   0.5708507   1.5925422
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.1018868   0.6886235   1.7631616
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.0618182   0.6617275   1.7038098
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9606742   0.5071663   1.8197085
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.4720230   0.8214370   2.6378791
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1117647   0.6069358   2.0364933
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.9786963   0.5214863   1.8367626
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7877392   0.3951232   1.5704797
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.1535348   0.6440418   2.0660811
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.9538540   0.5227424   1.7405082
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8848039   0.4745747   1.6496412
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.2070588   0.6878152   2.1182886
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9103008   0.4920949   1.6839179
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6378766   0.3189362   1.2757615
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9478957   0.6810608   1.3192746
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 1.0417984   0.7670227   1.4150089
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.9661045   0.6778923   1.3768528
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.0728969   0.7658524   1.5030412
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.1968138   0.8475098   1.6900846
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.2148250   0.8489196   1.7384447
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.9072581   0.6434341   1.2792564
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 1.0155553   0.7345555   1.4040499
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.9923963   0.7344330   1.3409671
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.8804293   0.6266762   1.2369317
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0431141   0.7584161   1.4346835
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.6752277   0.2177221   2.0941028
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.7976403   0.4284328   1.4850171
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 0.9606880   0.5072730   1.8193781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 0.8809819   0.5070830   1.5305760
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.0457489   0.5808310   1.8828037
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.3807226   0.7093261   2.6876139
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.9507626   0.5617538   1.6091563
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 0.9770500   0.6068383   1.5731155
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9386806   0.5327073   1.6540438
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 0.9444444   0.5396290   1.6529416
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 0.8974489   0.4079217   1.9744341
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.0212560   0.6094261   1.7113870
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.5639589   0.2984577   1.0656439
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.0417574   0.6128116   1.7709498
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.8488757   0.4870153   1.4796041
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.7895425   0.4221393   1.4767101
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.6711111   0.3568882   1.2619924
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.8638964   0.5051307   1.4774732
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.8234492   0.4977093   1.3623789
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.6452991   0.3711834   1.1218471
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.9389024   0.5660944   1.5572274
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.7767490   0.4565442   1.3215346
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 0.9764053   0.6151236   1.5498794
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.6214678   0.4146946   0.9313415
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.6687654   0.4609036   0.9703704
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.5356377   0.3395898   0.8448657
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.6149277   0.4104754   0.9212149
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.4891662   0.3422487   0.6991511
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.5106240   0.3300868   0.7899041
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.6306085   0.4124856   0.9640749
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.5564783   0.4035611   0.7673387
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.7194951   0.4936550   1.0486537
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.7064413   0.4812345   1.0370397
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1569598   0.9689737   1.3814162
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1258099   0.9463550   1.3392944
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0474653   0.8694639   1.2619082
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1774765   0.9856285   1.4066669
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.3530077   1.1457929   1.5976970
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1270150   0.9465962   1.3418212
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8997100   0.7486843   1.0812008
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8029426   0.6646957   0.9699428
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9428274   0.7791653   1.1408664
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8958685   0.7432421   1.0798372
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9081865   0.7549240   1.0925638
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8815825   0.7766947   1.0006348
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.6897142   0.6085420   0.7817139
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.6408628   0.5541929   0.7410870
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8436776   0.7252067   0.9815021
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7904408   0.6752885   0.9252294
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7931752   0.6874067   0.9152177
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8784076   0.7745201   0.9962297
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8323861   0.7437866   0.9315395
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9849241   0.8844108   1.0968608
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0796451   0.9694623   1.2023507
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0322233   0.9259720   1.1506664
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0956690   0.5895600   2.0362485
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 1.1348637   0.4811570   2.6767055
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.5317651   0.2248481   1.2576229
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.2504368   0.5462962   2.8621695
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.2196438   0.5727018   2.5973921
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 0.9920983   0.5424587   1.8144406
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.2782805   0.8946976   1.8263166
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.7616422   0.4279955   1.3553851
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9495798   0.5240972   1.7204858
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8893952   0.5456753   1.4496237
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.8485607   0.4962372   1.4510303
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.9169390   0.5686863   1.4784549
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.6396498   0.3848218   1.0632241
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.7754491   0.4479086   1.3425090
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.8564219   0.5056148   1.4506269
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1                 1.0264914   0.6086333   1.7312309
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1                 1.0882353   0.6192947   1.9122657
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1                 0.8848782   0.5389359   1.4528805
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1                 0.9967015   0.6252170   1.5889104
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1                 0.8143002   0.5155653   1.2861316
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.6639234   0.3900798   1.1300104
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1                 1.1460177   0.7375598   1.7806780
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.4390427   0.1559916   1.2356981
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.8009653   0.2969105   2.1607368
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.8828596   0.3133940   2.4870965
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.5054694   0.1069478   2.3890095
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.6682168   0.3109411   1.4360071
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.5428666   0.2071108   1.4229298
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.4419129   0.1917778   1.0182983
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.9615696   0.3624788   2.5508144
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.9219231   0.3971760   2.1399636
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1                 1.0459831   0.4550444   2.4043379
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.8348312   0.3665343   1.9014406
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1029759   0.8529426   1.4263044
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1135595   0.8681635   1.4283195
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.1968452   0.9273358   1.5446817
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.3002693   1.0153791   1.6650926
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.6528323   1.3171030   2.0741388
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.2426182   0.9749487   1.5837756
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1214271   0.8775777   1.4330341
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7023114   0.5313411   0.9282951
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9763910   0.7467640   1.2766273
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9147096   0.7028320   1.1904605
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7876063   0.5987421   1.0360448
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8602767   0.7406167   0.9992700
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.6498498   0.5594297   0.7548845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.5697364   0.4801132   0.6760896
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.7281894   0.6039158   0.8780361
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.6803723   0.5576804   0.8300569
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7259024   0.6110620   0.8623254
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8848903   0.7683465   1.0191117
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8766076   0.7710731   0.9965863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0133463   0.8967599   1.1450899
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1239291   0.9971618   1.2668121
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0727167   0.9491777   1.2123348


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0143774   -0.1476551    0.1189002
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0032904   -0.0623284    0.0689093
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0308600   -0.1329672    0.0712471
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003344   -0.0428972    0.0435659
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0021804   -0.0419238    0.0462846
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0052096   -0.0517005    0.0412813
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0301683   -0.0877156    0.0273791
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0210136   -0.0364969   -0.0055302
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0047446   -0.0136000    0.0230893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0218653   -0.0373273   -0.0064034
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0007693   -0.0652700    0.0637315
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0148441   -0.0535343    0.0238461
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0043295   -0.0175771    0.0089181
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0069980   -0.0070665    0.0210625
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0187842   -0.0329587   -0.0046097


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0577915   -0.7552536    0.3625292
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0099492   -0.2096216    0.1896635
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0990355   -0.4808036    0.1843084
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0033522   -0.5395662    0.3548138
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0102681   -0.2208276    0.1976186
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0476451   -0.5731823    0.3023312
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.2029624   -0.6590601    0.1277480
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.5331325   -0.9541875   -0.2027993
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0294665   -0.0914156    0.1369601
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1190096   -0.2065991   -0.0377785
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0051397   -0.5433859    0.3453965
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1274938   -0.5136818    0.1601654
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.3047439   -1.6446168    0.3562936
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0769999   -0.0914324    0.2194394
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1281040   -0.2292623   -0.0352702
