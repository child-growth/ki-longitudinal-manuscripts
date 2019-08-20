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

agecat        studyid                    country                        brthmon    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0        7     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1       17     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       12     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0        5     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1       17     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0        5     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        6     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0        7     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1       16     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1       12     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       11     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1       17     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       16     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       17     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        6     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        6     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0       10     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        8     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       16     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        5     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       23     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        9     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        4     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       16     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       14     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     1       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     0        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     1       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     1       14     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     0        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     1       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     0       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     1       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    0        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    1       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    1       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    0        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    1       12     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        8     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       14     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       13     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        7     240
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       18     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1       24     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                     0        7     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                     1       16     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                     0       10     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                     1       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                     0        8     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                     1       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                     0        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                     1       19     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                     0        6     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                     1       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                     0        5     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                     1       19     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                     0       10     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                     1        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                     0        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                     1       14     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                    0       16     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                    1       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                    0        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                    1       24     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                    0        8     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                    1       15     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       17     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       25     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1       18     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        6     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0        8     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        7     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        4     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       11     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       11     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1       15     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        6     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        6     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       14     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1       11     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       10     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1       21     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1       19     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       18     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1       27     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       26     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0        4     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1       15     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        2     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0        3     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1       17     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0        1     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1       18     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1       18     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0        2     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1       10     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0        4     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1       19     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0        1     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1       23     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0        2     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1       25     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1       29     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0        0     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0        0     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1       39     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0        0     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1       25     373
0-24 months   ki1000108-IRC              INDIA                          1                     0       11     410
0-24 months   ki1000108-IRC              INDIA                          1                     1       27     410
0-24 months   ki1000108-IRC              INDIA                          2                     0        8     410
0-24 months   ki1000108-IRC              INDIA                          2                     1       20     410
0-24 months   ki1000108-IRC              INDIA                          3                     0        9     410
0-24 months   ki1000108-IRC              INDIA                          3                     1       18     410
0-24 months   ki1000108-IRC              INDIA                          4                     0        4     410
0-24 months   ki1000108-IRC              INDIA                          4                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          5                     0        5     410
0-24 months   ki1000108-IRC              INDIA                          5                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          6                     0       16     410
0-24 months   ki1000108-IRC              INDIA                          6                     1       21     410
0-24 months   ki1000108-IRC              INDIA                          7                     0       14     410
0-24 months   ki1000108-IRC              INDIA                          7                     1       22     410
0-24 months   ki1000108-IRC              INDIA                          8                     0       21     410
0-24 months   ki1000108-IRC              INDIA                          8                     1       23     410
0-24 months   ki1000108-IRC              INDIA                          9                     0        9     410
0-24 months   ki1000108-IRC              INDIA                          9                     1       18     410
0-24 months   ki1000108-IRC              INDIA                          10                    0       20     410
0-24 months   ki1000108-IRC              INDIA                          10                    1       18     410
0-24 months   ki1000108-IRC              INDIA                          11                    0       16     410
0-24 months   ki1000108-IRC              INDIA                          11                    1       24     410
0-24 months   ki1000108-IRC              INDIA                          12                    0       14     410
0-24 months   ki1000108-IRC              INDIA                          12                    1       38     410
0-24 months   ki1000109-EE               PAKISTAN                       1                     0        7     379
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       88     379
0-24 months   ki1000109-EE               PAKISTAN                       2                     0        8     379
0-24 months   ki1000109-EE               PAKISTAN                       2                     1       59     379
0-24 months   ki1000109-EE               PAKISTAN                       3                     0        5     379
0-24 months   ki1000109-EE               PAKISTAN                       3                     1       37     379
0-24 months   ki1000109-EE               PAKISTAN                       4                     0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       4                     1       15     379
0-24 months   ki1000109-EE               PAKISTAN                       5                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       5                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       6                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       6                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       10                    0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       10                    1        3     379
0-24 months   ki1000109-EE               PAKISTAN                       11                    0        6     379
0-24 months   ki1000109-EE               PAKISTAN                       11                    1       64     379
0-24 months   ki1000109-EE               PAKISTAN                       12                    0        5     379
0-24 months   ki1000109-EE               PAKISTAN                       12                    1       80     379
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     0        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     1       14     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     0        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     1       20     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       20     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     1       33     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       18     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     1       31     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     0        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     1       26     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       17     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     1       20     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       11     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        0     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        4     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       35    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       78    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       33    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1       58    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       28    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1       54    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       18    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1       57    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       30    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1       71    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       39    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1       70    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0       33    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1      103    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0       42    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1      140    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0       71    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1      121    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0       48    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1      120    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0       50    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1       92    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0       46    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1       96    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        4     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       10     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        2     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        2     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0        1     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1       29     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1       54     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1       58     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1       43     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0        5     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       33     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       23     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       50     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       19     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1       39     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       26     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1       33     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       18     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1       35     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       16     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1       33     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       15     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1       35     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       14     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1       27     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0       14     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1       27     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       15     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1       33     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       17     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1       32     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       14     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1       39     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       20     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1       35     629
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      108    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       63    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      125    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       53    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      106    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       58    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      114    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       76    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      124    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       61    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      110    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       56    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      138    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       80    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      158    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       74    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      137    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       79    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      165    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       85    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      142    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       79    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      140    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       65    2396
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      158    2915
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1      137    2915
0-24 months   ki1101329-Keneba           GAMBIA                         2                     0      127    2915
0-24 months   ki1101329-Keneba           GAMBIA                         2                     1      129    2915
0-24 months   ki1101329-Keneba           GAMBIA                         3                     0      149    2915
0-24 months   ki1101329-Keneba           GAMBIA                         3                     1      157    2915
0-24 months   ki1101329-Keneba           GAMBIA                         4                     0       98    2915
0-24 months   ki1101329-Keneba           GAMBIA                         4                     1       99    2915
0-24 months   ki1101329-Keneba           GAMBIA                         5                     0       92    2915
0-24 months   ki1101329-Keneba           GAMBIA                         5                     1      112    2915
0-24 months   ki1101329-Keneba           GAMBIA                         6                     0       74    2915
0-24 months   ki1101329-Keneba           GAMBIA                         6                     1       89    2915
0-24 months   ki1101329-Keneba           GAMBIA                         7                     0       62    2915
0-24 months   ki1101329-Keneba           GAMBIA                         7                     1       79    2915
0-24 months   ki1101329-Keneba           GAMBIA                         8                     0      116    2915
0-24 months   ki1101329-Keneba           GAMBIA                         8                     1      120    2915
0-24 months   ki1101329-Keneba           GAMBIA                         9                     0      114    2915
0-24 months   ki1101329-Keneba           GAMBIA                         9                     1      139    2915
0-24 months   ki1101329-Keneba           GAMBIA                         10                    0      166    2915
0-24 months   ki1101329-Keneba           GAMBIA                         10                    1      184    2915
0-24 months   ki1101329-Keneba           GAMBIA                         11                    0      134    2915
0-24 months   ki1101329-Keneba           GAMBIA                         11                    1      120    2915
0-24 months   ki1101329-Keneba           GAMBIA                         12                    0      131    2915
0-24 months   ki1101329-Keneba           GAMBIA                         12                    1      129    2915
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0        9     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1       20     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       19     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        7     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       17     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1       18     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1       10     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0        7     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        8     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0        4     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0       11     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       14     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1       19     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      212    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      111    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0      124    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1       57    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0      123    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1       74    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0      123    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1       86    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0      139    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1       79    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0      127    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1       65    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0      120    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1       76    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0      197    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1      106    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0      251    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1      160    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0      250    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1      122    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0      211    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1      131    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0      205    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1      116    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       39     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       90     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0       71     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1      164     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0       86     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1      151     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     602
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     0        4     277
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     1       26     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     0        3     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     0        3     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     0        3     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        1     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        8     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     0        2     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     1       15     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     0        2     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     1       22     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     0        2     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    0        6     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    1       21     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    1       23     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    0        1     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    1       27     277
0-24 months   ki1114097-CMIN             BRAZIL                         1                     0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                     1        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     1        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     1        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    1        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    1        5     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0       86    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       65    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0       62    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1       53    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0       75    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1       44    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       55    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1       47    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0       58    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1       54    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       50    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1       35    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       59    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1       41    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0       75    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1       48    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0       89    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1       74    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0       90    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       66    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0       78    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1       59    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0       84    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       60    1507
0-24 months   ki1114097-CMIN             PERU                           1                     0       35     929
0-24 months   ki1114097-CMIN             PERU                           1                     1       15     929
0-24 months   ki1114097-CMIN             PERU                           2                     0       50     929
0-24 months   ki1114097-CMIN             PERU                           2                     1       31     929
0-24 months   ki1114097-CMIN             PERU                           3                     0       62     929
0-24 months   ki1114097-CMIN             PERU                           3                     1       36     929
0-24 months   ki1114097-CMIN             PERU                           4                     0       52     929
0-24 months   ki1114097-CMIN             PERU                           4                     1       40     929
0-24 months   ki1114097-CMIN             PERU                           5                     0       50     929
0-24 months   ki1114097-CMIN             PERU                           5                     1       43     929
0-24 months   ki1114097-CMIN             PERU                           6                     0       51     929
0-24 months   ki1114097-CMIN             PERU                           6                     1       32     929
0-24 months   ki1114097-CMIN             PERU                           7                     0       41     929
0-24 months   ki1114097-CMIN             PERU                           7                     1       34     929
0-24 months   ki1114097-CMIN             PERU                           8                     0       57     929
0-24 months   ki1114097-CMIN             PERU                           8                     1       30     929
0-24 months   ki1114097-CMIN             PERU                           9                     0       39     929
0-24 months   ki1114097-CMIN             PERU                           9                     1       33     929
0-24 months   ki1114097-CMIN             PERU                           10                    0       40     929
0-24 months   ki1114097-CMIN             PERU                           10                    1       26     929
0-24 months   ki1114097-CMIN             PERU                           11                    0       38     929
0-24 months   ki1114097-CMIN             PERU                           11                    1       22     929
0-24 months   ki1114097-CMIN             PERU                           12                    0       49     929
0-24 months   ki1114097-CMIN             PERU                           12                    1       23     929
0-24 months   ki1114097-CONTENT          PERU                           1                     0       10     215
0-24 months   ki1114097-CONTENT          PERU                           1                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                     0       14     215
0-24 months   ki1114097-CONTENT          PERU                           2                     1        4     215
0-24 months   ki1114097-CONTENT          PERU                           3                     0       23     215
0-24 months   ki1114097-CONTENT          PERU                           3                     1        7     215
0-24 months   ki1114097-CONTENT          PERU                           4                     0       10     215
0-24 months   ki1114097-CONTENT          PERU                           4                     1        9     215
0-24 months   ki1114097-CONTENT          PERU                           5                     0       11     215
0-24 months   ki1114097-CONTENT          PERU                           5                     1        3     215
0-24 months   ki1114097-CONTENT          PERU                           6                     0        6     215
0-24 months   ki1114097-CONTENT          PERU                           6                     1        7     215
0-24 months   ki1114097-CONTENT          PERU                           7                     0       21     215
0-24 months   ki1114097-CONTENT          PERU                           7                     1        7     215
0-24 months   ki1114097-CONTENT          PERU                           8                     0       15     215
0-24 months   ki1114097-CONTENT          PERU                           8                     1        8     215
0-24 months   ki1114097-CONTENT          PERU                           9                     0       18     215
0-24 months   ki1114097-CONTENT          PERU                           9                     1        8     215
0-24 months   ki1114097-CONTENT          PERU                           10                    0       10     215
0-24 months   ki1114097-CONTENT          PERU                           10                    1        4     215
0-24 months   ki1114097-CONTENT          PERU                           11                    0        4     215
0-24 months   ki1114097-CONTENT          PERU                           11                    1        5     215
0-24 months   ki1114097-CONTENT          PERU                           12                    0       10     215
0-24 months   ki1114097-CONTENT          PERU                           12                    1        1     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                     0      808   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                     1      218   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                     0      778   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                     1      205   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                     0      933   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                     1      212   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                     0      986   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                     1      177   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                     0     1009   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                     1      165   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                     0     1030   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                     1      181   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                     0     1354   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                     1      236   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                     0     1358   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                     1      230   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                     0     1374   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                     1      253   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                    0     1500   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                    1      314   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                    0     1397   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                    1      305   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                    0     1540   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                    1      334   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      807   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      556   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      624   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      449   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      701   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      504   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      599   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1      409   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      580   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1      458   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      656   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      498   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      706   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      475   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      765   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      501   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0      863   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      444   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      662   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1      390   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      763   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1      437   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      765   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      461   14073
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       24     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       44     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       18     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     1       28     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       10     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     1       16     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       17     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     1       22     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       21     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     1       23     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       11     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     1       23     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       24     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     1       38     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       38     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     1       55     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       35     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     1       58     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    0       39     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    1       96     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    0       37     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    1       68     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       31     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    1       64     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1224   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1315   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1057   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1012   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1365   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1     1068   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1002   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1      774   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0      684   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1      642   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0      744   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1      659   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0      840   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1      736   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1110   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1     1044   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1474   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1     1325   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1444   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1     1524   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1360   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1     1690   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0     1483   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1     1660   27236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      398    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      518    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      431    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1      593    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      303    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1      470    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      272    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1      369    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      184    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1      276    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      195    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1      342    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      230    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1      325    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      195    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1      208    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0       71    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1       62    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        6     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     0       13     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     1       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     0       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     1       13     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     0       21     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     1        1     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     0       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     1       10     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     0        6     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     0       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     1        8     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     0       16     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     1       10     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     0       16     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     1        7     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    0       16     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    1        9     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    0       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    0       20     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    1        8     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       13     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     1        5     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     0       16     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     0       18     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     1        5     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     0        6     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     1        3     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     0       13     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     1        5     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     0       16     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     1        5     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     0       24     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     1        8     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    1        4     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        9     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     1        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     0       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     0        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     0       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     0       14     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     1       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     1        9     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     0       16     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     1        7     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    1       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    0       14     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    1       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    0       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    1        8     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        6     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     0       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     1        5     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     1        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     1        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    1        6     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    0       13     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    1        4     240
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       23     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1       19     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                     0       11     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                     1       12     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                     0       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                     1        9     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                     0       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                     1        7     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                     0       16     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                     1       12     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                     0        9     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                     1        8     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                     0       12     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                     1       12     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                     0       15     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                     1        4     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                     0       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                     1        9     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                    0       19     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                    1        8     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                    0       13     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                    1       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                    0       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                    1        9     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       28     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       14     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       21     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        9     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       14     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        4     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       11     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        4     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       13     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        3     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       15     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        8     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       13     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1       13     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        7     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        5     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       19     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        6     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       19     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1       12     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       15     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1       16     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       26     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1       19     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       13     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       17     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       14     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0        8     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1       11     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        5     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        5     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       14     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        6     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       12     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       13     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1       10     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0        8     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        4     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0       14     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1        9     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0        8     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1       16     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0       20     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       22     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1       12     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       20     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     0        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       28     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     0       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       17     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     1       21     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     1       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        8     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     1       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       13     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    1       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       20     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    1       21     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    0        8     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    1       17     368
0-6 months    ki1000108-IRC              INDIA                          1                     0       23     410
0-6 months    ki1000108-IRC              INDIA                          1                     1       15     410
0-6 months    ki1000108-IRC              INDIA                          2                     0       13     410
0-6 months    ki1000108-IRC              INDIA                          2                     1       15     410
0-6 months    ki1000108-IRC              INDIA                          3                     0       16     410
0-6 months    ki1000108-IRC              INDIA                          3                     1       11     410
0-6 months    ki1000108-IRC              INDIA                          4                     0       11     410
0-6 months    ki1000108-IRC              INDIA                          4                     1       10     410
0-6 months    ki1000108-IRC              INDIA                          5                     0       11     410
0-6 months    ki1000108-IRC              INDIA                          5                     1       11     410
0-6 months    ki1000108-IRC              INDIA                          6                     0       23     410
0-6 months    ki1000108-IRC              INDIA                          6                     1       14     410
0-6 months    ki1000108-IRC              INDIA                          7                     0       20     410
0-6 months    ki1000108-IRC              INDIA                          7                     1       16     410
0-6 months    ki1000108-IRC              INDIA                          8                     0       31     410
0-6 months    ki1000108-IRC              INDIA                          8                     1       13     410
0-6 months    ki1000108-IRC              INDIA                          9                     0       15     410
0-6 months    ki1000108-IRC              INDIA                          9                     1       12     410
0-6 months    ki1000108-IRC              INDIA                          10                    0       25     410
0-6 months    ki1000108-IRC              INDIA                          10                    1       13     410
0-6 months    ki1000108-IRC              INDIA                          11                    0       25     410
0-6 months    ki1000108-IRC              INDIA                          11                    1       15     410
0-6 months    ki1000108-IRC              INDIA                          12                    0       23     410
0-6 months    ki1000108-IRC              INDIA                          12                    1       29     410
0-6 months    ki1000109-EE               PAKISTAN                       1                     0       19     379
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       76     379
0-6 months    ki1000109-EE               PAKISTAN                       2                     0       19     379
0-6 months    ki1000109-EE               PAKISTAN                       2                     1       48     379
0-6 months    ki1000109-EE               PAKISTAN                       3                     0       18     379
0-6 months    ki1000109-EE               PAKISTAN                       3                     1       24     379
0-6 months    ki1000109-EE               PAKISTAN                       4                     0        2     379
0-6 months    ki1000109-EE               PAKISTAN                       4                     1       14     379
0-6 months    ki1000109-EE               PAKISTAN                       5                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       5                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       6                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       6                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       10                    0        2     379
0-6 months    ki1000109-EE               PAKISTAN                       10                    1        2     379
0-6 months    ki1000109-EE               PAKISTAN                       11                    0       18     379
0-6 months    ki1000109-EE               PAKISTAN                       11                    1       52     379
0-6 months    ki1000109-EE               PAKISTAN                       12                    0       21     379
0-6 months    ki1000109-EE               PAKISTAN                       12                    1       64     379
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     1        8     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     0        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     1        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     0        8     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     1       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     0        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     1       20     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     0       23     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     1       30     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     0       18     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     1       31     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     0       10     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     1       24     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     0       21     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     1       16     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     0       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     1        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    0        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    0        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    1        3     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     0       65    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     1       48    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     0       53    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     1       38    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     0       48    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     1       34    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     0       42    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     1       33    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     0       59    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     1       42    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     0       60    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     1       49    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     0       67    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     1       67    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     0       94    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     1       88    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     0      129    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     1       63    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    0       98    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    1       70    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    0       87    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    1       55    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    0       77    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    1       64    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       16     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       10     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       27     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        9     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                     0       12     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        9     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        3     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                     0       11     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        3     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                     0       13     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                     1       12     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                     0       26     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                     1       11     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       44     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                     1       23     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                     0       34     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                     1       31     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                    0       26     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                    1       24     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                    0       19     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                    1       14     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    0       23     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       15     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0       38     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1       35     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     0       39     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     1       19     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     0       46     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     1       13     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     0       36     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     1       17     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     0       35     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     1       14     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     0       29     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     1       21     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     0       25     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     1       16     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     0       27     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     1       14     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     0       28     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     1       20     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    0       34     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    1       15     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    0       29     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    1       24     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    0       43     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    1       12     629
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      144    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       27    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      146    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       32    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      138    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       26    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      150    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       40    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      147    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       38    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      135    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       31    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      169    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       49    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      186    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       46    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      167    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       49    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      201    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       49    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      176    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       45    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      170    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       35    2396
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      186    2465
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       73    2465
0-6 months    ki1101329-Keneba           GAMBIA                         2                     0      158    2465
0-6 months    ki1101329-Keneba           GAMBIA                         2                     1       58    2465
0-6 months    ki1101329-Keneba           GAMBIA                         3                     0      190    2465
0-6 months    ki1101329-Keneba           GAMBIA                         3                     1       72    2465
0-6 months    ki1101329-Keneba           GAMBIA                         4                     0      118    2465
0-6 months    ki1101329-Keneba           GAMBIA                         4                     1       49    2465
0-6 months    ki1101329-Keneba           GAMBIA                         5                     0      114    2465
0-6 months    ki1101329-Keneba           GAMBIA                         5                     1       55    2465
0-6 months    ki1101329-Keneba           GAMBIA                         6                     0       97    2465
0-6 months    ki1101329-Keneba           GAMBIA                         6                     1       44    2465
0-6 months    ki1101329-Keneba           GAMBIA                         7                     0       64    2465
0-6 months    ki1101329-Keneba           GAMBIA                         7                     1       41    2465
0-6 months    ki1101329-Keneba           GAMBIA                         8                     0      133    2465
0-6 months    ki1101329-Keneba           GAMBIA                         8                     1       65    2465
0-6 months    ki1101329-Keneba           GAMBIA                         9                     0      143    2465
0-6 months    ki1101329-Keneba           GAMBIA                         9                     1       71    2465
0-6 months    ki1101329-Keneba           GAMBIA                         10                    0      183    2465
0-6 months    ki1101329-Keneba           GAMBIA                         10                    1      107    2465
0-6 months    ki1101329-Keneba           GAMBIA                         11                    0      153    2465
0-6 months    ki1101329-Keneba           GAMBIA                         11                    1       65    2465
0-6 months    ki1101329-Keneba           GAMBIA                         12                    0      156    2465
0-6 months    ki1101329-Keneba           GAMBIA                         12                    1       70    2465
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     0       16     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     1       13     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     1        3     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     0       16     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     1        9     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     0       19     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     1       11     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     0       23     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     1       12     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     0       16     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     1        9     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     1        6     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     0       10     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     1        5     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     0        9     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     1        6     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    1        5     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    0       13     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    1        7     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    0       24     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    1        7     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     0       96     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     1       33     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     0      167     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     1       68     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     0      172     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     1       65     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    1        0     602
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     0       11     277
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     1       19     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     0       17     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     1       10     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     0       11     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     1        9     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     0       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     1       11     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     0        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     1       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     0        2     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     1        7     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     0        9     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     1        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     0        5     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     1       19     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     0        9     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     1       13     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    0       14     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    1       13     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    0       14     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    1       16     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    0        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    1       20     277
0-6 months    ki1114097-CMIN             BRAZIL                         1                     0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     0        6     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     0       12     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     1        2     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     0        3     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    0       12     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    1        4     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    0       10     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    1        2     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     0       98     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     1       17     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     0       63     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     1       17     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     0       62     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     1       11     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     0       50     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     1        6     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     0       54     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     1       11     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     0       53     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     1        4     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     0       57     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     1        6     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     0       51     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     1       10     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     0       79     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     1       23     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    0       80     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    1       16     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    0       77     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    1        9     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    0       95     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    1       16     965
0-6 months    ki1114097-CMIN             PERU                           1                     0       42     699
0-6 months    ki1114097-CMIN             PERU                           1                     1        1     699
0-6 months    ki1114097-CMIN             PERU                           2                     0       57     699
0-6 months    ki1114097-CMIN             PERU                           2                     1       10     699
0-6 months    ki1114097-CMIN             PERU                           3                     0       63     699
0-6 months    ki1114097-CMIN             PERU                           3                     1        9     699
0-6 months    ki1114097-CMIN             PERU                           4                     0       50     699
0-6 months    ki1114097-CMIN             PERU                           4                     1       12     699
0-6 months    ki1114097-CMIN             PERU                           5                     0       56     699
0-6 months    ki1114097-CMIN             PERU                           5                     1        9     699
0-6 months    ki1114097-CMIN             PERU                           6                     0       50     699
0-6 months    ki1114097-CMIN             PERU                           6                     1        8     699
0-6 months    ki1114097-CMIN             PERU                           7                     0       49     699
0-6 months    ki1114097-CMIN             PERU                           7                     1        8     699
0-6 months    ki1114097-CMIN             PERU                           8                     0       66     699
0-6 months    ki1114097-CMIN             PERU                           8                     1        7     699
0-6 months    ki1114097-CMIN             PERU                           9                     0       46     699
0-6 months    ki1114097-CMIN             PERU                           9                     1       10     699
0-6 months    ki1114097-CMIN             PERU                           10                    0       44     699
0-6 months    ki1114097-CMIN             PERU                           10                    1        9     699
0-6 months    ki1114097-CMIN             PERU                           11                    0       39     699
0-6 months    ki1114097-CMIN             PERU                           11                    1        3     699
0-6 months    ki1114097-CMIN             PERU                           12                    0       47     699
0-6 months    ki1114097-CMIN             PERU                           12                    1        4     699
0-6 months    ki1114097-CONTENT          PERU                           1                     0       10     215
0-6 months    ki1114097-CONTENT          PERU                           1                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                     0       15     215
0-6 months    ki1114097-CONTENT          PERU                           2                     1        3     215
0-6 months    ki1114097-CONTENT          PERU                           3                     0       26     215
0-6 months    ki1114097-CONTENT          PERU                           3                     1        4     215
0-6 months    ki1114097-CONTENT          PERU                           4                     0       10     215
0-6 months    ki1114097-CONTENT          PERU                           4                     1        9     215
0-6 months    ki1114097-CONTENT          PERU                           5                     0       11     215
0-6 months    ki1114097-CONTENT          PERU                           5                     1        3     215
0-6 months    ki1114097-CONTENT          PERU                           6                     0        8     215
0-6 months    ki1114097-CONTENT          PERU                           6                     1        5     215
0-6 months    ki1114097-CONTENT          PERU                           7                     0       23     215
0-6 months    ki1114097-CONTENT          PERU                           7                     1        5     215
0-6 months    ki1114097-CONTENT          PERU                           8                     0       16     215
0-6 months    ki1114097-CONTENT          PERU                           8                     1        7     215
0-6 months    ki1114097-CONTENT          PERU                           9                     0       22     215
0-6 months    ki1114097-CONTENT          PERU                           9                     1        4     215
0-6 months    ki1114097-CONTENT          PERU                           10                    0       10     215
0-6 months    ki1114097-CONTENT          PERU                           10                    1        4     215
0-6 months    ki1114097-CONTENT          PERU                           11                    0        5     215
0-6 months    ki1114097-CONTENT          PERU                           11                    1        4     215
0-6 months    ki1114097-CONTENT          PERU                           12                    0       11     215
0-6 months    ki1114097-CONTENT          PERU                           12                    1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                     0      896   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                     1      129   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                     0      884   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                     1       99   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                     0     1025   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                     1      120   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                     0     1057   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                     1      104   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                     0     1078   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                     1       96   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                     0     1111   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                     1      100   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                     0     1440   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                     1      150   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                     0     1450   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                     1      137   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                     0     1462   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                     1      165   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                    0     1618   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                    1      196   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                    0     1501   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                    1      201   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                    0     1690   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                    1      184   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1005   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      354   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      780   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      290   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      887   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      312   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      736   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     1      270   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      715   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     1      321   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      784   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      370   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      842   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      338   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      923   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      342   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     0     1044   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      263   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      819   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    1      231   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      931   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    1      268   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      960   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      266   14051
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0       18     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1       11     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                     0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                     0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                     1        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                     0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                     1        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                     0        9     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                     1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                     0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                     1        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                     0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                     1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                     0       25     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                     1        7     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                     0       33     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                     1       20     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                    0       40     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                    1       29     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                    0       19     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                    1       11     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                    0       19     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                    1        9     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1423   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1110   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1257   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1      809   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1548   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1      880   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1153   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     1      619   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     0      842   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     1      478   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     0      923   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     1      472   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1030   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     1      544   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1302   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     1      850   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1661   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     1     1132   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1635   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    1     1324   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1557   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    1     1482   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    0     1678   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    1     1461   27170
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     0      499    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     1      290    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     0      600    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     1      335    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     0      464    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     1      266    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     0      405    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     1      209    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     0      301    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     1      153    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     0      343    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     1      191    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     0      374    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     1      176    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     0      266    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     1      127    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    0       94    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    1       37    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    5130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0        4     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1        6     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        4     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       12     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1        9     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0        5     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0        5     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        1     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0        5     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1        5     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       10     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1        6     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0        8     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1        6     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       11     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1        3     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        4     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       11     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1        9     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       12     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       15     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        2     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       13     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       10     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       16     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        6     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0        9     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        3     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       11     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       22     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       17     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       20     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0        8     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        0     168
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        4     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        7     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       11     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       10     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        5     155
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     0        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        4     155
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        3     155
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        3     155
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       10     155
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       10     155
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     1        3     155
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     0        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     1        8     155
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     0        7     155
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    0        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    0        8     155
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    0        7     155
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    1        4     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        5     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0        7     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        7     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       17     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       11     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1        5     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       16     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       13     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       17     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        3     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        1     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       15     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        3     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1        6     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       10     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        3     195
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0       15     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                     0        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                     1        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                     0        9     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                     1        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           4                     0        6     149
6-24 months   ki0047075b-MAL-ED          PERU                           4                     1        6     149
6-24 months   ki0047075b-MAL-ED          PERU                           5                     0        8     149
6-24 months   ki0047075b-MAL-ED          PERU                           5                     1        7     149
6-24 months   ki0047075b-MAL-ED          PERU                           6                     0        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           6                     1        3     149
6-24 months   ki0047075b-MAL-ED          PERU                           7                     0        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           7                     1        7     149
6-24 months   ki0047075b-MAL-ED          PERU                           8                     0        7     149
6-24 months   ki0047075b-MAL-ED          PERU                           8                     1        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           9                     0        9     149
6-24 months   ki0047075b-MAL-ED          PERU                           9                     1        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           10                    0        9     149
6-24 months   ki0047075b-MAL-ED          PERU                           10                    1        3     149
6-24 months   ki0047075b-MAL-ED          PERU                           11                    0        8     149
6-24 months   ki0047075b-MAL-ED          PERU                           11                    1        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           12                    0        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           12                    1        6     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       13     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       11     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0        6     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        2     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0        7     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        3     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        1     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0        8     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        4     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        2     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        4     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        1     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        5     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0        8     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0        7     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        3     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       12     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        8     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        6     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        6     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0        5     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       12     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        4     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0        2     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1       11     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1       11     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0        5     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        8     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0        2     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        6     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1       10     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1        7     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0        2     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1       18     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1       17     145
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        3     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       11     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0        1     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        9     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0        0     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       19     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       20     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0        1     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       18     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0        2     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1       14     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0        4     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1       12     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        2     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        7     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0        0     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1       11     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0        3     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1       10     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0        4     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1       18     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0        0     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1        8     185
6-24 months   ki1000108-IRC              INDIA                          1                     0       11     236
6-24 months   ki1000108-IRC              INDIA                          1                     1       12     236
6-24 months   ki1000108-IRC              INDIA                          2                     0        8     236
6-24 months   ki1000108-IRC              INDIA                          2                     1        5     236
6-24 months   ki1000108-IRC              INDIA                          3                     0        9     236
6-24 months   ki1000108-IRC              INDIA                          3                     1        7     236
6-24 months   ki1000108-IRC              INDIA                          4                     0        4     236
6-24 months   ki1000108-IRC              INDIA                          4                     1        7     236
6-24 months   ki1000108-IRC              INDIA                          5                     0        5     236
6-24 months   ki1000108-IRC              INDIA                          5                     1        6     236
6-24 months   ki1000108-IRC              INDIA                          6                     0       16     236
6-24 months   ki1000108-IRC              INDIA                          6                     1        7     236
6-24 months   ki1000108-IRC              INDIA                          7                     0       14     236
6-24 months   ki1000108-IRC              INDIA                          7                     1        6     236
6-24 months   ki1000108-IRC              INDIA                          8                     0       21     236
6-24 months   ki1000108-IRC              INDIA                          8                     1       10     236
6-24 months   ki1000108-IRC              INDIA                          9                     0        9     236
6-24 months   ki1000108-IRC              INDIA                          9                     1        6     236
6-24 months   ki1000108-IRC              INDIA                          10                    0       20     236
6-24 months   ki1000108-IRC              INDIA                          10                    1        5     236
6-24 months   ki1000108-IRC              INDIA                          11                    0       16     236
6-24 months   ki1000108-IRC              INDIA                          11                    1        9     236
6-24 months   ki1000108-IRC              INDIA                          12                    0       14     236
6-24 months   ki1000108-IRC              INDIA                          12                    1        9     236
6-24 months   ki1000109-EE               PAKISTAN                       1                     0        6      97
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       12      97
6-24 months   ki1000109-EE               PAKISTAN                       2                     0        8      97
6-24 months   ki1000109-EE               PAKISTAN                       2                     1       11      97
6-24 months   ki1000109-EE               PAKISTAN                       3                     0        4      97
6-24 months   ki1000109-EE               PAKISTAN                       3                     1       13      97
6-24 months   ki1000109-EE               PAKISTAN                       4                     0        1      97
6-24 months   ki1000109-EE               PAKISTAN                       4                     1        1      97
6-24 months   ki1000109-EE               PAKISTAN                       5                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       5                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       6                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       6                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       7                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       7                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       8                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       8                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       9                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       9                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       10                    0        1      97
6-24 months   ki1000109-EE               PAKISTAN                       10                    1        1      97
6-24 months   ki1000109-EE               PAKISTAN                       11                    0        6      97
6-24 months   ki1000109-EE               PAKISTAN                       11                    1       12      97
6-24 months   ki1000109-EE               PAKISTAN                       12                    0        5      97
6-24 months   ki1000109-EE               PAKISTAN                       12                    1       16      97
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        2      95
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        1      95
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     0        6      95
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     1        1      95
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     0        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     1        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       18      95
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     1        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       13      95
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     1        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     0        4      95
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     1        2      95
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       14      95
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     1        4      95
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       11      95
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        2      95
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        1      95
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        1      95
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       25     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       30     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       28     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1       20     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       26     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1       20     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       17     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1       24     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       29     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1       29     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       33     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1       21     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0       28     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1       36     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0       38     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1       52     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0       63     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1       58     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0       36     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1       50     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0       40     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1       37     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0       41     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1       32     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        4     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       12     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0        9     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1       17     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0        3     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        9     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        2     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        1     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        1     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        8     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0        1     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1       12     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0        8     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1       18     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       11     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1       31     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0        6     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1       27     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0        5     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1       19     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0        5     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1       12     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0        4     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       18     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       15     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1       20     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       18     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1       20     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       11     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1       18     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1       19     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       10     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1       14     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1       11     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0        9     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1       13     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       10     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1       13     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       13     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1       17     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1       15     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       16     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1       23     345
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       81    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       36    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      101    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       21    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0       85    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       32    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0       77    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       36    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0       89    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       23    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0       88    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       25    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      120    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       31    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      134    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       28    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      112    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       30    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      129    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       36    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      115    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       34    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      109    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       30    1602
6-24 months   ki1101329-Keneba           GAMBIA                         1                     0      143    2017
6-24 months   ki1101329-Keneba           GAMBIA                         1                     1       64    2017
6-24 months   ki1101329-Keneba           GAMBIA                         2                     0      119    2017
6-24 months   ki1101329-Keneba           GAMBIA                         2                     1       71    2017
6-24 months   ki1101329-Keneba           GAMBIA                         3                     0      134    2017
6-24 months   ki1101329-Keneba           GAMBIA                         3                     1       85    2017
6-24 months   ki1101329-Keneba           GAMBIA                         4                     0       90    2017
6-24 months   ki1101329-Keneba           GAMBIA                         4                     1       50    2017
6-24 months   ki1101329-Keneba           GAMBIA                         5                     0       83    2017
6-24 months   ki1101329-Keneba           GAMBIA                         5                     1       57    2017
6-24 months   ki1101329-Keneba           GAMBIA                         6                     0       65    2017
6-24 months   ki1101329-Keneba           GAMBIA                         6                     1       45    2017
6-24 months   ki1101329-Keneba           GAMBIA                         7                     0       60    2017
6-24 months   ki1101329-Keneba           GAMBIA                         7                     1       38    2017
6-24 months   ki1101329-Keneba           GAMBIA                         8                     0      110    2017
6-24 months   ki1101329-Keneba           GAMBIA                         8                     1       55    2017
6-24 months   ki1101329-Keneba           GAMBIA                         9                     0      102    2017
6-24 months   ki1101329-Keneba           GAMBIA                         9                     1       68    2017
6-24 months   ki1101329-Keneba           GAMBIA                         10                    0      150    2017
6-24 months   ki1101329-Keneba           GAMBIA                         10                    1       77    2017
6-24 months   ki1101329-Keneba           GAMBIA                         11                    0      118    2017
6-24 months   ki1101329-Keneba           GAMBIA                         11                    1       55    2017
6-24 months   ki1101329-Keneba           GAMBIA                         12                    0      119    2017
6-24 months   ki1101329-Keneba           GAMBIA                         12                    1       59    2017
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0        8     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        7     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       16     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        4     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       12     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1        6     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       15     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1        5     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       13     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1        6     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0        8     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1        4     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       11     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1        4     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0        5     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        3     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0        2     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1        6     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       12     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1       11     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0        9     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1        6     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       10     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1       12     195
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      212    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      111    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0      124    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1       57    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0      123    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1       74    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0      123    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1       86    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0      139    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1       79    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0      127    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1       65    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0      120    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1       76    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0      197    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1      106    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0      251    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1      160    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0      250    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1      122    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0      211    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1      131    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0      205    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1      116    3265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       36     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       57     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0       69     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1       96     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0       82     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1       86     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     426
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     0        3     111
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     1        7     111
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     0        5     111
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     1       10     111
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     0        2     111
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     1        8     111
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     0        3     111
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     1        9     111
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     0        2     111
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     1        5     111
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        1     111
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        1     111
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     0        2     111
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     1        7     111
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     0        2     111
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     1        3     111
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     0        1     111
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     1        7     111
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    0        5     111
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    1        8     111
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    0        5     111
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    1        7     111
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    0        1     111
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    1        7     111
6-24 months   ki1114097-CMIN             BRAZIL                         1                     0        9     104
6-24 months   ki1114097-CMIN             BRAZIL                         1                     1        4     104
6-24 months   ki1114097-CMIN             BRAZIL                         2                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         2                     1        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         3                     0        9     104
6-24 months   ki1114097-CMIN             BRAZIL                         3                     1        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         4                     0        8     104
6-24 months   ki1114097-CMIN             BRAZIL                         4                     1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         5                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         5                     1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         6                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         6                     1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         7                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         7                     1        0     104
6-24 months   ki1114097-CMIN             BRAZIL                         8                     0       11     104
6-24 months   ki1114097-CMIN             BRAZIL                         8                     1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         9                     0        5     104
6-24 months   ki1114097-CMIN             BRAZIL                         9                     1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         10                    0       10     104
6-24 months   ki1114097-CMIN             BRAZIL                         10                    1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         11                    0        9     104
6-24 months   ki1114097-CMIN             BRAZIL                         11                    1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         12                    0        6     104
6-24 months   ki1114097-CMIN             BRAZIL                         12                    1        3     104
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0       85    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       48    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0       61    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1       36    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0       73    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1       33    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       54    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1       41    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0       57    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1       43    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       49    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1       31    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       57    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1       35    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0       73    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1       38    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0       87    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1       51    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0       89    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       50    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0       78    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1       50    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0       83    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       44    1346
6-24 months   ki1114097-CMIN             PERU                           1                     0       33     797
6-24 months   ki1114097-CMIN             PERU                           1                     1       14     797
6-24 months   ki1114097-CMIN             PERU                           2                     0       44     797
6-24 months   ki1114097-CMIN             PERU                           2                     1       21     797
6-24 months   ki1114097-CMIN             PERU                           3                     0       61     797
6-24 months   ki1114097-CMIN             PERU                           3                     1       27     797
6-24 months   ki1114097-CMIN             PERU                           4                     0       51     797
6-24 months   ki1114097-CMIN             PERU                           4                     1       28     797
6-24 months   ki1114097-CMIN             PERU                           5                     0       48     797
6-24 months   ki1114097-CMIN             PERU                           5                     1       34     797
6-24 months   ki1114097-CMIN             PERU                           6                     0       49     797
6-24 months   ki1114097-CMIN             PERU                           6                     1       24     797
6-24 months   ki1114097-CMIN             PERU                           7                     0       40     797
6-24 months   ki1114097-CMIN             PERU                           7                     1       26     797
6-24 months   ki1114097-CMIN             PERU                           8                     0       54     797
6-24 months   ki1114097-CMIN             PERU                           8                     1       23     797
6-24 months   ki1114097-CMIN             PERU                           9                     0       35     797
6-24 months   ki1114097-CMIN             PERU                           9                     1       23     797
6-24 months   ki1114097-CMIN             PERU                           10                    0       34     797
6-24 months   ki1114097-CMIN             PERU                           10                    1       17     797
6-24 months   ki1114097-CMIN             PERU                           11                    0       33     797
6-24 months   ki1114097-CMIN             PERU                           11                    1       19     797
6-24 months   ki1114097-CMIN             PERU                           12                    0       40     797
6-24 months   ki1114097-CMIN             PERU                           12                    1       19     797
6-24 months   ki1114097-CONTENT          PERU                           1                     0       10     167
6-24 months   ki1114097-CONTENT          PERU                           1                     1        0     167
6-24 months   ki1114097-CONTENT          PERU                           2                     0       14     167
6-24 months   ki1114097-CONTENT          PERU                           2                     1        1     167
6-24 months   ki1114097-CONTENT          PERU                           3                     0       23     167
6-24 months   ki1114097-CONTENT          PERU                           3                     1        3     167
6-24 months   ki1114097-CONTENT          PERU                           4                     0       10     167
6-24 months   ki1114097-CONTENT          PERU                           4                     1        0     167
6-24 months   ki1114097-CONTENT          PERU                           5                     0       11     167
6-24 months   ki1114097-CONTENT          PERU                           5                     1        0     167
6-24 months   ki1114097-CONTENT          PERU                           6                     0        6     167
6-24 months   ki1114097-CONTENT          PERU                           6                     1        2     167
6-24 months   ki1114097-CONTENT          PERU                           7                     0       21     167
6-24 months   ki1114097-CONTENT          PERU                           7                     1        2     167
6-24 months   ki1114097-CONTENT          PERU                           8                     0       15     167
6-24 months   ki1114097-CONTENT          PERU                           8                     1        1     167
6-24 months   ki1114097-CONTENT          PERU                           9                     0       18     167
6-24 months   ki1114097-CONTENT          PERU                           9                     1        4     167
6-24 months   ki1114097-CONTENT          PERU                           10                    0       10     167
6-24 months   ki1114097-CONTENT          PERU                           10                    1        0     167
6-24 months   ki1114097-CONTENT          PERU                           11                    0        4     167
6-24 months   ki1114097-CONTENT          PERU                           11                    1        1     167
6-24 months   ki1114097-CONTENT          PERU                           12                    0       10     167
6-24 months   ki1114097-CONTENT          PERU                           12                    1        1     167
6-24 months   ki1119695-PROBIT           BELARUS                        1                     0      799   14951
6-24 months   ki1119695-PROBIT           BELARUS                        1                     1       89   14951
6-24 months   ki1119695-PROBIT           BELARUS                        2                     0      767   14951
6-24 months   ki1119695-PROBIT           BELARUS                        2                     1      106   14951
6-24 months   ki1119695-PROBIT           BELARUS                        3                     0      920   14951
6-24 months   ki1119695-PROBIT           BELARUS                        3                     1       92   14951
6-24 months   ki1119695-PROBIT           BELARUS                        4                     0      967   14951
6-24 months   ki1119695-PROBIT           BELARUS                        4                     1       73   14951
6-24 months   ki1119695-PROBIT           BELARUS                        5                     0      983   14951
6-24 months   ki1119695-PROBIT           BELARUS                        5                     1       69   14951
6-24 months   ki1119695-PROBIT           BELARUS                        6                     0     1013   14951
6-24 months   ki1119695-PROBIT           BELARUS                        6                     1       81   14951
6-24 months   ki1119695-PROBIT           BELARUS                        7                     0     1321   14951
6-24 months   ki1119695-PROBIT           BELARUS                        7                     1       86   14951
6-24 months   ki1119695-PROBIT           BELARUS                        8                     0     1337   14951
6-24 months   ki1119695-PROBIT           BELARUS                        8                     1       93   14951
6-24 months   ki1119695-PROBIT           BELARUS                        9                     0     1336   14951
6-24 months   ki1119695-PROBIT           BELARUS                        9                     1       88   14951
6-24 months   ki1119695-PROBIT           BELARUS                        10                    0     1478   14951
6-24 months   ki1119695-PROBIT           BELARUS                        10                    1      118   14951
6-24 months   ki1119695-PROBIT           BELARUS                        11                    0     1373   14951
6-24 months   ki1119695-PROBIT           BELARUS                        11                    1      104   14951
6-24 months   ki1119695-PROBIT           BELARUS                        12                    0     1508   14951
6-24 months   ki1119695-PROBIT           BELARUS                        12                    1      150   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      583    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      202    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      451    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      159    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      496    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      192    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      438    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1      139    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      403    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1      137    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      459    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      128    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      487    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      137    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      510    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      159    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0      617    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      181    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      442    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1      159    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      543    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1      169    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      571    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      195    7957
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       23     730
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       33     730
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       18     730
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     1       28     730
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       10     730
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     1       14     730
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       17     730
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     1       19     730
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       19     730
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     1       22     730
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       11     730
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     1       20     730
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       24     730
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     1       37     730
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       37     730
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     1       48     730
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       34     730
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     1       38     730
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    0       34     730
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    1       67     730
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    0       35     730
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    1       57     730
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       30     730
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    1       55     730
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      616   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      205   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0      530   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1      203   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0      751   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      188   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0      631   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1      155   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0      591   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1      164   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0      655   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1      187   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0      694   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1      192   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0      793   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1      194   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0      806   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1      193   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0      771   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1      200   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0      718   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1      208   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0      682   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1      199   10526
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      398    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      228    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      427    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1      258    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      303    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1      204    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      270    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1      160    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      183    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1      123    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      195    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1      151    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      230    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1      149    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      193    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1       81    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0       71    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1       25    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    3649


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/703e205d-fd18-427f-9b94-07a1cad7a902/adf8a209-5a26-4dd9-af3b-b5d2813ba6f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/703e205d-fd18-427f-9b94-07a1cad7a902/adf8a209-5a26-4dd9-af3b-b5d2813ba6f8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/703e205d-fd18-427f-9b94-07a1cad7a902/adf8a209-5a26-4dd9-af3b-b5d2813ba6f8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/703e205d-fd18-427f-9b94-07a1cad7a902/adf8a209-5a26-4dd9-af3b-b5d2813ba6f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.6190476    0.4109549   0.8271403
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.7200000    0.5436626   0.8963374
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.6800000    0.4967987   0.8632013
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.4545455    0.2460840   0.6630069
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                0.7727273    0.5972809   0.9481737
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                0.5454545    0.2506456   0.8402635
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                0.6500000    0.4405672   0.8594328
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                0.6153846    0.4280280   0.8027412
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                0.5652174    0.3622394   0.7681954
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                0.4800000    0.2837899   0.6762101
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                0.5294118    0.2916938   0.7671297
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                0.6071429    0.4259034   0.7883823
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5714286    0.4215174   0.7213397
0-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.6956522    0.5072946   0.8840098
0-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.5652174    0.3622876   0.7681472
0-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.6190476    0.4110044   0.8270909
0-24 months   ki0047075b-MAL-ED          PERU                           5                    NA                0.6785714    0.5053000   0.8518429
0-24 months   ki0047075b-MAL-ED          PERU                           6                    NA                0.6470588    0.4195153   0.8746024
0-24 months   ki0047075b-MAL-ED          PERU                           7                    NA                0.7916667    0.6289205   0.9544129
0-24 months   ki0047075b-MAL-ED          PERU                           8                    NA                0.4736842    0.2488011   0.6985673
0-24 months   ki0047075b-MAL-ED          PERU                           9                    NA                0.6086957    0.4089122   0.8084791
0-24 months   ki0047075b-MAL-ED          PERU                           10                   NA                0.4074074    0.2217652   0.5930496
0-24 months   ki0047075b-MAL-ED          PERU                           11                   NA                0.7272727    0.5750702   0.8794753
0-24 months   ki0047075b-MAL-ED          PERU                           12                   NA                0.6521739    0.4572053   0.8471426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6902655    0.6351830   0.7453480
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.6373626    0.5015763   0.7731489
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.6585366    0.4963041   0.8207690
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.7600000    0.6667804   0.8532196
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.7029703    0.6475550   0.7583856
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.6422018    0.5771387   0.7072650
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.7573529    0.6797235   0.8349824
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.7692308    0.6974214   0.8410401
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.6302083    0.5481571   0.7122596
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.7142857    0.6550437   0.7735277
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.6478873    0.5758398   0.7199349
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.6760563    0.6031229   0.7489898
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6849315    0.5782822   0.7915809
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6724138    0.5515321   0.7932955
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5593220    0.4325396   0.6861045
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6603774    0.5327775   0.7879772
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6734694    0.5420630   0.8048758
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.7000000    0.5728787   0.8271213
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6585366    0.5132707   0.8038025
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.6585366    0.5132707   0.8038025
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.6875000    0.5562696   0.8187304
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.6530612    0.5196787   0.7864437
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.7358491    0.6170601   0.8546380
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.6363636    0.5091310   0.7635963
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3684211    0.2961063   0.4407358
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2977528    0.2305633   0.3649424
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3536585    0.2804705   0.4268465
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.4000000    0.3303265   0.4696735
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.3297297    0.2619723   0.3974872
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.3373494    0.2654100   0.4092888
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.3669725    0.3029786   0.4309664
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.3189655    0.2589793   0.3789517
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.3657407    0.3014968   0.4299846
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.3400000    0.2812673   0.3987327
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.3574661    0.2942674   0.4206647
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.3170732    0.2533601   0.3807863
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4644068    0.4074850   0.5213286
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.5039062    0.4426487   0.5651638
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.5130719    0.4570596   0.5690842
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.5025381    0.4327062   0.5723700
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.5490196    0.4807260   0.6173132
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.5460123    0.4695667   0.6224578
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.5602837    0.4783423   0.6422251
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.5084746    0.4446814   0.5722678
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.5494071    0.4880872   0.6107270
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.5257143    0.4733924   0.5780362
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.4724409    0.4110343   0.5338475
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.4961538    0.4353693   0.5569384
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3436533    0.2809428   0.4063637
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3149171    0.2325476   0.3972866
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.3756345    0.2958412   0.4554278
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.4114833    0.2953356   0.5276309
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.3623853    0.2960236   0.4287470
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.3385417    0.2543744   0.4227089
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.3877551    0.2718523   0.5036579
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.3498350    0.2867564   0.4129136
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.3892944    0.3250567   0.4535321
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.3279570    0.2443829   0.4115311
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3830409    0.2908783   0.4752036
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.3613707   -0.0187158   0.7414573
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4304636    0.3514626   0.5094646
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.4608696    0.3697358   0.5520033
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3697479    0.2829861   0.4565097
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.4607843    0.3640184   0.5575502
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.4821429    0.3895716   0.5747141
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.4117647    0.3071042   0.5164252
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.4100000    0.3135704   0.5064296
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.3902439    0.3040085   0.4764793
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.4539877    0.3775299   0.5304455
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.4230769    0.3455239   0.5006299
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.4306569    0.3477130   0.5136009
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.4166667    0.3361170   0.4972163
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.3000000    0.1729114   0.4270886
0-24 months   ki1114097-CMIN             PERU                           2                    NA                0.3827160    0.2768101   0.4886220
0-24 months   ki1114097-CMIN             PERU                           3                    NA                0.3673469    0.2718499   0.4628440
0-24 months   ki1114097-CMIN             PERU                           4                    NA                0.4347826    0.3334307   0.5361345
0-24 months   ki1114097-CMIN             PERU                           5                    NA                0.4623656    0.3609799   0.5637513
0-24 months   ki1114097-CMIN             PERU                           6                    NA                0.3855422    0.2807751   0.4903093
0-24 months   ki1114097-CMIN             PERU                           7                    NA                0.4533333    0.3406080   0.5660586
0-24 months   ki1114097-CMIN             PERU                           8                    NA                0.3448276    0.2448964   0.4447588
0-24 months   ki1114097-CMIN             PERU                           9                    NA                0.4583333    0.3431811   0.5734856
0-24 months   ki1114097-CMIN             PERU                           10                   NA                0.3939394    0.2759935   0.5118853
0-24 months   ki1114097-CMIN             PERU                           11                   NA                0.3666667    0.2446671   0.4886662
0-24 months   ki1114097-CMIN             PERU                           12                   NA                0.3194444    0.2116875   0.4272014
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2124756    0.1798745   0.2450767
0-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.2085453    0.1727967   0.2442938
0-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.1851528    0.1553580   0.2149477
0-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.1521926    0.1219592   0.1824260
0-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.1405451    0.1113286   0.1697617
0-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.1494633    0.1193822   0.1795443
0-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.1484277    0.1199166   0.1769388
0-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.1448363    0.1224243   0.1672482
0-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.1555009    0.1222994   0.1887024
0-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.1730981    0.1476440   0.1985523
0-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.1792009    0.1522752   0.2061267
0-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.1782284    0.1459602   0.2104966
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4079237    0.3818325   0.4340149
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.4184529    0.3889354   0.4479704
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.4182573    0.3904052   0.4461093
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.4057540    0.3754397   0.4360683
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.4412331    0.4110257   0.4714406
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.4315425    0.4029651   0.4601198
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.4022015    0.3742350   0.4301680
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.3957346    0.3687968   0.4226724
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.3397093    0.3140321   0.3653864
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.3707224    0.3415346   0.3999102
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.3641667    0.3369400   0.3913933
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.3760196    0.3489046   0.4031345
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6470588    0.5334073   0.7607104
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.6086957    0.4675767   0.7498146
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.6153846    0.4282704   0.8024988
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.5641026    0.4083821   0.7198230
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.5227273    0.3750542   0.6704003
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.6764706    0.5191271   0.8338140
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.6129032    0.4915876   0.7342188
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.5913978    0.4914311   0.6913646
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.6236559    0.5251346   0.7221773
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.7111111    0.6346089   0.7876133
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.6476190    0.5561913   0.7390468
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.6736842    0.5793450   0.7680234
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5179204    0.4979752   0.5378657
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4891252    0.4665828   0.5116675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4389642    0.4173079   0.4606206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.4358108    0.4116359   0.4599857
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.4841629    0.4546897   0.5136361
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.4697078    0.4406240   0.4987915
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.4670051    0.4403533   0.4936568
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4846797    0.4623372   0.5070221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4733834    0.4528912   0.4938755
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.5134771    0.4931871   0.5337671
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.5540984    0.5352934   0.5729033
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.5281578    0.5094680   0.5468476
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5882353    0.4225822   0.7538884
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.4000000    0.1517445   0.6482555
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.3870968    0.2153993   0.5587942
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.3636364    0.2213055   0.5059672
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.4722222    0.3089221   0.6355223
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.5833333    0.4220682   0.7445985
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.5897436    0.4351591   0.7443281
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.5294118    0.2918198   0.7670038
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.4761905    0.2622927   0.6900883
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.5517241    0.3704760   0.7329723
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.5121951    0.3589849   0.6654054
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.6800000    0.4968958   0.8631042
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.3947368    0.2391358   0.5503379
0-6 months    ki1000108-IRC              INDIA                          2                    NA                0.5357143    0.3507625   0.7206661
0-6 months    ki1000108-IRC              INDIA                          3                    NA                0.4074074    0.2218454   0.5929694
0-6 months    ki1000108-IRC              INDIA                          4                    NA                0.4761905    0.2623225   0.6900585
0-6 months    ki1000108-IRC              INDIA                          5                    NA                0.5000000    0.2908119   0.7091881
0-6 months    ki1000108-IRC              INDIA                          6                    NA                0.3783784    0.2219182   0.5348385
0-6 months    ki1000108-IRC              INDIA                          7                    NA                0.4444444    0.2819271   0.6069617
0-6 months    ki1000108-IRC              INDIA                          8                    NA                0.2954545    0.1604800   0.4304291
0-6 months    ki1000108-IRC              INDIA                          9                    NA                0.4444444    0.2567856   0.6321033
0-6 months    ki1000108-IRC              INDIA                          10                   NA                0.3421053    0.1910817   0.4931288
0-6 months    ki1000108-IRC              INDIA                          11                   NA                0.3750000    0.2247882   0.5252118
0-6 months    ki1000108-IRC              INDIA                          12                   NA                0.5576923    0.4225360   0.6928486
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4247788    0.3481523   0.5014052
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4175824    0.3469457   0.4882191
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.4146341    0.2925694   0.5366989
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.4400000    0.3026249   0.5773751
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.4158416    0.3208899   0.5107933
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.4495413    0.4022144   0.4968681
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.5000000    0.4062169   0.5937831
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.4835165    0.3845978   0.5824352
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.3281250    0.2874618   0.3687882
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.4166667    0.3490348   0.4842985
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.3873239    0.3154827   0.4591652
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.4539007    0.3802524   0.5275491
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4794521    0.3647595   0.5941446
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3275862    0.2067045   0.4484679
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2203390    0.1144950   0.3261830
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.3207547    0.1949910   0.4465185
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2857143    0.1591248   0.4123037
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.4200000    0.2830862   0.5569138
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3902439    0.2408105   0.5396773
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3414634    0.1961975   0.4867293
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4166667    0.2770858   0.5562475
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3061224    0.1769754   0.4352695
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4528302    0.3187130   0.5869474
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.2181818    0.1089437   0.3274200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1578947    0.1032299   0.2125595
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1797753    0.1233518   0.2361988
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1585366    0.1026253   0.2144478
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2105263    0.1525455   0.2685071
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2054054    0.1471774   0.2636334
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1867470    0.1274511   0.2460428
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2247706    0.1693470   0.2801943
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1982759    0.1469611   0.2495906
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2268519    0.1709901   0.2827136
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1960000    0.1467819   0.2452181
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2036199    0.1505177   0.2567222
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1707317    0.1192128   0.2222506
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2818533    0.2270503   0.3366563
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.2685185    0.2094035   0.3276336
0-6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.2748092    0.2207428   0.3288755
0-6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.2934132    0.2243414   0.3624849
0-6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.3254438    0.2547893   0.3960983
0-6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.3120567    0.2355641   0.3885494
0-6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.3904762    0.2971434   0.4838090
0-6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.3282828    0.2628613   0.3937044
0-6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.3317757    0.2686781   0.3948733
0-6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.3689655    0.3134190   0.4245120
0-6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.2981651    0.2374281   0.3589022
0-6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.3097345    0.2494390   0.3700300
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1258537    0.1002765   0.1514308
0-6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.1007121    0.0759017   0.1255225
0-6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.1048035    0.0845592   0.1250478
0-6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0895780    0.0657409   0.1134150
0-6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0817717    0.0571421   0.1064013
0-6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0825764    0.0630660   0.1020868
0-6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0943396    0.0702037   0.1184755
0-6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0863264    0.0721584   0.1004944
0-6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.1014136    0.0745511   0.1282762
0-6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.1080485    0.0916668   0.1244302
0-6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.1180964    0.0935057   0.1426870
0-6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0981857    0.0782257   0.1181457
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2604857    0.2371500   0.2838213
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2710280    0.2443942   0.2976619
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2602168    0.2353813   0.2850524
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2683897    0.2410063   0.2957731
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.3098456    0.2816858   0.3380054
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.3206239    0.2936953   0.3475525
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2864407    0.2606445   0.3122368
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2703557    0.2458797   0.2948318
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2012242    0.1794882   0.2229601
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2200000    0.1949431   0.2450569
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2235196    0.1999378   0.2471014
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2169657    0.1938927   0.2400388
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4382156    0.4178150   0.4586161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3915779    0.3693992   0.4137567
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3624382    0.3415890   0.3832874
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.3493228    0.3254326   0.3732130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.3621212    0.3341446   0.3900978
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.3383513    0.3105449   0.3661576
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.3456163    0.3203801   0.3708525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.3949814    0.3727160   0.4172468
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4052990    0.3859814   0.4246165
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4474485    0.4269700   0.4679270
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.4876604    0.4683817   0.5069391
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.4654349    0.4464810   0.4843887
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5454545    0.4351180   0.6557911
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4166667    0.2195083   0.6138250
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.4347826    0.2249986   0.6445667
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.5853659    0.4962284   0.6745033
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.5000000    0.3691813   0.6308187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.3888889    0.2978726   0.4799052
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.5625000    0.4175812   0.7074188
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.5777778    0.4958032   0.6597523
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.4793388    0.3623152   0.5963625
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.5813953    0.5016792   0.6611115
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.4805195    0.3554579   0.6055810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.4383562    0.3387073   0.5380050
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5555556    0.3678535   0.7432576
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6250000    0.4570194   0.7929806
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5263158    0.3673315   0.6853001
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6206897    0.4438360   0.7975433
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6129032    0.4411902   0.7846163
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5833333    0.3858067   0.7808599
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4782609    0.2738172   0.6827045
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5909091    0.3851603   0.7966579
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.5652174    0.3623285   0.7681063
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5666667    0.3890872   0.7442461
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5555556    0.3678535   0.7432576
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.5897436    0.4351450   0.7443421
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3076923    0.2240360   0.3913486
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1721311    0.1051251   0.2391372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2735043    0.1927084   0.3543002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3185841    0.2326505   0.4045176
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2053571    0.1305203   0.2801940
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.2212389    0.1446833   0.2977946
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2052980    0.1408529   0.2697431
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1728395    0.1145967   0.2310824
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2112676    0.1441060   0.2784292
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2181818    0.1551436   0.2812200
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2281879    0.1607828   0.2955930
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2158273    0.1474149   0.2842398
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3091787    0.2462052   0.3721523
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3736842    0.3048779   0.4424905
6-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.3881279    0.3235696   0.4526861
6-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.3571429    0.2777521   0.4365336
6-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.4071429    0.3257399   0.4885458
6-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.4090909    0.3171879   0.5009939
6-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.3877551    0.2912647   0.4842455
6-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.3333333    0.2613872   0.4052795
6-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.4000000    0.3263391   0.4736609
6-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.3392070    0.2776032   0.4008109
6-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.3179191    0.2485112   0.3873270
6-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.3314607    0.2622895   0.4006319
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3436533    0.2809428   0.4063637
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3149171    0.2325476   0.3972866
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.3756345    0.2958412   0.4554278
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.4114833    0.2953356   0.5276309
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.3623853    0.2960236   0.4287470
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.3385417    0.2543744   0.4227089
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.3877551    0.2718523   0.5036579
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.3498350    0.2867564   0.4129136
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.3892944    0.3250567   0.4535321
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.3279570    0.2443829   0.4115311
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3830409    0.2908783   0.4752036
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.3613707   -0.0187158   0.7414573
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3609023    0.2792511   0.4425534
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.3711340    0.2749577   0.4673103
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3113208    0.2231410   0.3995005
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.4315789    0.3319437   0.5312142
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.4300000    0.3329309   0.5270691
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.3875000    0.2807044   0.4942956
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.3804348    0.2811919   0.4796776
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.3423423    0.2540388   0.4306459
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.3695652    0.2890022   0.4501282
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.3597122    0.2799004   0.4395241
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.3906250    0.3060724   0.4751776
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.3464567    0.2636683   0.4292451
6-24 months   ki1114097-CMIN             PERU                           1                    NA                0.2978723    0.1670461   0.4286986
6-24 months   ki1114097-CMIN             PERU                           2                    NA                0.3230769    0.2093177   0.4368362
6-24 months   ki1114097-CMIN             PERU                           3                    NA                0.3068182    0.2104034   0.4032329
6-24 months   ki1114097-CMIN             PERU                           4                    NA                0.3544304    0.2488838   0.4599770
6-24 months   ki1114097-CMIN             PERU                           5                    NA                0.4146341    0.3079352   0.5213331
6-24 months   ki1114097-CMIN             PERU                           6                    NA                0.3287671    0.2209370   0.4365972
6-24 months   ki1114097-CMIN             PERU                           7                    NA                0.3939394    0.2759830   0.5118958
6-24 months   ki1114097-CMIN             PERU                           8                    NA                0.2987013    0.1964084   0.4009942
6-24 months   ki1114097-CMIN             PERU                           9                    NA                0.3965517    0.2705790   0.5225245
6-24 months   ki1114097-CMIN             PERU                           10                   NA                0.3333333    0.2038752   0.4627915
6-24 months   ki1114097-CMIN             PERU                           11                   NA                0.3653846    0.2344214   0.4963479
6-24 months   ki1114097-CMIN             PERU                           12                   NA                0.3220339    0.2027314   0.4413364
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1002252    0.0751757   0.1252747
6-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.1214204    0.0905573   0.1522835
6-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0909091    0.0623144   0.1195038
6-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0701923    0.0511370   0.0892476
6-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0655894    0.0437181   0.0874606
6-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0740402    0.0524035   0.0956769
6-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0611230    0.0384318   0.0838141
6-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0650350    0.0460189   0.0840510
6-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0617978    0.0438413   0.0797542
6-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.0739348    0.0565275   0.0913422
6-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.0704130    0.0563077   0.0845183
6-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.0904704    0.0588250   0.1221159
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2573248    0.2267418   0.2879079
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2606557    0.2258166   0.2954949
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2790698    0.2455513   0.3125882
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2409012    0.2060068   0.2757956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2537037    0.2170010   0.2904064
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2180579    0.1846515   0.2514643
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2195513    0.1870707   0.2520318
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2376682    0.2054115   0.2699249
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2268170    0.1977599   0.2558742
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2645591    0.2292917   0.2998265
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2373596    0.2061061   0.2686131
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2545692    0.2237183   0.2854201
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5892857    0.4603466   0.7182248
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.6086957    0.4675640   0.7498273
6-24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.5833333    0.3859580   0.7807087
6-24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.5277778    0.3645879   0.6909677
6-24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.5365854    0.3838435   0.6893272
6-24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.6451613    0.4766168   0.8137058
6-24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.6065574    0.4838820   0.7292328
6-24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.5647059    0.4592335   0.6701783
6-24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.5277778    0.4123851   0.6431705
6-24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.6633663    0.5711431   0.7555896
6-24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.6195652    0.5202912   0.7188392
6-24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.6470588    0.5453967   0.7487210
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2496955    0.2196150   0.2797759
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2769441    0.2413276   0.3125606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2002130    0.1730939   0.2273321
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1972010    0.1683536   0.2260484
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2172185    0.1846911   0.2497460
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2220903    0.1918757   0.2523048
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2167043    0.1870628   0.2463457
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1965552    0.1725277   0.2205828
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1931932    0.1646036   0.2217828
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.2059732    0.1787553   0.2331911
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2246220    0.1949138   0.2543303
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2258797    0.1975632   0.2541962


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6075472   0.5486452   0.6664491
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3459933   0.3269422   0.3650444
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5125214   0.4943731   0.5306698
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.4286662   0.4036720   0.4536605
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3928956   0.3614728   0.4243183
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3966461   0.3885633   0.4047288
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6369048   0.6043650   0.6694445
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4937950   0.4859633   0.5016266
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1949082   0.1790434   0.2107729
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3123732   0.2940736   0.3306728
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2579888   0.2507541   0.2652234
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4107840   0.4033446   0.4182233
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259675   0.2054816   0.2464534
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3589489   0.3380095   0.3798884
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3714710   0.3456477   0.3972943
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3450439   0.3120195   0.3780683
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2459470   0.2364841   0.2554098
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6000000   0.5644377   0.6355623
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2173665   0.2079947   0.2267384


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 1.1630769   0.7673299   1.7629287
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 1.0984615   0.7139947   1.6899534
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 0.7342657   0.4158209   1.2965825
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 1.2482517   0.8320185   1.8727138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 0.8811189   0.4662413   1.6651689
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 1.0500000   0.6591258   1.6726701
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 0.9940828   0.6316218   1.5645448
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 0.9130435   0.5582959   1.4932018
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 0.7753846   0.4567442   1.3163195
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 0.8552036   0.4880566   1.4985419
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                 0.9807692   0.6256400   1.5374789
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 1.2173913   0.8350185   1.7748608
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.9891304   0.6340712   1.5430113
0-24 months   ki0047075b-MAL-ED          PERU                           4                    1                 1.0833333   0.7073007   1.6592817
0-24 months   ki0047075b-MAL-ED          PERU                           5                    1                 1.1875000   0.8234548   1.7124877
0-24 months   ki0047075b-MAL-ED          PERU                           6                    1                 1.1323529   0.7301999   1.7559893
0-24 months   ki0047075b-MAL-ED          PERU                           7                    1                 1.3854167   0.9927328   1.9334300
0-24 months   ki0047075b-MAL-ED          PERU                           8                    1                 0.8289474   0.4819019   1.4259203
0-24 months   ki0047075b-MAL-ED          PERU                           9                    1                 1.0652174   0.6997727   1.6215096
0-24 months   ki0047075b-MAL-ED          PERU                           10                   1                 0.7129630   0.4214232   1.2061894
0-24 months   ki0047075b-MAL-ED          PERU                           11                   1                 1.2727273   0.9098913   1.7802508
0-24 months   ki0047075b-MAL-ED          PERU                           12                   1                 1.1413043   0.7667703   1.6987820
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9233587   0.7544678   1.1300565
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.9540338   0.7177800   1.2680494
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.1010256   0.9550400   1.2693263
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.0184057   0.8978374   1.1551647
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.9303693   0.8226139   1.0522397
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0971908   0.9403022   1.2802561
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1143984   1.0145855   1.2240308
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.9129941   0.8375274   0.9952609
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.0347985   0.9237860   1.1591516
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9386060   0.8171592   1.0781023
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.9794150   0.8638142   1.1104860
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9817241   0.7739289   1.2453112
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8166102   0.6202743   1.0750924
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.9641509   0.7522696   1.2357100
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.9832653   0.7660495   1.2620734
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0220000   0.8045643   1.2981982
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9614634   0.7339553   1.2594934
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9614634   0.7339553   1.2594934
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 1.0037500   0.7845924   1.2841241
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.9534694   0.7375110   1.2326649
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.0743396   0.8584888   1.3444620
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.9290909   0.7211090   1.1970589
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8081862   0.5992717   1.0899313
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9599303   0.7217188   1.2767662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0857143   0.8351141   1.4115144
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.8949807   0.6735946   1.1891283
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9156627   0.6852727   1.2235101
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9960682   0.7660581   1.2951390
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8657635   0.6596932   1.1362046
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9927249   0.7628414   1.2918841
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9228571   0.7105244   1.1986434
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9702650   0.7450139   1.2636197
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8606272   0.6498634   1.1397458
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0850536   0.9130169   1.2895067
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 1.1047898   0.9375521   1.3018589
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 1.0821075   0.8990830   1.3023900
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.1821955   0.9927672   1.4077683
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.1757199   0.9760929   1.4161737
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.2064503   0.9968677   1.4600957
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 1.0948905   0.9187508   1.3047991
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 1.1830299   1.0023102   1.3963340
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.1320125   0.9666776   1.3256254
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 1.0172998   0.8508649   1.2162906
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0683605   0.8983705   1.2705160
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.9163805   0.6815717   1.2320834
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.0930626   0.8343733   1.4319560
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.1973792   0.8532016   1.6803964
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0545086   0.8141899   1.3657605
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9851258   0.7469710   1.2992108
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.1283324   0.7561694   1.6836624
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0179883   0.8294685   1.2493544
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.1328116   0.9130221   1.4055105
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9543253   0.6902449   1.3194401
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1146146   0.8768254   1.4168908
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0515562   0.3663461   3.0183765
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.0706355   0.8174770   1.4021928
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.8589528   0.6376673   1.1570297
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.0704374   0.8099133   1.4147641
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.1200549   0.8587940   1.4607962
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.9565611   0.6991305   1.3087816
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.9524615   0.7067837   1.2835369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.9065666   0.6802183   1.2082343
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.0546484   0.8221105   1.3529608
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.9828402   0.7582831   1.2738975
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.0004492   0.7667548   1.3053698
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.9679487   0.7414589   1.2636233
0-24 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           2                    1                 1.2757202   0.7691345   2.1159654
0-24 months   ki1114097-CMIN             PERU                           3                    1                 1.2244898   0.7448968   2.0128630
0-24 months   ki1114097-CMIN             PERU                           4                    1                 1.4492754   0.8936275   2.3504191
0-24 months   ki1114097-CMIN             PERU                           5                    1                 1.5412186   0.9565315   2.4833001
0-24 months   ki1114097-CMIN             PERU                           6                    1                 1.2851406   0.7769147   2.1258271
0-24 months   ki1114097-CMIN             PERU                           7                    1                 1.5111111   0.9246222   2.4696106
0-24 months   ki1114097-CMIN             PERU                           8                    1                 1.1494253   0.6879718   1.9203963
0-24 months   ki1114097-CMIN             PERU                           9                    1                 1.5277778   0.9335942   2.5001278
0-24 months   ki1114097-CMIN             PERU                           10                   1                 1.3131313   0.7816595   2.2059654
0-24 months   ki1114097-CMIN             PERU                           11                   1                 1.2222222   0.7131941   2.0945590
0-24 months   ki1114097-CMIN             PERU                           12                   1                 1.0648148   0.6195730   1.8300195
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 0.9815020   0.8122380   1.1860394
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.8714074   0.7218048   1.0520169
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.7162826   0.5734023   0.8947659
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.6614648   0.5231815   0.8362980
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.7034371   0.5685127   0.8703830
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.6985633   0.5673924   0.8600584
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.6816606   0.5655266   0.8216434
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.7318530   0.6058641   0.8840410
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.8146728   0.6932405   0.9573760
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.8433953   0.7081198   1.0045131
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.8388180   0.6961577   1.0107130
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0258118   0.9326403   1.1282911
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0253321   0.9348996   1.1245121
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9946810   0.9015108   1.0974804
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0816561   0.9849173   1.1878965
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0579000   0.9648517   1.1599216
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9859724   0.8970857   1.0836665
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9701192   0.8836079   1.0651005
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8327765   0.7542690   0.9194553
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9088034   0.8211373   1.0058289
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8927323   0.8090787   0.9850352
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9217890   0.8370861   1.0150628
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.9407115   0.7032950   1.2582743
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.9510490   0.6694254   1.3511500
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 0.8717949   0.6285169   1.2092376
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.8078512   0.5792432   1.1266832
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.0454545   0.7811317   1.3992201
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.9472141   0.7269770   1.2341719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.9139785   0.7162564   1.1662817
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.9638319   0.7610380   1.2206643
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.0989899   0.8944198   1.3503490
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 1.0008658   0.7989308   1.2538413
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.0411483   0.8316784   1.3033762
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9444022   0.8881564   1.0042099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8475515   0.7977932   0.9004132
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8414629   0.7877969   0.8987846
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9348210   0.8705597   1.0038258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9069110   0.8441000   0.9743960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.9016927   0.8427942   0.9647073
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9358188   0.8817411   0.9932130
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9140079   0.8643966   0.9664665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9914208   0.9409549   1.0445932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0698523   1.0183980   1.1239063
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0197663   0.9699184   1.0721761
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.6800000   0.3439694   1.3443057
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.6580645   0.3891269   1.1128732
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.6181818   0.3816843   1.0012168
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 0.8027778   0.5139401   1.2539441
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 0.9916667   0.6683144   1.4714672
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 1.0025641   0.6823841   1.4729750
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 0.9000000   0.5298383   1.5287682
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 0.8095238   0.4764125   1.3755492
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.9379310   0.6084908   1.4457321
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.8707317   0.5773828   1.3131214
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 1.1560000   0.7829677   1.7067574
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2                    1                 1.3571429   0.8036267   2.2919060
0-6 months    ki1000108-IRC              INDIA                          3                    1                 1.0320988   0.5650922   1.8850515
0-6 months    ki1000108-IRC              INDIA                          4                    1                 1.2063492   0.6636656   2.1927887
0-6 months    ki1000108-IRC              INDIA                          5                    1                 1.2666667   0.7128842   2.2506384
0-6 months    ki1000108-IRC              INDIA                          6                    1                 0.9585586   0.5413920   1.6971706
0-6 months    ki1000108-IRC              INDIA                          7                    1                 1.1259259   0.6576581   1.9276114
0-6 months    ki1000108-IRC              INDIA                          8                    1                 0.7484848   0.4093851   1.3684660
0-6 months    ki1000108-IRC              INDIA                          9                    1                 1.1259259   0.6318950   2.0062022
0-6 months    ki1000108-IRC              INDIA                          10                   1                 0.8666667   0.4795372   1.5663251
0-6 months    ki1000108-IRC              INDIA                          11                   1                 0.9500000   0.5415676   1.6664586
0-6 months    ki1000108-IRC              INDIA                          12                   1                 1.4128205   0.8894596   2.2441287
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9830586   0.8115321   1.1908392
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.9761179   0.7040277   1.3533646
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.0358333   0.7234527   1.4830972
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.9789604   0.7136428   1.3429176
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.0582951   0.8487227   1.3196166
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.1770833   0.9493133   1.4595025
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1382784   0.8941086   1.4491279
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.7724609   0.6287444   0.9490278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9809028   0.7694937   1.2503940
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9118251   0.6527563   1.2737143
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 1.0685579   0.8207102   1.3912537
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.6832512   0.4401434   1.0606368
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.4595642   0.2687126   0.7859670
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6690027   0.4226262   1.0590081
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.5959184   0.3601739   0.9859646
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.8760000   0.5846576   1.3125221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8139373   0.5182102   1.2784270
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7121951   0.4371545   1.1602807
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8690476   0.5758002   1.3116421
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.6384840   0.3931200   1.0369908
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9444744   0.6454278   1.3820785
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4550649   0.2612697   0.7926067
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1385768   0.7135387   1.8167999
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0040650   0.6125357   1.6458577
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3333333   0.8566628   2.0752363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.3009009   0.8315996   2.0350456
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1827309   0.7393823   1.8919204
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.4235474   0.9306310   2.1775411
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2557471   0.8150376   1.9347583
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.4367284   0.9394283   2.1972815
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.2413333   0.8093657   1.9038471
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.2895928   0.8360078   1.9892752
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0813008   0.6831151   1.7115879
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.9526890   0.7102132   1.2779490
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.9750078   0.7393970   1.2856968
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1                 1.0410139   0.7671067   1.4127237
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1                 1.1546567   0.8627411   1.5453445
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1                 1.1071602   0.8097104   1.5138793
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1                 1.3853881   1.0180204   1.8853259
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1                 1.1647295   0.8816714   1.5386626
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.1771220   0.8968100   1.5450499
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.3090694   1.0236853   1.6740133
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1                 1.0578736   0.7982420   1.4019515
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1                 1.0989211   0.8345931   1.4469656
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.8002318   0.6261518   1.0227088
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.8327409   0.6639101   1.0445051
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.7117628   0.5392287   0.9395017
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.6497365   0.4616352   0.9144830
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.6561302   0.4968046   0.8665516
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.7495978   0.5666266   0.9916528
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.6859268   0.5186554   0.9071449
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.8058061   0.6053407   1.0726579
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.8585250   0.6790489   1.0854375
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.9383625   0.7349380   1.1980932
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.7801577   0.5798941   1.0495813
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0404720   0.9109195   1.1884498
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9989681   0.8764009   1.1386766
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0303434   0.8995285   1.1801821
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1894919   1.0469828   1.3513983
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.2308698   1.0886328   1.3916910
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0996409   0.9684647   1.2485846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0378911   0.9137727   1.1788686
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7724962   0.6713521   0.8888785
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.8445763   0.7306465   0.9762712
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8580880   0.7471760   0.9854639
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8329278   0.7248019   0.9571840
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8935738   0.8293117   0.9628154
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8270775   0.7689590   0.8895886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7971483   0.7347605   0.8648334
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8263541   0.7559868   0.9032711
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7721115   0.7035269   0.8473821
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7886901   0.7238901   0.8592908
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9013405   0.8385117   0.9688769
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9248849   0.8659946   0.9877800
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0210693   0.9596253   1.0864475
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1128323   1.0480522   1.1816164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0621139   1.0009788   1.1269830
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7638889   0.4263483   1.3686608
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.7971014   0.4427080   1.4351913
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.0731707   0.7893489   1.4590448
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.9166667   0.6420499   1.3087421
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.7129630   0.5115904   0.9935998
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0312500   0.6858867   1.5505135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.0592593   0.8304253   1.3511513
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.8787879   0.6482930   1.1912332
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.0658915   0.7865893   1.4443683
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8809524   0.5698476   1.3619028
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.8036530   0.5477129   1.1791909
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.1250000   0.7305596   1.7324048
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.9473684   0.6021335   1.4905447
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.1172414   0.7181280   1.7381696
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.1032258   0.7112913   1.7111233
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0500000   0.6507991   1.6940711
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8608696   0.4992322   1.4844723
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.0636364   0.6547677   1.7278225
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 1.0173913   0.6214432   1.6656149
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.0200000   0.6433808   1.6170827
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.0000000   0.6201391   1.6125414
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.0615385   0.6921752   1.6280039
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5594262   0.3479614   0.8994036
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8888889   0.5949579   1.3280325
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0353982   0.7059582   1.5185735
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6674107   0.4235773   1.0516075
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7190265   0.4630486   1.1165116
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.6672185   0.4404667   1.0107020
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.5617284   0.3643214   0.8661001
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6866197   0.4519064   1.0432396
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7090909   0.4768726   1.0543903
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7416107   0.4963869   1.1079796
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7014388   0.4619825   1.0650109
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.2086349   0.9184393   1.5905224
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 1.2553510   0.9650721   1.6329415
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 1.1551339   0.8544644   1.5616032
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.3168527   0.9898833   1.7518236
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.3231534   0.9770462   1.7918651
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.2541454   0.9092657   1.7298362
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 1.0781250   0.8012794   1.4506219
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 1.2937500   0.9831031   1.7025570
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.0971228   0.8351051   1.4413496
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 1.0282695   0.7628446   1.3860466
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0720681   0.8009004   1.4350475
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.9163805   0.6815717   1.2320834
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.0930626   0.8343733   1.4319560
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.1973792   0.8532016   1.6803964
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0545086   0.8141899   1.3657605
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9851258   0.7469710   1.2992108
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.1283324   0.7561694   1.6836624
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0179883   0.8294685   1.2493544
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.1328116   0.9130221   1.4055105
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9543253   0.6902449   1.3194401
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1146146   0.8768254   1.4168908
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0515562   0.3663461   3.0183765
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.0283505   0.7290235   1.4505770
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.8626179   0.6003202   1.2395213
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.1958333   0.8655463   1.6521557
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.1914583   0.8655216   1.6401358
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 1.0736979   0.7516681   1.5336918
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.0541214   0.7463212   1.4888655
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.9485736   0.6730764   1.3368347
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.0240036   0.7479224   1.4019950
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.9967026   0.7260144   1.3683147
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.0823568   0.7913863   1.4803090
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.9599738   0.6907913   1.3340492
6-24 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             PERU                           2                    1                 1.0846154   0.6177343   1.9043634
6-24 months   ki1114097-CMIN             PERU                           3                    1                 1.0300325   0.6002241   1.7676180
6-24 months   ki1114097-CMIN             PERU                           4                    1                 1.1898734   0.6999172   2.0228088
6-24 months   ki1114097-CMIN             PERU                           5                    1                 1.3919861   0.8366866   2.3158314
6-24 months   ki1114097-CMIN             PERU                           6                    1                 1.1037182   0.6379672   1.9094930
6-24 months   ki1114097-CMIN             PERU                           7                    1                 1.3225108   0.7772232   2.2503636
6-24 months   ki1114097-CMIN             PERU                           8                    1                 1.0027829   0.5745569   1.7501723
6-24 months   ki1114097-CMIN             PERU                           9                    1                 1.3312808   0.7742163   2.2891646
6-24 months   ki1114097-CMIN             PERU                           10                   1                 1.1190476   0.6226256   2.0112690
6-24 months   ki1114097-CMIN             PERU                           11                   1                 1.2266484   0.6958594   2.1623134
6-24 months   ki1114097-CMIN             PERU                           12                   1                 1.0811138   0.6086028   1.9204759
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.2114753   0.9010790   1.6287945
6-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.9070480   0.6502833   1.2651964
6-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.7003457   0.5002865   0.9804064
6-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.6544196   0.4550530   0.9411323
6-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.7387384   0.5435993   1.0039276
6-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.6098560   0.3956353   0.9400687
6-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.6488882   0.4683105   0.8990956
6-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.6165888   0.4691618   0.8103426
6-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.7376869   0.5754035   0.9457397
6-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.7025477   0.5497261   0.8978530
6-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.9026714   0.6286816   1.2960706
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0129443   0.8470489   1.2113305
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0845038   0.9158996   1.2841456
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9361755   0.7762193   1.1290940
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9859278   0.8175859   1.1889314
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8474033   0.6980434   1.0287216
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8532067   0.7057311   1.0315001
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9236114   0.7711534   1.1062106
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8814425   0.7401192   1.0497510
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0281132   0.8599604   1.2291459
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9224121   0.7724867   1.1014353
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9892912   0.8348464   1.1723079
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0329381   0.7509663   1.4207843
6-24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.9898990   0.6616001   1.4811061
6-24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 0.8956229   0.6132236   1.3080717
6-24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.9105691   0.6358972   1.3038838
6-24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.0948192   0.7786598   1.5393487
6-24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 1.0293095   0.7640880   1.3865916
6-24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.9582888   0.7187172   1.2777173
6-24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.8956229   0.6573387   1.2202847
6-24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.1257126   0.8686457   1.4588557
6-24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 1.0513834   0.8016409   1.3789304
6-24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.0980392   0.8387479   1.4374881
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1091272   0.9290384   1.3241252
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8018286   0.6688986   0.9611758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7897660   0.6534336   0.9545428
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8699338   0.7211310   1.0494414
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8894444   0.7420089   1.0661751
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8678742   0.7267665   1.0363792
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.7871797   0.6654732   0.9311447
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.7737152   0.6420172   0.9324286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.8248976   0.6917032   0.9837400
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.8995838   0.7548226   1.0721076
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9046206   0.7614336   1.0747337


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0115004   -0.2112727    0.1882718
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0490335   -0.0896696    0.1877366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0011892   -0.0543226    0.0567009
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0203846   -0.1208715    0.0801023
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0224277   -0.0920404    0.0471850
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0481147   -0.0058636    0.1020929
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0186745   -0.0479956    0.0853445
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0017974   -0.0767317    0.0731370
0-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0928956   -0.0312024    0.2169936
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0449903   -0.0712247   -0.0187559
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0112776   -0.0360610    0.0135058
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0101541   -0.1191689    0.0988608
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0241255   -0.0427008   -0.0055501
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0773657   -0.2354350    0.0807036
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0296534   -0.1187314    0.1780382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0007114   -0.0722036    0.0736264
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1296905   -0.2368923   -0.0224887
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0370134   -0.0160280    0.0900549
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0305199   -0.0215100    0.0825498
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0263450   -0.0494895   -0.0032005
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0024969   -0.0246679    0.0196741
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0274316   -0.0465753   -0.0082879
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0423795   -0.1892117    0.1044527
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0183575   -0.1617764    0.1984914
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0817248   -0.1616986   -0.0017509
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0497702   -0.0101477    0.1096881
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0186745   -0.0479956    0.0853445
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0105688   -0.0669955    0.0881330
6-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0471716   -0.0800584    0.1744016
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0233742   -0.0439199   -0.0028285
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0113779   -0.0403661    0.0176104
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0107143   -0.1131374    0.1345660
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0323290   -0.0608100   -0.0038480


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0189293   -0.4070175    0.2621151
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0790274   -0.1742653    0.2776840
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0017198   -0.0818385    0.0788244
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0306744   -0.1935750    0.1099932
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0648213   -0.2862866    0.1185135
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0938783   -0.0178589    0.1933494
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0515403   -0.1478583    0.2163006
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0041929   -0.1951390    0.1562459
0-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.2364384   -0.1547569    0.4951090
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.2686222   -0.4376818   -0.1194426
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0284325   -0.0928530    0.0321906
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0159428   -0.2023759    0.1415830
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0488572   -0.0871894   -0.0118766
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1514393   -0.5070942    0.1202856
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0698730   -0.3546046    0.3613367
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0016720   -0.1852750    0.1591329
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3707970   -0.7157773   -0.0951797
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1899019   -0.1331480    0.4208534
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0977035   -0.0852035    0.2497822
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.2647507   -0.5267144   -0.0477364
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0096783   -0.0993793    0.0727038
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0667787   -0.1144558   -0.0211412
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0842409   -0.4276894    0.1765867
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0319865   -0.3387739    0.3000685
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3616660   -0.7654315   -0.0502442
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1386554   -0.0455346    0.2903969
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0515403   -0.1478583    0.2163006
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0284511   -0.2044890    0.2163422
6-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.1367118   -0.3232599    0.4367951
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.3041491   -0.6066211   -0.0586223
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0462615   -0.1710159    0.0652022
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0178571   -0.2118637    0.2040321
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1487302   -0.2876201   -0.0248218
