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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        month    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                  0       18     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                  1        3     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                  0       17     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                  1        7     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                  0       15     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                  1       12     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                  0       18     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                  1        4     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                  0       16     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                  1        6     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                  0        7     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                  1        2     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                  0       16     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                  1        6     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                  0       24     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                  1        1     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                  0       13     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                  1       10     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                 0       21     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                 1        3     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                 0       15     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                 1        2     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                 0       25     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                 1        2     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                  0       13     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                  0       24     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                  1        2     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                  0       20     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                  1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                  0       10     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                  1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                  0       22     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                  1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                  0       10     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                  1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                  0       18     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                  1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                  0       17     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                  1        2     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                  0       30     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                  1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                 0       20     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                 1        2     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                 0       20     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                 1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                 0       16     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                 1        0     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                  0       14     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                  1        5     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                  0       19     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                  1        4     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                  0       13     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                  1       10     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                  0       13     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                  1        4     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                  0        4     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                  1        4     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                  0       11     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                  1        6     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                  0       12     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                  1       12     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                  0       12     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                  1       10     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                  0       16     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                  1        8     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                 0       19     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                 1        6     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                 0       10     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                 1       14     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                 0       14     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                 1        6     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                  0       21     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                  1        4     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                  0       14     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                  1        3     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                  0       17     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                  1        2     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                  0       13     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                  1        6     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                  0       14     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                  1        7     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                  0        9     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                  1        9     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                  0       18     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                  1        4     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                  0       18     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                  1        2     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                  0       17     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                  1        0     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                 0       21     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                 1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                 0       18     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                 1        5     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                 0       14     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                 1        2     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                  0       36     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                  1        5     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                  0       25     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                  1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                  0       19     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                  1        3     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                  0       20     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                  1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                  0       23     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                  1        2     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                  0       20     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                  1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                  0       23     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                  1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                  0       19     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                  1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                  0       21     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                  1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                 0       25     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                 1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                 0       30     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                 1        4     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                 0       21     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                 1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       29     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       10     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       31     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        3     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       19     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        1     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       10     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        2     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       14     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        1     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       18     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        2     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       22     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        4     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0       13     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       23     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        3     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       23     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        7     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       24     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        5     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       38     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        6     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       16     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        7     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        5     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       21     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0       10     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       16     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       14     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        5     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       25     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       11     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       20     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       25     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        5     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       29     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        3     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       15     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       13     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1       10     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       13     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1       11     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       21     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        8     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       28     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1       17     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       21     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1       13     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       20     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1       13     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       22     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1       19     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       11     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1       14     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       11     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        8     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       19     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1       21     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       11     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1       17     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                  0       19     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                  1       17     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                  0       12     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                  1       15     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                  0       16     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                  1       13     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                  0       13     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                  1        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                  0        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                  1       12     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                  0       15     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                  1       21     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                  0       16     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                  1       20     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                  0       22     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                  1       23     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                  0       11     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                  1       16     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                 0       16     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                 1       21     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                 0       22     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                 1       19     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                 0       25     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                 1       27     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                  0       49     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                  1       42     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                  0       47     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                  1       34     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                  0       22     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                  1       20     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                  0       13     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                  1       15     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       5                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       5                  1        2     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       6                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       6                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       7                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       7                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       8                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       8                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       9                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       9                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       10                 0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       10                 1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                 0       27     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                 1       22     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                 0       54     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                 1       30     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                  0        3     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                  1        5     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                  0        7     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                  1        5     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                  0        8     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                  1        6     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                  0       14     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                  1       20     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                  0       19     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                  1       16     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                  0       32     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                  1       20     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                  0       20     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                  1       19     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                  0       25     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                  1       16     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                  0       14     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                  1        9     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                 0        1     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                 1        6     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                 0        5     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                 1        1     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                 0        1     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                 1        2     274
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                  0       66    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                  1       41    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                  0       67    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                  1       25    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                  0       59    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                  1       29    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                  0       53    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                  1       31    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                  0       50    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                  1       37    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                  0       70    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                  1       44    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                  0       85    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                  1       39    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                  0      104    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                  1       64    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                  0      117    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                  1       67    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                 0      104    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                 1       59    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                 0       83    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                 1       61    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                 0      101    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                 1       46    1502
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       37     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1       25     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0       25     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1       15     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0       23     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1       12     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0       16     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1       11     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0       17     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1       13     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0       19     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1       12     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0       13     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        5     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0        0     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        0     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0        7     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        6     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0       22     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        6     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0       33     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1       18     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       42     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1       20     397
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                  0       39     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                  1       25     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                  0       41     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                  1       17     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                  0       37     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                  1       19     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                  0       36     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                  1       14     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                  0       36     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                  1       11     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                  0       32     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                  1       12     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                  0       31     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                  1       16     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                  0       28     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                  1       13     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                  0       25     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                  1        8     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                 0       46     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                 1       12     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                 0       36     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                 1       15     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                 0       37     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                 1       16     602
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      178    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       53    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      125    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       32    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      136    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       47    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      133    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       28    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      171    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       27    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      149    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       25    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      141    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       31    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      155    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       40    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      179    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       49    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      189    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       39    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      175    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       51    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      179    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       52    2384
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       17     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        2     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      2                  0       19     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        1     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      3                  0       20     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        2     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      4                  0       24     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        4     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      5                  0       31     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        2     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      6                  0       36     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        3     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      7                  0       22     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        3     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      8                  0       16     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        3     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      9                  0       32     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        3     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      10                 0       32     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        1     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      11                 0       28     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        2     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      12                 0       10     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        0     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0      209    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1       21    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  0      178    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  1       16    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  0      184    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  1       22    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  0      161    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  1       10    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  0      220    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  1       22    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  0      318    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  1       31    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  0      363    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  1       29    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  0      308    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  1       30    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  0      248    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  1       24    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 0      334    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 1       27    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 0      170    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 1       17    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 0      135    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 1       14    3091
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                  0        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                  1        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                  0       57     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                  1       72     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                  0      116     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                  1      117     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                  0       91     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                  1      117     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                 0       10     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                 1        3     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                 0        2     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                 1        2     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                 0        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                 1        0     590
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                  0       15     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                  1       13     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     2                  0       19     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     2                  1       15     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     3                  0       13     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     3                  1        7     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     4                  0       11     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     4                  1        9     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     5                  0       11     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     5                  1        9     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     6                  0       15     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     6                  1       10     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     7                  0        7     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     7                  1        7     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     8                  0       10     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     8                  1        4     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     9                  0       13     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     9                  1        7     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     10                 0       17     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     10                 1        6     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     11                 0        3     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     11                 1        0     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     12                 0       19     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     12                 1       28     268
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                  0       13     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         2                  0        7     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         2                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         3                  0       14     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         3                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         4                  0        9     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         4                  1        1     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         5                  0        5     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         5                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         6                  0        6     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         6                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         7                  0        4     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         7                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         8                  0       12     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         8                  1        1     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         9                  0        9     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         9                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         10                 0       16     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         10                 1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         11                 0       11     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         11                 1        1     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         12                 0        9     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         12                 1        1     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                  0       36    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        8    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                  0      135    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                  1       31    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                  0      133    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                  1       29    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                  0      222    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                  1       44    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                  0      160    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                  1       25    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                  0       81    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                  1       16    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       83    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                  1       13    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       76    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                  1       10    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                  0      137    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                  1       23    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                 0       58    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        7    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                 0       52    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                 1       11    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                 0       91    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                 1       19    1500
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                  0       57     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                  1        0     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           2                  0      166     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           2                  1        3     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           3                  0      127     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           3                  1        7     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           4                  0       72     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           4                  1        6     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           5                  0       80     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           5                  1        8     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           6                  0       45     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           6                  1        8     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           7                  0       54     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           7                  1        2     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           8                  0       76     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           8                  1        3     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           9                  0       49     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           9                  1        2     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           10                 0       38     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           10                 1        3     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           11                 0       71     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           11                 1        3     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           12                 0       45     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           12                 1        3     928
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                  0        8     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                  1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           2                  0       12     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           2                  1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           3                  0       26     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           3                  1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           4                  0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           4                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           5                  0       25     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           5                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           6                  0       12     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           6                  1        2     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           7                  0       16     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           7                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           8                  0       26     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           8                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           9                  0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           9                  1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           10                 0       22     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           10                 1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           11                 0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           11                 1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           12                 0        7     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           12                 1        0     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                  0     1106   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                  1       76   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                  0      928   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                  1       75   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                  0     1106   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                  1       79   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                  0     1059   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                  1       70   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                  0     1067   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                  1       83   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                  0     1122   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                  1       98   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                  0     1374   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                  1      100   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                  0     1472   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                  1      143   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                  0     1483   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                  1      105   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                 0     1686   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                 1      115   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                 0     1574   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                 1      132   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                 0     1690   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                 1      134   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     1190   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      140   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      918   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1      101   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      988   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1      130   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      927   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1       88   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      896   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1       98   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0     1019   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1      103   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0     1034   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1      112   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0     1071   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1      124   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0     1186   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1      102   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      925   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1      102   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      999   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1      119   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0     1089   13599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1      138   13599
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                  0       49     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                  1        6     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                  0      108     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                  1        6     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         3                  0       88     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         3                  1       10     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         4                  0      104     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         4                  1        6     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         5                  0      106     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         5                  1        5     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         6                  0       82     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         6                  1        8     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         7                  0       67     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         7                  1        4     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         8                  0       38     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         8                  1        3     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         9                  0       26     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         9                  1        3     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         10                 0       35     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         10                 1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         11                 0       44     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         11                 1        5     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         12                 0       34     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         12                 1        0     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2100   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      407   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                  0     1792   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                  1      301   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                  0     2079   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                  1      342   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                  0     1512   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                  1      305   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                  0     1082   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                  1      301   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                  0     1042   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                  1      295   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                  0     1188   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                  1      325   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                  0     1614   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                  1      360   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                  0     2159   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                  1      432   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                 0     2414   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                 1      474   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                 0     2458   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                 1      473   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                 0     2599   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                 1      479   26533
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                  0       46    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       11    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                  0      275    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                  1       88    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                  0      344    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                  1      124    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                  0      664    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                  1      264    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                  0      437    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                  1      186    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                  0      331    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                  1      125    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      640    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                  1      239    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                  0      410    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                  1      118    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                  0      408    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                  1      104    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                 0      252    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                 1       75    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                 0      129    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                 1       40    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                 0       69    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                 1       17    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                  0       20     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                  0       23     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                  1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                  0       23     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                  1        4     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                  0       19     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                  1        2     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                  0       19     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                  1        3     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                  0        8     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                  1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                  0       19     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                  1        3     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                  0       25     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                  1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                  0       22     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                  1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                 0       22     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                 1        2     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                 0       17     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                 1        0     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                 0       26     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                 1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                  0       13     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                  0       25     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                  1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                  0       21     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                  1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                  0       10     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                  1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                  0       22     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                  1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                  0       10     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                  1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                  0       18     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                  1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                  0       18     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                  1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                  0       31     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                  1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                 0       21     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                 1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                 0       20     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                 1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                 0       16     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                 1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                  0       16     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                  1        3     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                  0       21     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                  1        1     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                  0       17     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                  1        6     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                  0       15     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                  1        2     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                  0        6     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                  1        2     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                  0       13     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                  1        4     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                  0       19     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                  1        5     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                  0       18     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                  1        4     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                  0       22     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                  1        2     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                 0       24     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                 1        1     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                 0       19     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                 1        5     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                 0       17     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                 1        3     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                  0       22     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                  1        2     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                  0       17     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                  1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                  0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                  1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                  0       16     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                  1        3     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                  0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                  1        2     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                  0       14     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                  1        4     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                  0       20     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                  1        2     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                  0       19     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                  1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                  0       17     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                  1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                 0       22     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                 1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                 0       22     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                 1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                 0       15     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                 1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                  0       40     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                  1        1     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                  0       26     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                  0       22     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                  0       21     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                  0       24     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                  1        1     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                  0       21     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                  0       23     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                  0       20     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                  0       22     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                  1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                 0       25     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                 1        1     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                 0       32     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                 1        2     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                 0       21     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                 1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       38     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       33     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        1     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       20     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       12     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       15     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       20     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       24     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0       13     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       26     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        0     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       26     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        4     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       26     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        3     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       42     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        2     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       21     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       27     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       23     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0       11     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       17     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       17     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       25     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       12     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       22     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       20     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       28     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       30     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        2     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       17     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       10     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       15     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        6     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       14     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        9     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       21     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        6     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       30     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                  1       13     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       22     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        9     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       22     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                  1       10     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       29     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                  1       10     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       16     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                  1        5     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       12     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        7     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       26     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                 1       13     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       18     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                 1       10     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                  0       26     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                  1       10     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                  0       18     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                  1        9     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                  0       17     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                  1       11     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                  0       19     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                  1        2     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                  0       16     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                  1        5     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                  0       20     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                  1       13     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                  0       20     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                  1       14     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                  0       27     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                  1       15     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                  0       17     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                  1        9     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                 0       22     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                 1       12     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                 0       28     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                 1       13     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                 0       27     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                 1       20     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                  0       69     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                  1       20     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                  0       67     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                  1       14     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                  0       31     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                  1       11     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                  0       22     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                  1        5     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                  0        1     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                  1        1     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                 0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                 1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                 0       41     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                 1        8     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                 0       70     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                 1       13     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                  0        3     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                  1        5     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                  0        9     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                  1        3     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                  0       13     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                  1        1     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                  0       26     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                  1        8     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                  0       26     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                  1        9     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                  0       44     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                  1        7     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                  0       28     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                  1       11     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                  0       29     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                  1       11     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                  0       19     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                  1        4     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                 0        4     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                 1        3     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                 0        6     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                 1        0     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                 0        3     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                 1        0     272
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                  0       80    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                  1       23    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                  0       80    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                  1       10    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                  0       73    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                  1       13    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                  0       70    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                  1       11    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                  0       66    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                  1       18    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                  0       98    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                  1       16    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                  0      114    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                  1        6    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                  0      154    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                  1       12    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                  0      167    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                  1       13    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                 0      142    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                 1       18    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                 0      119    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                 1       23    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                 0      125    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                 1       22    1473
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       54     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          2                  0       32     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          3                  0       31     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          4                  0       23     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          5                  0       27     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          6                  0       26     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          7                  0       14     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          8                  0        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          9                  0       11     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          10                 0       24     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          11                 0       49     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       50     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        0     341
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                  0       52     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                  1       11     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     2                  0       57     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     2                  1        1     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     3                  0       46     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     3                  1        8     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     4                  0       42     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     4                  1        7     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     5                  0       44     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     5                  1        1     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     6                  0       42     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     6                  1        2     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     7                  0       39     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     7                  1        4     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     8                  0       38     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     8                  1        2     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     9                  0       29     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     9                  1        3     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     10                 0       54     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     10                 1        2     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     11                 0       45     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     11                 1        3     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     12                 0       50     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     12                 1        2     584
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      200    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       29    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      145    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       11    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      156    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       27    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      153    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        8    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      186    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       11    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      166    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        7    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      163    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        9    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      175    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       19    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      207    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       21    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      214    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       14    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      205    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       21    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      202    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       27    2376
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                  0       18     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      2                  0       19     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      2                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      3                  0       21     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      3                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      4                  0       22     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      4                  1        1     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      5                  0       27     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      5                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      6                  0       35     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      6                  1        1     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      7                  0       23     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      7                  1        2     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      8                  0       17     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      8                  1        1     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      9                  0       31     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      9                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      10                 0       32     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      10                 1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      11                 0       30     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      11                 1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      12                 0       10     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      12                 1        0     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                  0        2     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                  0      105     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                  1       18     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                  0      186     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                  1       41     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                  0      177     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                  1       21     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                 0       12     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                 1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                 0        3     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                 1        1     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                 0        1     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                 1        0     567
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                  0       23     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                  1        5     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     2                  0       27     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     2                  1        7     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     3                  0       19     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     3                  1        1     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     4                  0       18     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     4                  1        2     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     5                  0       15     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     5                  1        5     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     6                  0       20     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     6                  1        4     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     7                  0       12     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     7                  1        2     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     8                  0       14     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     8                  1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     9                  0       19     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     9                  1        1     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     10                 0       23     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     10                 1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     11                 0        3     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     11                 1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     12                 0       43     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     12                 1        4     267
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                  0       13     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         2                  0        7     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         2                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         3                  0       14     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         3                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         4                  0        9     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         4                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         5                  0        5     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         5                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         6                  0        6     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         6                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         7                  0        4     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         7                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         8                  0       12     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         8                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         9                  0        9     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         9                  1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         10                 0       16     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         10                 1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         11                 0       12     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         11                 1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         12                 0        9     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         12                 1        1     117
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                  0       24     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                  1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  2                  0      104     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  2                  1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  3                  0      108     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  3                  1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  4                  0      116     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  4                  1        6     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  5                  0      114     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  5                  1        3     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  6                  0       60     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  6                  1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  7                  0       46     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  7                  1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  8                  0       50     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  8                  1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  9                  0      117     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  9                  1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  10                 0       45     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  10                 1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  11                 0       54     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  11                 1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  12                 0       96     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  12                 1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                  0       54     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                  1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           2                  0       57     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           2                  1        1     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           3                  0       74     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           3                  1        2     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           4                  0       70     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           4                  1        2     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           5                  0       75     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           5                  1        3     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           6                  0       50     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           6                  1        1     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           7                  0       48     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           7                  1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           8                  0       54     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           8                  1        2     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           9                  0       45     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           9                  1        0     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           10                 0       36     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           10                 1        2     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           11                 0       68     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           11                 1        3     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           12                 0       46     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           12                 1        2     695
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                  0        8     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                  1        1     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           2                  0       12     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           2                  1        1     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           3                  0       26     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           3                  1        1     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           4                  0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           4                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           5                  0       25     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           5                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           6                  0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           6                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           7                  0       16     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           7                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           8                  0       26     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           8                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           9                  0       19     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           9                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           10                 0       23     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           10                 1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           11                 0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           11                 1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           12                 0        7     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           12                 1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                  0     1096   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                  1       69   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                  0      921   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                  1       67   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                  0     1098   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                  1       69   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                  0     1055   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                  1       60   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                  0     1058   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                  1       74   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                  0     1112   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                  1       89   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                  0     1372   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                  1       86   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                  0     1465   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                  1      129   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                  0     1475   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                  1       92   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                 0     1680   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                 1       96   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                 0     1568   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                 1      116   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                 0     1695   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                 1      115   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     1258   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       42   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      952   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                  1       37   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                  0     1054   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                  1       43   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      975   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                  1       26   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      964   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                  1       18   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                  0     1081   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                  1       28   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                  0     1086   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                  1       41   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                  0     1131   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                  1       44   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                  0     1218   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                  1       45   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      978   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                 1       26   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                 0     1049   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                 1       37   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                 0     1166   13339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                 1       40   13339
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                  0        7     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         2                  0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         2                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         3                  0       56     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         3                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         4                  0       48     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         4                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         5                  0       26     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         5                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         6                  0       28     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         6                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         7                  0       28     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         7                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         8                  0        4     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         8                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         9                  0        4     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         9                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         10                 0        5     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         10                 1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         11                 0       10     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         11                 1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         12                 0        5     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         12                 1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2274   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      205   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                  0     1920   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                  1      151   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                  0     2233   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                  1      162   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                  0     1656   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                  1      132   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                  0     1271   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                  1       82   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                  0     1226   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                  1       90   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                  0     1398   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                  1      101   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                  0     1842   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                  1      117   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                  0     2387   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                  1      181   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                 0     2660   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                 1      205   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                 0     2690   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                 1      211   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                 0     2800   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                 1      244   26238
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                  0       49    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                  1        1    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     2                  0      339    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     2                  1       14    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     3                  0      434    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     3                  1        6    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     4                  0      879    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     4                  1       25    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     5                  0      583    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     5                  1       14    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     6                  0      428    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     6                  1       14    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     7                  0      824    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     7                  1       24    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     8                  0      506    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     8                  1        8    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     9                  0      326    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     9                  1        9    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     10                 0      256    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     10                 1        8    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     11                 0      136    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     11                 1        3    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     12                 0       70    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     12                 1        1    4957
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                  0       16     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                  1        2     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                  0       13     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                  1        7     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                  0       16     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                  1        9     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                  0       19     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                  1        3     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                  0       17     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                  1        4     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                  0        7     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                  0       17     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                  1        3     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                  0       21     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                  0       12     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                  1        9     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                 0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                 1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                 0       13     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                 1        2     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                 0       25     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                 1        2     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                  0       13     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                  0       22     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                  0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                  0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                  0       19     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                  0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                  0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                  0       15     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                  0       27     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                 0       19     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                 1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                 0       18     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                 1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                 0       14     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                 1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                  0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                  1        3     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                  0       17     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                  1        3     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                  0       17     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                  1        5     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                  0       11     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                  1        3     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                  0        4     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                  1        4     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                  0       14     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                  1        4     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                  0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                  1        8     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                  0       12     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                  1        8     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                  0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                  1        6     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                 0       21     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                 1        5     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                 0       14     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                 1       11     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                 0       16     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                 1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                  0       22     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                  1        3     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                  0       14     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                  1        3     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                  0       17     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                  1        2     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                  0       15     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                  1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                  0       14     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                  1        6     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                  0       12     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                  1        6     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                  0       18     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                  1        3     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                  0       17     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                  1        2     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                  0       16     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                  1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                 0       21     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                 1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                 0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                 1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                 0       14     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                 1        2     235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                  0       32     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                  1        5     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                  0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                  0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                  1        3     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                  0       19     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                  0       20     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                  1        2     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                  0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                  0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                  1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                  0       16     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                  0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                 0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                 1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                 0       31     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                 1        2     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                 0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                 1        0     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       24     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       10     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       25     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       17     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        1     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       10     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       11     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        1     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       15     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0        9     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       18     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        3     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        4     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       22     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        4     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       30     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        5     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       14     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        7     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       21     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        5     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       20     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        2     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        9     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       15     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       16     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        3     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       25     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       11     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       21     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       18     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       25     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        4     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       24     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        2     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       18     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        9     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       16     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        8     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       21     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        4     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       23     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        6     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       36     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1        9     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       29     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        7     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       25     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        8     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       29     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1       12     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       15     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1       10     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       15     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        4     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       29     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1       11     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       18     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1       11     373
6-24 months                   ki1000108-IRC              INDIA                          1                  0       24     410
6-24 months                   ki1000108-IRC              INDIA                          1                  1       12     410
6-24 months                   ki1000108-IRC              INDIA                          2                  0       17     410
6-24 months                   ki1000108-IRC              INDIA                          2                  1       10     410
6-24 months                   ki1000108-IRC              INDIA                          3                  0       24     410
6-24 months                   ki1000108-IRC              INDIA                          3                  1        5     410
6-24 months                   ki1000108-IRC              INDIA                          4                  0       14     410
6-24 months                   ki1000108-IRC              INDIA                          4                  1        8     410
6-24 months                   ki1000108-IRC              INDIA                          5                  0       12     410
6-24 months                   ki1000108-IRC              INDIA                          5                  1        9     410
6-24 months                   ki1000108-IRC              INDIA                          6                  0       25     410
6-24 months                   ki1000108-IRC              INDIA                          6                  1       12     410
6-24 months                   ki1000108-IRC              INDIA                          7                  0       24     410
6-24 months                   ki1000108-IRC              INDIA                          7                  1       12     410
6-24 months                   ki1000108-IRC              INDIA                          8                  0       31     410
6-24 months                   ki1000108-IRC              INDIA                          8                  1       14     410
6-24 months                   ki1000108-IRC              INDIA                          9                  0       17     410
6-24 months                   ki1000108-IRC              INDIA                          9                  1       10     410
6-24 months                   ki1000108-IRC              INDIA                          10                 0       21     410
6-24 months                   ki1000108-IRC              INDIA                          10                 1       16     410
6-24 months                   ki1000108-IRC              INDIA                          11                 0       33     410
6-24 months                   ki1000108-IRC              INDIA                          11                 1        8     410
6-24 months                   ki1000108-IRC              INDIA                          12                 0       41     410
6-24 months                   ki1000108-IRC              INDIA                          12                 1       11     410
6-24 months                   ki1000109-EE               PAKISTAN                       1                  0       62     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                  1       28     375
6-24 months                   ki1000109-EE               PAKISTAN                       2                  0       55     375
6-24 months                   ki1000109-EE               PAKISTAN                       2                  1       25     375
6-24 months                   ki1000109-EE               PAKISTAN                       3                  0       22     375
6-24 months                   ki1000109-EE               PAKISTAN                       3                  1       19     375
6-24 months                   ki1000109-EE               PAKISTAN                       4                  0       16     375
6-24 months                   ki1000109-EE               PAKISTAN                       4                  1       13     375
6-24 months                   ki1000109-EE               PAKISTAN                       5                  0        1     375
6-24 months                   ki1000109-EE               PAKISTAN                       5                  1        1     375
6-24 months                   ki1000109-EE               PAKISTAN                       6                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       6                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       7                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       7                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       8                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       8                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       9                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       9                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       10                 0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       10                 1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       11                 0       33     375
6-24 months                   ki1000109-EE               PAKISTAN                       11                 1       16     375
6-24 months                   ki1000109-EE               PAKISTAN                       12                 0       62     375
6-24 months                   ki1000109-EE               PAKISTAN                       12                 1       22     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                  0        6     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                  1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                  0        9     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                  1        2     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                  0        9     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                  1        5     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                  0       12     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                  1       12     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                  0       19     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                  1       12     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                  0       26     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                  1       18     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                  0       20     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                  1       11     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                  0       25     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                  1        9     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                  0       14     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                  1        7     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                 0        3     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                 1        4     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                 0        3     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                 1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                 0        0     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                 1        2     230
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                  0       67    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                  1       29    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                  0       63    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                  1       19    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                  0       59    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                  1       23    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                  0       55    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                  1       25    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                  0       55    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                  1       26    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                  0       74    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                  1       33    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                  0       80    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                  1       37    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                  0       99    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                  1       55    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                  0      113    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                  1       59    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                 0      105    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                 1       45    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                 0       88    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                 1       43    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                 0      106    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                 1       31    1389
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       37     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1       25     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0       24     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1       15     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0       25     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1       12     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0       18     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1       11     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0       18     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1       13     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0       21     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1       12     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0       13     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        5     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0        0     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        0     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0        6     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        6     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0       23     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        6     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0       30     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1       18     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       44     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1       20     402
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                  0       30     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                  1       22     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                  0       32     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                  1       17     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                  0       35     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                  1       16     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                  0       34     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                  1       11     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                  0       32     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                  1       10     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                  0       30     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                  1       10     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                  0       31     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                  1       14     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                  0       25     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                  1       12     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                  0       22     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                  1        7     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                 0       41     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                 1       12     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                 0       35     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                 1       13     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                 0       35     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                 1       15     541
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      167    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       32    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      108    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       25    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      124    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       26    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      116    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       22    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      141    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       17    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      121    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       19    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      117    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       25    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      148    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       28    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      164    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       35    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      167    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       29    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      158    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       33    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      163    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       33    2018
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       13     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      2                  0       17     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      3                  0       17     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      4                  0       20     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        3     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      5                  0       29     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      6                  0       35     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      7                  0       23     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      8                  0       16     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        3     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      9                  0       28     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        4     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      10                 0       23     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      11                 0       24     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      12                 0        9     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        0     277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0      184    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1       55    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  0      159    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  1       49    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  0      167    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  1       47    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  0      144    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  1       39    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  0      197    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  1       60    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  0      279    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  1       87    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  0      320    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  1       91    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  0      271    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  1       91    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  0      223    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  1       72    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 0      303    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 1       69    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 0      143    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 1       54    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 0      119    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 1       43    3266
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                  0        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                  1        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                  0       59     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                  1       67     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                  0      133     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                  1       98     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                  0      104     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                  1      108     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                 0       11     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                 1        3     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                 0        2     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                 1        2     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          12                 0        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          12                 1        0     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                  0       18     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                  1        9     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     2                  0       20     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     2                  1       11     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     3                  0       14     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     3                  1        6     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     4                  0       10     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     4                  1        8     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     5                  0       12     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     5                  1        8     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     6                  0       17     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     6                  1        6     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     7                  0        8     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     7                  1        5     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     8                  0       10     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     8                  1        4     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     9                  0       12     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     9                  1        7     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     10                 0       13     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     10                 1        6     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     11                 0        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     11                 1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     12                 0       19     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     12                 1       27     252
6-24 months                   ki1114097-CMIN             BRAZIL                         1                  0       13     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         2                  0        7     119
6-24 months                   ki1114097-CMIN             BRAZIL                         2                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         3                  0       14     119
6-24 months                   ki1114097-CMIN             BRAZIL                         3                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         4                  0        9     119
6-24 months                   ki1114097-CMIN             BRAZIL                         4                  1        1     119
6-24 months                   ki1114097-CMIN             BRAZIL                         5                  0        5     119
6-24 months                   ki1114097-CMIN             BRAZIL                         5                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         6                  0        6     119
6-24 months                   ki1114097-CMIN             BRAZIL                         6                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         7                  0        4     119
6-24 months                   ki1114097-CMIN             BRAZIL                         7                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         8                  0       12     119
6-24 months                   ki1114097-CMIN             BRAZIL                         8                  1        1     119
6-24 months                   ki1114097-CMIN             BRAZIL                         9                  0        9     119
6-24 months                   ki1114097-CMIN             BRAZIL                         9                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         10                 0       16     119
6-24 months                   ki1114097-CMIN             BRAZIL                         10                 1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         11                 0       11     119
6-24 months                   ki1114097-CMIN             BRAZIL                         11                 1        1     119
6-24 months                   ki1114097-CMIN             BRAZIL                         12                 0        9     119
6-24 months                   ki1114097-CMIN             BRAZIL                         12                 1        1     119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                  0       38    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        6    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                  0      132    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                  1       32    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                  0      132    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                  1       28    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                  0      222    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                  1       43    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                  0      158    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                  1       25    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                  0       81    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                  1       14    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       77    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                  1       19    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       69    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                  1       16    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                  0      131    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                  1       24    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                 0       55    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        9    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                 0       49    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                 1       12    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                 0       91    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                 1       19    1482
6-24 months                   ki1114097-CMIN             PERU                           1                  0       47     878
6-24 months                   ki1114097-CMIN             PERU                           1                  1        0     878
6-24 months                   ki1114097-CMIN             PERU                           2                  0      162     878
6-24 months                   ki1114097-CMIN             PERU                           2                  1        4     878
6-24 months                   ki1114097-CMIN             PERU                           3                  0      124     878
6-24 months                   ki1114097-CMIN             PERU                           3                  1        5     878
6-24 months                   ki1114097-CMIN             PERU                           4                  0       71     878
6-24 months                   ki1114097-CMIN             PERU                           4                  1        5     878
6-24 months                   ki1114097-CMIN             PERU                           5                  0       79     878
6-24 months                   ki1114097-CMIN             PERU                           5                  1        7     878
6-24 months                   ki1114097-CMIN             PERU                           6                  0       44     878
6-24 months                   ki1114097-CMIN             PERU                           6                  1        7     878
6-24 months                   ki1114097-CMIN             PERU                           7                  0       53     878
6-24 months                   ki1114097-CMIN             PERU                           7                  1        2     878
6-24 months                   ki1114097-CMIN             PERU                           8                  0       74     878
6-24 months                   ki1114097-CMIN             PERU                           8                  1        1     878
6-24 months                   ki1114097-CMIN             PERU                           9                  0       47     878
6-24 months                   ki1114097-CMIN             PERU                           9                  1        2     878
6-24 months                   ki1114097-CMIN             PERU                           10                 0       34     878
6-24 months                   ki1114097-CMIN             PERU                           10                 1        1     878
6-24 months                   ki1114097-CMIN             PERU                           11                 0       67     878
6-24 months                   ki1114097-CMIN             PERU                           11                 1        0     878
6-24 months                   ki1114097-CMIN             PERU                           12                 0       41     878
6-24 months                   ki1114097-CMIN             PERU                           12                 1        1     878
6-24 months                   ki1114097-CONTENT          PERU                           1                  0        9     215
6-24 months                   ki1114097-CONTENT          PERU                           1                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           2                  0       13     215
6-24 months                   ki1114097-CONTENT          PERU                           2                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           3                  0       27     215
6-24 months                   ki1114097-CONTENT          PERU                           3                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           4                  0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           4                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           5                  0       25     215
6-24 months                   ki1114097-CONTENT          PERU                           5                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           6                  0       12     215
6-24 months                   ki1114097-CONTENT          PERU                           6                  1        2     215
6-24 months                   ki1114097-CONTENT          PERU                           7                  0       16     215
6-24 months                   ki1114097-CONTENT          PERU                           7                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           8                  0       26     215
6-24 months                   ki1114097-CONTENT          PERU                           8                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           9                  0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           9                  1        1     215
6-24 months                   ki1114097-CONTENT          PERU                           10                 0       22     215
6-24 months                   ki1114097-CONTENT          PERU                           10                 1        1     215
6-24 months                   ki1114097-CONTENT          PERU                           11                 0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           11                 1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           12                 0        7     215
6-24 months                   ki1114097-CONTENT          PERU                           12                 1        0     215
6-24 months                   ki1119695-PROBIT           BELARUS                        1                  0     1139   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                  1        8   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        2                  0      979   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        2                  1        9   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        3                  0     1157   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        3                  1       12   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        4                  0     1107   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        4                  1       11   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        5                  0     1123   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        5                  1       10   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        6                  0     1181   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        6                  1       10   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        7                  0     1439   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        7                  1       17   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        8                  0     1569   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        8                  1       16   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        9                  0     1547   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        9                  1       14   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        10                 0     1747   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        10                 1       21   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        11                 0     1663   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        11                 1       18   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        12                 0     1780   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        12                 1       21   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      952   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      106   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      732   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1       73   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      770   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1      100   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      743   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1       66   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      680   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1       84   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0      794   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1       78   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0      812   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1       76   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0      831   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1       84   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0      943   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1       64   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      710   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1       79   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      802   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1       88   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0      900   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1      105   10672
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                  0       49     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                  1        6     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                  0      105     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                  1        9     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         3                  0       84     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         3                  1       10     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         4                  0      101     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         4                  1        6     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         5                  0      104     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         5                  1        5     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         6                  0       80     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         6                  1       10     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         7                  0       67     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         7                  1        4     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         8                  0       38     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         8                  1        3     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         9                  0       26     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         9                  1        3     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         10                 0       35     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         10                 1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         11                 0       41     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         11                 1        6     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         12                 0       32     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         12                 1        2     826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1177   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      214   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                  0     1057   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                  1      171   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                  0     1277   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                  1      190   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                  0     1040   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                  1      188   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                  0      969   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                  1      241   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                  0      980   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                  1      227   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                  0     1041   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                  1      240   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                  0     1229   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                  1      266   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                  0     1331   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                  1      269   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                 0     1438   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                 1      292   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                 0     1447   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                 1      286   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                 0     1475   17298
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                 1      253   17298
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                  0       48    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       10    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                  0      286    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                  1       79    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                  0      352    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                  1      119    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                  0      676    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                  1      253    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                  0      444    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                  1      179    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                  0      342    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                  1      118    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      659    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                  1      229    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                  0      415    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                  1      118    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                  0      410    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                  1      105    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                 0      254    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                 1       78    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                 0      132    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                 1       38    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                 0       69    5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                 1       17    5430


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/10faa2c6-c902-48bb-9d8c-4069b5b66967/91aba91d-0dac-42cc-a987-34f474691664/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/10faa2c6-c902-48bb-9d8c-4069b5b66967/91aba91d-0dac-42cc-a987-34f474691664/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/10faa2c6-c902-48bb-9d8c-4069b5b66967/91aba91d-0dac-42cc-a987-34f474691664/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/10faa2c6-c902-48bb-9d8c-4069b5b66967/91aba91d-0dac-42cc-a987-34f474691664/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5555556    0.3678706   0.7432406
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.4347826    0.2319121   0.6376531
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.4583333    0.2587197   0.6579469
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.2758621    0.1129712   0.4387529
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.3777778    0.2359296   0.5196259
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.3823529    0.2187836   0.5459223
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.3939394    0.2270016   0.5608772
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.4634146    0.3105696   0.6162597
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.5600000    0.3651550   0.7548450
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.4210526    0.1987473   0.6433580
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.5250000    0.3700344   0.6799656
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.6071429    0.4259994   0.7882863
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.4722222    0.3089444   0.6355000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                    NA                0.5555556    0.3678962   0.7432149
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                    NA                0.4482759    0.2670524   0.6294993
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                    NA                0.4090909    0.2033889   0.6147929
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                    NA                0.5714286    0.3595131   0.7833440
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                    NA                0.5833333    0.4220902   0.7445765
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                    NA                0.5555556    0.3930378   0.7180733
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                    NA                0.5111111    0.3648812   0.6573410
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                    NA                0.5925926    0.4070300   0.7781552
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                   NA                0.5675676    0.4077418   0.7273933
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                   NA                0.4634146    0.3105905   0.6162388
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                   NA                0.5192308    0.3832660   0.6551956
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3831776    0.2839910   0.4823642
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2717391    0.1689336   0.3745446
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.3295455    0.2231786   0.4359123
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.3690476    0.2686959   0.4693993
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.4252874    0.3295151   0.5210596
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.3859649    0.3154439   0.4564859
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.3145161    0.2324843   0.3965479
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3809524    0.2944997   0.4674051
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.3641304    0.2909517   0.4373091
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.3619632    0.2407299   0.4831965
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.4236111    0.3746959   0.4725263
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.3129252    0.1998174   0.4260329
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3906250    0.2709946   0.5102554
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2931034    0.1758614   0.4103455
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3392857    0.2151763   0.4633951
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2800000    0.1554426   0.4045574
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2340426    0.1128963   0.3551888
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2727273    0.1410243   0.4044303
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3404255    0.2048432   0.4760079
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3170732    0.1745177   0.4596287
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2424242    0.0960876   0.3887609
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2068966    0.1025600   0.3112331
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2941176    0.1689619   0.4192734
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.3018868    0.1781907   0.4255829
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2294372    0.1752035   0.2836709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2038217    0.1407957   0.2668477
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2568306    0.1935193   0.3201419
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1739130    0.1153525   0.2324736
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1363636    0.0885533   0.1841739
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1436782    0.0915493   0.1958070
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1802326    0.1227764   0.2376888
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2051282    0.1484413   0.2618152
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2149123    0.1615835   0.2682410
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1710526    0.1221649   0.2199404
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2256637    0.1711532   0.2801743
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2251082    0.1712379   0.2789785
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0913043    0.0521520   0.1304567
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.0824742    0.0482164   0.1167321
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.1067961    0.0708294   0.1427628
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.0584795   -0.0147508   0.1317099
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.0909091    0.0333445   0.1484737
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.0888252    0.0345812   0.1430692
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.0739796    0.0489020   0.0990572
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.0887574    0.0275400   0.1499748
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.0882353    0.0483938   0.1280768
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.0747922    0.0269183   0.1226662
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.0909091    0.0397598   0.1420584
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.0939597    0.0465824   0.1413370
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1818182    0.0678168   0.2958196
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.1867470    0.1274437   0.2460502
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.1790123    0.1199589   0.2380658
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.1654135    0.1207479   0.2100791
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1351351    0.0858557   0.1844145
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1649485    0.0910666   0.2388303
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1354167    0.0669472   0.2038861
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1162791    0.0485068   0.1840513
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.1437500    0.0893703   0.1981297
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.1076923    0.0323071   0.1830775
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.1746032    0.0808297   0.2683767
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.1727273    0.1020628   0.2433918
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0642978    0.0353490   0.0932466
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                    NA                0.0747757    0.0532566   0.0962947
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                    NA                0.0666667    0.0467671   0.0865662
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                    NA                0.0620018    0.0407109   0.0832926
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                    NA                0.0721739    0.0532053   0.0911425
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                    NA                0.0803279    0.0595574   0.1010983
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                    NA                0.0678426    0.0501418   0.0855434
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                    NA                0.0885449    0.0673658   0.1097240
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                    NA                0.0661209    0.0548114   0.0774304
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                   NA                0.0638534    0.0426932   0.0850137
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                   NA                0.0773740    0.0520115   0.1027364
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                   NA                0.0734649    0.0569764   0.0899535
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1052632    0.0887692   0.1217571
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0991168    0.0807689   0.1174646
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1162791    0.0974880   0.1350701
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0866995    0.0693875   0.1040115
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0985915    0.0800583   0.1171248
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0918004    0.0749045   0.1086962
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0977312    0.0805381   0.1149244
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1037657    0.0864748   0.1210566
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0791925    0.0644446   0.0939405
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0993184    0.0810256   0.1176112
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1064401    0.0883618   0.1245184
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1124694    0.0947907   0.1301482
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1623454    0.1474843   0.1772066
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1438127    0.1281937   0.1594317
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1412639    0.1266204   0.1559075
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1678591    0.1501861   0.1855321
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2176428    0.1937687   0.2415169
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2206432    0.1971445   0.2441419
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2148050    0.1926847   0.2369254
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1823708    0.1636084   0.2011332
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1667310    0.1511865   0.1822755
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1641274    0.1493334   0.1789215
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.1613784    0.1466065   0.1761502
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.1556205    0.1419786   0.1692624
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1929825    0.1306160   0.2553489
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2424242    0.1938303   0.2910182
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2649573    0.2222648   0.3076497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.2844828    0.2525786   0.3163869
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.2985554    0.2534959   0.3436149
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.2741228    0.2271810   0.3210647
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.2718999    0.2340276   0.3097722
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.2234848    0.1838470   0.2631227
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.2031250    0.1672375   0.2390125
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2293578    0.1811770   0.2775386
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.2366864    0.1711308   0.3022420
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.1976744    0.1401430   0.2552058
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3703704    0.1879606   0.5527802
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.2857143    0.0922229   0.4792057
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.3913043    0.1915653   0.5910434
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.2222222    0.0651827   0.3792618
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.3023256    0.1648584   0.4397928
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.2903226    0.1303080   0.4503371
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.3125000    0.1516742   0.4733258
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.2564103    0.1191732   0.3936473
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.2380952    0.0556698   0.4205207
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.3684211    0.1512116   0.5856305
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.3333333    0.1851734   0.4814933
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.3571429    0.1794096   0.5348761
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2233010    0.1755091   0.2710929
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1111111    0.0486545   0.1735677
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.1511628    0.0611044   0.2412212
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.1358025    0.0584777   0.2131272
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.2142857    0.1050587   0.3235127
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.1403509    0.0805208   0.2001810
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.0500000    0.0211940   0.0788060
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.0722892    0.0372343   0.1073440
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.0722222    0.0486558   0.0957886
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.1125000    0.0509355   0.1740645
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.1619718    0.0863301   0.2376136
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.1496599    0.0527957   0.2465240
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1266376    0.0835551   0.1697200
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0705128    0.0303307   0.1106949
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1475410    0.0961476   0.1989343
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0496894    0.0161163   0.0832625
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0558376    0.0237680   0.0879071
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0404624    0.0110945   0.0698304
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0523256    0.0190396   0.0856116
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0979381    0.0561038   0.1397725
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0921053    0.0545620   0.1296485
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0614035    0.0302356   0.0925715
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0929204    0.0550619   0.1307789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1179039    0.0761263   0.1596816
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0592275    0.0292309   0.0892240
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                    NA                0.0678138    0.0463052   0.0893223
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                    NA                0.0591260    0.0406026   0.0776493
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                    NA                0.0538117    0.0331549   0.0744684
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                    NA                0.0653710    0.0467181   0.0840239
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                    NA                0.0741049    0.0537406   0.0944692
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                    NA                0.0589849    0.0410246   0.0769452
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                    NA                0.0809285    0.0606132   0.1012437
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                    NA                0.0587109    0.0485818   0.0688401
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                   NA                0.0540541    0.0351912   0.0729169
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                   NA                0.0688836    0.0458632   0.0919040
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                   NA                0.0635359    0.0484843   0.0785875
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0323077    0.0226957   0.0419197
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0374115    0.0255841   0.0492389
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0391978    0.0277134   0.0506822
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0259740    0.0161203   0.0358278
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0183299    0.0099397   0.0267201
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0252480    0.0160146   0.0344813
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0363798    0.0254481   0.0473114
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0374468    0.0265909   0.0483027
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0356295    0.0254062   0.0458527
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0258964    0.0160717   0.0357211
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0340700    0.0232803   0.0448597
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0331675    0.0230605   0.0432745
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0826946    0.0716127   0.0937766
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0729116    0.0607008   0.0851224
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0676409    0.0572167   0.0780652
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0738255    0.0612685   0.0863825
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0606061    0.0474802   0.0737319
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0683891    0.0524806   0.0842976
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0673783    0.0539949   0.0807616
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0597243    0.0477770   0.0716717
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0704829    0.0591177   0.0818481
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0715532    0.0613351   0.0817713
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0727335    0.0624512   0.0830159
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0801577    0.0699104   0.0904050
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.3333333    0.1791559   0.4875108
6-24 months                   ki1000108-IRC              INDIA                          2                    NA                0.3703704    0.1879988   0.5527420
6-24 months                   ki1000108-IRC              INDIA                          3                    NA                0.1724138    0.0347651   0.3100625
6-24 months                   ki1000108-IRC              INDIA                          4                    NA                0.3636364    0.1623783   0.5648945
6-24 months                   ki1000108-IRC              INDIA                          5                    NA                0.4285714    0.2166566   0.6404862
6-24 months                   ki1000108-IRC              INDIA                          6                    NA                0.3243243    0.1733036   0.4753450
6-24 months                   ki1000108-IRC              INDIA                          7                    NA                0.3333333    0.1791559   0.4875108
6-24 months                   ki1000108-IRC              INDIA                          8                    NA                0.3111111    0.1756844   0.4465379
6-24 months                   ki1000108-IRC              INDIA                          9                    NA                0.3703704    0.1879988   0.5527420
6-24 months                   ki1000108-IRC              INDIA                          10                   NA                0.4324324    0.2726072   0.5922577
6-24 months                   ki1000108-IRC              INDIA                          11                   NA                0.1951220    0.0736700   0.3165739
6-24 months                   ki1000108-IRC              INDIA                          12                   NA                0.2115385    0.1004007   0.3226762
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3020833    0.2035644   0.4006022
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2317073    0.1425683   0.3208463
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.2804878    0.1898470   0.3711286
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.3125000    0.1869948   0.4380052
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.3209877    0.2223049   0.4196704
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.3084112    0.2363775   0.3804450
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.3162393    0.2418386   0.3906400
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3571429    0.2439512   0.4703345
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.3430233    0.2697963   0.4162503
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.3000000    0.1738532   0.4261468
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.3282443    0.2648324   0.3916562
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2262774    0.1675653   0.2849895
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4230769    0.2886715   0.5574823
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3469388    0.2135390   0.4803386
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3137255    0.1862612   0.4411898
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2444444    0.1187642   0.3701246
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2380952    0.1091662   0.3670243
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2500000    0.1156862   0.3843138
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3111111    0.1757244   0.4464978
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3243243    0.1733483   0.4753003
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2413793    0.0854911   0.3972675
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2264151    0.1136386   0.3391916
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2708333    0.1450006   0.3966661
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.3000000    0.1728623   0.4271377
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1608040    0.1097524   0.2118556
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1879699    0.1215558   0.2543840
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1733333    0.1127412   0.2339255
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1594203    0.0983293   0.2205113
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1075949    0.0592663   0.1559235
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1357143    0.0789686   0.1924600
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1760563    0.1133970   0.2387157
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1590909    0.1050408   0.2131410
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1758794    0.1229701   0.2287887
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1479592    0.0982394   0.1976789
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1727749    0.1191469   0.2264028
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1683673    0.1159684   0.2207663
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2301255    0.1646588   0.2955923
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2355769    0.1698416   0.3013122
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.2196262    0.1302934   0.3089589
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.2131148    0.1106419   0.3155876
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.2334630    0.1761323   0.2907937
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.2377049    0.1585503   0.3168596
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.2214112    0.1772815   0.2655409
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.2513812    0.1873390   0.3154234
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.2440678    0.1748095   0.3133261
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1854839    0.0804310   0.2905367
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.2741117    0.2094554   0.3387679
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.2654321    0.2046935   0.3261707
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1363636    0.0349297   0.2377975
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.1951220    0.1344496   0.2557943
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.1750000    0.1161047   0.2338953
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.1622642    0.1178587   0.2066696
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1366120    0.0868364   0.1863876
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1473684    0.0760641   0.2186727
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1979167    0.1181888   0.2776445
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1882353    0.1051066   0.2713640
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.1548387    0.0978697   0.2118077
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.1406250    0.0554274   0.2258226
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.1967213    0.0969310   0.2965117
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.1727273    0.1020625   0.2433921
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    NA                0.0069747    0.0021435   0.0118060
6-24 months                   ki1119695-PROBIT           BELARUS                        2                    NA                0.0091093    0.0038944   0.0143242
6-24 months                   ki1119695-PROBIT           BELARUS                        3                    NA                0.0102652    0.0045370   0.0159934
6-24 months                   ki1119695-PROBIT           BELARUS                        4                    NA                0.0098390    0.0041056   0.0155724
6-24 months                   ki1119695-PROBIT           BELARUS                        5                    NA                0.0088261    0.0013220   0.0163302
6-24 months                   ki1119695-PROBIT           BELARUS                        6                    NA                0.0083963    0.0034328   0.0133598
6-24 months                   ki1119695-PROBIT           BELARUS                        7                    NA                0.0116758    0.0058369   0.0175147
6-24 months                   ki1119695-PROBIT           BELARUS                        8                    NA                0.0100946    0.0014817   0.0187076
6-24 months                   ki1119695-PROBIT           BELARUS                        9                    NA                0.0089686    0.0032916   0.0146456
6-24 months                   ki1119695-PROBIT           BELARUS                        10                   NA                0.0118778    0.0056736   0.0180820
6-24 months                   ki1119695-PROBIT           BELARUS                        11                   NA                0.0107079    0.0007245   0.0206913
6-24 months                   ki1119695-PROBIT           BELARUS                        12                   NA                0.0116602    0.0064308   0.0168895
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1001890    0.0820960   0.1182821
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0906832    0.0708455   0.1105209
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1149425    0.0937475   0.1361376
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0815822    0.0627191   0.1004453
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1099476    0.0877645   0.1321308
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0894495    0.0705064   0.1083927
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0855856    0.0671849   0.1039863
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0918033    0.0730931   0.1105134
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0635551    0.0484866   0.0786236
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1001267    0.0791810   0.1210725
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0988764    0.0792649   0.1184880
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1044776    0.0855657   0.1233895
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1538462    0.1338737   0.1738186
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1392508    0.1202743   0.1582274
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1295160    0.1120745   0.1469575
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1530945    0.1318318   0.1743571
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1991736    0.1739102   0.2244369
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1880696    0.1639863   0.2121529
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.1873536    0.1644564   0.2102508
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1779264    0.1564048   0.1994481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1681250    0.1488309   0.1874191
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1687861    0.1499294   0.1876429
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.1650317    0.1454745   0.1845889
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.1464120    0.1283563   0.1644678
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1724138    0.1126918   0.2321358
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2164384    0.1696475   0.2632293
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2526539    0.2112690   0.2940389
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.2723358    0.2413792   0.3032925
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.2873194    0.2426024   0.3320364
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.2565217    0.2103206   0.3027229
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.2578829    0.2208398   0.2949260
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.2213884    0.1819896   0.2607872
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.2038835    0.1678039   0.2399631
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2349398    0.1866145   0.2832650
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.2235294    0.1586548   0.2884040
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.1976744    0.1415102   0.2538386


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3615180   0.3107193   0.4123167
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0850857   0.0676201   0.1025513
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1573333   0.1389008   0.1757659
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0997867   0.0947492   0.1048243
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1693740   0.1640742   0.1746738
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2577835   0.2441424   0.2714247
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1255940   0.0954030   0.1557851
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0320114   0.0290240   0.0349988
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0716899   0.0680353   0.0753445
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1666667   0.1476863   0.1856470
6-24 months                   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939843   0.0884477   0.0995208
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1640074   0.1578946   0.1701202
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2473297   0.2337864   0.2608729


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.7826087   0.4399098   1.3922772
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.8250000   0.4754180   1.4316349
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.4965517   0.2514882   0.9804184
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 0.6800000   0.4103465   1.1268524
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 0.6882353   0.3990250   1.1870629
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 0.7090909   0.4124171   1.2191780
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 0.8341463   0.5202297   1.3374863
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 1.0080000   0.6206441   1.6371122
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.7578947   0.4049388   1.4184969
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.9450000   0.6033920   1.4800081
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 1.0928571   0.6963367   1.7151713
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                    1                 1.1764706   0.7255263   1.9076953
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                    1                 0.9492901   0.5576606   1.6159500
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                    1                 0.8663102   0.4705991   1.5947614
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                    1                 1.2100840   0.7288078   2.0091763
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                    1                 1.2352941   0.7934506   1.9231842
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                    1                 1.1764706   0.7479703   1.8504518
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                    1                 1.0823529   0.6909780   1.6954054
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                    1                 1.2549020   0.7870786   2.0007900
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                   1                 1.2019078   0.7694983   1.8773041
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                   1                 0.9813486   0.6085706   1.5824708
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                   1                 1.0995475   0.7126016   1.6966067
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7091729   0.4222443   1.1910786
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.8600333   0.5405112   1.3684401
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.9631243   0.6546652   1.4169203
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.1098963   0.8657312   1.4229240
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.0072743   0.7306083   1.3887079
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 0.8208104   0.6109443   1.1027677
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 0.9941928   0.6964970   1.4191293
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.9502916   0.7207500   1.2529368
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9446356   0.6649408   1.3419788
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 1.1055217   0.8277657   1.4764784
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.8166584   0.5532872   1.2053973
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.7503448   0.4533905   1.2417933
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8685714   0.5390333   1.3995728
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.7168000   0.4176827   1.2301258
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.5991489   0.3283476   1.0932908
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.6981818   0.3941160   1.2368385
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8714894   0.5273142   1.4403058
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.8117073   0.4711354   1.3984702
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6206061   0.3153910   1.2211886
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.5296552   0.2936015   0.9554945
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7529412   0.4457284   1.2718965
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7728302   0.4633634   1.2889807
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8883548   0.6019363   1.3110594
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1193938   0.7955350   1.5750940
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.7579984   0.5023380   1.1437748
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.5943396   0.3893983   0.9071421
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.6262199   0.4061315   0.9655774
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.7855419   0.5282186   1.1682210
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8940493   0.6214832   1.2861558
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9366931   0.6649076   1.3195729
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7455313   0.5145063   1.0802916
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9835532   0.7014866   1.3790383
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9811321   0.7008825   1.3734401
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.9032892   0.4978203   1.6390077
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.1696718   0.6472774   2.1136719
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 0.6404901   0.1702923   2.4089620
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 0.9956710   0.4609213   2.1508245
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9728476   0.4612382   2.0519387
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.8102527   0.4836418   1.3574290
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.9721048   0.4363746   2.1655425
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 0.9663866   0.6025337   1.5499596
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.8191531   0.3900277   1.7204212
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 0.9956710   0.4935339   2.0086984
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0290828   0.5318362   1.9912360
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.0271084   0.5086010   2.0742225
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.9845679   0.4847871   1.9995871
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 0.9097744   0.4596738   1.8006020
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.7432432   0.3598479   1.5351223
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.9072165   0.4198184   1.9604707
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.7447917   0.3328291   1.6666651
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.6395349   0.2716946   1.5053844
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.7906250   0.3801388   1.6443676
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.5923077   0.2314278   1.5159303
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.9603175   0.4206016   2.1925966
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.9500000   0.4493445   2.0084811
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                    1                 1.1629585   0.7706416   1.7549954
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                    1                 1.0368421   0.6574411   1.6351908
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                    1                 0.9642907   0.5730995   1.6225047
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                    1                 1.1224943   0.7018034   1.7953653
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                    1                 1.2493097   0.7823653   1.9949437
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                    1                 1.0551310   0.6156114   1.8084486
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                    1                 1.3771061   0.8652643   2.1917246
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                    1                 1.0283541   0.6464625   1.6358446
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                   1                 0.9930886   0.6619497   1.4898791
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                   1                 1.2033689   0.8328398   1.7387459
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                   1                 1.1425727   0.8067579   1.6181712
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9416094   0.7388267   1.2000490
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1046512   0.8819975   1.3835121
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8236453   0.6390111   1.0616273
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9366197   0.7333001   1.1963130
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8721034   0.6848442   1.1105655
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9284468   0.7335719   1.1750905
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9857741   0.7842225   1.2391260
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7523292   0.5898061   0.9596361
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9435248   0.7408549   1.2016375
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0111807   0.8025467   1.2740522
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0684597   0.8557917   1.3339766
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8858439   0.7705598   1.0183757
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8701442   0.7582888   0.9984995
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.0339626   0.8993657   1.1887030
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.3406155   1.1699824   1.5361342
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.3590972   1.1896763   1.5526453
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.3231356   1.1484496   1.5243924
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.1233505   0.9868538   1.2787267
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0270138   0.9047399   1.1658127
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0109765   0.8871809   1.1520464
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9940432   0.8786541   1.1245857
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9585766   0.8458519   1.0863239
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.2561983   0.8550306   1.8455880
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.3729604   0.9580056   1.9676505
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.4741379   1.0417749   2.0859426
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.5470597   1.0869071   2.2020222
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.4204545   0.9844881   2.0494825
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.4089358   0.9831260   2.0191715
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 1.1580579   0.8030224   1.6700631
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.0525568   0.7267373   1.5244517
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 1.1884904   0.8247288   1.7126957
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 1.2264658   0.7996669   1.8810563
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 1.0243129   0.6593015   1.5914069
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.7714286   0.3339107   1.7822194
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 1.0565217   0.5197931   2.1474665
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.6000000   0.2535499   1.4198387
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 0.8162791   0.4175680   1.5956958
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 0.7838710   0.3743141   1.6415456
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 0.8437500   0.4138577   1.7201903
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 0.6923077   0.3345169   1.4327825
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 0.6428571   0.2585518   1.5983852
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.9947368   0.4613992   2.1445666
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.9000000   0.4635784   1.7472772
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 0.9642857   0.4787745   1.9421397
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.4975845   0.2736484   0.9047756
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.6769464   0.3634340   1.2609068
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.6081589   0.3299478   1.1209569
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.9596273   0.5649402   1.6300567
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.6285278   0.3780935   1.0448401
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 0.2239130   0.1227581   0.4084217
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 0.3237297   0.1779742   0.5888546
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.3234300   0.2420999   0.4320818
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.5038043   0.3111319   0.8157916
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.7253521   0.4542885   1.1581533
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.6702159   0.3778054   1.1889436
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5568081   0.2867294   1.0812817
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1650650   0.7159642   1.8958721
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.3923752   0.1841490   0.8360532
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.4409242   0.2261820   0.8595475
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.3195137   0.1433398   0.7122169
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.4131917   0.2008427   0.8500550
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.7733736   0.4479536   1.3351981
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7273140   0.4277030   1.2368060
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.4848760   0.2631801   0.8933226
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7337504   0.4315486   1.2475759
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9310345   0.5696838   1.5215901
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                    1                 1.1449715   0.7287640   1.7988810
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                    1                 0.9982862   0.5852516   1.7028153
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                    1                 0.9085592   0.5086616   1.6228465
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                    1                 1.1037282   0.6208905   1.9620461
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                    1                 1.2511916   0.7360847   2.1267668
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                    1                 0.9959047   0.5446122   1.8211602
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                    1                 1.3664012   0.8062710   2.3156634
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                    1                 0.9912785   0.5914522   1.6613904
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                   1                 0.9126518   0.5898266   1.4121663
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                   1                 1.1630349   0.7990019   1.6929248
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                   1                 1.0727440   0.7064672   1.6289216
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1579758   0.7501756   1.7874589
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2132656   0.7991202   1.8420425
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8039579   0.4964239   1.3020090
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.5673553   0.3286724   0.9793703
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.7814848   0.4877268   1.2521735
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1260405   0.7377512   1.7186921
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1590679   0.7650725   1.7559621
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.1028164   0.7294480   1.6672936
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.8015557   0.4949347   1.2981339
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0545470   0.6828981   1.6284559
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0266130   0.6705787   1.5716786
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8816973   0.7141491   1.0885544
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8179602   0.6666459   1.0036195
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8927484   0.7134745   1.1170683
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.7328899   0.5677860   0.9460036
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8270072   0.6322560   1.0817468
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8147838   0.6392191   1.0385683
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.7222276   0.5719175   0.9120419
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8523270   0.6991518   1.0390608
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.8652705   0.7121726   1.0512803
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.8795436   0.7236028   1.0690907
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9693215   0.8107224   1.1589469
6-24 months                   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          2                    1                 1.1111111   0.5654060   2.1835069
6-24 months                   ki1000108-IRC              INDIA                          3                    1                 0.5172414   0.2055811   1.3013778
6-24 months                   ki1000108-IRC              INDIA                          4                    1                 1.0909091   0.5303199   2.2440845
6-24 months                   ki1000108-IRC              INDIA                          5                    1                 1.2857143   0.6532708   2.5304381
6-24 months                   ki1000108-IRC              INDIA                          6                    1                 0.9729730   0.5047335   1.8755964
6-24 months                   ki1000108-IRC              INDIA                          7                    1                 1.0000000   0.5198996   1.9234482
6-24 months                   ki1000108-IRC              INDIA                          8                    1                 0.9333333   0.4945296   1.7614945
6-24 months                   ki1000108-IRC              INDIA                          9                    1                 1.1111111   0.5654060   2.1835069
6-24 months                   ki1000108-IRC              INDIA                          10                   1                 1.2972973   0.7176460   2.3451398
6-24 months                   ki1000108-IRC              INDIA                          11                   1                 0.5853659   0.2695508   1.2712007
6-24 months                   ki1000108-IRC              INDIA                          12                   1                 0.6346154   0.3151500   1.2779208
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7670311   0.4685115   1.2557573
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.9285114   0.5680756   1.5176384
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.0344828   0.6470354   1.6539350
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.0625798   0.7042088   1.6033253
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.0209475   0.7557620   1.3791825
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0468612   0.7127839   1.5375184
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1822660   0.7284054   1.9189216
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 1.1355253   0.7865378   1.6393587
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9931034   0.6034900   1.6342517
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 1.0866017   0.7164187   1.6480633
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.7490561   0.4835941   1.1602397
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.8200371   0.4979913   1.3503465
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7415330   0.4427344   1.2419888
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.5777778   0.3157066   1.0573970
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.5627706   0.3003833   1.0543552
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.5909091   0.3165588   1.1030289
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.7353535   0.4290434   1.2603500
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7665848   0.4363151   1.3468527
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.5705329   0.2777833   1.1718050
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.5351630   0.2964234   0.9661835
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.6401515   0.3646231   1.1238836
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7090909   0.4175225   1.2042702
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1689380   0.7269422   1.8796763
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0779167   0.6722069   1.7284920
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.9913949   0.6027358   1.6306712
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6691060   0.3860242   1.1597794
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.8439732   0.4992586   1.4266971
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0948504   0.6795596   1.7639325
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.9893466   0.6214484   1.5750410
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.0937500   0.7062730   1.6938056
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9201212   0.5795285   1.4608823
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.0744437   0.6892193   1.6749811
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0470344   0.6712493   1.6331952
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.0236888   0.6626044   1.5815450
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.9543755   0.5694689   1.5994424
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 0.9260805   0.5105634   1.6797621
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0145030   0.6842978   1.5040475
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.0329359   0.6396376   1.6680641
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.9621323   0.6630092   1.3962075
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0923656   0.7152657   1.6682789
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.0605855   0.7046706   1.5962659
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.8060117   0.4202567   1.5458526
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1911398   0.7860250   1.8050496
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.1534231   0.7934119   1.6767897
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.4308943   0.6389527   3.2043976
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 1.2833333   0.5672369   2.9034509
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.1899371   0.5386490   2.6287067
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.0018215   0.4375905   2.2935743
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 1.0807018   0.4449660   2.6247317
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.4513889   0.6228791   3.3819237
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 1.3803922   0.5811777   3.2786572
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.1354839   0.4951928   2.6036800
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.0312500   0.3951126   2.6915785
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.4426230   0.5863212   3.5495239
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.2666667   0.5419715   2.9603853
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1119695-PROBIT           BELARUS                        2                    1                 1.3060475   0.5218381   3.2687534
6-24 months                   ki1119695-PROBIT           BELARUS                        3                    1                 1.4717707   0.5607685   3.8627510
6-24 months                   ki1119695-PROBIT           BELARUS                        4                    1                 1.4106663   0.5178149   3.8430329
6-24 months                   ki1119695-PROBIT           BELARUS                        5                    1                 1.2654457   0.4026561   3.9769737
6-24 months                   ki1119695-PROBIT           BELARUS                        6                    1                 1.2038203   0.4581205   3.1633231
6-24 months                   ki1119695-PROBIT           BELARUS                        7                    1                 1.6740212   0.8906300   3.1464772
6-24 months                   ki1119695-PROBIT           BELARUS                        8                    1                 1.4473186   0.5767016   3.6322614
6-24 months                   ki1119695-PROBIT           BELARUS                        9                    1                 1.2858744   0.5686723   2.9076026
6-24 months                   ki1119695-PROBIT           BELARUS                        10                   1                 1.7029836   0.9024912   3.2134973
6-24 months                   ki1119695-PROBIT           BELARUS                        11                   1                 1.5352468   0.6408311   3.6780094
6-24 months                   ki1119695-PROBIT           BELARUS                        12                   1                 1.6717795   0.7769048   3.5974120
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9051213   0.6815713   1.2019939
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1472566   0.8862779   1.4850845
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8142827   0.6072410   1.0919162
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0974020   0.8370842   1.4386738
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8928077   0.6759057   1.1793147
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8542410   0.6451194   1.1311514
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9163006   0.6978752   1.2030903
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6343520   0.4708632   0.8546058
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9993782   0.7580697   1.3175001
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9868985   0.7547051   1.2905287
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0428048   0.8075277   1.3466312
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9051303   0.7548031   1.0853967
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8418541   0.6972366   1.0164675
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9951140   0.8189597   1.2091583
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.2946281   1.0906292   1.5367844
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.2224524   1.0266701   1.4555696
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.2177986   1.0146242   1.4616578
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.1565217   0.9784882   1.3669480
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0928125   0.9151930   1.3049042
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0971098   0.9243418   1.3021698
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0727063   0.9013921   1.2765796
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9516782   0.7964105   1.1372169
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.2553425   0.8303977   1.8977469
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.4653928   1.0000673   2.1472316
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.5795479   1.0906304   2.2876417
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.6664526   1.1437956   2.4279377
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.4878261   1.0048433   2.2029568
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.4957207   1.0210229   2.1911168
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 1.2840525   0.8723642   1.8900258
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.1825243   0.8006029   1.7466383
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 1.3626506   0.9315368   1.9932831
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 1.2964706   0.8233190   2.0415368
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 1.1465116   0.7325445   1.7944150


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1044686   -0.2851574    0.0762202
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                 0.0485602   -0.1073766    0.2044969
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0216596   -0.1164395    0.0731203
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0949439   -0.2071918    0.0173039
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0306117   -0.0818765    0.0206531
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0062186   -0.0443328    0.0318956
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0244848   -0.1366170    0.0876473
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0073974   -0.0153462    0.0301410
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0054764   -0.0211037    0.0101509
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0070286   -0.0067153    0.0207724
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0648011    0.0022516    0.1273506
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0617989   -0.2364075    0.1128096
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0977069   -0.1409469   -0.0544670
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0407790   -0.0810935   -0.0004644
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0045295   -0.0196755    0.0287345
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0002963   -0.0094235    0.0088310
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0110047   -0.0214033   -0.0006061
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                -0.0235772   -0.1705618    0.1234073
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0038922   -0.0923495    0.1001339
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1291767   -0.2559378   -0.0024156
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0002490   -0.0487148    0.0482168
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0016565   -0.0731319    0.0764449
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0303030   -0.0698875    0.1304936
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0030867   -0.0009227    0.0070961
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0062048   -0.0233251    0.0109155
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0101612   -0.0086744    0.0289969
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0749159    0.0150108    0.1348209


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2315930   -0.7061795    0.1109837
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                 0.0932447   -0.2617139    0.3483426
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0599129   -0.3594571    0.1736294
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3211025   -0.7611940    0.0090178
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1539628   -0.4427175    0.0769987
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0730865   -0.6332431    0.2949521
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.1556240   -1.1409566    0.3762289
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                 0.1031785   -0.2860008    0.3745814
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0548811   -0.2236886    0.0906394
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0414972   -0.0432302    0.1193435
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.2513779   -0.0334536    0.4577066
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2002743   -0.9233053    0.2509465
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.7779585   -1.2541560   -0.4023593
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4749550   -1.0237239   -0.0749947
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0710434   -0.4046517    0.3856410
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0092560   -0.3387311    0.2391320
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1535044   -0.3081537   -0.0171377
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                -0.0761155   -0.6724799    0.3076003
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0127206   -0.3573086    0.2818725
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.4395259   -0.9434367   -0.0662734
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0015510   -0.3538419    0.2590683
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0071467   -0.3735316    0.2823189
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.1818182   -0.7053437    0.6074566
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    NA                 0.3067883   -0.2442038    0.6137751
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0660193   -0.2646318    0.1014007
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0619560   -0.0603193    0.1701306
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.3028988    0.0154577    0.5064203
