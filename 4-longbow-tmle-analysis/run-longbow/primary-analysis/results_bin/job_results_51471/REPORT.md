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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        brthmon    ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       18     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       20     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        5     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       17     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        7     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0       10     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       15     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        5     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       25     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       17     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        6     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       15     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        2     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        2     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       25     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       23     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0        9     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       31     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       22     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        0     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1                0       16     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                1        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                1        1     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                1        6     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                0       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                1        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                0        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                0       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                1       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                0       19     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10               0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10               1        6     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11               0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11               1        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12               0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12               1        1     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        4     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       20     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       19     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       22     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       23     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        1     240
0-24 months   ki0047075b-MAL-ED          PERU                           1                0       36     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                1        5     302
0-24 months   ki0047075b-MAL-ED          PERU                           2                0       22     302
0-24 months   ki0047075b-MAL-ED          PERU                           2                1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           3                0       22     302
0-24 months   ki0047075b-MAL-ED          PERU                           3                1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           4                0       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           4                1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           5                0       27     302
0-24 months   ki0047075b-MAL-ED          PERU                           5                1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           6                0       16     302
0-24 months   ki0047075b-MAL-ED          PERU                           6                1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           7                0       24     302
0-24 months   ki0047075b-MAL-ED          PERU                           7                1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           8                0       18     302
0-24 months   ki0047075b-MAL-ED          PERU                           8                1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           9                0       22     302
0-24 months   ki0047075b-MAL-ED          PERU                           9                1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           10               0       27     302
0-24 months   ki0047075b-MAL-ED          PERU                           10               1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           11               0       32     302
0-24 months   ki0047075b-MAL-ED          PERU                           11               1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           12               0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           12               1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       35     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        7     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       29     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       17     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       14     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       16     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       22     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       26     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       12     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       24     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       26     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        5     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       30     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       39     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        5     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       15     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        5     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       24     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        6     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        9     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       20     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       18     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       11     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        4     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       30     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        4     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       34     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1       10     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1       11     373
0-24 months   ki1000108-IRC              INDIA                          1                0       29     410
0-24 months   ki1000108-IRC              INDIA                          1                1        9     410
0-24 months   ki1000108-IRC              INDIA                          2                0       24     410
0-24 months   ki1000108-IRC              INDIA                          2                1        4     410
0-24 months   ki1000108-IRC              INDIA                          3                0       25     410
0-24 months   ki1000108-IRC              INDIA                          3                1        2     410
0-24 months   ki1000108-IRC              INDIA                          4                0       16     410
0-24 months   ki1000108-IRC              INDIA                          4                1        5     410
0-24 months   ki1000108-IRC              INDIA                          5                0       15     410
0-24 months   ki1000108-IRC              INDIA                          5                1        7     410
0-24 months   ki1000108-IRC              INDIA                          6                0       30     410
0-24 months   ki1000108-IRC              INDIA                          6                1        7     410
0-24 months   ki1000108-IRC              INDIA                          7                0       31     410
0-24 months   ki1000108-IRC              INDIA                          7                1        5     410
0-24 months   ki1000108-IRC              INDIA                          8                0       38     410
0-24 months   ki1000108-IRC              INDIA                          8                1        6     410
0-24 months   ki1000108-IRC              INDIA                          9                0       19     410
0-24 months   ki1000108-IRC              INDIA                          9                1        8     410
0-24 months   ki1000108-IRC              INDIA                          10               0       32     410
0-24 months   ki1000108-IRC              INDIA                          10               1        6     410
0-24 months   ki1000108-IRC              INDIA                          11               0       35     410
0-24 months   ki1000108-IRC              INDIA                          11               1        5     410
0-24 months   ki1000108-IRC              INDIA                          12               0       40     410
0-24 months   ki1000108-IRC              INDIA                          12               1       12     410
0-24 months   ki1000109-EE               PAKISTAN                       1                0       54     379
0-24 months   ki1000109-EE               PAKISTAN                       1                1       41     379
0-24 months   ki1000109-EE               PAKISTAN                       2                0       45     379
0-24 months   ki1000109-EE               PAKISTAN                       2                1       22     379
0-24 months   ki1000109-EE               PAKISTAN                       3                0       24     379
0-24 months   ki1000109-EE               PAKISTAN                       3                1       18     379
0-24 months   ki1000109-EE               PAKISTAN                       4                0        6     379
0-24 months   ki1000109-EE               PAKISTAN                       4                1       10     379
0-24 months   ki1000109-EE               PAKISTAN                       5                0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       5                1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       6                0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       6                1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7                0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7                1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8                0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8                1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9                0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9                1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       10               0        3     379
0-24 months   ki1000109-EE               PAKISTAN                       10               1        1     379
0-24 months   ki1000109-EE               PAKISTAN                       11               0       40     379
0-24 months   ki1000109-EE               PAKISTAN                       11               1       30     379
0-24 months   ki1000109-EE               PAKISTAN                       12               0       63     379
0-24 months   ki1000109-EE               PAKISTAN                       12               1       22     379
0-24 months   ki1000109-ResPak           PAKISTAN                       1                0       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                1        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                0        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                1        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                0       16     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                1        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                0       23     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                1        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                0       42     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                1       11     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                0       45     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                1        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                0       28     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                1        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                0       34     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                1        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                0       20     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                1        0     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10               0        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10               1        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11               0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11               1        0     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12               0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12               1        2     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       84    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1       27    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       72    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1       18    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       64    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1       17    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       56    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1       18    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       77    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1       22    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0       83    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1       26    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0      102    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1       34    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0      131    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1       48    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0      152    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1       39    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0      124    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1       41    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0      102    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1       38    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0      115    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1       23    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        9     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0       23     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1       10     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        1     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0        9     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        5     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0       23     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1       14     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0       45     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0       39     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1       27     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0       33     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0       21     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1       16     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       53     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       20     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       45     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1       12     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       47     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1       12     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       43     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        9     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       38     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1       11     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       40     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1       10     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       31     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1       10     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       26     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1       13     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       40     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        7     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       40     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        9     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       40     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1       13     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       44     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1       11     624
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      160    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       11    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      170    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        8    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      157    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        7    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      183    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        7    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      177    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        8    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      159    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        7    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      204    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1       14    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      221    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1       11    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      206    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1       10    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      236    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1       14    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      208    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1       13    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      196    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        9    2396
0-24 months   ki1101329-Keneba           GAMBIA                         1                0      243    2912
0-24 months   ki1101329-Keneba           GAMBIA                         1                1       52    2912
0-24 months   ki1101329-Keneba           GAMBIA                         2                0      222    2912
0-24 months   ki1101329-Keneba           GAMBIA                         2                1       34    2912
0-24 months   ki1101329-Keneba           GAMBIA                         3                0      264    2912
0-24 months   ki1101329-Keneba           GAMBIA                         3                1       42    2912
0-24 months   ki1101329-Keneba           GAMBIA                         4                0      174    2912
0-24 months   ki1101329-Keneba           GAMBIA                         4                1       22    2912
0-24 months   ki1101329-Keneba           GAMBIA                         5                0      178    2912
0-24 months   ki1101329-Keneba           GAMBIA                         5                1       25    2912
0-24 months   ki1101329-Keneba           GAMBIA                         6                0      130    2912
0-24 months   ki1101329-Keneba           GAMBIA                         6                1       33    2912
0-24 months   ki1101329-Keneba           GAMBIA                         7                0      118    2912
0-24 months   ki1101329-Keneba           GAMBIA                         7                1       23    2912
0-24 months   ki1101329-Keneba           GAMBIA                         8                0      201    2912
0-24 months   ki1101329-Keneba           GAMBIA                         8                1       35    2912
0-24 months   ki1101329-Keneba           GAMBIA                         9                0      214    2912
0-24 months   ki1101329-Keneba           GAMBIA                         9                1       39    2912
0-24 months   ki1101329-Keneba           GAMBIA                         10               0      304    2912
0-24 months   ki1101329-Keneba           GAMBIA                         10               1       46    2912
0-24 months   ki1101329-Keneba           GAMBIA                         11               0      223    2912
0-24 months   ki1101329-Keneba           GAMBIA                         11               1       31    2912
0-24 months   ki1101329-Keneba           GAMBIA                         12               0      209    2912
0-24 months   ki1101329-Keneba           GAMBIA                         12               1       50    2912
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       24     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        5     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       26     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       25     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       29     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       34     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       23     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       21     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       14     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       31     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       22     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0       28     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        5     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      284    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1       39    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                0      163    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                1       18    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                0      169    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                1       28    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                0      178    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                1       31    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                0      191    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                1       27    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                0      169    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                1       23    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                0      162    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                1       34    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                0      269    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                1       34    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                0      358    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                1       53    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               0      327    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               1       45    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               0      299    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               1       43    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               0      289    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               1       32    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0       82     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1       47     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      163     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       72     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      164     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       73     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0     602
0-24 months   ki1114097-CMIN             BANGLADESH                     1                0       20     271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                1        8     271
0-24 months   ki1114097-CMIN             BANGLADESH                     2                0       20     271
0-24 months   ki1114097-CMIN             BANGLADESH                     2                1        7     271
0-24 months   ki1114097-CMIN             BANGLADESH                     3                0       14     271
0-24 months   ki1114097-CMIN             BANGLADESH                     3                1        6     271
0-24 months   ki1114097-CMIN             BANGLADESH                     4                0       13     271
0-24 months   ki1114097-CMIN             BANGLADESH                     4                1        9     271
0-24 months   ki1114097-CMIN             BANGLADESH                     5                0       18     271
0-24 months   ki1114097-CMIN             BANGLADESH                     5                1        2     271
0-24 months   ki1114097-CMIN             BANGLADESH                     6                0        5     271
0-24 months   ki1114097-CMIN             BANGLADESH                     6                1        4     271
0-24 months   ki1114097-CMIN             BANGLADESH                     7                0       13     271
0-24 months   ki1114097-CMIN             BANGLADESH                     7                1        4     271
0-24 months   ki1114097-CMIN             BANGLADESH                     8                0       14     271
0-24 months   ki1114097-CMIN             BANGLADESH                     8                1        8     271
0-24 months   ki1114097-CMIN             BANGLADESH                     9                0       15     271
0-24 months   ki1114097-CMIN             BANGLADESH                     9                1        7     271
0-24 months   ki1114097-CMIN             BANGLADESH                     10               0       15     271
0-24 months   ki1114097-CMIN             BANGLADESH                     10               1       12     271
0-24 months   ki1114097-CMIN             BANGLADESH                     11               0       15     271
0-24 months   ki1114097-CMIN             BANGLADESH                     11               1       14     271
0-24 months   ki1114097-CMIN             BANGLADESH                     12               0       17     271
0-24 months   ki1114097-CMIN             BANGLADESH                     12               1       11     271
0-24 months   ki1114097-CMIN             BRAZIL                         1                0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         10               0       16     119
0-24 months   ki1114097-CMIN             BRAZIL                         10               1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         11               0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         11               1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         12               0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         12               1        1     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0      132    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       19    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0      109    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        6    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0      107    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1       12    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0       93    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        9    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0      106    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        6    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       79    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        6    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       96    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        4    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0      116    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        7    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0      148    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1       15    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0      145    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1       11    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0      126    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1       11    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0      128    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1       16    1507
0-24 months   ki1114097-CMIN             PERU                           1                0       50     929
0-24 months   ki1114097-CMIN             PERU                           1                1        0     929
0-24 months   ki1114097-CMIN             PERU                           2                0       79     929
0-24 months   ki1114097-CMIN             PERU                           2                1        2     929
0-24 months   ki1114097-CMIN             PERU                           3                0       96     929
0-24 months   ki1114097-CMIN             PERU                           3                1        2     929
0-24 months   ki1114097-CMIN             PERU                           4                0       89     929
0-24 months   ki1114097-CMIN             PERU                           4                1        3     929
0-24 months   ki1114097-CMIN             PERU                           5                0       88     929
0-24 months   ki1114097-CMIN             PERU                           5                1        5     929
0-24 months   ki1114097-CMIN             PERU                           6                0       74     929
0-24 months   ki1114097-CMIN             PERU                           6                1        9     929
0-24 months   ki1114097-CMIN             PERU                           7                0       75     929
0-24 months   ki1114097-CMIN             PERU                           7                1        0     929
0-24 months   ki1114097-CMIN             PERU                           8                0       85     929
0-24 months   ki1114097-CMIN             PERU                           8                1        2     929
0-24 months   ki1114097-CMIN             PERU                           9                0       72     929
0-24 months   ki1114097-CMIN             PERU                           9                1        0     929
0-24 months   ki1114097-CMIN             PERU                           10               0       62     929
0-24 months   ki1114097-CMIN             PERU                           10               1        4     929
0-24 months   ki1114097-CMIN             PERU                           11               0       58     929
0-24 months   ki1114097-CMIN             PERU                           11               1        2     929
0-24 months   ki1114097-CMIN             PERU                           12               0       70     929
0-24 months   ki1114097-CMIN             PERU                           12               1        2     929
0-24 months   ki1114097-CONTENT          PERU                           1                0       10     215
0-24 months   ki1114097-CONTENT          PERU                           1                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                0       18     215
0-24 months   ki1114097-CONTENT          PERU                           2                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                0       30     215
0-24 months   ki1114097-CONTENT          PERU                           3                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           4                0       19     215
0-24 months   ki1114097-CONTENT          PERU                           4                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           5                0       12     215
0-24 months   ki1114097-CONTENT          PERU                           5                1        2     215
0-24 months   ki1114097-CONTENT          PERU                           6                0       13     215
0-24 months   ki1114097-CONTENT          PERU                           6                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           7                0       28     215
0-24 months   ki1114097-CONTENT          PERU                           7                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           8                0       22     215
0-24 months   ki1114097-CONTENT          PERU                           8                1        1     215
0-24 months   ki1114097-CONTENT          PERU                           9                0       26     215
0-24 months   ki1114097-CONTENT          PERU                           9                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           10               0       13     215
0-24 months   ki1114097-CONTENT          PERU                           10               1        1     215
0-24 months   ki1114097-CONTENT          PERU                           11               0        9     215
0-24 months   ki1114097-CONTENT          PERU                           11               1        0     215
0-24 months   ki1114097-CONTENT          PERU                           12               0       11     215
0-24 months   ki1114097-CONTENT          PERU                           12               1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                0     1022   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                1        4   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                0      980   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                0     1144   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                1        1   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                0     1163   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                1        0   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                0     1172   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                1        2   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                0     1209   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                1        2   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                0     1587   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                0     1586   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                1        2   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                0     1626   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                1        1   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10               0     1810   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10               1        4   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11               0     1699   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11               1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12               0     1872   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12               1        2   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1290   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       55   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0     1013   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       49   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0     1130   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       61   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      953   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1       42   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      979   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1       49   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0     1092   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       51   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0     1118   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       45   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0     1216   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       39   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0     1261   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1       34   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      997   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1       50   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0     1140   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       51   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0     1164   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       56   13935
0-24 months   ki1148112-LCNI-5           MALAWI                         1                0       65     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                1        3     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                0       45     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                0       23     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                1        3     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                0       39     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                0       42     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                1        2     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                0       32     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                1        2     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                0       58     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                1        4     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                0       89     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                1        4     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                0       86     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                1        7     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10               0      128     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10               1        7     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11               0      102     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11               1        3     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12               0       88     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12               1        7     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     2286   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      207   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     1871   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      175   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0     2244   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1      171   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0     1601   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1      171   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0     1172   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1      149   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0     1243   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1      147   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0     1410   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1      143   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0     1940   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1      188   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0     2533   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1      239   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0     2664   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1      270   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0     2729   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1      274   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0     2850   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1      250   26927
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      782    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1      134    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      844    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1      180    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      635    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1      138    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      535    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1      106    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      372    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       88    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      443    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1       94    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      492    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1       63    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      342    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       61    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      119    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1       14    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       20     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       23     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       23     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                0       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                0       21     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                0       11     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                0       18     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                0       26     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                0       23     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               0       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               0       17     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               0       28     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       25     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                0       12     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                0       23     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                0        9     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                0       18     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                0       32     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               0       22     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                0        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                1        4     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                0       22     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10               0       25     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10               1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11               0       25     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11               1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12               0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12               1        1     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                0       23     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               0       24     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           1                0       40     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           2                0       22     302
0-6 months    ki0047075b-MAL-ED          PERU                           2                1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           3                0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           3                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           4                0       21     302
0-6 months    ki0047075b-MAL-ED          PERU                           4                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           5                0       28     302
0-6 months    ki0047075b-MAL-ED          PERU                           5                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           6                0       17     302
0-6 months    ki0047075b-MAL-ED          PERU                           6                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           7                0       24     302
0-6 months    ki0047075b-MAL-ED          PERU                           7                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           8                0       19     302
0-6 months    ki0047075b-MAL-ED          PERU                           8                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           9                0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           9                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           10               0       27     302
0-6 months    ki0047075b-MAL-ED          PERU                           10               1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           11               0       33     302
0-6 months    ki0047075b-MAL-ED          PERU                           11               1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           12               0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           12               1        0     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       42     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       29     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       17     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       15     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       16     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       23     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       26     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       12     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       25     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       29     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        2     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       30     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       43     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        1     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       30     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       20     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       23     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       23     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       24     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       26     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       32     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       32     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       31     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        0     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                0       41     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                0       37     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                0       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                0       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               0       27     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               0       37     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               0       18     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               1        7     368
0-6 months    ki1000108-IRC              INDIA                          1                0       35     409
0-6 months    ki1000108-IRC              INDIA                          1                1        3     409
0-6 months    ki1000108-IRC              INDIA                          2                0       27     409
0-6 months    ki1000108-IRC              INDIA                          2                1        1     409
0-6 months    ki1000108-IRC              INDIA                          3                0       27     409
0-6 months    ki1000108-IRC              INDIA                          3                1        0     409
0-6 months    ki1000108-IRC              INDIA                          4                0       20     409
0-6 months    ki1000108-IRC              INDIA                          4                1        1     409
0-6 months    ki1000108-IRC              INDIA                          5                0       19     409
0-6 months    ki1000108-IRC              INDIA                          5                1        2     409
0-6 months    ki1000108-IRC              INDIA                          6                0       34     409
0-6 months    ki1000108-IRC              INDIA                          6                1        3     409
0-6 months    ki1000108-IRC              INDIA                          7                0       33     409
0-6 months    ki1000108-IRC              INDIA                          7                1        3     409
0-6 months    ki1000108-IRC              INDIA                          8                0       44     409
0-6 months    ki1000108-IRC              INDIA                          8                1        0     409
0-6 months    ki1000108-IRC              INDIA                          9                0       26     409
0-6 months    ki1000108-IRC              INDIA                          9                1        1     409
0-6 months    ki1000108-IRC              INDIA                          10               0       35     409
0-6 months    ki1000108-IRC              INDIA                          10               1        3     409
0-6 months    ki1000108-IRC              INDIA                          11               0       40     409
0-6 months    ki1000108-IRC              INDIA                          11               1        0     409
0-6 months    ki1000108-IRC              INDIA                          12               0       44     409
0-6 months    ki1000108-IRC              INDIA                          12               1        8     409
0-6 months    ki1000109-EE               PAKISTAN                       1                0       79     379
0-6 months    ki1000109-EE               PAKISTAN                       1                1       16     379
0-6 months    ki1000109-EE               PAKISTAN                       2                0       58     379
0-6 months    ki1000109-EE               PAKISTAN                       2                1        9     379
0-6 months    ki1000109-EE               PAKISTAN                       3                0       36     379
0-6 months    ki1000109-EE               PAKISTAN                       3                1        6     379
0-6 months    ki1000109-EE               PAKISTAN                       4                0       15     379
0-6 months    ki1000109-EE               PAKISTAN                       4                1        1     379
0-6 months    ki1000109-EE               PAKISTAN                       5                0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       5                1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       6                0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       6                1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7                0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7                1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8                0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8                1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9                0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9                1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       10               0        4     379
0-6 months    ki1000109-EE               PAKISTAN                       10               1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       11               0       58     379
0-6 months    ki1000109-EE               PAKISTAN                       11               1       12     379
0-6 months    ki1000109-EE               PAKISTAN                       12               0       76     379
0-6 months    ki1000109-EE               PAKISTAN                       12               1        9     379
0-6 months    ki1000109-ResPak           PAKISTAN                       1                0       10     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                1        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                0       12     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                0       17     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                0       25     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                0       49     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                0       48     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                1        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                0       30     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                0       36     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                1        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                0       20     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10               0        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10               1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11               0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11               1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12               0        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12               1        0     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      101    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1        8    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                0       84    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                1        6    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                0       75    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                1        5    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                0       69    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                1        5    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                0       90    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                1        9    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                0      101    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                1        8    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                0      123    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                1       11    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                0      165    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                1       14    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                0      181    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                1        8    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10               0      149    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10               1       15    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11               0      130    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11               1       10    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12               0      130    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12               1        7    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       25     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                0       34     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                1        2     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                0       21     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                1        0     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                0        3     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                0       13     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                0       22     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                1        3     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                0       36     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                0       61     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                1        6     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                0       60     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                1        5     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10               0       44     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10               1        6     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11               0       29     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11               1        4     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12               0       36     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12               1        2     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       63     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        9     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                0       51     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                1        6     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                0       57     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                1        2     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                0       46     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                0       45     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                1        4     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                0       48     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                1        2     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                0       38     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                0       34     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                0       44     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10               0       48     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10               1        1     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11               0       49     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11               1        4     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12               0       54     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12               1        1     622
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      171    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      176    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      163    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      189    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      184    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      165    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      215    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        3    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      230    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      214    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      246    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        4    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      220    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      204    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        1    2396
0-6 months    ki1101329-Keneba           GAMBIA                         1                0      243    2433
0-6 months    ki1101329-Keneba           GAMBIA                         1                1        8    2433
0-6 months    ki1101329-Keneba           GAMBIA                         2                0      208    2433
0-6 months    ki1101329-Keneba           GAMBIA                         2                1        5    2433
0-6 months    ki1101329-Keneba           GAMBIA                         3                0      249    2433
0-6 months    ki1101329-Keneba           GAMBIA                         3                1        9    2433
0-6 months    ki1101329-Keneba           GAMBIA                         4                0      161    2433
0-6 months    ki1101329-Keneba           GAMBIA                         4                1        4    2433
0-6 months    ki1101329-Keneba           GAMBIA                         5                0      164    2433
0-6 months    ki1101329-Keneba           GAMBIA                         5                1        3    2433
0-6 months    ki1101329-Keneba           GAMBIA                         6                0      137    2433
0-6 months    ki1101329-Keneba           GAMBIA                         6                1        4    2433
0-6 months    ki1101329-Keneba           GAMBIA                         7                0      102    2433
0-6 months    ki1101329-Keneba           GAMBIA                         7                1        3    2433
0-6 months    ki1101329-Keneba           GAMBIA                         8                0      189    2433
0-6 months    ki1101329-Keneba           GAMBIA                         8                1        6    2433
0-6 months    ki1101329-Keneba           GAMBIA                         9                0      204    2433
0-6 months    ki1101329-Keneba           GAMBIA                         9                1        9    2433
0-6 months    ki1101329-Keneba           GAMBIA                         10               0      284    2433
0-6 months    ki1101329-Keneba           GAMBIA                         10               1        5    2433
0-6 months    ki1101329-Keneba           GAMBIA                         11               0      206    2433
0-6 months    ki1101329-Keneba           GAMBIA                         11               1        6    2433
0-6 months    ki1101329-Keneba           GAMBIA                         12               0      216    2433
0-6 months    ki1101329-Keneba           GAMBIA                         12               1        8    2433
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       27     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                0       23     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                0       29     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                0       35     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                0       24     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                0       14     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10               0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10               1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11               0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11               1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12               0       29     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12               1        2     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                0      123     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                1        6     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                0      222     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                1       13     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                0      233     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                1        4     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               1        0     602
0-6 months    ki1114097-CMIN             BANGLADESH                     1                0       26     271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                1        2     271
0-6 months    ki1114097-CMIN             BANGLADESH                     2                0       26     271
0-6 months    ki1114097-CMIN             BANGLADESH                     2                1        1     271
0-6 months    ki1114097-CMIN             BANGLADESH                     3                0       19     271
0-6 months    ki1114097-CMIN             BANGLADESH                     3                1        1     271
0-6 months    ki1114097-CMIN             BANGLADESH                     4                0       20     271
0-6 months    ki1114097-CMIN             BANGLADESH                     4                1        2     271
0-6 months    ki1114097-CMIN             BANGLADESH                     5                0       20     271
0-6 months    ki1114097-CMIN             BANGLADESH                     5                1        0     271
0-6 months    ki1114097-CMIN             BANGLADESH                     6                0        9     271
0-6 months    ki1114097-CMIN             BANGLADESH                     6                1        0     271
0-6 months    ki1114097-CMIN             BANGLADESH                     7                0       17     271
0-6 months    ki1114097-CMIN             BANGLADESH                     7                1        0     271
0-6 months    ki1114097-CMIN             BANGLADESH                     8                0       19     271
0-6 months    ki1114097-CMIN             BANGLADESH                     8                1        3     271
0-6 months    ki1114097-CMIN             BANGLADESH                     9                0       21     271
0-6 months    ki1114097-CMIN             BANGLADESH                     9                1        1     271
0-6 months    ki1114097-CMIN             BANGLADESH                     10               0       27     271
0-6 months    ki1114097-CMIN             BANGLADESH                     10               1        0     271
0-6 months    ki1114097-CMIN             BANGLADESH                     11               0       27     271
0-6 months    ki1114097-CMIN             BANGLADESH                     11               1        2     271
0-6 months    ki1114097-CMIN             BANGLADESH                     12               0       25     271
0-6 months    ki1114097-CMIN             BANGLADESH                     12               1        3     271
0-6 months    ki1114097-CMIN             BRAZIL                         1                0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                0        4     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                0        8     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         10               0       16     119
0-6 months    ki1114097-CMIN             BRAZIL                         10               1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         11               0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         11               1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         12               0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         12               1        0     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0      113     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        2     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                0       79     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                0       72     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                0       55     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                0       65     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                0       57     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                0       63     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                0       60     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                0      101     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               0       96     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               0       86     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               0      111     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               1        0     964
0-6 months    ki1114097-CMIN             PERU                           1                0       43     699
0-6 months    ki1114097-CMIN             PERU                           1                1        0     699
0-6 months    ki1114097-CMIN             PERU                           2                0       65     699
0-6 months    ki1114097-CMIN             PERU                           2                1        2     699
0-6 months    ki1114097-CMIN             PERU                           3                0       72     699
0-6 months    ki1114097-CMIN             PERU                           3                1        0     699
0-6 months    ki1114097-CMIN             PERU                           4                0       60     699
0-6 months    ki1114097-CMIN             PERU                           4                1        2     699
0-6 months    ki1114097-CMIN             PERU                           5                0       64     699
0-6 months    ki1114097-CMIN             PERU                           5                1        1     699
0-6 months    ki1114097-CMIN             PERU                           6                0       56     699
0-6 months    ki1114097-CMIN             PERU                           6                1        2     699
0-6 months    ki1114097-CMIN             PERU                           7                0       57     699
0-6 months    ki1114097-CMIN             PERU                           7                1        0     699
0-6 months    ki1114097-CMIN             PERU                           8                0       73     699
0-6 months    ki1114097-CMIN             PERU                           8                1        0     699
0-6 months    ki1114097-CMIN             PERU                           9                0       56     699
0-6 months    ki1114097-CMIN             PERU                           9                1        0     699
0-6 months    ki1114097-CMIN             PERU                           10               0       50     699
0-6 months    ki1114097-CMIN             PERU                           10               1        3     699
0-6 months    ki1114097-CMIN             PERU                           11               0       42     699
0-6 months    ki1114097-CMIN             PERU                           11               1        0     699
0-6 months    ki1114097-CMIN             PERU                           12               0       50     699
0-6 months    ki1114097-CMIN             PERU                           12               1        1     699
0-6 months    ki1114097-CONTENT          PERU                           1                0       10     215
0-6 months    ki1114097-CONTENT          PERU                           1                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                0       18     215
0-6 months    ki1114097-CONTENT          PERU                           2                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                0       30     215
0-6 months    ki1114097-CONTENT          PERU                           3                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4                0       19     215
0-6 months    ki1114097-CONTENT          PERU                           4                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           5                0       14     215
0-6 months    ki1114097-CONTENT          PERU                           5                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           6                0       13     215
0-6 months    ki1114097-CONTENT          PERU                           6                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7                0       28     215
0-6 months    ki1114097-CONTENT          PERU                           7                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           8                0       23     215
0-6 months    ki1114097-CONTENT          PERU                           8                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           9                0       26     215
0-6 months    ki1114097-CONTENT          PERU                           9                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           10               0       14     215
0-6 months    ki1114097-CONTENT          PERU                           10               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           11               0        9     215
0-6 months    ki1114097-CONTENT          PERU                           11               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           12               0       11     215
0-6 months    ki1114097-CONTENT          PERU                           12               1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                0     1023   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                0      981   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                0     1144   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                0     1161   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                1        0   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                0     1172   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                0     1210   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                0     1588   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                0     1585   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                0     1626   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10               0     1811   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10               1        3   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11               0     1699   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11               1        3   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12               0     1874   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12               1        0   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1312   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       15   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0     1030   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1       16   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                0     1159   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                1       19   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                0      980   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                1        9   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                0     1011   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                1        9   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                0     1127   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                1       13   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                0     1143   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                1       18   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                0     1240   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                1       11   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                0     1279   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                1       12   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               0     1026   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               1       13   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               0     1162   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               1       18   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               0     1204   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               1       14   13840
0-6 months    ki1148112-LCNI-5           MALAWI                         1                0       29     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                0       10     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                0        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                0       32     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                0       53     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10               0       69     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10               1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11               0       30     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11               1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12               0       28     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12               1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     2384   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      101   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0     1956   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1       83   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0     2325   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1       85   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                0     1690   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                1       74   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                0     1267   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                1       45   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                0     1339   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                1       41   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                0     1510   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                1       41   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                0     2040   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                1       84   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                0     2646   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                1      116   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               0     2789   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               1      130   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               0     2864   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               1      121   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               0     2954   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               1      135   26820
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                0      764    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                1       17    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                0      899    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                1       31    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                0      703    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                1       20    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                0      585    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                1       18    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                0      437    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                1       13    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                0      515    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                1       18    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                0      539    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                1       11    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                0      385    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                1        6    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10               0      130    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10               1        1    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    5092
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       16     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       16     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        4     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       16     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        6     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       21     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        1     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       18     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        3     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        9     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        1     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       13     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        5     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       22     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        1     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       14     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        6     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       13     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        2     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       15     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       22     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       11     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       21     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0        8     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       15     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       29     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       19     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       21     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       12     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                0       15     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                0       17     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                0       10     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5                0        5     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5                1        3     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6                0       17     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6                1        2     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7                0       14     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7                1        9     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8                0       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8                1        3     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9                0       16     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9                1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10               0       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10               1        5     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11               0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11               1        7     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12               0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12               1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       19     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       20     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       15     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       17     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       23     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       15     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       21     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       23     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        1     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                0       33     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                1        5     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                0       21     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           4                0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           4                1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           5                0       25     270
6-24 months   ki0047075b-MAL-ED          PERU                           5                1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           6                0       14     270
6-24 months   ki0047075b-MAL-ED          PERU                           6                1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           7                0       22     270
6-24 months   ki0047075b-MAL-ED          PERU                           7                1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           8                0       15     270
6-24 months   ki0047075b-MAL-ED          PERU                           8                1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           9                0       22     270
6-24 months   ki0047075b-MAL-ED          PERU                           9                1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           10               0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           10               1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           11               0       31     270
6-24 months   ki0047075b-MAL-ED          PERU                           11               1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           12               0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           12               1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       30     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        7     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       24     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       15     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       13     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       17     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       23     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        9     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       18     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       23     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       25     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       31     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        4     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       13     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       24     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        6     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       19     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       23     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       23     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       25     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        3     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       28     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       14     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       26     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        5     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       37     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       30     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       31     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       32     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       17     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        4     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       34     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        9     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       17     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        8     373
6-24 months   ki1000108-IRC              INDIA                          1                0       29     410
6-24 months   ki1000108-IRC              INDIA                          1                1        9     410
6-24 months   ki1000108-IRC              INDIA                          2                0       25     410
6-24 months   ki1000108-IRC              INDIA                          2                1        3     410
6-24 months   ki1000108-IRC              INDIA                          3                0       25     410
6-24 months   ki1000108-IRC              INDIA                          3                1        2     410
6-24 months   ki1000108-IRC              INDIA                          4                0       17     410
6-24 months   ki1000108-IRC              INDIA                          4                1        4     410
6-24 months   ki1000108-IRC              INDIA                          5                0       16     410
6-24 months   ki1000108-IRC              INDIA                          5                1        6     410
6-24 months   ki1000108-IRC              INDIA                          6                0       32     410
6-24 months   ki1000108-IRC              INDIA                          6                1        5     410
6-24 months   ki1000108-IRC              INDIA                          7                0       31     410
6-24 months   ki1000108-IRC              INDIA                          7                1        5     410
6-24 months   ki1000108-IRC              INDIA                          8                0       38     410
6-24 months   ki1000108-IRC              INDIA                          8                1        6     410
6-24 months   ki1000108-IRC              INDIA                          9                0       19     410
6-24 months   ki1000108-IRC              INDIA                          9                1        8     410
6-24 months   ki1000108-IRC              INDIA                          10               0       33     410
6-24 months   ki1000108-IRC              INDIA                          10               1        5     410
6-24 months   ki1000108-IRC              INDIA                          11               0       35     410
6-24 months   ki1000108-IRC              INDIA                          11               1        5     410
6-24 months   ki1000108-IRC              INDIA                          12               0       46     410
6-24 months   ki1000108-IRC              INDIA                          12               1        6     410
6-24 months   ki1000109-EE               PAKISTAN                       1                0       55     373
6-24 months   ki1000109-EE               PAKISTAN                       1                1       36     373
6-24 months   ki1000109-EE               PAKISTAN                       2                0       45     373
6-24 months   ki1000109-EE               PAKISTAN                       2                1       21     373
6-24 months   ki1000109-EE               PAKISTAN                       3                0       23     373
6-24 months   ki1000109-EE               PAKISTAN                       3                1       18     373
6-24 months   ki1000109-EE               PAKISTAN                       4                0        7     373
6-24 months   ki1000109-EE               PAKISTAN                       4                1        9     373
6-24 months   ki1000109-EE               PAKISTAN                       5                0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       5                1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       6                0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       6                1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       7                0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       7                1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       8                0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       8                1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       9                0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       9                1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       10               0        3     373
6-24 months   ki1000109-EE               PAKISTAN                       10               1        1     373
6-24 months   ki1000109-EE               PAKISTAN                       11               0       43     373
6-24 months   ki1000109-EE               PAKISTAN                       11               1       27     373
6-24 months   ki1000109-EE               PAKISTAN                       12               0       65     373
6-24 months   ki1000109-EE               PAKISTAN                       12               1       20     373
6-24 months   ki1000109-ResPak           PAKISTAN                       1                0        9     230
6-24 months   ki1000109-ResPak           PAKISTAN                       1                1        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2                0        8     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2                1        3     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3                0       18     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3                1        2     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4                0       14     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4                1        2     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5                0       38     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5                1        8     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6                0       37     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6                1        3     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7                0       21     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7                1        5     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8                0       28     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8                1        2     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9                0       20     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9                1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10               0        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10               1        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11               0        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11               1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12               0        3     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12               1        2     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       72    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1       24    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       67    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1       15    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       60    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1       17    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       54    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1       14    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       75    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1       18    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0       76    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1       23    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0       96    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1       29    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0      125    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1       42    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0      139    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1       39    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0      114    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1       36    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0       88    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1       36    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0      109    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1       21    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       18     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        8     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0       22     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1       13     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0       11     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1       10     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0        3     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        1     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0        7     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        5     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0       18     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        7     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0       22     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1       14     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0       45     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1       20     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0       35     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1       27     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0       32     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1       16     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0       21     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1        9     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       22     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1       15     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       40     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       14     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       38     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1       11     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       41     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1       10     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       35     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        8     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       36     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        8     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       35     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        9     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       30     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        9     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       25     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        9     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       35     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        6     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       35     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        8     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       38     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1       11     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       40     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1       11     542
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      128    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       11    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      144    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        8    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      133    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        7    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      140    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        7    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      142    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        7    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      133    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        7    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      185    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1       11    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      191    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1       11    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      176    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        8    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      194    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1       14    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      178    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1       13    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      160    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        9    2017
6-24 months   ki1101329-Keneba           GAMBIA                         1                0      226    2735
6-24 months   ki1101329-Keneba           GAMBIA                         1                1       48    2735
6-24 months   ki1101329-Keneba           GAMBIA                         2                0      213    2735
6-24 months   ki1101329-Keneba           GAMBIA                         2                1       32    2735
6-24 months   ki1101329-Keneba           GAMBIA                         3                0      246    2735
6-24 months   ki1101329-Keneba           GAMBIA                         3                1       37    2735
6-24 months   ki1101329-Keneba           GAMBIA                         4                0      166    2735
6-24 months   ki1101329-Keneba           GAMBIA                         4                1       21    2735
6-24 months   ki1101329-Keneba           GAMBIA                         5                0      167    2735
6-24 months   ki1101329-Keneba           GAMBIA                         5                1       25    2735
6-24 months   ki1101329-Keneba           GAMBIA                         6                0      121    2735
6-24 months   ki1101329-Keneba           GAMBIA                         6                1       32    2735
6-24 months   ki1101329-Keneba           GAMBIA                         7                0      113    2735
6-24 months   ki1101329-Keneba           GAMBIA                         7                1       22    2735
6-24 months   ki1101329-Keneba           GAMBIA                         8                0      192    2735
6-24 months   ki1101329-Keneba           GAMBIA                         8                1       32    2735
6-24 months   ki1101329-Keneba           GAMBIA                         9                0      201    2735
6-24 months   ki1101329-Keneba           GAMBIA                         9                1       34    2735
6-24 months   ki1101329-Keneba           GAMBIA                         10               0      283    2735
6-24 months   ki1101329-Keneba           GAMBIA                         10               1       45    2735
6-24 months   ki1101329-Keneba           GAMBIA                         11               0      207    2735
6-24 months   ki1101329-Keneba           GAMBIA                         11               1       29    2735
6-24 months   ki1101329-Keneba           GAMBIA                         12               0      198    2735
6-24 months   ki1101329-Keneba           GAMBIA                         12               1       45    2735
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       25     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        3     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       23     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       25     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       28     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       26     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       18     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       19     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       12     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       13     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       26     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       20     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0       24     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        4     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      284    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1       39    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                0      163    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                1       18    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                0      169    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                1       28    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                0      178    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                1       31    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                0      191    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                1       27    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                0      169    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                1       23    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                0      162    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                1       34    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                0      269    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                1       34    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                0      358    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                1       53    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               0      327    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               1       45    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               0      299    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               1       43    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               0      289    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               1       32    3265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        1     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0       80     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1       46     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      161     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       70     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      159     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       73     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0     590
6-24 months   ki1114097-CMIN             BANGLADESH                     1                0       19     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1                1        8     251
6-24 months   ki1114097-CMIN             BANGLADESH                     2                0       18     251
6-24 months   ki1114097-CMIN             BANGLADESH                     2                1        7     251
6-24 months   ki1114097-CMIN             BANGLADESH                     3                0       12     251
6-24 months   ki1114097-CMIN             BANGLADESH                     3                1        6     251
6-24 months   ki1114097-CMIN             BANGLADESH                     4                0       13     251
6-24 months   ki1114097-CMIN             BANGLADESH                     4                1        9     251
6-24 months   ki1114097-CMIN             BANGLADESH                     5                0       15     251
6-24 months   ki1114097-CMIN             BANGLADESH                     5                1        2     251
6-24 months   ki1114097-CMIN             BANGLADESH                     6                0        5     251
6-24 months   ki1114097-CMIN             BANGLADESH                     6                1        4     251
6-24 months   ki1114097-CMIN             BANGLADESH                     7                0       12     251
6-24 months   ki1114097-CMIN             BANGLADESH                     7                1        4     251
6-24 months   ki1114097-CMIN             BANGLADESH                     8                0       14     251
6-24 months   ki1114097-CMIN             BANGLADESH                     8                1        5     251
6-24 months   ki1114097-CMIN             BANGLADESH                     9                0       13     251
6-24 months   ki1114097-CMIN             BANGLADESH                     9                1        7     251
6-24 months   ki1114097-CMIN             BANGLADESH                     10               0       14     251
6-24 months   ki1114097-CMIN             BANGLADESH                     10               1       12     251
6-24 months   ki1114097-CMIN             BANGLADESH                     11               0       13     251
6-24 months   ki1114097-CMIN             BANGLADESH                     11               1       13     251
6-24 months   ki1114097-CMIN             BANGLADESH                     12               0       17     251
6-24 months   ki1114097-CMIN             BANGLADESH                     12               1        9     251
6-24 months   ki1114097-CMIN             BRAZIL                         1                0       14     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                0       13     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                0        9     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                0        5     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                0        4     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                0       14     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                0        8     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         10               0       16     119
6-24 months   ki1114097-CMIN             BRAZIL                         10               1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         11               0       11     119
6-24 months   ki1114097-CMIN             BRAZIL                         11               1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         12               0       10     119
6-24 months   ki1114097-CMIN             BRAZIL                         12               1        1     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0      132    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       17    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0      107    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        6    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0      105    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1       12    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0       92    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        8    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0      104    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        6    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       77    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        6    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       92    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        4    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0      114    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        7    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0      145    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1       15    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0      143    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1       11    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0      124    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1       11    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0      127    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1       16    1481
6-24 months   ki1114097-CMIN             PERU                           1                0       48     878
6-24 months   ki1114097-CMIN             PERU                           1                1        0     878
6-24 months   ki1114097-CMIN             PERU                           2                0       73     878
6-24 months   ki1114097-CMIN             PERU                           2                1        2     878
6-24 months   ki1114097-CMIN             PERU                           3                0       95     878
6-24 months   ki1114097-CMIN             PERU                           3                1        2     878
6-24 months   ki1114097-CMIN             PERU                           4                0       88     878
6-24 months   ki1114097-CMIN             PERU                           4                1        3     878
6-24 months   ki1114097-CMIN             PERU                           5                0       86     878
6-24 months   ki1114097-CMIN             PERU                           5                1        4     878
6-24 months   ki1114097-CMIN             PERU                           6                0       73     878
6-24 months   ki1114097-CMIN             PERU                           6                1        7     878
6-24 months   ki1114097-CMIN             PERU                           7                0       74     878
6-24 months   ki1114097-CMIN             PERU                           7                1        0     878
6-24 months   ki1114097-CMIN             PERU                           8                0       82     878
6-24 months   ki1114097-CMIN             PERU                           8                1        2     878
6-24 months   ki1114097-CMIN             PERU                           9                0       65     878
6-24 months   ki1114097-CMIN             PERU                           9                1        0     878
6-24 months   ki1114097-CMIN             PERU                           10               0       56     878
6-24 months   ki1114097-CMIN             PERU                           10               1        1     878
6-24 months   ki1114097-CMIN             PERU                           11               0       52     878
6-24 months   ki1114097-CMIN             PERU                           11               1        2     878
6-24 months   ki1114097-CMIN             PERU                           12               0       62     878
6-24 months   ki1114097-CMIN             PERU                           12               1        1     878
6-24 months   ki1114097-CONTENT          PERU                           1                0       10     215
6-24 months   ki1114097-CONTENT          PERU                           1                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                0       18     215
6-24 months   ki1114097-CONTENT          PERU                           2                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                0       30     215
6-24 months   ki1114097-CONTENT          PERU                           3                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4                0       19     215
6-24 months   ki1114097-CONTENT          PERU                           4                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           5                0       12     215
6-24 months   ki1114097-CONTENT          PERU                           5                1        2     215
6-24 months   ki1114097-CONTENT          PERU                           6                0       13     215
6-24 months   ki1114097-CONTENT          PERU                           6                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           7                0       28     215
6-24 months   ki1114097-CONTENT          PERU                           7                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           8                0       22     215
6-24 months   ki1114097-CONTENT          PERU                           8                1        1     215
6-24 months   ki1114097-CONTENT          PERU                           9                0       26     215
6-24 months   ki1114097-CONTENT          PERU                           9                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           10               0       13     215
6-24 months   ki1114097-CONTENT          PERU                           10               1        1     215
6-24 months   ki1114097-CONTENT          PERU                           11               0        9     215
6-24 months   ki1114097-CONTENT          PERU                           11               1        0     215
6-24 months   ki1114097-CONTENT          PERU                           12               0       11     215
6-24 months   ki1114097-CONTENT          PERU                           12               1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        1                0     1010   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        2                0      969   16598
6-24 months   ki1119695-PROBIT           BELARUS                        2                1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        3                0     1129   16598
6-24 months   ki1119695-PROBIT           BELARUS                        3                1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        4                0     1143   16598
6-24 months   ki1119695-PROBIT           BELARUS                        4                1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        5                0     1147   16598
6-24 months   ki1119695-PROBIT           BELARUS                        5                1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        6                0     1191   16598
6-24 months   ki1119695-PROBIT           BELARUS                        6                1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        7                0     1552   16598
6-24 months   ki1119695-PROBIT           BELARUS                        7                1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        8                0     1564   16598
6-24 months   ki1119695-PROBIT           BELARUS                        8                1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        9                0     1585   16598
6-24 months   ki1119695-PROBIT           BELARUS                        9                1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        10               0     1791   16598
6-24 months   ki1119695-PROBIT           BELARUS                        10               1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        11               0     1674   16598
6-24 months   ki1119695-PROBIT           BELARUS                        11               1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        12               0     1834   16598
6-24 months   ki1119695-PROBIT           BELARUS                        12               1        2   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1007   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       44   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      788   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       36   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0      864   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       43   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      748   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1       33   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      734   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1       40   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0      828   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       40   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0      850   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       28   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0      904   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       29   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0      972   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1       24   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      741   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1       39   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0      895   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       34   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0      927   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       45   10693
6-24 months   ki1148112-LCNI-5           MALAWI                         1                0       64     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                1        3     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2                0       45     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2                1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3                0       23     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3                1        3     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4                0       39     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5                0       40     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5                1        2     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6                0       32     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6                1        2     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7                0       58     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7                1        4     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8                0       88     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8                1        4     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9                0       84     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9                1        7     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10               0      123     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10               1        7     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11               0      100     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11               1        3     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12               0       87     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12               1        7     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     1263   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      113   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     1077   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      105   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0     1361   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       98   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0     1094   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1      112   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0     1057   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1      113   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0     1124   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1      123   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0     1187   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1      116   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0     1436   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1      118   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0     1516   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1      138   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0     1545   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1      163   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0     1613   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1      170   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0     1505   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1      133   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      790    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1      126    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      856    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1      162    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      642    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1      129    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      543    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1       96    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      379    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       80    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      456    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1       81    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      499    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1       56    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      342    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       59    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      120    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1       13    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    5429


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/59cdc305-ab5a-4a55-b2c5-e2654cb2cb55/bfda7d80-e7e3-45f4-b435-1ea7df8fed18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/59cdc305-ab5a-4a55-b2c5-e2654cb2cb55/bfda7d80-e7e3-45f4-b435-1ea7df8fed18/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/59cdc305-ab5a-4a55-b2c5-e2654cb2cb55/bfda7d80-e7e3-45f4-b435-1ea7df8fed18/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/59cdc305-ab5a-4a55-b2c5-e2654cb2cb55/bfda7d80-e7e3-45f4-b435-1ea7df8fed18/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2432432    0.1793273   0.3071592
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2000000    0.1276130   0.2723870
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.2098765    0.0818797   0.3378734
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2432432    0.1791789   0.3073076
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.2222222    0.1713163   0.2731282
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.2385321    0.1311899   0.3458743
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.2500000    0.1324474   0.3675526
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.2681564    0.1849553   0.3513575
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.2041885    0.1703157   0.2380613
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.2484848    0.1718806   0.3250891
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2714286    0.2129454   0.3299117
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.1666667    0.1037912   0.2295421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2739726    0.1715808   0.3763644
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2105263    0.1046056   0.3164470
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2033898    0.1005982   0.3061815
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.1730769    0.0701695   0.2759844
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2244898    0.1075694   0.3414102
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2000000    0.0890387   0.3109613
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.2439024    0.1123492   0.3754556
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3333333    0.1852665   0.4814002
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.1489362    0.0470703   0.2508020
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.1836735    0.0751675   0.2921794
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2452830    0.1293561   0.3612099
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.2000000    0.0942026   0.3057974
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0643275    0.0275484   0.1011066
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0449438    0.0145015   0.0753862
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0426829    0.0117393   0.0736266
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0368421    0.0100515   0.0636327
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0432432    0.0139267   0.0725598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0421687    0.0115896   0.0727477
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0642202    0.0316715   0.0967688
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0474138    0.0200612   0.0747664
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0462963    0.0182683   0.0743243
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0560000    0.0274932   0.0845068
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0588235    0.0277955   0.0898515
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0439024    0.0158509   0.0719540
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1762712    0.1327807   0.2197617
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1328125    0.0912331   0.1743919
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1372549    0.0986922   0.1758176
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1122449    0.0680447   0.1564451
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.1231527    0.0779402   0.1683652
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.2024540    0.1407562   0.2641518
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.1631206    0.1021249   0.2241162
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.1483051    0.1029541   0.1936561
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.1541502    0.1096480   0.1986524
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.1314286    0.0960259   0.1668313
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.1220472    0.0817843   0.1623102
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.1930502    0.1449739   0.2411265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1207430    0.0755590   0.1659270
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.0994475    0.0460298   0.1528652
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.1421320    0.0898603   0.1944037
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.1483254    0.0969427   0.1997080
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1238532    0.0702933   0.1774131
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.1197917    0.0680619   0.1715214
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.1734694    0.0721277   0.2748111
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.1122112    0.0665272   0.1578952
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.1289538    0.0672907   0.1906168
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1209677    0.0808314   0.1611040
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.1257310    0.0795208   0.1719412
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.0996885    0.0270477   0.1723293
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0408922    0.0303080   0.0514764
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0461394    0.0335217   0.0587570
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0512175    0.0386976   0.0637373
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0422111    0.0297171   0.0547050
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0476654    0.0346408   0.0606899
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0446194    0.0326495   0.0565893
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0386930    0.0276084   0.0497777
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0310757    0.0214751   0.0406763
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0262548    0.0175461   0.0349636
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0477555    0.0348381   0.0606729
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0428212    0.0313229   0.0543195
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0459016    0.0341582   0.0576451
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0830325    0.0713526   0.0947124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0855327    0.0726492   0.0984163
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0708075    0.0605974   0.0810176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0965011    0.0830356   0.1099667
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1127933    0.0941864   0.1314003
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1057554    0.0895598   0.1219510
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0920798    0.0770805   0.1070791
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0883459    0.0761290   0.1005627
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0862193    0.0755828   0.0968558
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0920245    0.0799443   0.1041047
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0912421    0.0806024   0.1018818
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0806452    0.0708865   0.0904038
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0733945    0.0346925   0.1120965
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0666667    0.0268555   0.1064778
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.0625000   -0.0301382   0.1551382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.0675676    0.0098148   0.1253203
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.0909091    0.0399966   0.1418216
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.0733945    0.0280651   0.1187239
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.0820896    0.0299749   0.1342042
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.0782123    0.0236708   0.1327538
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.0423280    0.0074355   0.0772206
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.0914634    0.0394701   0.1434567
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.0714286    0.0060936   0.1367635
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.0510949    0.0155917   0.0865980
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0113037    0.0056156   0.0169918
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0152964    0.0078586   0.0227342
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0161290    0.0089351   0.0233229
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0091001    0.0031817   0.0150185
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0088235    0.0030842   0.0145628
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0114035    0.0052398   0.0175672
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0155039    0.0083971   0.0226107
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0087930    0.0036195   0.0139665
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0092951    0.0040603   0.0145299
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0125120    0.0057530   0.0192711
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0152542    0.0082610   0.0222475
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0114943    0.0055078   0.0174807
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0406439    0.0323856   0.0489021
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0407062    0.0315023   0.0499102
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0352697    0.0273155   0.0432239
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0419501    0.0327174   0.0511828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0342988    0.0239231   0.0446745
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0297101    0.0196733   0.0397470
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0264346    0.0186913   0.0341779
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0395480    0.0311437   0.0479523
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0419986    0.0342677   0.0497295
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0445358    0.0360279   0.0530437
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0405360    0.0333811   0.0476909
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0437035    0.0360278   0.0513792
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2500000    0.1791269   0.3208731
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1829268    0.0964230   0.2694307
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.2207792    0.0940912   0.3474672
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2058824    0.1230685   0.2886962
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.1935484    0.1432219   0.2438749
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.2323232    0.1196845   0.3449620
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.2320000    0.1147560   0.3492440
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.2514970    0.1677770   0.3352170
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.2191011    0.1832455   0.2549567
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.2400000    0.1655591   0.3144409
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2903226    0.2442707   0.3363744
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.1615385    0.1045928   0.2184841
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2592593    0.1422683   0.3762503
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2244898    0.1075552   0.3414244
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.1960784    0.0870133   0.3051435
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.1860465    0.0696271   0.3024659
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.1818182    0.0677495   0.2958868
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2045455    0.0852496   0.3238413
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.2307692    0.0984161   0.3631223
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.2647059    0.1162758   0.4131360
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.1463415    0.0380528   0.2546301
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.1860465    0.0696271   0.3024659
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2244898    0.1075552   0.3414244
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.2156863    0.1027014   0.3286711
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0791367    0.0342482   0.1240252
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0526316    0.0171244   0.0881388
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0500000    0.0138891   0.0861109
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0476190    0.0131846   0.0820535
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0469799    0.0129963   0.0809635
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0500000    0.0138891   0.0861109
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0561224    0.0238929   0.0883520
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0544554    0.0231556   0.0857553
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0434783    0.0140049   0.0729517
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0673077    0.0332492   0.1013662
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0680628    0.0323366   0.1037891
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0532544    0.0193929   0.0871160
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1751825    0.1301655   0.2201995
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1306122    0.0884093   0.1728152
6-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1307420    0.0914580   0.1700261
6-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1122995    0.0670380   0.1575609
6-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.1302083    0.0825977   0.1778190
6-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.2091503    0.1446951   0.2736055
6-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.1629630    0.1006501   0.2252758
6-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.1428571    0.0970238   0.1886904
6-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.1446809    0.0996963   0.1896654
6-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.1371951    0.0999546   0.1744357
6-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.1228814    0.0809881   0.1647746
6-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.1851852    0.1363360   0.2340343
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1207430    0.0755590   0.1659270
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.0994475    0.0460298   0.1528652
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.1421320    0.0898603   0.1944037
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.1483254    0.0969427   0.1997080
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1238532    0.0702933   0.1774131
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.1197917    0.0680619   0.1715214
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.1734694    0.0721277   0.2748111
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.1122112    0.0665272   0.1578952
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.1289538    0.0672907   0.1906168
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1209677    0.0808314   0.1611040
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.1257310    0.0795208   0.1719412
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.0996885    0.0270477   0.1723293
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0418649    0.0297560   0.0539738
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0436893    0.0297323   0.0576463
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0474090    0.0335782   0.0612399
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0422535    0.0281444   0.0563626
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0516796    0.0360828   0.0672764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0460829    0.0321342   0.0600317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0318907    0.0202677   0.0435136
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0310825    0.0199465   0.0422185
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0240964    0.0145724   0.0336204
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0500000    0.0347044   0.0652956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0365985    0.0245233   0.0486737
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0462963    0.0330859   0.0595067
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0821221    0.0665898   0.0976544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0888325    0.0719671   0.1056978
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0671693    0.0543364   0.0800022
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0928690    0.0769593   0.1087786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0965812    0.0780452   0.1151172
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0986367    0.0824179   0.1148556
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0890253    0.0724995   0.1055511
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0759331    0.0624456   0.0894206
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0834341    0.0704148   0.0964534
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0954333    0.0802032   0.1106634
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0953449    0.0819109   0.1087790
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0811966    0.0678349   0.0945583


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496661   0.0409652   0.0583670
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1483516   0.1354394   0.1612639
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417653   0.0384437   0.0450870
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885357   0.0846606   0.0924107
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120665   0.0102474   0.0138855
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393736   0.0368903   0.0418569
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0560238   0.0459853   0.0660623
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1469835   0.1337108   0.1602563
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406808   0.0369363   0.0444253
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0869213   0.0822621   0.0915805


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8222222   0.5282507   1.2797889
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.8628258   0.4233228   1.7586303
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.0000000   0.6503871   1.5375458
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.9135802   0.6318154   1.3210011
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.9806320   0.7195443   1.3364559
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0277778   0.6486667   1.6284590
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1024209   0.7744370   1.5693100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.8394415   0.6204676   1.1356952
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.0215488   0.6437547   1.6210554
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 1.1158730   0.7785599   1.5993278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.6851852   0.4423810   1.0612544
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.7684211   0.4105897   1.4381045
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7423729   0.3959490   1.3918901
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6317308   0.3129942   1.2750515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.8193878   0.4316069   1.5555737
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.7300000   0.3739425   1.4250854
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8902439   0.4618778   1.7158959
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.2166667   0.6808645   2.1741150
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.5436170   0.2493459   1.1851787
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.6704082   0.3332327   1.3487486
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.8952830   0.4900977   1.6354527
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7300000   0.3819751   1.3951173
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6986721   0.2879512   1.6952270
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6635255   0.2635581   1.6704709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5727273   0.2270979   1.4443838
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6722359   0.2769282   1.6318349
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.6555312   0.2603429   1.6505970
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9983319   0.4649997   2.1433707
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.7370690   0.3271643   1.6605439
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7196970   0.3129734   1.6549771
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.8705455   0.4048820   1.8717785
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9144385   0.4200659   1.9906345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6824834   0.2895494   1.6086496
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.7534555   0.5057618   1.1224557
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.7786576   0.5357458   1.1317077
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.6367739   0.4001032   1.0134413
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.6986548   0.4489127   1.0873351
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.1485370   0.7759903   1.6999405
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.9253955   0.5912443   1.4483977
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.8413462   0.5679799   1.2462825
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.8745059   0.5981848   1.2784688
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.7456044   0.5174490   1.0743588
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.6923834   0.4586042   1.0453345
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0951886   0.7713349   1.5550160
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.8236294   0.4328209   1.5673120
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.1771443   0.6849525   2.0230146
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.2284382   0.7569584   1.9935844
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0257586   0.5915597   1.7786552
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9921207   0.6037119   1.6304192
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.4366824   0.7045404   2.9296493
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.9293391   0.5564906   1.5519959
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.0680017   0.6432044   1.7733519
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 1.0018610   0.5840736   1.7184916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.0413105   0.6657247   1.6287930
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 0.8256251   0.3585655   1.9010662
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1283171   0.7742907   1.6442138
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2524998   0.8773282   1.7881059
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0322522   0.6966641   1.5294954
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1656349   0.8000266   1.6983245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0911477   0.7516053   1.5840804
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9462206   0.6431579   1.3920896
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.7599420   0.5078600   1.1371478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6420498   0.4215463   0.9778949
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.1678388   0.8031426   1.6981388
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0471720   0.7211829   1.5205146
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.1225037   0.7800706   1.6152571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0301118   0.8409132   1.2618785
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8527680   0.6973125   1.0428801
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.1622092   0.9533420   1.4168371
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.3584241   1.0952546   1.6848284
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.2736628   1.0371209   1.5641541
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.1089616   0.8843437   1.3906311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0639915   0.8886733   1.2738966
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0383807   0.8611449   1.2520941
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.1082955   0.9174153   1.3388909
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0988721   0.9150359   1.3196422
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9712482   0.8104435   1.1639592
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9083333   0.4964751   1.6618546
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.8515625   0.1534663   4.7251970
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.9206081   0.3106122   2.7285452
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.2386364   0.6994954   2.1933240
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.0000000   0.6234029   1.6040991
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.1184701   0.4556643   2.7453884
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.0656425   0.4577950   2.4805727
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.5767196   0.2047406   1.6245218
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.2461890   0.5537903   2.8042872
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9732143   0.3289253   2.8795176
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.6961679   0.3089100   1.5689029
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3532186   0.6721534   2.7243789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.4268817   0.7283788   2.7952373
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8050556   0.3537534   1.8321083
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.7805882   0.3429775   1.7765541
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0088304   0.4820539   2.1112552
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.3715762   0.6943832   2.7091977
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.7778844   0.3586581   1.6871335
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8223083   0.3864003   1.7499750
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.1068977   0.5290311   2.3159741
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.3494915   0.6831757   2.6656794
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0168582   0.4928799   2.0978753
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0015344   0.7396285   1.3561826
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8677745   0.6403746   1.1759252
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.0321389   0.7653353   1.3919530
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8438858   0.5861625   1.2149247
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7309872   0.4910223   1.0882242
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.6503948   0.4516924   0.9365078
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9730380   0.7298931   1.2971802
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0333307   0.7837090   1.3624602
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0957571   0.8304594   1.4458065
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9973465   0.7615461   1.3061586
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0752783   0.8285170   1.3955337
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7317073   0.4657355   1.1495702
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.8831169   0.4218870   1.8485886
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.8235294   0.4736194   1.4319531
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.7741935   0.5481480   1.0934559
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.9292929   0.6286481   1.3737181
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 0.9280000   0.5935345   1.4509418
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.0059880   0.7214639   1.4027201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.8764045   0.6539303   1.1745669
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9600000   0.6022392   1.5302889
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 1.1612903   0.8328553   1.6192432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.6461538   0.4074503   1.0247011
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.8658892   0.4346702   1.7249035
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7563025   0.3695131   1.5479653
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.7176080   0.3317673   1.5521757
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7012987   0.3238004   1.5188983
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.7889610   0.3773994   1.6493391
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8901099   0.4290506   1.8466249
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.0210084   0.4970982   2.0970870
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.5644599   0.2372606   1.3428906
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.7176080   0.3317673   1.5521757
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.8658892   0.4346702   1.7249035
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.8319328   0.4166936   1.6609618
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6650718   0.2754720   1.6056822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6318182   0.2522102   1.5827837
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.6017316   0.2400294   1.5084860
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.5936547   0.2367623   1.4885220
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.6318182   0.2522102   1.5827837
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.7091837   0.3163780   1.5896853
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.6881188   0.3068699   1.5430234
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.5494071   0.2269977   1.3297415
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.8505245   0.3977107   1.8188895
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.8600666   0.3970963   1.8628090
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6729424   0.2870272   1.5777306
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.7455782   0.4933987   1.1266485
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.7463192   0.5025948   1.1082335
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.6410428   0.3974632   1.0338965
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.7432726   0.4753952   1.1620944
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.1938998   0.7992894   1.7833298
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.9302469   0.5868387   1.4746120
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.8154762   0.5406188   1.2300744
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.8258865   0.5517457   1.2362371
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.7831555   0.5389085   1.1381014
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.7014477   0.4577040   1.0749937
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0570988   0.7314441   1.5277419
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.8236294   0.4328209   1.5673120
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.1771443   0.6849525   2.0230146
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.2284382   0.7569584   1.9935844
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0257586   0.5915597   1.7786552
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9921207   0.6037119   1.6304192
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.4366824   0.7045404   2.9296493
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.9293391   0.5564906   1.5519959
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.0680017   0.6432044   1.7733519
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 1.0018610   0.5840736   1.7184916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.0413105   0.6657247   1.6287930
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 0.8256251   0.3585655   1.9010662
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0435790   0.6782165   1.6057661
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1324296   0.7509262   1.7077533
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0092830   0.6488673   1.5698929
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.2344374   0.8126909   1.8750495
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1007541   0.7242152   1.6730657
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.7617519   0.4783464   1.2130664
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.7424486   0.4684831   1.1766270
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.5755750   0.3526927   0.9393068
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.1943182   0.7839383   1.8195258
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8742049   0.5637135   1.3557138
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.1058502   0.7366180   1.6601612
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0817124   0.8291387   1.4112255
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8179199   0.6254532   1.0696131
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.1308648   0.8769066   1.4583712
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.1760684   0.9033462   1.5311259
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.2010986   0.9422232   1.5310999
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.0840606   0.8289074   1.4177548
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9246364   0.7200250   1.1873927
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0159763   0.7987252   1.2923191
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.1620899   0.9104632   1.4832592
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1610143   0.9181591   1.4681053
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9887301   0.7700511   1.2695095


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0112538   -0.0767405   0.0542329
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0544213   -0.1497503   0.0409077
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0146614   -0.0498086   0.0204858
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0279195   -0.0688454   0.0130064
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0039124   -0.0374485   0.0452733
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0008731   -0.0091982   0.0109445
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0055032   -0.0054838   0.0164902
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0029158   -0.0442420   0.0384104
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0007628   -0.0046649   0.0061904
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0012703   -0.0090766   0.0065361
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0239381   -0.0872763   0.0394001
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0489272   -0.1591042   0.0612499
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0231129   -0.0659851   0.0197593
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0281989   -0.0705858   0.0141880
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0039124   -0.0374485   0.0452733
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0011841   -0.0126655   0.0102974
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0047992   -0.0098415   0.0194399


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0485100   -0.3764055   0.2012722
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2478752   -0.7665396   0.1185069
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2951988   -1.2339700   0.2490768
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1881984   -0.4983643   0.0577623
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0313857   -0.3639986   0.3121594
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0209060   -0.2525207   0.2346433
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0621578   -0.0705832   0.1784403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0413709   -0.8379265   0.4099582
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0632149   -0.5140071   0.4203685
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0322618   -0.2507874   0.1480852
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1058917   -0.4264502   0.1426294
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2326186   -0.8846191   0.1938166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4125549   -1.4230836   0.1765404
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1918510   -0.5177192   0.0640504
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0313857   -0.3639986   0.3121594
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0291064   -0.3538196   0.2177245
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0552132   -0.1293364   0.2096048
