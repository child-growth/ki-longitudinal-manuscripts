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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        month    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1        2     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2              0       18     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2              1        6     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3              0       20     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3              1        7     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4              0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4              1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5              0       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5              1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6              0        8     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6              1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7              0       17     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7              1        5     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8              0       24     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8              1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9              0       17     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9              1        6     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10             0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10             1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11             0       15     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11             1        2     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12             0       25     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12             1        2     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1              0       13     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2              0       26     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2              1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3              0       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3              1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4              0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4              1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5              0       22     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5              1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6              0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6              1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7              0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7              1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8              0       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8              1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9              0       30     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9              1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10             0       22     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10             1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11             0       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11             1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12             0       17     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12             1        0     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1              0       16     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1              1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2              0       21     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2              1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3              0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3              1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4              0       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4              1        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5              0        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5              1        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6              0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6              1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7              0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7              1        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8              0       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8              1        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9              0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9              1        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10             0       21     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10             1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11             0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11             1        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12             0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12             1        2     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1              0       23     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1              1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2              0       13     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2              1        4     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3              0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3              1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4              0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4              1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5              0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5              1        4     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6              0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6              1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7              0       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7              1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8              0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8              1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9              0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9              1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10             0       22     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10             1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11             0       22     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11             1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12             0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12             1        1     240
0-24 months   ki0047075b-MAL-ED          PERU                           1              0       37     302
0-24 months   ki0047075b-MAL-ED          PERU                           1              1        4     302
0-24 months   ki0047075b-MAL-ED          PERU                           2              0       24     302
0-24 months   ki0047075b-MAL-ED          PERU                           2              1        2     302
0-24 months   ki0047075b-MAL-ED          PERU                           3              0       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           3              1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           4              0       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           4              1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           5              0       24     302
0-24 months   ki0047075b-MAL-ED          PERU                           5              1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           6              0       20     302
0-24 months   ki0047075b-MAL-ED          PERU                           6              1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           7              0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           7              1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           8              0       19     302
0-24 months   ki0047075b-MAL-ED          PERU                           8              1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           9              0       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           9              1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           10             0       26     302
0-24 months   ki0047075b-MAL-ED          PERU                           10             1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           11             0       33     302
0-24 months   ki0047075b-MAL-ED          PERU                           11             1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           12             0       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           12             1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       32     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        7     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       33     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       20     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       12     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       22     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       25     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              0       13     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       25     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       25     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        5     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       29     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       39     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        5     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       17     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        6     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       22     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        5     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       22     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0       10     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0       17     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       18     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       25     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0       11     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       22     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0       20     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       25     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        5     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       29     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        3     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              0       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              1        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              0       24     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              1        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              0       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              0       29     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              0       29     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              1        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             0       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             1       10     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             1       13     373
0-24 months   ki1000108-IRC              INDIA                          1              0       27     410
0-24 months   ki1000108-IRC              INDIA                          1              1        9     410
0-24 months   ki1000108-IRC              INDIA                          2              0       23     410
0-24 months   ki1000108-IRC              INDIA                          2              1        4     410
0-24 months   ki1000108-IRC              INDIA                          3              0       27     410
0-24 months   ki1000108-IRC              INDIA                          3              1        2     410
0-24 months   ki1000108-IRC              INDIA                          4              0       17     410
0-24 months   ki1000108-IRC              INDIA                          4              1        5     410
0-24 months   ki1000108-IRC              INDIA                          5              0       14     410
0-24 months   ki1000108-IRC              INDIA                          5              1        7     410
0-24 months   ki1000108-IRC              INDIA                          6              0       30     410
0-24 months   ki1000108-IRC              INDIA                          6              1        7     410
0-24 months   ki1000108-IRC              INDIA                          7              0       31     410
0-24 months   ki1000108-IRC              INDIA                          7              1        5     410
0-24 months   ki1000108-IRC              INDIA                          8              0       39     410
0-24 months   ki1000108-IRC              INDIA                          8              1        6     410
0-24 months   ki1000108-IRC              INDIA                          9              0       19     410
0-24 months   ki1000108-IRC              INDIA                          9              1        8     410
0-24 months   ki1000108-IRC              INDIA                          10             0       31     410
0-24 months   ki1000108-IRC              INDIA                          10             1        6     410
0-24 months   ki1000108-IRC              INDIA                          11             0       36     410
0-24 months   ki1000108-IRC              INDIA                          11             1        5     410
0-24 months   ki1000108-IRC              INDIA                          12             0       40     410
0-24 months   ki1000108-IRC              INDIA                          12             1       12     410
0-24 months   ki1000109-EE               PAKISTAN                       1              0       56     379
0-24 months   ki1000109-EE               PAKISTAN                       1              1       37     379
0-24 months   ki1000109-EE               PAKISTAN                       2              0       53     379
0-24 months   ki1000109-EE               PAKISTAN                       2              1       28     379
0-24 months   ki1000109-EE               PAKISTAN                       3              0       23     379
0-24 months   ki1000109-EE               PAKISTAN                       3              1       18     379
0-24 months   ki1000109-EE               PAKISTAN                       4              0       15     379
0-24 months   ki1000109-EE               PAKISTAN                       4              1       14     379
0-24 months   ki1000109-EE               PAKISTAN                       5              0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       5              1        2     379
0-24 months   ki1000109-EE               PAKISTAN                       6              0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       6              1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7              0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7              1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8              0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8              1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9              0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9              1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       10             0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       10             1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       11             0       28     379
0-24 months   ki1000109-EE               PAKISTAN                       11             1       21     379
0-24 months   ki1000109-EE               PAKISTAN                       12             0       60     379
0-24 months   ki1000109-EE               PAKISTAN                       12             1       24     379
0-24 months   ki1000109-ResPak           PAKISTAN                       1              0        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1              1        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2              0       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2              1        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3              0       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3              1        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4              0       29     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4              1        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5              0       30     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5              1        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6              0       45     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6              1        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7              0       34     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7              1        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8              0       35     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8              1        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9              0       24     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9              1        0     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10             0        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10             1        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11             0        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11             1        0     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12             0        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12             1        1     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1              0       82    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1              1       26    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2              0       73    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2              1       19    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3              0       71    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3              1       17    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4              0       65    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4              1       20    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5              0       65    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5              1       24    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6              0       92    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6              1       24    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7              0       93    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7              1       33    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8              0      124    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8              1       45    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9              0      142    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9              1       42    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10             0      128    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10             1       36    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11             0      104    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11             1       41    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12             0      123    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12             1       24    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0       38     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              1       27     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2              0       29     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2              1       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3              0       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3              1       16     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4              0       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4              1       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5              0       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5              1       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6              0       21     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6              1       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7              0       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7              1        6     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8              0        0     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8              1        0     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9              0        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9              1        6     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10             0       20     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10             1       10     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11             0       35     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11             1       16     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12             0       42     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12             1       23     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              0       49     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              1       19     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2              0       47     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2              1       13     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3              0       50     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3              1       11     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4              0       42     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4              1       10     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5              0       37     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5              1       10     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6              0       39     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6              1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7              0       35     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7              1       13     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8              0       28     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8              1       14     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9              0       27     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9              1        6     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10             0       51     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10             1        9     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11             0       39     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11             1       13     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12             0       43     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12             1       11     624
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      217    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       15    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      150    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        9    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      179    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        7    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      153    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        8    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      194    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        4    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      164    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1       10    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      165    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        8    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      184    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1       11    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      217    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1       13    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      219    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1       10    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      215    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1       12    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      220    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1       12    2396
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1              0       18     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1              1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2              0       19     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2              1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3              0       20     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3              1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4              0       24     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4              1        5     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5              0       31     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5              1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6              0       35     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6              1        4     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7              0       25     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7              1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8              0       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8              1        3     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9              0       33     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9              1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10             0       32     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10             1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11             0       29     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11             1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12             0       10     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12             1        0     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              0      214    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              1       25    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2              0      179    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2              1       29    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3              0      184    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3              1       30    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4              0      159    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4              1       24    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5              0      221    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5              1       36    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6              0      321    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6              1       45    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7              0      362    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7              1       49    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8              0      315    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8              1       46    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9              0      256    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9              1       39    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10             0      336    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10             1       36    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11             0      173    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11             1       24    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12             0      138    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12             1       24    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1              0        2     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2              0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2              1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3              0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3              1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4              0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4              1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5              0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5              1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6              0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6              1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7              0       80     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7              1       50     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8              0      167     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8              1       67     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9              0      146     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9              1       70     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10             0       11     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10             1        3     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11             0        2     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11             1        3     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12             0        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12             1        0     602
0-24 months   ki1114097-CMIN             BANGLADESH                     1              0       18     271
0-24 months   ki1114097-CMIN             BANGLADESH                     1              1       10     271
0-24 months   ki1114097-CMIN             BANGLADESH                     2              0       22     271
0-24 months   ki1114097-CMIN             BANGLADESH                     2              1       12     271
0-24 months   ki1114097-CMIN             BANGLADESH                     3              0       17     271
0-24 months   ki1114097-CMIN             BANGLADESH                     3              1        3     271
0-24 months   ki1114097-CMIN             BANGLADESH                     4              0       14     271
0-24 months   ki1114097-CMIN             BANGLADESH                     4              1        6     271
0-24 months   ki1114097-CMIN             BANGLADESH                     5              0       14     271
0-24 months   ki1114097-CMIN             BANGLADESH                     5              1        7     271
0-24 months   ki1114097-CMIN             BANGLADESH                     6              0       19     271
0-24 months   ki1114097-CMIN             BANGLADESH                     6              1        6     271
0-24 months   ki1114097-CMIN             BANGLADESH                     7              0        7     271
0-24 months   ki1114097-CMIN             BANGLADESH                     7              1        6     271
0-24 months   ki1114097-CMIN             BANGLADESH                     8              0       10     271
0-24 months   ki1114097-CMIN             BANGLADESH                     8              1        5     271
0-24 months   ki1114097-CMIN             BANGLADESH                     9              0       14     271
0-24 months   ki1114097-CMIN             BANGLADESH                     9              1        7     271
0-24 months   ki1114097-CMIN             BANGLADESH                     10             0       17     271
0-24 months   ki1114097-CMIN             BANGLADESH                     10             1        6     271
0-24 months   ki1114097-CMIN             BANGLADESH                     11             0        4     271
0-24 months   ki1114097-CMIN             BANGLADESH                     11             1        0     271
0-24 months   ki1114097-CMIN             BANGLADESH                     12             0       23     271
0-24 months   ki1114097-CMIN             BANGLADESH                     12             1       24     271
0-24 months   ki1114097-CMIN             BRAZIL                         1              0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         1              1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         2              0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         2              1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         3              0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         3              1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         4              0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         4              1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         5              0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         5              1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         6              0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         6              1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         7              0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7              1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         8              0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         8              1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         9              0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         9              1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         10             0       16     119
0-24 months   ki1114097-CMIN             BRAZIL                         10             1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         11             0       12     119
0-24 months   ki1114097-CMIN             BRAZIL                         11             1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         12             0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         12             1        1     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              0       41    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              1        3    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              0      146    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              1       21    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              0      149    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              1       13    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              0      243    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              1       24    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              0      173    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              1       12    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              0       93    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              1        4    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              0       91    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              1        8    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              0       74    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              1       12    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              0      152    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              1        9    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             0       63    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             1        3    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             0       58    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             1        5    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             0      102    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             1        8    1507
0-24 months   ki1114097-CMIN             PERU                           1              0       57     929
0-24 months   ki1114097-CMIN             PERU                           1              1        0     929
0-24 months   ki1114097-CMIN             PERU                           2              0      165     929
0-24 months   ki1114097-CMIN             PERU                           2              1        5     929
0-24 months   ki1114097-CMIN             PERU                           3              0      129     929
0-24 months   ki1114097-CMIN             PERU                           3              1        5     929
0-24 months   ki1114097-CMIN             PERU                           4              0       73     929
0-24 months   ki1114097-CMIN             PERU                           4              1        5     929
0-24 months   ki1114097-CMIN             PERU                           5              0       84     929
0-24 months   ki1114097-CMIN             PERU                           5              1        4     929
0-24 months   ki1114097-CMIN             PERU                           6              0       50     929
0-24 months   ki1114097-CMIN             PERU                           6              1        3     929
0-24 months   ki1114097-CMIN             PERU                           7              0       54     929
0-24 months   ki1114097-CMIN             PERU                           7              1        2     929
0-24 months   ki1114097-CMIN             PERU                           8              0       77     929
0-24 months   ki1114097-CMIN             PERU                           8              1        2     929
0-24 months   ki1114097-CMIN             PERU                           9              0       49     929
0-24 months   ki1114097-CMIN             PERU                           9              1        2     929
0-24 months   ki1114097-CMIN             PERU                           10             0       40     929
0-24 months   ki1114097-CMIN             PERU                           10             1        1     929
0-24 months   ki1114097-CMIN             PERU                           11             0       73     929
0-24 months   ki1114097-CMIN             PERU                           11             1        1     929
0-24 months   ki1114097-CMIN             PERU                           12             0       47     929
0-24 months   ki1114097-CMIN             PERU                           12             1        1     929
0-24 months   ki1114097-CONTENT          PERU                           1              0        9     215
0-24 months   ki1114097-CONTENT          PERU                           1              1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2              0       13     215
0-24 months   ki1114097-CONTENT          PERU                           2              1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3              0       27     215
0-24 months   ki1114097-CONTENT          PERU                           3              1        0     215
0-24 months   ki1114097-CONTENT          PERU                           4              0       18     215
0-24 months   ki1114097-CONTENT          PERU                           4              1        0     215
0-24 months   ki1114097-CONTENT          PERU                           5              0       25     215
0-24 months   ki1114097-CONTENT          PERU                           5              1        0     215
0-24 months   ki1114097-CONTENT          PERU                           6              0       12     215
0-24 months   ki1114097-CONTENT          PERU                           6              1        2     215
0-24 months   ki1114097-CONTENT          PERU                           7              0       16     215
0-24 months   ki1114097-CONTENT          PERU                           7              1        0     215
0-24 months   ki1114097-CONTENT          PERU                           8              0       26     215
0-24 months   ki1114097-CONTENT          PERU                           8              1        0     215
0-24 months   ki1114097-CONTENT          PERU                           9              0       18     215
0-24 months   ki1114097-CONTENT          PERU                           9              1        1     215
0-24 months   ki1114097-CONTENT          PERU                           10             0       22     215
0-24 months   ki1114097-CONTENT          PERU                           10             1        1     215
0-24 months   ki1114097-CONTENT          PERU                           11             0       18     215
0-24 months   ki1114097-CONTENT          PERU                           11             1        0     215
0-24 months   ki1114097-CONTENT          PERU                           12             0        7     215
0-24 months   ki1114097-CONTENT          PERU                           12             1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        1              0     1181   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1              1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2              0     1001   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2              1        4   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3              0     1184   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3              1        1   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4              0     1130   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4              1        0   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5              0     1151   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5              1        1   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6              0     1217   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6              1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7              0     1471   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7              1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8              0     1616   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8              1        1   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9              0     1589   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9              1        1   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10             0     1801   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10             1        4   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11             0     1707   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11             1        2   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12             0     1822   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12             1        4   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0     1301   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1       55   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              0      993   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              1       47   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              0     1091   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              1       59   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              0      989   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              1       37   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              0      963   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              1       55   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              0     1097   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              1       49   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              0     1125   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              1       49   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              0     1188   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              1       39   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              0     1281   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              1       34   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             0     1005   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             1       48   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             0     1098   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             1       46   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             0     1198   13910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             1       63   13910
0-24 months   ki1148112-LCNI-5           MALAWI                         1              0       51     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1              1        4     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2              0      110     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2              1        5     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3              0       90     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3              1        8     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4              0      106     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4              1        4     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5              0      107     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5              1        4     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6              0       84     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6              1        7     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7              0       69     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7              1        3     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8              0       40     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8              1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9              0       26     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9              1        3     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10             0       35     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10             1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11             0       47     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11             1        2     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12             0       32     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12             1        2     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     2320   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1      215   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0     1957   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1      173   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              0     2296   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              1      167   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              0     1675   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              1      169   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              0     1243   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              1      158   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              0     1209   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              1      148   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              0     1377   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              1      156   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              0     1829   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              1      172   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              0     2409   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              1      223   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             0     2666   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             1      265   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             0     2696   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             1      267   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             0     2866   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             1      271   26927
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0       51    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1        7    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              0      325    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              1       40    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              0      396    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              1       76    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              0      750    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              1      182    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              0      513    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              1      112    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              0      379    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              1       81    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              0      725    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              1      166    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              0      466    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              1       67    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              0      442    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              1       73    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             0      296    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             1       37    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             0      145    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             1       26    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             0       76    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             1       11    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0       20     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2              0       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2              1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3              0       26     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3              1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4              0       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4              1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5              0       21     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5              1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6              0        9     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6              1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7              0       20     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7              1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8              0       25     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8              1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9              0       23     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9              1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10             0       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10             1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11             0       17     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11             1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12             0       27     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12             1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1              0       13     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2              0       26     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3              0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4              0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5              0       22     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6              0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7              0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8              0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9              0       31     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9              1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10             0       22     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10             1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11             0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11             1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12             0       17     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12             1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1              0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1              1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2              0       23     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2              1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3              0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3              1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4              0       16     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4              1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5              0        7     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5              1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6              0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6              1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7              0       22     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7              1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8              0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8              1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9              0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9              1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10             0       25     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10             1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11             0       25     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11             1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12             0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12             1        1     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1              0       23     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1              1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2              0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2              1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3              0       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3              1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4              0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4              1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5              0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5              1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6              0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6              1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7              0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7              1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8              0       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8              1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9              0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9              1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10             0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10             1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11             0       23     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11             1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12             0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12             1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           1              0       40     302
0-6 months    ki0047075b-MAL-ED          PERU                           1              1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           2              0       25     302
0-6 months    ki0047075b-MAL-ED          PERU                           2              1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           3              0       22     302
0-6 months    ki0047075b-MAL-ED          PERU                           3              1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           4              0       21     302
0-6 months    ki0047075b-MAL-ED          PERU                           4              1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           5              0       25     302
0-6 months    ki0047075b-MAL-ED          PERU                           5              1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           6              0       21     302
0-6 months    ki0047075b-MAL-ED          PERU                           6              1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           7              0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           7              1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           8              0       20     302
0-6 months    ki0047075b-MAL-ED          PERU                           8              1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           9              0       22     302
0-6 months    ki0047075b-MAL-ED          PERU                           9              1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           10             0       26     302
0-6 months    ki0047075b-MAL-ED          PERU                           10             1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           11             0       34     302
0-6 months    ki0047075b-MAL-ED          PERU                           11             1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           12             0       21     302
0-6 months    ki0047075b-MAL-ED          PERU                           12             1        0     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       39     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       33     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       20     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       13     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       15     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       22     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       26     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              0       13     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       26     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       28     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        2     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       29     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       43     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        1     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       21     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        2     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       27     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       23     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0       11     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0       17     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       25     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0       12     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       22     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0       20     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       29     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       31     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        1     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              0       21     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              0       28     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              1        1     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              0       42     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              0       32     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              0       32     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              1        1     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              0       38     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              0       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             0       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             1        0     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             0       36     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             1        5     368
0-6 months    ki1000108-IRC              INDIA                          1              0       33     409
0-6 months    ki1000108-IRC              INDIA                          1              1        3     409
0-6 months    ki1000108-IRC              INDIA                          2              0       26     409
0-6 months    ki1000108-IRC              INDIA                          2              1        1     409
0-6 months    ki1000108-IRC              INDIA                          3              0       29     409
0-6 months    ki1000108-IRC              INDIA                          3              1        0     409
0-6 months    ki1000108-IRC              INDIA                          4              0       21     409
0-6 months    ki1000108-IRC              INDIA                          4              1        1     409
0-6 months    ki1000108-IRC              INDIA                          5              0       18     409
0-6 months    ki1000108-IRC              INDIA                          5              1        2     409
0-6 months    ki1000108-IRC              INDIA                          6              0       34     409
0-6 months    ki1000108-IRC              INDIA                          6              1        3     409
0-6 months    ki1000108-IRC              INDIA                          7              0       33     409
0-6 months    ki1000108-IRC              INDIA                          7              1        3     409
0-6 months    ki1000108-IRC              INDIA                          8              0       45     409
0-6 months    ki1000108-IRC              INDIA                          8              1        0     409
0-6 months    ki1000108-IRC              INDIA                          9              0       26     409
0-6 months    ki1000108-IRC              INDIA                          9              1        1     409
0-6 months    ki1000108-IRC              INDIA                          10             0       34     409
0-6 months    ki1000108-IRC              INDIA                          10             1        3     409
0-6 months    ki1000108-IRC              INDIA                          11             0       41     409
0-6 months    ki1000108-IRC              INDIA                          11             1        0     409
0-6 months    ki1000108-IRC              INDIA                          12             0       44     409
0-6 months    ki1000108-IRC              INDIA                          12             1        8     409
0-6 months    ki1000109-EE               PAKISTAN                       1              0       77     379
0-6 months    ki1000109-EE               PAKISTAN                       1              1       16     379
0-6 months    ki1000109-EE               PAKISTAN                       2              0       71     379
0-6 months    ki1000109-EE               PAKISTAN                       2              1       10     379
0-6 months    ki1000109-EE               PAKISTAN                       3              0       35     379
0-6 months    ki1000109-EE               PAKISTAN                       3              1        6     379
0-6 months    ki1000109-EE               PAKISTAN                       4              0       26     379
0-6 months    ki1000109-EE               PAKISTAN                       4              1        3     379
0-6 months    ki1000109-EE               PAKISTAN                       5              0        1     379
0-6 months    ki1000109-EE               PAKISTAN                       5              1        1     379
0-6 months    ki1000109-EE               PAKISTAN                       6              0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       6              1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7              0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7              1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8              0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8              1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9              0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9              1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       10             0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       10             1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       11             0       42     379
0-6 months    ki1000109-EE               PAKISTAN                       11             1        7     379
0-6 months    ki1000109-EE               PAKISTAN                       12             0       74     379
0-6 months    ki1000109-EE               PAKISTAN                       12             1       10     379
0-6 months    ki1000109-ResPak           PAKISTAN                       1              0        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1              1        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2              0       12     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2              1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3              0       12     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3              1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4              0       32     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4              1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5              0       34     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5              1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6              0       50     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6              1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7              0       37     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7              1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8              0       37     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8              1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9              0       24     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9              1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10             0        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10             1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11             0        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11             1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12             0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12             1        0     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0       98    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1        7    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2              0       86    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2              1        6    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3              0       82    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3              1        5    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4              0       79    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4              1        5    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5              0       78    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5              1       11    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6              0      108    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6              1        7    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7              0      114    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7              1       12    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8              0      157    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8              1       12    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9              0      172    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9              1       10    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10             0      153    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10             1       10    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11             0      131    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11             1       14    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12             0      140    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12             1        7    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0       57     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1        7     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              0       36     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              1        4     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              0       35     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              1        5     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              0       29     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              0       30     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              0       32     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              1        2     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              0       17     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              0        0     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              1        0     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              0       12     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             0       26     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             1        4     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             0       51     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             1        0     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             0       59     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             1        6     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1              0       58     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1              1        9     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2              0       54     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2              1        6     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3              0       59     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3              1        2     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4              0       47     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4              1        4     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5              0       42     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5              1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6              0       46     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6              1        1     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7              0       44     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7              1        4     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8              0       37     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8              1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9              0       31     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9              1        2     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10             0       58     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10             1        2     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11             0       48     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11             1        4     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12             0       53     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12             1        1     622
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      230    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      159    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      185    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      160    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      197    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      173    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      171    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      194    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        1    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      226    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        4    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      227    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      225    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      230    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        2    2396
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              0       18     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              0       19     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              0       22     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              1        3     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              0       27     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              0       35     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              0       17     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              0       31     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             0       32     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             0       30     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             0       10     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             1        0     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1              0        2     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2              0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2              1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3              0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3              1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4              0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4              1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5              0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5              1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6              0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6              1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7              0      121     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7              1        9     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8              0      225     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8              1        9     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9              0      212     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9              1        4     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10             0       13     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10             1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11             0        4     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11             1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12             0        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12             1        0     602
0-6 months    ki1114097-CMIN             BANGLADESH                     1              0       25     271
0-6 months    ki1114097-CMIN             BANGLADESH                     1              1        3     271
0-6 months    ki1114097-CMIN             BANGLADESH                     2              0       32     271
0-6 months    ki1114097-CMIN             BANGLADESH                     2              1        2     271
0-6 months    ki1114097-CMIN             BANGLADESH                     3              0       20     271
0-6 months    ki1114097-CMIN             BANGLADESH                     3              1        0     271
0-6 months    ki1114097-CMIN             BANGLADESH                     4              0       19     271
0-6 months    ki1114097-CMIN             BANGLADESH                     4              1        1     271
0-6 months    ki1114097-CMIN             BANGLADESH                     5              0       20     271
0-6 months    ki1114097-CMIN             BANGLADESH                     5              1        1     271
0-6 months    ki1114097-CMIN             BANGLADESH                     6              0       23     271
0-6 months    ki1114097-CMIN             BANGLADESH                     6              1        2     271
0-6 months    ki1114097-CMIN             BANGLADESH                     7              0       13     271
0-6 months    ki1114097-CMIN             BANGLADESH                     7              1        0     271
0-6 months    ki1114097-CMIN             BANGLADESH                     8              0       14     271
0-6 months    ki1114097-CMIN             BANGLADESH                     8              1        1     271
0-6 months    ki1114097-CMIN             BANGLADESH                     9              0       19     271
0-6 months    ki1114097-CMIN             BANGLADESH                     9              1        2     271
0-6 months    ki1114097-CMIN             BANGLADESH                     10             0       22     271
0-6 months    ki1114097-CMIN             BANGLADESH                     10             1        1     271
0-6 months    ki1114097-CMIN             BANGLADESH                     11             0        4     271
0-6 months    ki1114097-CMIN             BANGLADESH                     11             1        0     271
0-6 months    ki1114097-CMIN             BANGLADESH                     12             0       45     271
0-6 months    ki1114097-CMIN             BANGLADESH                     12             1        2     271
0-6 months    ki1114097-CMIN             BRAZIL                         1              0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         1              1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         2              0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         2              1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         3              0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         3              1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         4              0       10     119
0-6 months    ki1114097-CMIN             BRAZIL                         4              1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         5              0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5              1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6              0        6     119
0-6 months    ki1114097-CMIN             BRAZIL                         6              1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         7              0        4     119
0-6 months    ki1114097-CMIN             BRAZIL                         7              1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         8              0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         8              1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         9              0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         9              1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         10             0       16     119
0-6 months    ki1114097-CMIN             BRAZIL                         10             1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         11             0       12     119
0-6 months    ki1114097-CMIN             BRAZIL                         11             1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         12             0       10     119
0-6 months    ki1114097-CMIN             BRAZIL                         12             1        0     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              0       25     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              0      105     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              1        2     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              0      110     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              0      124     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              0      117     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              0       63     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              0       47     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              0       52     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9              0      118     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9              1        1     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10             0       46     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10             1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             0       54     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             1        0     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             0       97     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             1        0     964
0-6 months    ki1114097-CMIN             PERU                           1              0       54     699
0-6 months    ki1114097-CMIN             PERU                           1              1        0     699
0-6 months    ki1114097-CMIN             PERU                           2              0       60     699
0-6 months    ki1114097-CMIN             PERU                           2              1        1     699
0-6 months    ki1114097-CMIN             PERU                           3              0       75     699
0-6 months    ki1114097-CMIN             PERU                           3              1        2     699
0-6 months    ki1114097-CMIN             PERU                           4              0       70     699
0-6 months    ki1114097-CMIN             PERU                           4              1        2     699
0-6 months    ki1114097-CMIN             PERU                           5              0       77     699
0-6 months    ki1114097-CMIN             PERU                           5              1        1     699
0-6 months    ki1114097-CMIN             PERU                           6              0       50     699
0-6 months    ki1114097-CMIN             PERU                           6              1        1     699
0-6 months    ki1114097-CMIN             PERU                           7              0       48     699
0-6 months    ki1114097-CMIN             PERU                           7              1        0     699
0-6 months    ki1114097-CMIN             PERU                           8              0       55     699
0-6 months    ki1114097-CMIN             PERU                           8              1        1     699
0-6 months    ki1114097-CMIN             PERU                           9              0       45     699
0-6 months    ki1114097-CMIN             PERU                           9              1        0     699
0-6 months    ki1114097-CMIN             PERU                           10             0       37     699
0-6 months    ki1114097-CMIN             PERU                           10             1        1     699
0-6 months    ki1114097-CMIN             PERU                           11             0       70     699
0-6 months    ki1114097-CMIN             PERU                           11             1        1     699
0-6 months    ki1114097-CMIN             PERU                           12             0       47     699
0-6 months    ki1114097-CMIN             PERU                           12             1        1     699
0-6 months    ki1114097-CONTENT          PERU                           1              0        9     215
0-6 months    ki1114097-CONTENT          PERU                           1              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2              0       13     215
0-6 months    ki1114097-CONTENT          PERU                           2              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3              0       27     215
0-6 months    ki1114097-CONTENT          PERU                           3              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4              0       18     215
0-6 months    ki1114097-CONTENT          PERU                           4              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           5              0       25     215
0-6 months    ki1114097-CONTENT          PERU                           5              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           6              0       14     215
0-6 months    ki1114097-CONTENT          PERU                           6              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7              0       16     215
0-6 months    ki1114097-CONTENT          PERU                           7              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           8              0       26     215
0-6 months    ki1114097-CONTENT          PERU                           8              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           9              0       19     215
0-6 months    ki1114097-CONTENT          PERU                           9              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           10             0       23     215
0-6 months    ki1114097-CONTENT          PERU                           10             1        0     215
0-6 months    ki1114097-CONTENT          PERU                           11             0       18     215
0-6 months    ki1114097-CONTENT          PERU                           11             1        0     215
0-6 months    ki1114097-CONTENT          PERU                           12             0        7     215
0-6 months    ki1114097-CONTENT          PERU                           12             1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1              0     1183   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2              0     1002   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2              1        3   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3              0     1183   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4              0     1130   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4              1        0   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5              0     1151   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6              0     1218   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6              1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7              0     1472   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7              1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8              0     1616   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9              0     1588   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10             0     1800   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10             1        3   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11             0     1707   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11             1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12             0     1824   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12             1        2   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0     1322   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1       15   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              0     1010   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              1       15   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              0     1122   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              1       19   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              0     1013   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              1       10   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              0     1000   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              1        9   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              0     1130   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              1       13   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              0     1155   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              1       18   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              0     1214   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              1       11   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              0     1297   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              1       12   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             0     1030   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             1       12   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             0     1115   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             1       17   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             0     1241   13816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             1       16   13816
0-6 months    ki1148112-LCNI-5           MALAWI                         1              0        7     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1              1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2              0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2              1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3              0       57     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3              1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4              0       49     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4              1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5              0       27     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5              1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6              0       28     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6              1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7              0       29     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7              1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8              0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8              1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9              0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9              1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10             0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10             1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11             0       10     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11             1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12             0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12             1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     2417   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1      108   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0     2038   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1       86   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              0     2368   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              1       88   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              0     1760   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              1       73   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              0     1341   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              1       46   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              0     1309   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              1       39   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              0     1481   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              1       49   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              0     1920   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              1       76   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              0     2518   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              1      107   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             0     2792   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             1      127   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             0     2828   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             1      123   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             0     2992   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             1      134   26820
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0       51    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1        1    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              0      351    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              1        6    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              0      440    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              1       19    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              0      892    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              1       27    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              0      594    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              1       20    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              0      442    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              1       11    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              0      858    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              1       27    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              0      513    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              1       11    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              0      336    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              1       10    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             0      265    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             1        1    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             0      141    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             1        2    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             0       74    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             1        0    5092
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0       17     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1        1     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2              0       15     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2              1        5     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3              0       18     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3              1        6     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4              0       21     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4              1        1     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5              0       18     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5              1        3     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6              0        7     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6              1        1     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7              0       15     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7              1        5     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8              0       21     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8              1        1     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9              0       15     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9              1        6     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10             0       19     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10             1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11             0       13     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11             1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12             0       25     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12             1        2     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1              0       13     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2              0       23     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2              1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3              0       18     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3              1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4              0       10     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4              1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5              0       19     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5              1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6              0       10     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6              1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7              0       17     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7              1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8              0       15     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8              1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9              0       27     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9              1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10             0       20     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10             1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11             0       19     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11             1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12             0       14     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12             1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1              0       15     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1              1        3     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2              0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2              1        2     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3              0       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3              1        3     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4              0       10     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4              1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5              0        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5              1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6              0       16     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6              1        2     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7              0       16     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7              1        7     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8              0       15     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8              1        5     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9              0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9              1        3     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10             0       22     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10             1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11             0       17     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11             1        8     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12             0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12             1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1              0       24     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1              1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2              0       14     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2              1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3              0       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3              1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4              0       17     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4              1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5              0       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5              1        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6              0       17     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6              1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7              0       20     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7              1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8              0       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8              1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9              0       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9              1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10             0       22     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10             1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11             0       22     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11             1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12             0       15     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12             1        1     235
6-24 months   ki0047075b-MAL-ED          PERU                           1              0       33     270
6-24 months   ki0047075b-MAL-ED          PERU                           1              1        4     270
6-24 months   ki0047075b-MAL-ED          PERU                           2              0       21     270
6-24 months   ki0047075b-MAL-ED          PERU                           2              1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           3              0       20     270
6-24 months   ki0047075b-MAL-ED          PERU                           3              1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           4              0       20     270
6-24 months   ki0047075b-MAL-ED          PERU                           4              1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           5              0       21     270
6-24 months   ki0047075b-MAL-ED          PERU                           5              1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           6              0       18     270
6-24 months   ki0047075b-MAL-ED          PERU                           6              1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           7              0       21     270
6-24 months   ki0047075b-MAL-ED          PERU                           7              1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           8              0       16     270
6-24 months   ki0047075b-MAL-ED          PERU                           8              1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           9              0       21     270
6-24 months   ki0047075b-MAL-ED          PERU                           9              1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           10             0       18     270
6-24 months   ki0047075b-MAL-ED          PERU                           10             1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           11             0       32     270
6-24 months   ki0047075b-MAL-ED          PERU                           11             1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           12             0       18     270
6-24 months   ki0047075b-MAL-ED          PERU                           12             1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       27     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        7     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       27     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       18     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       11     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       12     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       17     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       22     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        9     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       20     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       21     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       25     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       31     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        4     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       16     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        5     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        5     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        9     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0       16     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       25     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       24     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        5     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       24     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        2     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0       23     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1        4     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              0       18     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              0       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              0       25     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              1        4     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              0       38     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              0       29     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              0       30     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              0       33     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              1        8     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              0       19     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             0       16     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             0       32     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             1        8     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             0       18     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             1       11     373
6-24 months   ki1000108-IRC              INDIA                          1              0       27     410
6-24 months   ki1000108-IRC              INDIA                          1              1        9     410
6-24 months   ki1000108-IRC              INDIA                          2              0       24     410
6-24 months   ki1000108-IRC              INDIA                          2              1        3     410
6-24 months   ki1000108-IRC              INDIA                          3              0       27     410
6-24 months   ki1000108-IRC              INDIA                          3              1        2     410
6-24 months   ki1000108-IRC              INDIA                          4              0       18     410
6-24 months   ki1000108-IRC              INDIA                          4              1        4     410
6-24 months   ki1000108-IRC              INDIA                          5              0       15     410
6-24 months   ki1000108-IRC              INDIA                          5              1        6     410
6-24 months   ki1000108-IRC              INDIA                          6              0       32     410
6-24 months   ki1000108-IRC              INDIA                          6              1        5     410
6-24 months   ki1000108-IRC              INDIA                          7              0       31     410
6-24 months   ki1000108-IRC              INDIA                          7              1        5     410
6-24 months   ki1000108-IRC              INDIA                          8              0       39     410
6-24 months   ki1000108-IRC              INDIA                          8              1        6     410
6-24 months   ki1000108-IRC              INDIA                          9              0       19     410
6-24 months   ki1000108-IRC              INDIA                          9              1        8     410
6-24 months   ki1000108-IRC              INDIA                          10             0       32     410
6-24 months   ki1000108-IRC              INDIA                          10             1        5     410
6-24 months   ki1000108-IRC              INDIA                          11             0       36     410
6-24 months   ki1000108-IRC              INDIA                          11             1        5     410
6-24 months   ki1000108-IRC              INDIA                          12             0       46     410
6-24 months   ki1000108-IRC              INDIA                          12             1        6     410
6-24 months   ki1000109-EE               PAKISTAN                       1              0       57     373
6-24 months   ki1000109-EE               PAKISTAN                       1              1       32     373
6-24 months   ki1000109-EE               PAKISTAN                       2              0       54     373
6-24 months   ki1000109-EE               PAKISTAN                       2              1       26     373
6-24 months   ki1000109-EE               PAKISTAN                       3              0       22     373
6-24 months   ki1000109-EE               PAKISTAN                       3              1       18     373
6-24 months   ki1000109-EE               PAKISTAN                       4              0       15     373
6-24 months   ki1000109-EE               PAKISTAN                       4              1       14     373
6-24 months   ki1000109-EE               PAKISTAN                       5              0        1     373
6-24 months   ki1000109-EE               PAKISTAN                       5              1        1     373
6-24 months   ki1000109-EE               PAKISTAN                       6              0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       6              1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       7              0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       7              1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       8              0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       8              1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       9              0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       9              1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       10             0        0     373
6-24 months   ki1000109-EE               PAKISTAN                       10             1        0     373
6-24 months   ki1000109-EE               PAKISTAN                       11             0       30     373
6-24 months   ki1000109-EE               PAKISTAN                       11             1       19     373
6-24 months   ki1000109-EE               PAKISTAN                       12             0       62     373
6-24 months   ki1000109-EE               PAKISTAN                       12             1       22     373
6-24 months   ki1000109-ResPak           PAKISTAN                       1              0        6     230
6-24 months   ki1000109-ResPak           PAKISTAN                       1              1        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2              0        9     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2              1        2     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3              0       12     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3              1        2     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4              0       20     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4              1        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5              0       27     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5              1        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6              0       38     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6              1        6     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7              0       27     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7              1        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8              0       30     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8              1        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9              0       21     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9              1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10             0        6     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10             1        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11             0        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11             1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12             0        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12             1        1     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1              0       72    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1              1       24    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2              0       67    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2              1       15    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3              0       65    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3              1       17    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4              0       63    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4              1       17    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5              0       63    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5              1       18    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6              0       85    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6              1       22    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7              0       90    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7              1       27    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8              0      114    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8              1       40    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9              0      131    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9              1       41    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10             0      117    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10             1       33    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11             0       94    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11             1       37    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12             0      114    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12             1       23    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0       38     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              1       24     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2              0       27     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2              1       12     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3              0       24     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3              1       12     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4              0       16     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4              1       13     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5              0       19     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5              1       12     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6              0       20     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6              1       13     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7              0       12     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7              1        6     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8              0        0     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8              1        0     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9              0        6     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9              1        6     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10             0       20     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10             1        9     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11             0       32     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11             1       16     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12             0       42     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12             1       22     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              0       39     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              1       13     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2              0       38     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2              1       12     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3              0       42     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3              1        9     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4              0       36     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4              1        9     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5              0       35     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5              1        7     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6              0       33     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6              1        7     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7              0       33     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7              1       12     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8              0       27     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8              1       10     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9              0       23     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9              1        6     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10             0       46     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10             1        7     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11             0       37     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11             1       11     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12             0       39     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12             1       11     542
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      183    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       15    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      124    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        9    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      143    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        7    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      130    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        8    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      154    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        4    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      130    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1       10    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      135    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        7    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      166    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1       10    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      188    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1       11    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      188    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        8    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      179    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1       12    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      184    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1       12    2017
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1              0       14     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1              1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2              0       18     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2              1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3              0       17     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3              1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4              0       19     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4              1        4     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5              0       29     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5              1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6              0       35     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6              1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7              0       24     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7              1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8              0       16     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8              1        3     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9              0       30     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9              1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10             0       23     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10             1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11             0       25     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11             1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12             0        9     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12             1        0     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              0      214    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              1       25    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2              0      179    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2              1       29    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3              0      184    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3              1       30    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4              0      159    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4              1       24    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5              0      221    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5              1       36    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6              0      321    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6              1       45    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7              0      362    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7              1       49    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8              0      315    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8              1       46    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9              0      256    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9              1       39    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10             0      336    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10             1       36    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11             0      173    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11             1       24    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12             0      138    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12             1       24    3265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1              0        2     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2              0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2              1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3              0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3              1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4              0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4              1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5              0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5              1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6              0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6              1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7              0       77     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7              1       49     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8              0      165     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8              1       66     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9              0      142     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9              1       70     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10             0       11     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10             1        3     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11             0        2     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11             1        2     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12             0        1     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12             1        0     590
6-24 months   ki1114097-CMIN             BANGLADESH                     1              0       18     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1              1        8     251
6-24 months   ki1114097-CMIN             BANGLADESH                     2              0       19     251
6-24 months   ki1114097-CMIN             BANGLADESH                     2              1       12     251
6-24 months   ki1114097-CMIN             BANGLADESH                     3              0       17     251
6-24 months   ki1114097-CMIN             BANGLADESH                     3              1        3     251
6-24 months   ki1114097-CMIN             BANGLADESH                     4              0       12     251
6-24 months   ki1114097-CMIN             BANGLADESH                     4              1        6     251
6-24 months   ki1114097-CMIN             BANGLADESH                     5              0       13     251
6-24 months   ki1114097-CMIN             BANGLADESH                     5              1        7     251
6-24 months   ki1114097-CMIN             BANGLADESH                     6              0       17     251
6-24 months   ki1114097-CMIN             BANGLADESH                     6              1        6     251
6-24 months   ki1114097-CMIN             BANGLADESH                     7              0        7     251
6-24 months   ki1114097-CMIN             BANGLADESH                     7              1        6     251
6-24 months   ki1114097-CMIN             BANGLADESH                     8              0       10     251
6-24 months   ki1114097-CMIN             BANGLADESH                     8              1        4     251
6-24 months   ki1114097-CMIN             BANGLADESH                     9              0       14     251
6-24 months   ki1114097-CMIN             BANGLADESH                     9              1        5     251
6-24 months   ki1114097-CMIN             BANGLADESH                     10             0       13     251
6-24 months   ki1114097-CMIN             BANGLADESH                     10             1        6     251
6-24 months   ki1114097-CMIN             BANGLADESH                     11             0        2     251
6-24 months   ki1114097-CMIN             BANGLADESH                     11             1        0     251
6-24 months   ki1114097-CMIN             BANGLADESH                     12             0       23     251
6-24 months   ki1114097-CMIN             BANGLADESH                     12             1       23     251
6-24 months   ki1114097-CMIN             BRAZIL                         1              0       13     119
6-24 months   ki1114097-CMIN             BRAZIL                         1              1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         2              0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         2              1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         3              0       14     119
6-24 months   ki1114097-CMIN             BRAZIL                         3              1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         4              0       10     119
6-24 months   ki1114097-CMIN             BRAZIL                         4              1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         5              0        5     119
6-24 months   ki1114097-CMIN             BRAZIL                         5              1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         6              0        6     119
6-24 months   ki1114097-CMIN             BRAZIL                         6              1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         7              0        4     119
6-24 months   ki1114097-CMIN             BRAZIL                         7              1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         8              0       13     119
6-24 months   ki1114097-CMIN             BRAZIL                         8              1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         9              0        9     119
6-24 months   ki1114097-CMIN             BRAZIL                         9              1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         10             0       16     119
6-24 months   ki1114097-CMIN             BRAZIL                         10             1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         11             0       12     119
6-24 months   ki1114097-CMIN             BRAZIL                         11             1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         12             0        9     119
6-24 months   ki1114097-CMIN             BRAZIL                         12             1        1     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              0       41    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              1        3    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              0      144    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              1       20    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              0      148    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              1       12    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              0      241    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              1       24    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              0      171    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              1       12    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              0       91    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              1        4    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              0       88    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              1        8    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              0       73    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              1       11    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              0      146    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              1        9    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             0       61    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             1        3    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             0       56    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             1        5    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             0      102    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             1        8    1481
6-24 months   ki1114097-CMIN             PERU                           1              0       47     878
6-24 months   ki1114097-CMIN             PERU                           1              1        0     878
6-24 months   ki1114097-CMIN             PERU                           2              0      162     878
6-24 months   ki1114097-CMIN             PERU                           2              1        4     878
6-24 months   ki1114097-CMIN             PERU                           3              0      124     878
6-24 months   ki1114097-CMIN             PERU                           3              1        5     878
6-24 months   ki1114097-CMIN             PERU                           4              0       71     878
6-24 months   ki1114097-CMIN             PERU                           4              1        5     878
6-24 months   ki1114097-CMIN             PERU                           5              0       83     878
6-24 months   ki1114097-CMIN             PERU                           5              1        3     878
6-24 months   ki1114097-CMIN             PERU                           6              0       49     878
6-24 months   ki1114097-CMIN             PERU                           6              1        2     878
6-24 months   ki1114097-CMIN             PERU                           7              0       53     878
6-24 months   ki1114097-CMIN             PERU                           7              1        2     878
6-24 months   ki1114097-CMIN             PERU                           8              0       74     878
6-24 months   ki1114097-CMIN             PERU                           8              1        1     878
6-24 months   ki1114097-CMIN             PERU                           9              0       47     878
6-24 months   ki1114097-CMIN             PERU                           9              1        2     878
6-24 months   ki1114097-CMIN             PERU                           10             0       35     878
6-24 months   ki1114097-CMIN             PERU                           10             1        0     878
6-24 months   ki1114097-CMIN             PERU                           11             0       67     878
6-24 months   ki1114097-CMIN             PERU                           11             1        0     878
6-24 months   ki1114097-CMIN             PERU                           12             0       42     878
6-24 months   ki1114097-CMIN             PERU                           12             1        0     878
6-24 months   ki1114097-CONTENT          PERU                           1              0        9     215
6-24 months   ki1114097-CONTENT          PERU                           1              1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2              0       13     215
6-24 months   ki1114097-CONTENT          PERU                           2              1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3              0       27     215
6-24 months   ki1114097-CONTENT          PERU                           3              1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4              0       18     215
6-24 months   ki1114097-CONTENT          PERU                           4              1        0     215
6-24 months   ki1114097-CONTENT          PERU                           5              0       25     215
6-24 months   ki1114097-CONTENT          PERU                           5              1        0     215
6-24 months   ki1114097-CONTENT          PERU                           6              0       12     215
6-24 months   ki1114097-CONTENT          PERU                           6              1        2     215
6-24 months   ki1114097-CONTENT          PERU                           7              0       16     215
6-24 months   ki1114097-CONTENT          PERU                           7              1        0     215
6-24 months   ki1114097-CONTENT          PERU                           8              0       26     215
6-24 months   ki1114097-CONTENT          PERU                           8              1        0     215
6-24 months   ki1114097-CONTENT          PERU                           9              0       18     215
6-24 months   ki1114097-CONTENT          PERU                           9              1        1     215
6-24 months   ki1114097-CONTENT          PERU                           10             0       22     215
6-24 months   ki1114097-CONTENT          PERU                           10             1        1     215
6-24 months   ki1114097-CONTENT          PERU                           11             0       18     215
6-24 months   ki1114097-CONTENT          PERU                           11             1        0     215
6-24 months   ki1114097-CONTENT          PERU                           12             0        7     215
6-24 months   ki1114097-CONTENT          PERU                           12             1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        1              0     1145   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1              1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        2              0      987   16598
6-24 months   ki1119695-PROBIT           BELARUS                        2              1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        3              0     1169   16598
6-24 months   ki1119695-PROBIT           BELARUS                        3              1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        4              0     1118   16598
6-24 months   ki1119695-PROBIT           BELARUS                        4              1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        5              0     1133   16598
6-24 months   ki1119695-PROBIT           BELARUS                        5              1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        6              0     1190   16598
6-24 months   ki1119695-PROBIT           BELARUS                        6              1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        7              0     1454   16598
6-24 months   ki1119695-PROBIT           BELARUS                        7              1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        8              0     1585   16598
6-24 months   ki1119695-PROBIT           BELARUS                        8              1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        9              0     1561   16598
6-24 months   ki1119695-PROBIT           BELARUS                        9              1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        10             0     1767   16598
6-24 months   ki1119695-PROBIT           BELARUS                        10             1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        11             0     1681   16598
6-24 months   ki1119695-PROBIT           BELARUS                        11             1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        12             0     1799   16598
6-24 months   ki1119695-PROBIT           BELARUS                        12             1        2   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0     1014   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1       44   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              0      770   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              1       35   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              0      829   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              1       41   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              0      782   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              1       27   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              0      718   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              1       46   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              0      834   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              1       38   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              0      856   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              1       32   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              0      885   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              1       29   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              0      983   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              1       24   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             0      751   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             1       37   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             0      859   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             1       31   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             0      956   10671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             1       50   10671
6-24 months   ki1148112-LCNI-5           MALAWI                         1              0       51     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1              1        4     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2              0      109     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2              1        5     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3              0       86     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3              1        8     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4              0      103     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4              1        4     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5              0      105     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5              1        4     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6              0       83     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6              1        7     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7              0       68     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7              1        3     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8              0       40     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8              1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9              0       26     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9              1        3     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10             0       35     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10             1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11             0       45     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11             1        2     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12             0       32     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12             1        2     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     1275   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1      115   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0     1128   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1      100   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              0     1372   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              1       92   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              0     1117   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              1      109   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              0     1088   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              1      122   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              0     1084   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              1      122   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              0     1154   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              1      126   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              0     1389   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              1      106   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              0     1464   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              1      133   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             0     1568   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             1      161   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             0     1568   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             1      162   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             0     1571   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             1      154   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0       51    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1        7    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              0      328    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              1       37    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              0      406    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              1       65    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              0      763    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              1      166    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              0      519    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              1      103    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              0      387    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              1       73    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              0      736    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              1      152    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              0      474    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              1       59    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              0      448    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              1       67    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             0      295    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             1       37    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             0      145    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             1       25    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             0       75    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             1       11    5429


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/e8b89768-86d7-4135-9403-502420a10ed5/02557278-ff1d-4fe7-b0ae-8febfe46c695/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8b89768-86d7-4135-9403-502420a10ed5/02557278-ff1d-4fe7-b0ae-8febfe46c695/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e8b89768-86d7-4135-9403-502420a10ed5/02557278-ff1d-4fe7-b0ae-8febfe46c695/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8b89768-86d7-4135-9403-502420a10ed5/02557278-ff1d-4fe7-b0ae-8febfe46c695/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2407407    0.1752626   0.3062189
0-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    NA                0.2065217    0.1163837   0.2966598
0-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    NA                0.1931818    0.0856080   0.3007557
0-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    NA                0.2352941    0.1455589   0.3250293
0-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    NA                0.2696629    0.1890236   0.3503022
0-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    NA                0.2068966    0.1193738   0.2944193
0-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    NA                0.2619048    0.1593920   0.3644175
0-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    NA                0.2662722    0.1637571   0.3687872
0-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    NA                0.2282609    0.1922326   0.2642891
0-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   NA                0.2195122    0.1366964   0.3023280
0-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   NA                0.2827586    0.2071966   0.3583206
0-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   NA                0.1632653    0.0919343   0.2345964
0-24 months   ki1017093-NIH-Birth       BANGLADESH     1                    NA                0.2794118    0.1726765   0.3861470
0-24 months   ki1017093-NIH-Birth       BANGLADESH     2                    NA                0.2166667    0.1123413   0.3209921
0-24 months   ki1017093-NIH-Birth       BANGLADESH     3                    NA                0.1803279    0.0837710   0.2768847
0-24 months   ki1017093-NIH-Birth       BANGLADESH     4                    NA                0.1923077    0.0851025   0.2995129
0-24 months   ki1017093-NIH-Birth       BANGLADESH     5                    NA                0.2127660    0.0956677   0.3298642
0-24 months   ki1017093-NIH-Birth       BANGLADESH     6                    NA                0.1702128    0.0626835   0.2777421
0-24 months   ki1017093-NIH-Birth       BANGLADESH     7                    NA                0.2708333    0.1450161   0.3966506
0-24 months   ki1017093-NIH-Birth       BANGLADESH     8                    NA                0.3333333    0.1906526   0.4760141
0-24 months   ki1017093-NIH-Birth       BANGLADESH     9                    NA                0.1818182    0.0501190   0.3135173
0-24 months   ki1017093-NIH-Birth       BANGLADESH     10                   NA                0.1500000    0.0595776   0.2404224
0-24 months   ki1017093-NIH-Birth       BANGLADESH     11                   NA                0.2500000    0.1322136   0.3677864
0-24 months   ki1017093-NIH-Birth       BANGLADESH     12                   NA                0.2037037    0.0961968   0.3112106
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                0.1046025    0.0524969   0.1567081
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    NA                0.1394231    0.0771751   0.2016711
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    NA                0.1401869    0.0898832   0.1904906
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    NA                0.1311475    0.0231083   0.2391868
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    NA                0.1400778    0.0842065   0.1959491
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    NA                0.1229508    0.0504818   0.1954199
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    NA                0.1192214    0.0759736   0.1624693
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    NA                0.1274238    0.0862404   0.1686072
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    NA                0.1322034    0.0829592   0.1814476
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   NA                0.0967742    0.0372366   0.1563118
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   NA                0.1218274    0.0655337   0.1781211
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   NA                0.1481481    0.1007601   0.1955362
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0405605    0.0300604   0.0510606
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       2                    NA                0.0451923    0.0325671   0.0578175
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       3                    NA                0.0513043    0.0385530   0.0640557
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       4                    NA                0.0360624    0.0246535   0.0474712
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       5                    NA                0.0540275    0.0401396   0.0679154
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       6                    NA                0.0427574    0.0310439   0.0544710
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       7                    NA                0.0417376    0.0302974   0.0531779
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       8                    NA                0.0317848    0.0219688   0.0416009
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       9                    NA                0.0258555    0.0172775   0.0344336
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       10                   NA                0.0455840    0.0329854   0.0581827
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       11                   NA                0.0402098    0.0288255   0.0515940
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       12                   NA                0.0499603    0.0379352   0.0619855
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.0848126    0.0733421   0.0962832
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     2                    NA                0.0812207    0.0695724   0.0928689
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     3                    NA                0.0678035    0.0577796   0.0778274
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     4                    NA                0.0916486    0.0779189   0.1053782
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     5                    NA                0.1127766    0.0954200   0.1301332
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     6                    NA                0.1090641    0.0926494   0.1254788
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     7                    NA                0.1017613    0.0863313   0.1171912
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     8                    NA                0.0859570    0.0733726   0.0985415
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     9                    NA                0.0847264    0.0735130   0.0959399
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     10                   NA                0.0904128    0.0788489   0.1019768
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     11                   NA                0.0901114    0.0789550   0.1012678
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     12                   NA                0.0863883    0.0761860   0.0965906
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1206897    0.0662477   0.1751316
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     2                    NA                0.1095890    0.0710541   0.1481240
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     3                    NA                0.1610169    0.1255145   0.1965194
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     4                    NA                0.1952790    0.1671449   0.2234130
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     5                    NA                0.1792000    0.1455575   0.2128425
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     6                    NA                0.1760870    0.1357463   0.2164276
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     7                    NA                0.1863075    0.1565801   0.2160349
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     8                    NA                0.1257036    0.0965203   0.1548868
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     9                    NA                0.1417476    0.1090228   0.1744724
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     10                   NA                0.1111111    0.0747702   0.1474520
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     11                   NA                0.1520468    0.0964834   0.2076101
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     12                   NA                0.1264368    0.0842684   0.1686052
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.0666667    0.0214749   0.1118585
0-6 months    ki1000304b-SAS-CompFeed   INDIA          2                    NA                0.0652174    0.0081732   0.1222616
0-6 months    ki1000304b-SAS-CompFeed   INDIA          3                    NA                0.0574713   -0.0070984   0.1220410
0-6 months    ki1000304b-SAS-CompFeed   INDIA          4                    NA                0.0595238   -0.0097240   0.1287716
0-6 months    ki1000304b-SAS-CompFeed   INDIA          5                    NA                0.1235955    0.0494117   0.1977793
0-6 months    ki1000304b-SAS-CompFeed   INDIA          6                    NA                0.0608696    0.0161788   0.1055603
0-6 months    ki1000304b-SAS-CompFeed   INDIA          7                    NA                0.0952381    0.0246884   0.1657878
0-6 months    ki1000304b-SAS-CompFeed   INDIA          8                    NA                0.0710059    0.0169588   0.1250530
0-6 months    ki1000304b-SAS-CompFeed   INDIA          9                    NA                0.0549451    0.0059364   0.1039537
0-6 months    ki1000304b-SAS-CompFeed   INDIA          10                   NA                0.0613497    0.0166388   0.1060606
0-6 months    ki1000304b-SAS-CompFeed   INDIA          11                   NA                0.0965517    0.0417510   0.1513525
0-6 months    ki1000304b-SAS-CompFeed   INDIA          12                   NA                0.0476190    0.0140246   0.0812135
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0112191    0.0055733   0.0168650
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       2                    NA                0.0146341    0.0072825   0.0219858
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       3                    NA                0.0166521    0.0092269   0.0240773
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       4                    NA                0.0097752    0.0037460   0.0158043
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       5                    NA                0.0089197    0.0031181   0.0147213
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       6                    NA                0.0113736    0.0052260   0.0175212
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       7                    NA                0.0153453    0.0083106   0.0223799
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       8                    NA                0.0089796    0.0036968   0.0142624
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       9                    NA                0.0091673    0.0040042   0.0143305
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       10                   NA                0.0115163    0.0050379   0.0179948
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       11                   NA                0.0150177    0.0079324   0.0221029
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       12                   NA                0.0127287    0.0065314   0.0189261
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.0427723    0.0347301   0.0508145
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     2                    NA                0.0404896    0.0318962   0.0490830
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     3                    NA                0.0358306    0.0281146   0.0435467
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     4                    NA                0.0398254    0.0302854   0.0493655
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     5                    NA                0.0331651    0.0237499   0.0425803
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     6                    NA                0.0289318    0.0193781   0.0384854
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     7                    NA                0.0320261    0.0232104   0.0408419
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     8                    NA                0.0380762    0.0295205   0.0466318
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     9                    NA                0.0407619    0.0326996   0.0488243
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     10                   NA                0.0435081    0.0358256   0.0511905
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     11                   NA                0.0416808    0.0339886   0.0493729
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     12                   NA                0.0428663    0.0355481   0.0501844
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2500000    0.1585168   0.3414832
6-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    NA                0.1829268    0.1071958   0.2586578
6-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    NA                0.2073171    0.0975681   0.3170661
6-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    NA                0.2125000    0.1236617   0.3013383
6-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    NA                0.2222222    0.1527820   0.2916625
6-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    NA                0.2056075    0.1185635   0.2926514
6-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    NA                0.2307692    0.1366140   0.3249244
6-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    NA                0.2597403    0.1584564   0.3610241
6-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    NA                0.2383721    0.1946494   0.2820948
6-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   NA                0.2200000    0.1468287   0.2931713
6-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   NA                0.2824427    0.2088915   0.3559940
6-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   NA                0.1678832    0.1005698   0.2351966
6-24 months   ki1017093-NIH-Birth       BANGLADESH     1                    NA                0.2500000    0.1321992   0.3678008
6-24 months   ki1017093-NIH-Birth       BANGLADESH     2                    NA                0.2400000    0.1215114   0.3584886
6-24 months   ki1017093-NIH-Birth       BANGLADESH     3                    NA                0.1764706    0.0717482   0.2811930
6-24 months   ki1017093-NIH-Birth       BANGLADESH     4                    NA                0.2000000    0.0830224   0.3169776
6-24 months   ki1017093-NIH-Birth       BANGLADESH     5                    NA                0.1666667    0.0538539   0.2794794
6-24 months   ki1017093-NIH-Birth       BANGLADESH     6                    NA                0.1750000    0.0571404   0.2928596
6-24 months   ki1017093-NIH-Birth       BANGLADESH     7                    NA                0.2666667    0.1373430   0.3959903
6-24 months   ki1017093-NIH-Birth       BANGLADESH     8                    NA                0.2702703    0.1270421   0.4134984
6-24 months   ki1017093-NIH-Birth       BANGLADESH     9                    NA                0.2068966    0.0593287   0.3544644
6-24 months   ki1017093-NIH-Birth       BANGLADESH     10                   NA                0.1320755    0.0408401   0.2233108
6-24 months   ki1017093-NIH-Birth       BANGLADESH     11                   NA                0.2291667    0.1101564   0.3481769
6-24 months   ki1017093-NIH-Birth       BANGLADESH     12                   NA                0.2200000    0.1050728   0.3349272
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                0.1046025    0.0524969   0.1567081
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    NA                0.1394231    0.0771751   0.2016711
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    NA                0.1401869    0.0898832   0.1904906
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    NA                0.1311475    0.0231083   0.2391868
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    NA                0.1400778    0.0842065   0.1959491
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    NA                0.1229508    0.0504818   0.1954199
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    NA                0.1192214    0.0759736   0.1624693
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    NA                0.1274238    0.0862404   0.1686072
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    NA                0.1322034    0.0829592   0.1814476
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   NA                0.0967742    0.0372366   0.1563118
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   NA                0.1218274    0.0655337   0.1781211
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   NA                0.1481481    0.1007601   0.1955362
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0415879    0.0295574   0.0536184
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       2                    NA                0.0434783    0.0293901   0.0575664
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       3                    NA                0.0471264    0.0330446   0.0612083
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       4                    NA                0.0333745    0.0209971   0.0457520
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       5                    NA                0.0602094    0.0433412   0.0770777
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       6                    NA                0.0435780    0.0300271   0.0571289
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       7                    NA                0.0360360    0.0237769   0.0482952
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       8                    NA                0.0317287    0.0203650   0.0430924
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       9                    NA                0.0238332    0.0144120   0.0332544
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       10                   NA                0.0469543    0.0321837   0.0617250
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       11                   NA                0.0348315    0.0227850   0.0468780
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       12                   NA                0.0497018    0.0362715   0.0631321
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.0827338    0.0671724   0.0982952
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     2                    NA                0.0814332    0.0660307   0.0968357
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     3                    NA                0.0628415    0.0503414   0.0753416
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     4                    NA                0.0889070    0.0728409   0.1049732
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     5                    NA                0.1008264    0.0825737   0.1190792
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     6                    NA                0.1011609    0.0840371   0.1182846
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     7                    NA                0.0984375    0.0814874   0.1153876
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     8                    NA                0.0709030    0.0573462   0.0844598
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     9                    NA                0.0832812    0.0694093   0.0971530
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     10                   NA                0.0931174    0.0780045   0.1082303
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     11                   NA                0.0936416    0.0795568   0.1077265
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     12                   NA                0.0892754    0.0753719   0.1031788
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1206897    0.0662436   0.1751357
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     2                    NA                0.1013699    0.0630952   0.1396445
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     3                    NA                0.1380042    0.1037812   0.1722273
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     4                    NA                0.1786868    0.1527155   0.2046580
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     5                    NA                0.1655949    0.1328806   0.1983091
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     6                    NA                0.1586957    0.1194694   0.1979219
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     7                    NA                0.1711712    0.1431355   0.1992068
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     8                    NA                0.1106942    0.0830806   0.1383077
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     9                    NA                0.1300971    0.0984369   0.1617572
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     10                   NA                0.1114458    0.0749192   0.1479724
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     11                   NA                0.1470588    0.0917370   0.2023807
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     12                   NA                0.1279070    0.0857205   0.1700935


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1246554   0.1041227   0.1451882
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0417685   0.0384438   0.0450933
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0885357   0.0846606   0.0924107
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1613377   0.1500062   0.1726692
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0120874   0.0102652   0.0139096
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0393736   0.0368903   0.0418569
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1017093-NIH-Birth       BANGLADESH     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1246554   0.1041227   0.1451882
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0406710   0.0369230   0.0444189
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0869213   0.0822621   0.0915805
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    1                 0.8578595   0.4915733   1.4970768
0-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    1                 0.8024476   0.4213646   1.5281828
0-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    1                 0.9773756   0.6094165   1.5675043
0-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    1                 1.1201383   0.7184143   1.7464990
0-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    1                 0.8594164   0.5939951   1.2434390
0-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    1                 1.0879121   0.7697159   1.5376488
0-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    1                 1.1060537   0.8494673   1.4401434
0-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    1                 0.9481605   0.6938978   1.2955919
0-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   1                 0.9118199   0.5671732   1.4658935
0-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   1                 1.1745358   0.7988632   1.7268719
0-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   1                 0.6781790   0.4247632   1.0827838
0-24 months   ki1017093-NIH-Birth       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH     2                    1                 0.7754386   0.4193897   1.4337621
0-24 months   ki1017093-NIH-Birth       BANGLADESH     3                    1                 0.6453840   0.3343197   1.2458748
0-24 months   ki1017093-NIH-Birth       BANGLADESH     4                    1                 0.6882591   0.3501544   1.3528333
0-24 months   ki1017093-NIH-Birth       BANGLADESH     5                    1                 0.7614782   0.3896776   1.4880224
0-24 months   ki1017093-NIH-Birth       BANGLADESH     6                    1                 0.6091825   0.2911586   1.2745744
0-24 months   ki1017093-NIH-Birth       BANGLADESH     7                    1                 0.9692982   0.5311940   1.7687306
0-24 months   ki1017093-NIH-Birth       BANGLADESH     8                    1                 1.1929825   0.6721630   2.1173541
0-24 months   ki1017093-NIH-Birth       BANGLADESH     9                    1                 0.6507177   0.2869116   1.4758326
0-24 months   ki1017093-NIH-Birth       BANGLADESH     10                   1                 0.5368421   0.2629711   1.0959360
0-24 months   ki1017093-NIH-Birth       BANGLADESH     11                   1                 0.8947368   0.4878365   1.6410295
0-24 months   ki1017093-NIH-Birth       BANGLADESH     12                   1                 0.7290448   0.3800233   1.3986151
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    1                 1.3328846   0.6796226   2.6140705
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    1                 1.3401869   0.7155801   2.5099930
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    1                 1.2537705   0.4460802   3.5238967
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    1                 1.3391440   0.7309399   2.4534254
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    1                 1.1754098   0.5149448   2.6829832
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    1                 1.1397567   0.6673252   1.9466450
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    1                 1.2181717   0.6670519   2.2246281
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    1                 1.2638644   0.7392554   2.1607596
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   1                 0.9251613   0.4234959   2.0210901
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   1                 1.1646700   0.6010815   2.2566930
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   1                 1.4162963   0.7854964   2.5536657
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       2                    1                 1.1141958   0.7612932   1.6306888
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       3                    1                 1.2648854   0.8834754   1.8109560
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       4                    1                 0.8891015   0.5907715   1.3380835
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       5                    1                 1.3320236   0.9248542   1.9184503
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       6                    1                 1.0541647   0.7231279   1.5367449
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       7                    1                 1.0290228   0.7058064   1.5002525
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       8                    1                 0.7836408   0.5237279   1.1725419
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       9                    1                 0.6374559   0.4184962   0.9709768
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       10                   1                 1.1238539   0.7695696   1.6412390
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       11                   1                 0.9913541   0.6754902   1.4549182
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       12                   1                 1.2317497   0.8649817   1.7540340
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     2                    1                 0.9576482   0.7906008   1.1599913
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     3                    1                 0.7994505   0.6542834   0.9768260
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     4                    1                 1.0806008   0.8854854   1.3187097
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     5                    1                 1.3297147   1.0811300   1.6354565
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     6                    1                 1.2859420   1.0544146   1.5683080
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     7                    1                 1.1998362   0.9696605   1.4846504
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     8                    1                 1.0134933   0.8411006   1.2212197
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     9                    1                 0.9989839   0.8268329   1.2069776
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     10                   1                 1.0660303   0.8889723   1.2783532
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     11                   1                 1.0624760   0.8870912   1.2725357
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     12                   1                 1.0185780   0.8550095   1.2134381
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     2                    1                 0.9080235   0.5086075   1.6211060
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     3                    1                 1.3341404   0.8091307   2.1998061
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     4                    1                 1.6180258   1.0102657   2.5914048
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     5                    1                 1.4848000   0.9169473   2.4043160
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     6                    1                 1.4590062   0.8875670   2.3983531
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     7                    1                 1.5436909   0.9505190   2.5070321
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     8                    1                 1.0415438   0.6276908   1.7282611
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     9                    1                 1.1744799   0.7086165   1.9466144
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     10                   1                 0.9206349   0.5580137   1.5189031
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     11                   1                 1.2598162   0.7050261   2.2511747
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     12                   1                 1.0476190   0.5978816   1.8356572
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          2                    1                 0.9782609   0.3368686   2.8408537
0-6 months    ki1000304b-SAS-CompFeed   INDIA          3                    1                 0.8620690   0.2238151   3.3204318
0-6 months    ki1000304b-SAS-CompFeed   INDIA          4                    1                 0.8928571   0.2505136   3.1822378
0-6 months    ki1000304b-SAS-CompFeed   INDIA          5                    1                 1.8539326   0.9620598   3.5726116
0-6 months    ki1000304b-SAS-CompFeed   INDIA          6                    1                 0.9130435   0.4351940   1.9155787
0-6 months    ki1000304b-SAS-CompFeed   INDIA          7                    1                 1.4285714   0.4802988   4.2490557
0-6 months    ki1000304b-SAS-CompFeed   INDIA          8                    1                 1.0650888   0.3607326   3.1447506
0-6 months    ki1000304b-SAS-CompFeed   INDIA          9                    1                 0.8241758   0.2481115   2.7377438
0-6 months    ki1000304b-SAS-CompFeed   INDIA          10                   1                 0.9202454   0.4277212   1.9799151
0-6 months    ki1000304b-SAS-CompFeed   INDIA          11                   1                 1.4482759   0.6415599   3.2693796
0-6 months    ki1000304b-SAS-CompFeed   INDIA          12                   1                 0.7142857   0.3111719   1.6396215
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       2                    1                 1.3043902   0.6406148   2.6559393
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       3                    1                 1.4842536   0.7577127   2.9074461
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       4                    1                 0.8712936   0.3930555   1.9314129
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       5                    1                 0.7950446   0.3493334   1.8094343
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       6                    1                 1.0137649   0.4844018   2.1216260
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       7                    1                 1.3677749   0.6924305   2.7017995
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       8                    1                 0.8003810   0.3690409   1.7358771
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       9                    1                 0.8171123   0.3839428   1.7389894
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       10                   1                 1.0264875   0.4825638   2.1834970
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       11                   1                 1.3385748   0.6715269   2.6682213
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       12                   1                 1.1345532   0.5632839   2.2851904
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     2                    1                 0.9466328   0.7187637   1.2467432
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     3                    1                 0.8377066   0.6260014   1.1210076
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     4                    1                 0.9311036   0.6895830   1.2572149
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     5                    1                 0.7753879   0.5534088   1.0864054
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     6                    1                 0.6764136   0.4631371   0.9879049
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     7                    1                 0.7487594   0.5321728   1.0534936
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     8                    1                 0.8902063   0.6625381   1.1961083
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     9                    1                 0.9529982   0.7219011   1.2580748
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     10                   1                 1.0172021   0.7897283   1.3101976
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     11                   1                 0.9744813   0.7459247   1.2730694
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     12                   1                 1.0021978   0.7881268   1.2744148
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    1                 0.7317073   0.4127271   1.2972145
6-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    1                 0.8292683   0.4117347   1.6702160
6-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    1                 0.8500000   0.4667881   1.5478116
6-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    1                 0.8888889   0.5688690   1.3889375
6-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    1                 0.8224299   0.5484713   1.2332295
6-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    1                 0.9230769   0.6204617   1.3732853
6-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    1                 1.0389610   0.7999112   1.3494499
6-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    1                 0.9534884   0.6694835   1.3579724
6-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   1                 0.8800000   0.5135246   1.5080094
6-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   1                 1.1297710   0.7214895   1.7690936
6-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   1                 0.6715328   0.3762855   1.1984420
6-24 months   ki1017093-NIH-Birth       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH     2                    1                 0.9600000   0.4851493   1.8996215
6-24 months   ki1017093-NIH-Birth       BANGLADESH     3                    1                 0.7058824   0.3308604   1.5059821
6-24 months   ki1017093-NIH-Birth       BANGLADESH     4                    1                 0.8000000   0.3774840   1.6954361
6-24 months   ki1017093-NIH-Birth       BANGLADESH     5                    1                 0.6666667   0.2922330   1.5208566
6-24 months   ki1017093-NIH-Birth       BANGLADESH     6                    1                 0.7000000   0.3076996   1.5924625
6-24 months   ki1017093-NIH-Birth       BANGLADESH     7                    1                 1.0666667   0.5424586   2.0974461
6-24 months   ki1017093-NIH-Birth       BANGLADESH     8                    1                 1.0810811   0.5319669   2.1970093
6-24 months   ki1017093-NIH-Birth       BANGLADESH     9                    1                 0.8275862   0.3520151   1.9456520
6-24 months   ki1017093-NIH-Birth       BANGLADESH     10                   1                 0.5283019   0.2289443   1.2190863
6-24 months   ki1017093-NIH-Birth       BANGLADESH     11                   1                 0.9166667   0.4546438   1.8482112
6-24 months   ki1017093-NIH-Birth       BANGLADESH     12                   1                 0.8800000   0.4354627   1.7783382
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    1                 1.3328846   0.6796226   2.6140705
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    1                 1.3401869   0.7155801   2.5099930
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    1                 1.2537705   0.4460802   3.5238967
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    1                 1.3391440   0.7309399   2.4534254
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    1                 1.1754098   0.5149448   2.6829832
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    1                 1.1397567   0.6673252   1.9466450
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    1                 1.2181717   0.6670519   2.2246281
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    1                 1.2638644   0.7392554   2.1607596
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   1                 0.9251613   0.4234959   2.0210901
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   1                 1.1646700   0.6010815   2.2566930
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   1                 1.4162963   0.7854964   2.5536657
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       2                    1                 1.0454545   0.6771127   1.6141702
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       3                    1                 1.1331766   0.7476116   1.7175885
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       4                    1                 0.8025059   0.5013954   1.2844467
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       5                    1                 1.4477630   0.9678420   2.1656608
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       6                    1                 1.0478524   0.6852537   1.6023184
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       7                    1                 0.8665029   0.5544121   1.3542764
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       8                    1                 0.7629302   0.4814391   1.2090055
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       9                    1                 0.5730794   0.3511396   0.9352974
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       10                   1                 1.1290378   0.7363876   1.7310537
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       11                   1                 0.8375383   0.5335664   1.3146824
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       12                   1                 1.1951021   0.8044292   1.7755062
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     2                    1                 0.9842798   0.7568810   1.2799989
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     3                    1                 0.7595628   0.5771192   0.9996821
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     4                    1                 1.0746152   0.8296673   1.3918806
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     5                    1                 1.2186849   0.9430831   1.5748271
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     6                    1                 1.2227269   0.9562131   1.5635230
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     7                    1                 1.1898098   0.9182264   1.5417193
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     8                    1                 0.8570016   0.6622301   1.1090582
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     9                    1                 1.0066157   0.7856681   1.2896987
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     10                   1                 1.1255061   0.8792408   1.4407475
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     11                   1                 1.1318422   0.8930754   1.4344441
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     12                   1                 1.0790674   0.8449197   1.3781031
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     2                    1                 0.8399217   0.4627589   1.5244839
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     3                    1                 1.1434638   0.6849491   1.9089147
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     4                    1                 1.4805474   0.9247480   2.3703980
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     5                    1                 1.3720717   0.8447359   2.2286026
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     6                    1                 1.3149068   0.7940507   2.1774177
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     7                    1                 1.4182754   0.8720970   2.3065155
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     8                    1                 0.9171804   0.5483292   1.5341511
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     9                    1                 1.0779473   0.6464839   1.7973694
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     10                   1                 0.9234079   0.5593364   1.5244532
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     11                   1                 1.2184874   0.6772708   2.1921976
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     12                   1                 1.0598007   0.6061562   1.8529506


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0087513   -0.0671061   0.0496035
0-24 months   ki1017093-NIH-Birth       BANGLADESH     1                    NA                -0.0598605   -0.1596903   0.0399694
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                 0.0200529   -0.0310272   0.0711330
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0012080   -0.0087825   0.0111986
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0037230   -0.0070140   0.0144601
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0406481   -0.0129581   0.0942542
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0038121   -0.0391676   0.0467917
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0008683   -0.0045193   0.0062559
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0033987   -0.0109744   0.0041770
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0239381   -0.1012991   0.0534229
6-24 months   ki1017093-NIH-Birth       BANGLADESH     1                    NA                -0.0396679   -0.1509946   0.0716588
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                 0.0200529   -0.0310272   0.0711330
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0009169   -0.0123222   0.0104884
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0041875   -0.0104793   0.0188543
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0270355   -0.0263767   0.0804477


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0377229   -0.3237885   0.1865250
0-24 months   ki1017093-NIH-Birth       BANGLADESH     1                    NA                -0.2726492   -0.8184535   0.1093333
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                 0.1608668   -0.3623252   0.4831304
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0289223   -0.2422856   0.2409218
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0420514   -0.0872812   0.1559998
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.2519441   -0.1662293   0.5201735
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0540881   -0.7974566   0.5022136
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0718339   -0.5001044   0.4257117
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0863186   -0.2967147   0.0899400
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1058917   -0.5027486   0.1861603
6-24 months   ki1017093-NIH-Birth       BANGLADESH     1                    NA                -0.1885965   -0.8548494   0.2383416
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                 0.1608668   -0.3623252   0.4831304
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0225449   -0.3451876   0.2227120
6-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0481756   -0.1365857   0.2029024
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.1830123   -0.2721494   0.4753219
